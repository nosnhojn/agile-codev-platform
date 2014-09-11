module pixelProcessor
#(
  MEM_DEPTH = 1
)
(
  input clk,
  input rst_n,

  // ram port
  output logic [119:0] wdata,
  output logic [31:0] waddr,
  output logic        wr,
  input        [119:0] rdata,
  output wire  [31:0] raddr,

  input               ingress_rdy,
  output logic [31:0] ingress_read_cnt,

  output logic        egress_rdy
);

logic [1:0]  number_of_buffered_lines_required_for_current_line;

logic [31:0] rptr, next_rptr;
logic [1:0]  buffered_line, next_buffered_line;
logic [4:0]  buffered_rd_cnt, next_buffered_rd_cnt;

always @* begin
  next_rptr = rptr;
  next_buffered_line = buffered_line;
  next_buffered_rd_cnt = buffered_rd_cnt;

  if (ingress_rdy) begin
    next_buffered_line = buffered_line + 1;

    next_buffered_rd_cnt = next_buffered_rd_cnt + 1;

    if (next_buffered_line >= number_of_buffered_lines_required_for_current_line) begin
      next_buffered_line = 0;
      next_rptr = rptr + 3;
    end
  end
end

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    rptr <= 0;
    number_of_buffered_lines_required_for_current_line <= 2;
    buffered_line <= 0;
    buffered_rd_cnt <= 0;
  end

  else begin
    buffered_line <= next_buffered_line;
    rptr <= next_rptr;
    buffered_rd_cnt <= next_buffered_rd_cnt;
  end
end

assign raddr = rptr + buffered_line * 1920;

endmodule
