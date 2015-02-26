module pixelProcessor_calc
#(
  PIXEL_WIDTH = 1920,
  PIXEL_HEIGHT = 1080,
  PIXELS_PER_READ = 4,
  BG = 24'hffffff,
  FG = 24'h000000,
  SH = 24'h1417ed,
  EFFECTIVE_WIDTH = PIXEL_WIDTH/PIXELS_PER_READ,
  BLANK_SLOT = { 10 { 6'h0 , BG } }
)
(
  input         clk,
  input         rst_n,

  output wire   calc_rdy,

  input         calc_strobe,
  input         first_row_flag,
  input         first_column_flag,
  input         last_row_flag,
  input         last_column_flag,

  input [119:0] group_slot0,
  input [119:0] group_slot1,
  input [119:0] group_slot2,

  output logic [119:0] wdata,
  output logic [11:0]  waddr,
  output logic         wr,

  output logic [31:0] egress_avail,
  input               egress_dec,
  output logic        egress_rdy
);


logic [119:0] next_wdata;
logic [11:0]  next_waddr;
wire          next_wr;

logic [11:0]  waddr_hold;
logic         wr_hold;


//----------------------------------------------------
//----------------------------------------------------
// calculate 1, 2 or 4 wr strobe pulses to the memory
// depending on the row/column flags received
//----------------------------------------------------
//----------------------------------------------------

wire  strobe_normal;
logic strobe_last_column;
wire strobe_2_of_2;
logic strobe_2_first_row;
logic strobe_2_last_row;
logic strobe_3first_4last;
logic strobe_2_of_2_first_row;
logic strobe_2_of_2_last_row;
wire strobe_2_of_4;
logic strobe_2_of_4_first_row;
logic strobe_2_of_4_last_row;
wire strobe_3_of_4;
logic strobe_3_of_4_first_row;
logic strobe_3_of_4_last_row;
wire strobe_4_of_4;
logic strobe_4_of_4_first_row;
logic strobe_4_of_4_last_row;

assign strobe_2_of_2 = strobe_2_of_2_first_row ||
                       strobe_2_of_2_last_row;
assign strobe_2_of_4 = strobe_2_of_4_first_row ||
                       strobe_2_of_4_last_row;
assign strobe_3_of_4 = strobe_3_of_4_first_row ||
                       strobe_3_of_4_last_row;
assign strobe_4_of_4 = strobe_4_of_4_first_row ||
                       strobe_4_of_4_last_row;

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    strobe_last_column <= 0;

    strobe_2_first_row <= 0;
    strobe_2_last_row <= 0;
    strobe_3first_4last <= 0;

    strobe_2_of_2_first_row <= 0;
    strobe_2_of_2_last_row <= 0;

    strobe_2_of_4_first_row <= 0;
    strobe_3_of_4_first_row <= 0;
    strobe_4_of_4_first_row <= 0;

    strobe_2_of_4_last_row <= 0;
    strobe_3_of_4_last_row <= 0;
    strobe_4_of_4_last_row <= 0;

    wdata <= 0;
    waddr_hold <= 0;
    waddr <= 0;
    wr_hold <= 0;
    wr <= 0;
  end

  else begin
    strobe_last_column <= calc_strobe && last_column_flag;

    strobe_2_first_row <= calc_strobe && first_row_flag && (!first_column_flag || last_column_flag);
    strobe_2_last_row <= calc_strobe && last_row_flag && (!first_column_flag || last_column_flag);
    strobe_3first_4last <= strobe_2_of_4_first_row || strobe_3_of_4_last_row;

    strobe_2_of_2_first_row <= calc_strobe && first_row_flag && !first_column_flag;
    strobe_2_of_2_last_row <= calc_strobe && last_row_flag && !first_column_flag;

    strobe_2_of_4_first_row <= calc_strobe && first_row_flag && last_column_flag;
    strobe_2_of_4_last_row <= calc_strobe && last_row_flag && last_column_flag;

    strobe_3_of_4_first_row <= strobe_2_of_4_first_row;
    strobe_3_of_4_last_row <= strobe_2_of_4_last_row;

    strobe_4_of_4_first_row <= strobe_3_of_4_first_row;
    strobe_4_of_4_last_row <= strobe_3_of_4_last_row;

    wdata <= next_wdata;

    waddr_hold <= next_waddr;
    waddr <= waddr_hold;
    wr_hold <= next_wr;
    wr <= wr_hold;
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
    next_waddr <= 0;
  end

  else begin
    if (calc_strobe && first_row_flag && first_column_flag) begin
      next_waddr <= EFFECTIVE_WIDTH;
    end
    else if (calc_strobe && last_row_flag && first_column_flag) begin
      next_waddr <= next_waddr + EFFECTIVE_WIDTH;
    end
    else if (calc_strobe && first_row_flag && !first_column_flag ||
             calc_strobe && last_row_flag && !first_column_flag ||
             strobe_3_of_4) begin
      next_waddr <= next_waddr - EFFECTIVE_WIDTH;
    end
    else if (strobe_2_of_2 || strobe_2_of_4 || strobe_4_of_4) begin
      next_waddr <= next_waddr + EFFECTIVE_WIDTH + 1;
    end
    else if (next_wr) begin
      if (next_waddr < 6 * EFFECTIVE_WIDTH-1) next_waddr <= next_waddr + 1;
      else                                    next_waddr <= 0;
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

logic [(10*30)-1:0] next_tmp_slot0[4];
logic [(10*30)-1:0] next_tmp_slot1[4];
logic [(10*30)-1:0] next_tmp_slot2[4];

logic [(10*30)-1:0] tmp_slot0[4];
logic [(10*30)-1:0] tmp_slot1[4];
logic [(10*30)-1:0] tmp_slot2[4];

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

wire [5:0] strobe_vector;

assign strobe_vector = {
                        last_row_flag,
                        strobe_2_first_row,
                        strobe_2_last_row,
                        strobe_3first_4last,
                        strobe_3_of_4_last_row,
                        strobe_4_of_4_first_row
                       };

always @* begin
  int short_shift, long_shift;
  next_wdata = 0;

  for (int pixel_idx=0; pixel_idx<4; pixel_idx++) begin
    next_tmp_slot0[pixel_idx] = 0;
    next_tmp_slot1[pixel_idx] = 0;
    next_tmp_slot2[pixel_idx] = 0;
    short_shift = (30 * (3 - pixel_idx));
    long_shift = (30 * (7 - pixel_idx));

    // take a snapshot of the group slot history
    // (depends on the calc_strobe)
    case (strobe_vector)
      'b100000 : begin
        next_tmp_slot0[pixel_idx] = { group_slot1[29:0] , slot1 };
        next_tmp_slot1[pixel_idx] = { group_slot2[29:0] , slot2 };
        next_tmp_slot2[pixel_idx] = BLANK_SLOT;
   
        next_tmp_slot0[pixel_idx] = next_tmp_slot0[pixel_idx] >> long_shift;
        next_tmp_slot1[pixel_idx] = next_tmp_slot1[pixel_idx] >> long_shift;
        next_tmp_slot2[pixel_idx] = next_tmp_slot2[pixel_idx] >> long_shift;
      end
   
      'b010000 : begin
        next_tmp_slot0[pixel_idx] = BLANK_SLOT;
        next_tmp_slot1[pixel_idx] = slot0 >> short_shift;
        next_tmp_slot2[pixel_idx] = slot1 >> short_shift;
      end
   
      'b001000 : begin
        next_tmp_slot0[pixel_idx] = slot0 >> short_shift;
        next_tmp_slot1[pixel_idx] = slot1 >> short_shift;
        next_tmp_slot2[pixel_idx] = slot2 >> short_shift;
      end
   
      'b000100 : begin
        next_tmp_slot0[pixel_idx] = { { 6'h0 , BG }, slot0 };
        next_tmp_slot1[pixel_idx] = { { 6'h0 , BG }, slot1 };
        next_tmp_slot2[pixel_idx] = { { 6'h0 , BG }, slot2 };
   
        next_tmp_slot0[pixel_idx] = next_tmp_slot0[pixel_idx] >> long_shift;
        next_tmp_slot1[pixel_idx] = next_tmp_slot1[pixel_idx] >> long_shift;
        next_tmp_slot2[pixel_idx] = next_tmp_slot2[pixel_idx] >> long_shift;
      end
   
      'b000010 : begin
        next_tmp_slot0[pixel_idx] = { { 6'h0 , BG }, slot0 };
        next_tmp_slot1[pixel_idx] = { { 6'h0 , BG }, slot1 };
        next_tmp_slot2[pixel_idx] = { { 6'h0 , BG }, slot2 };
   
        next_tmp_slot0[pixel_idx] = next_tmp_slot1[pixel_idx] >> long_shift;
        next_tmp_slot1[pixel_idx] = next_tmp_slot2[pixel_idx] >> long_shift;
        next_tmp_slot2[pixel_idx] = BLANK_SLOT;
      end
   
      'b000001 : begin
        next_tmp_slot0[pixel_idx] = { { 6'h0 , BG }, slot0 };
        next_tmp_slot1[pixel_idx] = { { 6'h0 , BG }, slot1 };
        next_tmp_slot2[pixel_idx] = { { 6'h0 , BG }, slot2 };
   
        next_tmp_slot2[pixel_idx] = next_tmp_slot1[pixel_idx] >> long_shift;
        next_tmp_slot1[pixel_idx] = next_tmp_slot0[pixel_idx] >> long_shift;
        next_tmp_slot0[pixel_idx] = BLANK_SLOT;
      end
   
      'b000000 : begin
        next_tmp_slot0[pixel_idx] = { group_slot0[29:0] , slot0 };
        next_tmp_slot1[pixel_idx] = { group_slot1[29:0] , slot1 };
        next_tmp_slot2[pixel_idx] = { group_slot2[29:0] , slot2 };
   
        next_tmp_slot0[pixel_idx] = next_tmp_slot0[pixel_idx] >> long_shift;
        next_tmp_slot1[pixel_idx] = next_tmp_slot1[pixel_idx] >> long_shift;
        next_tmp_slot2[pixel_idx] = next_tmp_slot2[pixel_idx] >> long_shift;
      end
    endcase

    // find the FG pixels
    above_left =   (tmp_slot0[pixel_idx][83:60] == FG);
    above =        (tmp_slot0[pixel_idx][53:30] == FG);
    above_right =  (tmp_slot0[pixel_idx][23:0] == FG);

    left =         (tmp_slot1[pixel_idx][83:60] == FG);
    center_is_BG = (tmp_slot1[pixel_idx][53:30] == BG);
    right =        (tmp_slot1[pixel_idx][23:0] == FG);

    below_left =   (tmp_slot2[pixel_idx][83:60] == FG);
    below =        (tmp_slot2[pixel_idx][53:30] == FG);
    below_right =  (tmp_slot2[pixel_idx][23:0] == FG);

    any_surrounding_is_FG = (above_left || above || above_right || left || right || below_left || below || below_right);

    if (center_is_BG && any_surrounding_is_FG) next_wdata |= { tmp_slot1[pixel_idx][59:54] , SH } << (3-pixel_idx) * 30;
    else                                       next_wdata |=   tmp_slot1[pixel_idx][59:30]        << (3-pixel_idx) * 30;
  end
end

/*
always @(negedge clk) begin
      $display("group_slot0:0x%0x", group_slot0);
      $display("group_slot1:0x%0x", group_slot1);
      $display("group_slot2:0x%0x", group_slot2);
end*/


always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    for (int pixel_idx=0; pixel_idx<4; pixel_idx++) begin
      tmp_slot0[pixel_idx] <= 0;
      tmp_slot1[pixel_idx] <= 0;
      tmp_slot2[pixel_idx] <= 0;
    end
  end else begin
    for (int pixel_idx=0; pixel_idx<4; pixel_idx++) begin
      tmp_slot0[pixel_idx] <= next_tmp_slot0[pixel_idx];
      tmp_slot1[pixel_idx] <= next_tmp_slot1[pixel_idx];
      tmp_slot2[pixel_idx] <= next_tmp_slot2[pixel_idx];
    end
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
        slot0 <= { group_slot0 , { 5 { 6'h0 , BG } } };
        slot1 <= { group_slot1 , { 5 { 6'h0 , BG } } };
        slot2 <= { group_slot2 , { 5 { 6'h0 , BG } } };
      end else begin
        slot0 <= { group_slot0 , slot0[(9*30)-1:(4*30)] };
        slot1 <= { group_slot1 , slot1[(9*30)-1:(4*30)] };
        slot2 <= { group_slot2 , slot2[(9*30)-1:(4*30)] };
      end
    end
  end
end

//--------------
// flow control
//--------------
always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    egress_avail <= 0;
    egress_rdy <= 0;
  end

  else begin
    egress_avail <= egress_avail
                   + PIXEL_WIDTH * (calc_strobe && last_column_flag)
                   + PIXEL_WIDTH * 2 * (calc_strobe && last_column_flag && last_row_flag)
                   - egress_dec;
    egress_rdy <= (egress_avail > 10);
  end
end

assign calc_rdy = (egress_avail < (5 * PIXEL_WIDTH - 12));


//--------------------------
// misc combinational logic
//--------------------------

assign next_wr = strobe_normal        ||
                 strobe_last_column ||
                 strobe_2_of_2        ||
                 strobe_2_of_4        ||
                 strobe_3_of_4        ||
                 strobe_4_of_4;

assign strobe_normal = (calc_strobe & !first_column_flag);

endmodule
