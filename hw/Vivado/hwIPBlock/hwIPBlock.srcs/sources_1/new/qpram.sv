module qpram
#(
  QPRAM_DEPTH = 1,
  QPRAM_PORT0_WIDTH = 1,
  QPRAM_PORT1_WIDTH = 1,
  QPRAM_PORT0_ADDR_WIDTH = 32,
  QPRAM_PORT1_ADDR_WIDTH = 32
)
(
  input clk,
  input rst_n,

  input [QPRAM_PORT0_WIDTH-1:0] wdata_0,
  input [QPRAM_PORT0_ADDR_WIDTH-1:0] waddr_0,
  input wr_0,

  input [QPRAM_PORT1_WIDTH-1:0] wdata_1,
  input [QPRAM_PORT1_ADDR_WIDTH-1:0] waddr_1,
  input wr_1,

  output logic [QPRAM_PORT0_WIDTH-1:0] rdata_0,
  input        [QPRAM_PORT0_ADDR_WIDTH-1:0] raddr_0,

  output logic [QPRAM_PORT1_WIDTH-1:0] rdata_1,
  input        [QPRAM_PORT1_ADDR_WIDTH-1:0] raddr_1
);

wire [QPRAM_PORT0_WIDTH-1:0] rdata_0_i;
wire [QPRAM_PORT1_WIDTH-1:0] rdata_1_i;

wire clk_i;
logic rst_i_n;

clk_wiz_0_clk_wiz clk2 (clk, clk_i, rst_n);

logic [QPRAM_PORT0_WIDTH-1:0] mem [QPRAM_DEPTH-1:0];

logic [QPRAM_PORT1_WIDTH-1:0] next_rdata_1;

always @* begin
  next_rdata_1 = 0;
  for (int i=0; i<QPRAM_PORT1_WIDTH/QPRAM_PORT0_WIDTH; i+=1) begin
    next_rdata_1 = next_rdata_1 | (mem[(raddr_1<<2)+i] << QPRAM_PORT0_WIDTH*i);
  end
end

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    rst_i_n <= 0;
    rdata_0 <= 0;
    rdata_1 <= 0;
  end

  else begin
    rst_i_n <= 1;
    rdata_0 <= rdata_0_i;
    rdata_1 <= rdata_1_i;
  end
end

logic read_cycle;
always @(negedge rst_i_n or posedge clk_i) begin
  if (!rst_i_n) begin
    read_cycle <= 1;
  end

  else begin
    read_cycle <= ~read_cycle;
  end
end


wire        wea;
wire [QPRAM_PORT0_ADDR_WIDTH-1:0] addra;
wire        web;
wire [QPRAM_PORT1_ADDR_WIDTH-1:0]  addrb;

assign wea = (read_cycle) ? 1'b0 : wr_0;
assign addra = (read_cycle) ? raddr_0 : waddr_0;

assign web = (read_cycle) ? 1'b0 : wr_1;
assign addrb = (read_cycle) ? raddr_1 : waddr_1;

blk_mem_gen_0 blk_mem
(
 .clka(clk_i),
 .wea(wea),
 .addra(addra),
 .dina(wdata_0),
 .douta(rdata_0_i),

 .clkb(clk_i),
 .web(web),
 .addrb(addrb),
 .dinb(wdata_1),
 .doutb(rdata_1_i)
);


endmodule
