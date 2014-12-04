module pixelProcessor_calc
#(
  PIXEL_WIDTH = 1920,
  PIXEL_HEIGHT = 1080,
  PIXELS_PER_READ = 4,
  BG = 24'hffffff,
  FG = 24'h000000,
  SH = 24'he0e0e0,
  EFFECTIVE_WIDTH = PIXEL_WIDTH/PIXELS_PER_READ,
  BLANK_SLOT = { 10 { 6'h0 , BG } }
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




//----------------------------------------------------
//----------------------------------------------------
// calculate 1, 2 or 4 wr strobe pulses to the memory
// depending on the row/column flags received
//----------------------------------------------------
//----------------------------------------------------

wire  strobe_normal;
logic strobe_last_column;
logic strobe_2_of_2;
logic strobe_2_of_4;
logic strobe_3_of_4;
logic strobe_4_of_4;

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    strobe_last_column <= 0;

    strobe_2_of_2 <= 0;

    strobe_2_of_4 <= 0;
    strobe_3_of_4 <= 0;
    strobe_4_of_4 <= 0;
  end

  else begin
    strobe_last_column <= calc_strobe && last_column_flag;

    strobe_2_of_2 <= calc_strobe && first_row_flag && !first_column_flag ||
                     calc_strobe && last_row_flag && !first_column_flag;

    strobe_2_of_4 <= calc_strobe && first_row_flag && last_column_flag ||
                     calc_strobe && last_row_flag && last_column_flag;

    strobe_3_of_4 <= strobe_2_of_4;

    strobe_4_of_4 <= strobe_3_of_4;
  end
end


//------------------------------------------------
//------------------------------------------------
// calculate the waddr to the memory based on the
// frame position flags
//------------------------------------------------
//------------------------------------------------

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    waddr <= 0;
  end

  else begin
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


//---------------------------------------------------
//---------------------------------------------------
// cycle through each of the 4 memory locations that
// are being recalculated on a given cycle and
// populate the wdata vector to get written back to
// the memory
//---------------------------------------------------
//---------------------------------------------------

logic [(9*30)-1:0] slot0;
logic [(9*30)-1:0] slot1;
logic [(9*30)-1:0] slot2;

logic [(2*120+30+30)-1:0] tmp_slot0;
logic [(2*120+30+30)-1:0] tmp_slot1;
logic [(2*120+30+30)-1:0] tmp_slot2;

wire [2:0] shift_4_fewer_without_calc_strobe;

logic above_left;
logic above;
logic above_right;
logic left;
logic right;
logic below_left;
logic below;
logic below_right;
logic center_is_BG;
logic any_surrounding_is_FG;

always @* begin
  wdata = 0;

  for (int pixel_idx=0; pixel_idx<4; pixel_idx++) begin
    // take a snapshot of the group slot history
    // (depends on the calc_strobe)
    if (calc_strobe) begin
      tmp_slot0 = { group_slot0[29:0] , slot0 };
      tmp_slot1 = { group_slot1[29:0] , slot1 };
      tmp_slot2 = { group_slot2[29:0] , slot2 };

      tmp_slot0 = tmp_slot0 >> (30 * (7 - pixel_idx));
      tmp_slot1 = tmp_slot1 >> (30 * (7 - pixel_idx));
      tmp_slot2 = tmp_slot2 >> (30 * (7 - pixel_idx));

    end else if (strobe_2_of_2 || strobe_2_of_4) begin
      tmp_slot0 = BLANK_SLOT >> (30 * (3 - pixel_idx));
      tmp_slot1 = slot0 >> (30 * (3 - pixel_idx));
      tmp_slot2 = slot1 >> (30 * (3 - pixel_idx));

    end else if (strobe_3_of_4 || strobe_last_column) begin
      tmp_slot0 = slot0 >> (30 * (7 - pixel_idx));
      tmp_slot1 = slot1 >> (30 * (7 - pixel_idx));
      tmp_slot2 = slot2 >> (30 * (7 - pixel_idx));

    end else if (strobe_4_of_4) begin
      tmp_slot0 = BLANK_SLOT >> (30 * (7 - pixel_idx));
      tmp_slot1 = slot0 >> (30 * (7 - pixel_idx));
      tmp_slot2 = slot1 >> (30 * (7 - pixel_idx));
    end

    // find the FG pixels
    above_left =   (tmp_slot0[83:60] == FG);
    above =        (tmp_slot0[53:30] == FG);
    above_right =  (tmp_slot0[23:0] == FG);

    left =         (tmp_slot1[83:60] == FG);
    center_is_BG = (tmp_slot1[53:30] == BG);
    right =        (tmp_slot1[23:0] == FG);

    below_left =   (tmp_slot2[83:60] == FG);
    below =        (tmp_slot2[53:30] == FG);
    below_right =  (tmp_slot2[23:0] == FG);

    any_surrounding_is_FG = (above_left || above || above_right || left || right || below_left || below || below_right);

    if (center_is_BG && any_surrounding_is_FG) wdata |= { tmp_slot1[59:54] , SH } << (3-pixel_idx) * 30;
    else                                       wdata |=   tmp_slot1[59:30]          << (3-pixel_idx) * 30;
  end
end


//---------------------------------------
// shift buffer for the group_slot input
//---------------------------------------

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    slot0 <= BLANK_SLOT;
    slot1 <= BLANK_SLOT;
    slot2 <= BLANK_SLOT;
  end

  else begin
    if (calc_strobe) begin
      if (first_column_flag) begin
        slot0 = { group_slot0 , { 5 { 6'h0 , BG } } };
        slot1 = { group_slot1 , { 5 { 6'h0 , BG } } };
        slot2 = { group_slot2 , { 5 { 6'h0 , BG } } };
      end else begin
        slot0 = { group_slot0 , slot0[(9*30)-1:(4*30)] };
        slot1 = { group_slot1 , slot1[(9*30)-1:(4*30)] };
        slot2 = { group_slot2 , slot2[(9*30)-1:(4*30)] };
      end
    end
  end
end


//--------------------------
// misc combinational logic
//--------------------------

assign wr = strobe_normal        ||
            strobe_last_column ||
            strobe_2_of_2        ||
            strobe_2_of_4        ||
            strobe_3_of_4        ||
            strobe_4_of_4;

assign strobe_normal = (calc_strobe & !first_column_flag);
assign shift_4_fewer_without_calc_strobe = !calc_strobe<<2;

endmodule
