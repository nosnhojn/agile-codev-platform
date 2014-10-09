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

  input        [31:0]  ingress_rdy_thresh,
  output logic [31:0]  ingress_used_cnt,
  output logic [31:0]  ingress_available_cnt,
  input                ingress_new_pixel,

  output logic         egress_rdy,

  output logic         calc_strobe,
  output logic         first_row_flag,
  output logic         first_column_flag,
  output logic         last_row_flag,
  output logic         last_column_flag
);

parameter LINE_WIDTH = 1920/4;

wire ingress_rdy;
wire at_end_of_frame;
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
    first_row_flag <= 0;
    first_column_flag <= 0;
    last_row_flag <= 0;
    last_column_flag <= 0;
    ingress_used_cnt <= 0;
    ingress_available_cnt <= 0;
  end

  else begin
    calc_strobe <= 0;
    calc_strobe_d1 <= calc_strobe;

    ingress_used_cnt <= 0;

    first_row_flag <= 0;
    first_column_flag <= 0;
    last_row_flag <= 0;
    last_column_flag <= 0;

    ingress_available_cnt <= ingress_available_cnt + ingress_new_pixel;
    if (last_row_flag && last_column_flag) begin
      ingress_used_cnt <= 3 * LINE_WIDTH;
      ingress_available_cnt <= ingress_available_cnt + ingress_new_pixel - 3*LINE_WIDTH*4;
    end
    else if (last_column_flag) begin
      ingress_used_cnt <= LINE_WIDTH;
      ingress_available_cnt <= ingress_available_cnt + ingress_new_pixel - LINE_WIDTH*4;
    end

    if (ingress_rdy) begin
      if (rptr_line_cnt >= 2) begin
        if (at_end_of_frame) rptr <= 0;
        else rptr <= rptr + 1;

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

assign ingress_rdy = ingress_available_cnt >= ingress_rdy_thresh;
assign raddr = rptr + rptr_line_cnt * LINE_WIDTH;
assign at_end_of_line = (rptr % LINE_WIDTH == LINE_WIDTH-1);
assign at_start_of_line = (rptr % LINE_WIDTH == 0);
assign on_first_row = (rptr < LINE_WIDTH);
assign on_last_row = (rptr >= (1077 * LINE_WIDTH));
assign at_end_of_frame = (on_last_row && at_end_of_line);

endmodule
