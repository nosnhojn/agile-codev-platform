module pixelProcessor_calc
#(
  PIXEL_WIDTH = 1920,
  PIXEL_HEIGHT = 1080,
  PIXELS_PER_READ = 4
)
(
  input         clk,
  input         rst_n,

  output logic  calc_rdy,

  input         calc_strobe,
  input         first_row_flag,
  input         first_column_flag,
  input         last_row_flag,
  input         last_column_flag,

  input [119:0] group_slot0,
  input [119:0] group_slot1,
  input [119:0] group_slot2,

  output wire [119:0] wdata,
  output logic [11:0] waddr,
  output wire         wr,

  input         egress_read_cnt,
  output logic  egress_rdy
);

parameter EFFECTIVE_WIDTH = PIXEL_WIDTH/PIXELS_PER_READ;

// the single strobe for all strobes when !first_column_flag
wire  strobe_normal;

logic strobe_end_of_column;

// second strobe for strobes on the top and bottom row
logic strobe_2_of_2;

// 2nd/3rd/4th strobe for strobes at the top right and bottom right corners
logic strobe_2_of_4;
logic strobe_3_of_4;
logic strobe_4_of_4;

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    strobe_end_of_column <= 0;

    strobe_2_of_2 <= 0;

    strobe_2_of_4 <= 0;
    strobe_3_of_4 <= 0;
    strobe_4_of_4 <= 0;

    waddr <= EFFECTIVE_WIDTH;
  end

  else begin
    strobe_end_of_column <= calc_strobe && last_column_flag;

    strobe_2_of_2 <= calc_strobe && first_row_flag && !first_column_flag ||
                     calc_strobe && last_row_flag && !first_column_flag;

    strobe_2_of_4 <= calc_strobe && first_row_flag && last_column_flag ||
                     calc_strobe && last_row_flag && last_column_flag;

    strobe_3_of_4 <= strobe_2_of_4;

    strobe_4_of_4 <= strobe_3_of_4;

    if (calc_strobe && first_row_flag && !first_column_flag || strobe_3_of_4) begin
      waddr <= waddr - EFFECTIVE_WIDTH;
    end
    else if (strobe_2_of_2 || strobe_2_of_4 || strobe_4_of_4) begin
      waddr <= waddr + EFFECTIVE_WIDTH + 1;
    end
    else if (wr) begin
      if (waddr < 6 * EFFECTIVE_WIDTH-1) waddr <= waddr + 1;
      else                               waddr <= 0;
    end
  end
end

assign wr = strobe_normal        ||
            strobe_end_of_column ||
            strobe_2_of_2        ||
            strobe_2_of_4        ||
            strobe_3_of_4        ||
            strobe_4_of_4;

assign strobe_normal = (calc_strobe & !first_column_flag);

endmodule
