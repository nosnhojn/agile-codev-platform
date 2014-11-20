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

logic [119:0] lower_slot0;
logic [119:0] lower_slot1;
logic [119:0] lower_slot2;

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    strobe_end_of_column <= 0;

    strobe_2_of_2 <= 0;

    strobe_2_of_4 <= 0;
    strobe_3_of_4 <= 0;
    strobe_4_of_4 <= 0;

    waddr <= 0;
  end

  else begin
    if (calc_strobe) begin
      upper_slot0 <= group_slot0;
      upper_slot1 <= group_slot1;
      upper_slot2 <= group_slot2;

      lower_slot0 <= upper_slot0;
      lower_slot1 <= upper_slot1;
      lower_slot2 <= upper_slot2;
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

always @* begin
  wdata = 0;

  // 1st strobe
  if (calc_strobe) begin
    if (upper_slot1[`FIRST_P] == BG) begin
      if (upper_slot0[`FIRST_P] == FG ||
          upper_slot0[`SECOND_P] == FG ||
          upper_slot1[`SECOND_P] == FG ||
          upper_slot2[`FIRST_P] == FG ||
          upper_slot2[`SECOND_P] == FG) begin
        wdata[`FIRST] = { upper_slot1[`FIRST_I] , SH };
      end
      else begin
        wdata[`FIRST] = upper_slot1[`FIRST];
      end
    end
    else begin
      wdata[`FIRST] = upper_slot1[`FIRST];
    end

    if (upper_slot1[`SECOND_P] == BG) begin
      if (upper_slot0[`FIRST_P] == FG ||
          upper_slot0[`SECOND_P] == FG ||
          upper_slot0[`THIRD_P] == FG ||
          upper_slot1[`FIRST_P] == FG ||
          upper_slot1[`THIRD_P] == FG ||
          upper_slot2[`FIRST_P] == FG ||
          upper_slot2[`SECOND_P] == FG ||
          upper_slot2[`THIRD_P] == FG) begin
        wdata[`SECOND] = { upper_slot1[`SECOND_I] , SH };
      end
      else begin
        wdata[`SECOND] = upper_slot1[`SECOND];
      end
    end
    else begin
      wdata[`SECOND] = upper_slot1[`SECOND];
    end

    if (upper_slot1[`THIRD_P] == BG) begin
      if (upper_slot0[`SECOND_P] == FG ||
          upper_slot0[`THIRD_P] == FG  ||
          upper_slot0[`FOURTH_P] == FG ||
          upper_slot1[`SECOND_P] == FG ||
          upper_slot1[`FOURTH_P] == FG ||
          upper_slot2[`SECOND_P] == FG ||
          upper_slot2[`THIRD_P] == FG  ||
          upper_slot2[`FOURTH_P] == FG) begin
        wdata[`THIRD] = { upper_slot1[`THIRD_I] , SH };
      end
      else begin
        wdata[`THIRD] = upper_slot1[`THIRD];
      end
    end
    else begin
      wdata[`THIRD] = upper_slot1[`THIRD];
    end

    if (upper_slot1[`FOURTH_P] == BG) begin
      if (upper_slot0[`THIRD_P] == FG ||
          upper_slot0[`FOURTH_P] == FG ||
          group_slot0[`FIRST_P] == FG ||
          upper_slot1[`THIRD_P] == FG ||
          group_slot1[`FIRST_P] == FG ||
          upper_slot2[`THIRD_P] == FG  ||
          upper_slot2[`FOURTH_P] == FG ||
          group_slot2[`FIRST_P] == FG) begin
        wdata[`FOURTH] = { upper_slot1[`FOURTH_I] , SH };
      end
      else begin
        wdata[`FOURTH] = upper_slot1[`FOURTH];
      end
    end
    else begin
      wdata[`FOURTH] = upper_slot1[`FOURTH];
    end
    if (upper_slot1[`FIRST_P] == BG) begin
      if (upper_slot0[`FIRST_P] == FG ||
          upper_slot0[`SECOND_P] == FG ||
          upper_slot1[`SECOND_P] == FG ||
          upper_slot2[`FIRST_P] == FG ||
          upper_slot2[`SECOND_P] == FG) begin
        wdata[`FIRST] = { upper_slot1[`FIRST_I] , SH };
      end
      else begin
        wdata[`FIRST] = upper_slot1[`FIRST];
      end
    end
    else begin
      wdata[`FIRST] = upper_slot1[`FIRST];
    end

    if (upper_slot1[`SECOND_P] == BG) begin
      if (upper_slot0[`FIRST_P] == FG ||
          upper_slot0[`SECOND_P] == FG ||
          upper_slot0[`THIRD_P] == FG ||
          upper_slot1[`FIRST_P] == FG ||
          upper_slot1[`THIRD_P] == FG ||
          upper_slot2[`FIRST_P] == FG ||
          upper_slot2[`SECOND_P] == FG ||
          upper_slot2[`THIRD_P] == FG) begin
        wdata[`SECOND] = { upper_slot1[`SECOND_I] , SH };
      end
      else begin
        wdata[`SECOND] = upper_slot1[`SECOND];
      end
    end
    else begin
      wdata[`SECOND] = upper_slot1[`SECOND];
    end

    if (upper_slot1[`THIRD_P] == BG) begin
      if (upper_slot0[`SECOND_P] == FG ||
          upper_slot0[`THIRD_P] == FG  ||
          upper_slot0[`FOURTH_P] == FG ||
          upper_slot1[`SECOND_P] == FG ||
          upper_slot1[`FOURTH_P] == FG ||
          upper_slot2[`SECOND_P] == FG ||
          upper_slot2[`THIRD_P] == FG  ||
          upper_slot2[`FOURTH_P] == FG) begin
        wdata[`THIRD] = { upper_slot1[`THIRD_I] , SH };
      end
      else begin
        wdata[`THIRD] = upper_slot1[`THIRD];
      end
    end
    else begin
      wdata[`THIRD] = upper_slot1[`THIRD];
    end

    if (upper_slot1[`FOURTH_P] == BG) begin
      if (upper_slot0[`THIRD_P] == FG ||
          upper_slot0[`FOURTH_P] == FG ||
          group_slot0[`FIRST_P] == FG ||
          upper_slot1[`THIRD_P] == FG ||
          group_slot1[`FIRST_P] == FG ||
          upper_slot2[`THIRD_P] == FG  ||
          upper_slot2[`FOURTH_P] == FG ||
          group_slot2[`FIRST_P] == FG) begin
        wdata[`FOURTH] = { upper_slot1[`FOURTH_I] , SH };
      end
      else begin
        wdata[`FOURTH] = upper_slot1[`FOURTH];
      end
    end
    else begin
      wdata[`FOURTH] = upper_slot1[`FOURTH];
    end
  end


  // 2nd strobe
  else begin
    if (lower_slot0[`FIRST_P] == BG) begin
      if (lower_slot0[`SECOND_P] == FG ||
          lower_slot1[`FIRST_P] == FG ||
          lower_slot1[`SECOND_P] == FG) begin
        wdata[`FIRST] = { lower_slot0[`FIRST_I] , SH };
      end
      else begin
        wdata[`FIRST] = lower_slot0[`FIRST];
      end
    end
    else begin
      wdata[`FIRST] = lower_slot0[`FIRST];
    end

    if (lower_slot0[`SECOND_P] == BG) begin
      if (lower_slot0[`FIRST_P] == FG ||
          lower_slot0[`THIRD_P] == FG ||
          lower_slot1[`FIRST_P] == FG ||
          lower_slot1[`SECOND_P] == FG ||
          lower_slot1[`THIRD_P] == FG) begin
        wdata[`SECOND] = { lower_slot0[`SECOND_I] , SH };
      end
      else begin
        wdata[`SECOND] = lower_slot0[`SECOND];
      end
    end
    else begin
      wdata[`SECOND] = lower_slot0[`SECOND];
    end

    if (lower_slot0[`THIRD_P] == BG) begin
      if (lower_slot0[`SECOND_P] == FG ||
          lower_slot0[`FOURTH_P] == FG ||
          lower_slot1[`SECOND_P] == FG ||
          lower_slot1[`THIRD_P] == FG  ||
          lower_slot1[`FOURTH_P] == FG) begin
        wdata[`THIRD] = { lower_slot0[`THIRD_I] , SH };
      end
      else begin
        wdata[`THIRD] = lower_slot0[`THIRD];
      end
    end
    else begin
      wdata[`THIRD] = lower_slot0[`THIRD];
    end

    if (lower_slot0[`FOURTH_P] == BG) begin
      if (lower_slot0[`THIRD_P] == FG ||
          upper_slot0[`FIRST_P] == FG ||
          lower_slot1[`THIRD_P] == FG  ||
          lower_slot1[`FOURTH_P] == FG ||
          upper_slot1[`FIRST_P] == FG) begin
        wdata[`FOURTH] = { lower_slot0[`FOURTH_I] , SH };
      end
      else begin
        wdata[`FOURTH] = lower_slot0[`FOURTH];
      end
    end
    else begin
      wdata[`FOURTH] = lower_slot0[`FOURTH];
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
