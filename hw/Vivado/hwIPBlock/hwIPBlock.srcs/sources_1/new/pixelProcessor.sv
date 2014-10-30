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
  output logic [31:0]  raddr,

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

logic [31:0] raddr_line0;
logic [31:0] raddr_line1;
logic [31:0] raddr_line2;

wire [31:0]  next_raddr_line0_for_wrap;
wire [31:0]  next_raddr_line1_for_wrap;
wire [31:0]  next_raddr_line2_for_wrap;

wire [31:0]  next_raddr_line0_for_eof;
wire [31:0]  next_raddr_line1_for_eof;
wire [31:0]  next_raddr_line2_for_eof;

wire reset_raddr_line0_at_end_of_buffer;
wire reset_raddr_line1_at_end_of_buffer;
wire reset_raddr_line2_at_end_of_buffer;

wire raddr_wraps_at_eof;

always @* begin
  next_rptr_line_cnt = rptr_line_cnt;

  if (ingress_rdy) begin
    if (rptr_line_cnt >= 2) next_rptr_line_cnt = 0;
    else next_rptr_line_cnt = rptr_line_cnt + 1;
  end

  case (rptr_line_cnt)
    'b00 : raddr = raddr_line0;
    'b01 : raddr = raddr_line1;
    'b10 : raddr = raddr_line2;
  endcase
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

    raddr_line0   <= 0;
    raddr_line1   <= EFFECTIVE_WIDTH;
    raddr_line2   <= EFFECTIVE_WIDTH << 1;
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
        if (at_end_of_frame) begin
          rptr <= 0;

          if (raddr_wraps_at_eof) begin
            raddr_line0 <= next_raddr_line0_for_wrap;
            raddr_line1 <= next_raddr_line1_for_wrap;
            raddr_line2 <= next_raddr_line2_for_wrap;
          end
          else begin
            raddr_line0 <= next_raddr_line0_for_eof;
            raddr_line1 <= next_raddr_line1_for_eof;
            raddr_line2 <= next_raddr_line2_for_eof;
          end
        end

        else begin
          rptr <= rptr + 1;

          if (reset_raddr_line0_at_end_of_buffer) raddr_line0 <= 0;
          else                                    raddr_line0 <= raddr_line0 + 1;

          if (reset_raddr_line1_at_end_of_buffer) raddr_line1 <= 0;
          else                                    raddr_line1 <= raddr_line1 + 1;

          if (reset_raddr_line2_at_end_of_buffer) raddr_line2 <= 0;
          else                                    raddr_line2 <= raddr_line2 + 1;
        end

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
assign at_end_of_line = (rptr % (EFFECTIVE_WIDTH) == EFFECTIVE_WIDTH - 1);
assign at_start_of_line = (rptr % (EFFECTIVE_WIDTH) == 0);
assign on_first_row = (rptr < EFFECTIVE_WIDTH);
assign on_last_row = (rptr >= ((PIXEL_HEIGHT - 3) * EFFECTIVE_WIDTH));
assign at_end_of_frame = (on_last_row && at_end_of_line);

assign next_raddr_line0_for_wrap = raddr_line0 - 6*EFFECTIVE_WIDTH + 1;
assign next_raddr_line1_for_wrap = raddr_line1 - 6*EFFECTIVE_WIDTH + 1;
assign next_raddr_line2_for_wrap = raddr_line2 - 6*EFFECTIVE_WIDTH + 1;
assign next_raddr_line0_for_eof = raddr_line0 + 2*EFFECTIVE_WIDTH + 1;
assign next_raddr_line1_for_eof = raddr_line1 + 2*EFFECTIVE_WIDTH + 1;
assign next_raddr_line2_for_eof = raddr_line2 + 2*EFFECTIVE_WIDTH + 1;
assign reset_raddr_line0_at_end_of_buffer = (raddr_line0 >= 8*EFFECTIVE_WIDTH-1);
assign reset_raddr_line1_at_end_of_buffer = (raddr_line1 >= 8*EFFECTIVE_WIDTH-1);
assign reset_raddr_line2_at_end_of_buffer = (raddr_line2 >= 8*EFFECTIVE_WIDTH-1);
assign raddr_wraps_at_eof = (raddr_line0 > 6*EFFECTIVE_WIDTH-2);

endmodule
