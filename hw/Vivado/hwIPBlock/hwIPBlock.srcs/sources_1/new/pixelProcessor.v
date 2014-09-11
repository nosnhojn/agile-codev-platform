module pixelProcessor
#(
  MEM_DEPTH = 1
)
(
  input clk,
  input rst_n,

  // ram port
  output logic [119:0] wdata,
  output logic [31:0]  waddr,
  output logic         wr,
  input        [119:0] rdata,
  output wire  [31:0]  raddr,

  input                ingress_rdy,
  output logic [31:0]  ingress_read_cnt,

  output logic         egress_rdy,

  output logic         calc_strobe,
  output logic         first_row,
  output logic         first_column,
  output logic         last_row,
  output logic         last_column
);

logic [31:0] rptr;
logic [1:0] rptr_line_cnt;

always @* begin
end

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    rptr <= 0;
    rptr_line_cnt <= 0;
    calc_strobe <= 0;
    first_row <= 1;
    first_column <= 1;
    last_row <= 0;
    last_column <= 0;
  end

  else begin
    if (calc_strobe) begin
      first_column <= 0;
      last_column <= (rptr == 1916);
    end

    if (rptr_line_cnt >= 2) begin
      rptr <= rptr + 4;
      rptr_line_cnt <= 0;
      calc_strobe <= 1;
    end

    else begin
      rptr_line_cnt <= rptr_line_cnt + 1;
      calc_strobe <= 0;
    end
  end
end

assign raddr = rptr + rptr_line_cnt * 1920;

endmodule
