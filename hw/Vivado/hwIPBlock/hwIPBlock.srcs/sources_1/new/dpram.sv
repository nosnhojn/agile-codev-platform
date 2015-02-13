module sdpram
#(
  QPRAM_DEPTH = 1,
  QPRAM_PORT0_WIDTH = 1,
  QPRAM_PORT0_ADDR_WIDTH = 32,
)
(
  input clk,

  input [QPRAM_PORT0_WIDTH-1:0] wdata_0,
  input [QPRAM_PORT0_ADDR_WIDTH-1:0] waddr_0,
  input wr_0,

  output logic [QPRAM_PORT0_WIDTH-1:0] rdata_0,
  input        [QPRAM_PORT0_ADDR_WIDTH-1:0] raddr_0
);

blk_mem_gen_1 blk_mem
(
 .clka(clk_i),
 .wea(wr_0),
 .addra(waddr_0),
 .dina(wdata_0),

 .clkb(clk),
 .addrb(raddr_0),
 .douta(rdata_0)
);


endmodule
