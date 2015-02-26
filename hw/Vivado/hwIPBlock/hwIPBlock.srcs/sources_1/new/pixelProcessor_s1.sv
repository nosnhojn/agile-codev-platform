module pixelProcessor_s1
#(
  MEM_DEPTH = 11520,
  P0_WIDTH = 30,
  P1_WIDTH = 120,
  P0_ADDR_WIDTH = $clog2(MEM_DEPTH),
  P1_ADDR_WIDTH = $clog2(MEM_DEPTH/4),
  INGRESS_THRESH = 1925,
  INGRESS_FULL = 3*INGRESS_THRESH
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

wire  [P0_ADDR_WIDTH-1:0] ingress_cnt;

wire [P0_WIDTH-1:0] wdata;
wire [P0_ADDR_WIDTH-1:0] waddr;
wire        wr;
wire [P0_WIDTH-1:0] rdata;
wire [P0_ADDR_WIDTH-1:0] raddr;

wire [P0_ADDR_WIDTH-1:0] ingress_read_cnt;
wire         egress_read_cnt;
wire ingress_rdy;

assign ingress_read_cnt = egress_read_cnt;

pixelProcessor_IO
#(
  .MEM_DEPTH(MEM_DEPTH)
)
my_pixelProcessor_IO
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
  .wdata(wdata),
  .waddr(waddr),
  .wr(wr),
  .rdata(rdata),
  .raddr(raddr),

  // control signals
  .ingress_rdy(ingress_rdy),
  .ingress_cnt(),
  .ingress_thresh(INGRESS_THRESH[P0_ADDR_WIDTH-1:0]),
  .ingress_full(INGRESS_FULL[P0_ADDR_WIDTH-1:0]),
  .ingress_read_cnt(ingress_read_cnt), //{ 8'h0 , egress_read_cnt }),
  .ingress_new_pixel(),

  .egress_rdy(ingress_rdy),
  .egress_read_cnt(egress_read_cnt)
);

wire [P1_WIDTH-1:0] wdata_1;
wire [P1_ADDR_WIDTH-1:0] waddr_1;
wire [P1_ADDR_WIDTH-1:0] raddr_1;
wire [P1_WIDTH-1:0] rdata_no_connect;


pqpram my_pqpram
(
  .clk(clk),
  .rst_n(rst_n),

  .wdata_0(wdata),
  .waddr_0(waddr),
  .wr_0(wr),

  .rdata_0(rdata),
  .raddr_0(raddr),

  //.wdata_1(wdata),
  //.waddr_1(waddr),
  .wr_1(0),

  //.rdata_1(rdata),
  .raddr_1(0)
);

/*
sdpram30x15360 my_sdpram
(
  .clka(clk),
  .dina(wdata),
  .addra(waddr),
  .wea(wr),

  .clkb(clk),
  .doutb(rdata),
  .addrb(raddr)
);
*/


endmodule
