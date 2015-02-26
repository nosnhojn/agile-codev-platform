module pixelProcessor_s2
#(
  MEM_DEPTH = 8*1920,
  P0_WIDTH = 30,
  P1_WIDTH = 120,
  P0_ADDR_WIDTH = $clog2(MEM_DEPTH),
  P1_ADDR_WIDTH = $clog2(MEM_DEPTH/4),
  INGRESS_THRESH = 1925,
  INGRESS_FULL = 5*1920
)
(
  input clk,
  input rst_n,

  // axi4 ingress
  input [P0_WIDTH-7:0]  iTDATA,
  input                 iTUSER,
  input [3:0]           iTKEEP,
  input                 iTLAST,
  input                 iTVALID,
  output wire           oTREADY,

  // axi4 ingress
  output wire [P0_WIDTH-7:0] oTDATA,
  output wire                oTUSER,
  output wire [3:0]          oTKEEP,
  output wire                oTLAST,
  output wire                oTVALID,
  input                      iTREADY
);


wire [P0_ADDR_WIDTH-1:0] ingress_cnt;

wire [P0_WIDTH-1:0] wdata_io;
wire [P0_ADDR_WIDTH-1:0] waddr_io;
wire        wr_io;
wire [P0_WIDTH-1:0] rdata_io;
wire [P0_ADDR_WIDTH-1:0] raddr_io;

wire [P1_WIDTH-1:0] wdata_calc;
wire [P1_ADDR_WIDTH-1:0] waddr_calc;
wire        wr_calc;

wire [P1_WIDTH-1:0] rdata_proc;
wire [P1_ADDR_WIDTH-1:0] raddr_proc;

wire         calc_rdy;
wire         calc_strobe;
wire         first_row_flag;
wire         first_column_flag;
wire         last_row_flag;
wire         last_column_flag;
wire [P1_WIDTH-1:0] slot0;
wire [P1_WIDTH-1:0] slot1;
wire [P1_WIDTH-1:0] slot2;

wire [P0_ADDR_WIDTH-1:0] ingress_read_cnt;
wire         egress_read_cnt;
assign ingress_read_cnt = egress_read_cnt;


pixelProcessor_IO
#(
  .MEM_DEPTH(MEM_DEPTH)
)
IO
(
  .clk(clk),
  .rst_n(rst_n),

  // ingress port
  .iTDATA(iTDATA),
  .iTUSER(iTUSER),
  .iTKEEP(iTKEEP),
  .iTLAST(iTLAST),
  .iTVALID(iTVALID),
  .oTREADY(oTREADY),

  // egress port
  .oTDATA(oTDATA),
  .oTUSER(oTUSER),
  .oTKEEP(oTKEEP),
  .oTLAST(oTLAST),
  .oTVALID(oTVALID),
  .iTREADY(iTREADY),

  // ram port
  .wdata(wdata_io),
  .waddr(waddr_io),
  .wr(wr_io),
  .rdata(rdata_io),
  .raddr(raddr_io),

  // control signals
  .ingress_rdy(), // no connect
  .ingress_cnt(), // no connect
  .ingress_thresh(INGRESS_THRESH[P0_ADDR_WIDTH-1:0]),
  .ingress_full(INGRESS_FULL[P0_ADDR_WIDTH-1:0]),
  .ingress_read_cnt(ingress_read_cnt), // connected to egress_read_cnt
  .ingress_new_pixel(ingress_new_pixel),

  .egress_rdy(egress_rdy),
  .egress_read_cnt(egress_read_cnt)
);



pqpram my_pqpram
(
  .clk(clk),
  .rst_n(rst_n),

  .wdata_0(wdata_io),
  .waddr_0(waddr_io),
  .wr_0(wr_io),

  .rdata_0(rdata_io),
  .raddr_0(raddr_io),

  .wdata_1(wdata_calc),
  .waddr_1(waddr_calc),
  .wr_1(wr_calc),

  .rdata_1(rdata_proc),
  .raddr_1(raddr_proc)
);


pixelProcessor_pull
  #(
    .PIXEL_WIDTH(1920),
    .PIXEL_HEIGHT(1080),
    .PIXELS_PER_READ(4)
  )
  proc
  (
  .clk(clk),
  .rst_n(rst_n),

  .rdata(rdata_proc),
  .raddr(raddr_proc),

  .ingress_used_cnt(),
  .ingress_available_cnt(),
  .ingress_rdy_thresh(3*1920),
  .ingress_new_pixel(ingress_new_pixel),

  .calc_rdy(calc_rdy),

  .calc_strobe(calc_strobe),
  .first_row_flag(first_row_flag),
  .first_column_flag(first_column_flag),
  .last_row_flag(last_row_flag),
  .last_column_flag(last_column_flag),

  .group_slot0(slot0),
  .group_slot1(slot1),
  .group_slot2(slot2)
);

pixelProcessor_calc calc(
  .clk(clk),
  .rst_n(rst_n),

  .calc_rdy(calc_rdy),

  .calc_strobe(calc_strobe),
  .first_row_flag(first_row_flag),
  .first_column_flag(first_column_flag),
  .last_row_flag(last_row_flag),
  .last_column_flag(last_column_flag),

  .group_slot0(slot0),
  .group_slot1(slot1),
  .group_slot2(slot2),

  .wdata(wdata_calc),
  .waddr(waddr_calc),
  .wr(wr_calc),

  .egress_rdy(egress_rdy),
  .egress_dec(egress_read_cnt)
);

endmodule
