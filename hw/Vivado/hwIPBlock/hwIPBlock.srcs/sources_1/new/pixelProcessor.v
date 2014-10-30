module pixelProcessor
#(
  PIXEL_WIDTH = 1920,
  PIXEL_HEIGHT = 1080,
  PIXELS_PER_READ = 4
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
  output logic         last_column_flag,

  output logic [119:0] group_slot0,
  output logic [119:0] group_slot1,
  output logic [119:0] group_slot2
);

parameter EFFECTIVE_WIDTH = PIXEL_WIDTH/PIXELS_PER_READ;

wire ingress_rdy;
wire at_end_of_frame;
wire at_start_of_line;
wire at_end_of_line;
wire on_first_row;
wire on_last_row;
logic [31:0] rptr;
logic [1:0] rptr_line_cnt;
logic [1:0] next_rptr_line_cnt;

logic next_calc_strobe;
logic next_first_row_flag;
logic next_first_column_flag;
logic next_last_row_flag;
logic next_last_column_flag;

logic [119:0] group_slot0_h;
logic [119:0] group_slot1_h;

always @* begin
  next_rptr_line_cnt = rptr_line_cnt;

  if (ingress_rdy) begin
    if (rptr_line_cnt >= 2) next_rptr_line_cnt = 0;
    else next_rptr_line_cnt = rptr_line_cnt + 1;
  end
end

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    rptr <= 0;
    rptr_line_cnt <= 0;
    calc_strobe <= 0;
    next_calc_strobe <= 0;
    first_row_flag <= 0;
    first_column_flag <= 0;
    last_row_flag <= 0;
    last_column_flag <= 0;
    ingress_used_cnt <= 0;
    ingress_available_cnt <= 0;

    group_slot0   <= 0;
    group_slot0_h <= 0;
    group_slot1   <= 0;
    group_slot1_h <= 0;
    group_slot2   <= 0;
  end

  else begin
    calc_strobe <= next_calc_strobe;
    first_row_flag <= next_first_row_flag;
    first_column_flag <= next_first_column_flag;
    last_row_flag <= next_last_row_flag;
    last_column_flag <= next_last_column_flag;

    next_calc_strobe <= 0;
    next_first_row_flag <= 0;
    next_first_column_flag <= 0;
    next_last_row_flag <= 0;
    next_last_column_flag <= 0;

    ingress_used_cnt <= 0;


    ingress_available_cnt <= ingress_available_cnt + ingress_new_pixel;
    if (last_row_flag && last_column_flag) begin
      ingress_used_cnt <= 3 * PIXEL_WIDTH;
      ingress_available_cnt <= ingress_available_cnt + ingress_new_pixel - 3 * PIXEL_WIDTH;
    end
    else if (last_column_flag) begin
      ingress_used_cnt <= PIXEL_WIDTH;
      ingress_available_cnt <= ingress_available_cnt + ingress_new_pixel - PIXEL_WIDTH;
    end

    case (next_rptr_line_cnt[1:0])
      2'b01 : group_slot2 <= rdata;
      2'b10 : group_slot0 <= rdata;
      2'b00 : group_slot1 <= rdata;
    endcase

    if (ingress_rdy) begin
      if (rptr_line_cnt >= 2) begin
        if (at_end_of_frame) rptr <= 0;
        else rptr <= rptr + 1;

        //group_slot0 <= group_slot0_h;
        //group_slot1 <= group_slot1_h;

        next_calc_strobe <= 1;
        next_first_column_flag <= at_start_of_line;
        next_last_column_flag <= at_end_of_line;
        next_first_row_flag <= on_first_row;
        next_last_row_flag <= on_last_row;
      end
    end

    rptr_line_cnt <= next_rptr_line_cnt;
  end
end

assign ingress_rdy = ingress_available_cnt >= ingress_rdy_thresh;
assign raddr = rptr + rptr_line_cnt * EFFECTIVE_WIDTH;
assign at_end_of_line = (rptr % (EFFECTIVE_WIDTH) == EFFECTIVE_WIDTH - 1);
assign at_start_of_line = (rptr % (EFFECTIVE_WIDTH) == 0);
assign on_first_row = (rptr < EFFECTIVE_WIDTH);
assign on_last_row = (rptr >= ((PIXEL_HEIGHT - 3) * EFFECTIVE_WIDTH));
assign at_end_of_frame = (on_last_row && at_end_of_line);

endmodule
