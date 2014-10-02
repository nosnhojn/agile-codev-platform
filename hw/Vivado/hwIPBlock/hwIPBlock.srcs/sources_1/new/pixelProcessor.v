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
  output logic         first_row_flag,
  output logic         first_column_flag,
  output logic         last_row_flag,
  output logic         last_column_flag
);

parameter LINE_WIDTH = 1920;

wire at_start_of_line;
wire at_end_of_line;
wire on_first_row;
wire on_last_row;
logic [31:0] rptr;
logic [1:0] rptr_line_cnt;
logic calc_strobe_d1;

always @* begin
end

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    rptr <= 0;
    rptr_line_cnt <= 0;
    calc_strobe <= 0;
    calc_strobe_d1 <= 0;
    first_row_flag <= 1;
    first_column_flag <= 1;
    last_row_flag <= 0;
    last_column_flag <= 0;
    ingress_read_cnt <= 0;
  end

  else begin
    calc_strobe_d1 <= calc_strobe;

    if (calc_strobe) begin
      calc_strobe <= 0;
      if (last_row_flag && last_column_flag) ingress_read_cnt <= 3 * LINE_WIDTH;
      else if (last_column_flag) ingress_read_cnt <= LINE_WIDTH;
    end

    else begin
      ingress_read_cnt <= 0;
    end

    if (ingress_rdy) begin
      if (rptr_line_cnt >= 2) begin
        //if (at_end_of_line) rptr <= 0;
        //else rptr <= rptr + 4;
        rptr <= rptr + 4;

        rptr_line_cnt <= 0;
        calc_strobe <= 1;
        first_column_flag <= at_start_of_line;
        last_column_flag <= at_end_of_line;
        first_row_flag <= on_first_row;
        last_row_flag <= on_last_row;
      end

      else begin
        rptr_line_cnt <= rptr_line_cnt + 1;
      end
    end
  end
end

assign raddr = rptr + rptr_line_cnt * LINE_WIDTH;
assign at_end_of_line = (rptr % LINE_WIDTH == LINE_WIDTH-4);
assign at_start_of_line = (rptr % LINE_WIDTH == 0);
assign on_first_row = (rptr < LINE_WIDTH);
assign on_last_row = (rptr >= 1077 * LINE_WIDTH);

endmodule
