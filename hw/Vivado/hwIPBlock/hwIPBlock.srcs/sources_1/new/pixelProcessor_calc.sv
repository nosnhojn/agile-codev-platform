`define FIRST       29:0
`define FIRST_P     23:0
`define FIRST_I    29:24

`define SECOND     59:30
`define SECOND_P   53:30
`define SECOND_I   59:54

`define THIRD      89:60
`define THIRD_P    83:60
`define THIRD_I    89:84

`define FOURTH    119:90
`define FOURTH_P  113:90
`define FOURTH_I 119:114


module pixelProcessor_calc
#(
  PIXEL_WIDTH = 1920,
  PIXEL_HEIGHT = 1080,
  PIXELS_PER_READ = 4,
  BG = 24'hffffff,
  FG = 24'h000000,
  SH = 24'he0e0e0
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

  output logic [119:0] wdata,
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

logic [119:0] upper_slot0;
logic [119:0] upper_slot1;
logic [119:0] upper_slot2;

logic [119:0] middle_slot0;
logic [119:0] middle_slot1;
logic [119:0] middle_slot2;

logic [119:90] lower_slot0;
logic [119:90] lower_slot1;
logic [119:90] lower_slot2;

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    strobe_end_of_column <= 0;

    strobe_2_of_2 <= 0;

    strobe_2_of_4 <= 0;
    strobe_3_of_4 <= 0;
    strobe_4_of_4 <= 0;

    waddr <= 0;
                                    
    upper_slot0 <= { 4 { 6'h0 , BG } };
    upper_slot1 <= { 4 { 6'h0 , BG } };
    upper_slot2 <= { 4 { 6'h0 , BG } };

    middle_slot0 <= { 4 { 6'h0 , BG } };
    middle_slot1 <= { 4 { 6'h0 , BG } };
    middle_slot2 <= { 4 { 6'h0 , BG } };

    lower_slot0 <= { 6'h0 , BG };
    lower_slot1 <= { 6'h0 , BG };
    lower_slot2 <= { 6'h0 , BG };
  end

  else begin
    if (calc_strobe) begin
      upper_slot0 <= group_slot0;
      upper_slot1 <= group_slot1;
      upper_slot2 <= group_slot2;

      middle_slot0 <= upper_slot0;
      middle_slot1 <= upper_slot1;
      middle_slot2 <= upper_slot2;

      lower_slot0 <= middle_slot0[`FOURTH];
      lower_slot1 <= middle_slot1[`FOURTH];
      lower_slot2 <= middle_slot2[`FOURTH];
    end

    strobe_end_of_column <= calc_strobe && last_column_flag;

    strobe_2_of_2 <= calc_strobe && first_row_flag && !first_column_flag ||
                     calc_strobe && last_row_flag && !first_column_flag;

    strobe_2_of_4 <= calc_strobe && first_row_flag && last_column_flag ||
                     calc_strobe && last_row_flag && last_column_flag;

    strobe_3_of_4 <= strobe_2_of_4;

    strobe_4_of_4 <= strobe_3_of_4;

    if (calc_strobe && first_row_flag && first_column_flag) begin
      waddr <= EFFECTIVE_WIDTH;
    end
    else if (calc_strobe && last_row_flag && first_column_flag) begin
      waddr <= waddr + EFFECTIVE_WIDTH;
    end
    else if (calc_strobe && first_row_flag && !first_column_flag ||
             calc_strobe && last_row_flag && !first_column_flag ||
             strobe_3_of_4) begin
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

always @* begin
  wdata = 0;

  //------------------------------------------
  // calculations for the 1st (normal) strobe
  //------------------------------------------
  if (calc_strobe) begin
    wdata[`FIRST] = upper_slot1[`FIRST];
    if (upper_slot1[`FIRST_P] == BG &&

        middle_slot0[`FOURTH_P] == FG ||
        upper_slot0[`FIRST_P] == FG ||
        upper_slot0[`SECOND_P] == FG ||

        middle_slot1[`FOURTH_P] == FG ||
        upper_slot1[`SECOND_P] == FG ||

        middle_slot2[`FOURTH_P] == FG ||
        upper_slot2[`FIRST_P] == FG ||
        upper_slot2[`SECOND_P] == FG)
    begin
      wdata[`FIRST] = { upper_slot1[`FIRST_I] , SH };
    end

    wdata[`SECOND] = upper_slot1[`SECOND];
    if (upper_slot1[`SECOND_P] == BG &&
        upper_slot0[`FIRST_P] == FG ||
        upper_slot0[`SECOND_P] == FG ||
        upper_slot0[`THIRD_P] == FG ||
        upper_slot1[`FIRST_P] == FG ||
        upper_slot1[`THIRD_P] == FG ||
        upper_slot2[`FIRST_P] == FG ||
        upper_slot2[`SECOND_P] == FG ||
        upper_slot2[`THIRD_P] == FG)
    begin
      wdata[`SECOND] = { upper_slot1[`SECOND_I] , SH };
    end

    wdata[`THIRD] = upper_slot1[`THIRD];
    if (upper_slot1[`THIRD_P] == BG &&
        upper_slot0[`SECOND_P] == FG ||
        upper_slot0[`THIRD_P] == FG  ||
        upper_slot0[`FOURTH_P] == FG ||
        upper_slot1[`SECOND_P] == FG ||
        upper_slot1[`FOURTH_P] == FG ||
        upper_slot2[`SECOND_P] == FG ||
        upper_slot2[`THIRD_P] == FG  ||
        upper_slot2[`FOURTH_P] == FG)
    begin
      wdata[`THIRD] = { upper_slot1[`THIRD_I] , SH };
    end

    wdata[`FOURTH] = upper_slot1[`FOURTH];
    if (upper_slot1[`FOURTH_P] == BG &&
        upper_slot0[`THIRD_P] == FG ||
        upper_slot0[`FOURTH_P] == FG ||
        group_slot0[`FIRST_P] == FG ||
        upper_slot1[`THIRD_P] == FG ||
        group_slot1[`FIRST_P] == FG ||
        upper_slot2[`THIRD_P] == FG  ||
        upper_slot2[`FOURTH_P] == FG ||
        group_slot2[`FIRST_P] == FG)
    begin
      wdata[`FOURTH] = { upper_slot1[`FOURTH_I] , SH };
    end
  end

  //----------------------------------------------------
  // calculations for the 2nd strobe (first row strobe)
  //----------------------------------------------------
  else begin
    wdata[`FIRST] = middle_slot0[`FIRST];
    if (middle_slot0[`FIRST_P] == BG &&
        lower_slot0[`FOURTH_P] == FG ||
        middle_slot0[`SECOND_P] == FG ||
        lower_slot1[`FOURTH_P] == FG ||
        middle_slot1[`FIRST_P] == FG ||
        middle_slot1[`SECOND_P] == FG)
    begin
      wdata[`FIRST] = { middle_slot0[`FIRST_I] , SH };
    end

    wdata[`SECOND] = middle_slot0[`SECOND];
    if (middle_slot0[`SECOND_P] == BG &&
        middle_slot0[`FIRST_P] == FG ||
        middle_slot0[`THIRD_P] == FG ||
        middle_slot1[`FIRST_P] == FG ||
        middle_slot1[`SECOND_P] == FG ||
        middle_slot1[`THIRD_P] == FG)
    begin
      wdata[`SECOND] = { middle_slot0[`SECOND_I] , SH };
    end

    wdata[`THIRD] = middle_slot0[`THIRD];
    if (middle_slot0[`THIRD_P] == BG &&
        middle_slot0[`SECOND_P] == FG ||
        middle_slot0[`FOURTH_P] == FG ||
        middle_slot1[`SECOND_P] == FG ||
        middle_slot1[`THIRD_P] == FG  ||
        middle_slot1[`FOURTH_P] == FG)
    begin
      wdata[`THIRD] = { middle_slot0[`THIRD_I] , SH };
    end

    wdata[`FOURTH] = middle_slot0[`FOURTH];
    if (middle_slot0[`FOURTH_P] == BG &&
        middle_slot0[`THIRD_P] == FG ||
        upper_slot0[`FIRST_P] == FG ||
        middle_slot1[`THIRD_P] == FG  ||
        middle_slot1[`FOURTH_P] == FG ||
        upper_slot1[`FIRST_P] == FG)
    begin
      wdata[`FOURTH] = { middle_slot0[`FOURTH_I] , SH };
    end
  end

  //--------------------------------------------------------------
  // as upper_slots are shifted to middle_slots, we need to carry
  // over the lower[`FOURTH] so it doesn't get shifted out before
  // it's used
  //--------------------------------------------------------------
end

assign wr = strobe_normal        ||
            strobe_end_of_column ||
            strobe_2_of_2        ||
            strobe_2_of_4        ||
            strobe_3_of_4        ||
            strobe_4_of_4;

assign strobe_normal = (calc_strobe & !first_column_flag);

endmodule
