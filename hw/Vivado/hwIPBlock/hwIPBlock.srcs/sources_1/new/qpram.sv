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

clk_wiz_0 clk2 (.clk_in1(clk),
                .clk_out1(clk_i),
                .resetn(rst_n),
                .locked());

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
  end

  else begin
    rst_i_n <= 1;
  end
end

logic wr_0_int;
logic [QPRAM_PORT0_WIDTH-1:0] wdata_0_int;
logic [QPRAM_PORT0_ADDR_WIDTH-1:0] waddr_0_int;

logic wr_1_int;
logic [QPRAM_PORT1_WIDTH-1:0] wdata_1_int;
logic [QPRAM_PORT1_ADDR_WIDTH-1:0] waddr_1_int;

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    wr_0_int <= 0;
    waddr_0_int <= 0;
    wdata_0_int <= 0;

    wr_1_int <= 0;
    waddr_1_int <= 0;
    wdata_1_int <= 0;
  end
  else begin
    wr_0_int <= wr_0;
    waddr_0_int <= waddr_0;
    wdata_0_int <= wdata_0;

    wr_1_int <= wr_1;
    waddr_1_int <= waddr_1;
    wdata_1_int <= wdata_1;
  end
end

logic        wea;
logic [QPRAM_PORT0_ADDR_WIDTH-1:0] addra;
logic        web;
logic [QPRAM_PORT1_ADDR_WIDTH-1:0]  addrb;
logic read_cycle;

always @(negedge rst_i_n or posedge clk_i) begin
  if (!rst_i_n) begin
    read_cycle <= 0;
    wea <= 0;
    web <= 0;

    rdata_0 <= 0;
    rdata_1 <= 0;
  end

  else begin
    read_cycle <= ~read_cycle;
    if (read_cycle) begin
      wea <= wr_0;
      addra <= waddr_0;

      web <= wr_1;
      addrb <= waddr_1;
    end
    else begin
      wea <= 0;
      addra <= raddr_0;

      web <= 0;
      addrb <= raddr_1;
    end

    rdata_0 <= rdata_0_i;
    rdata_1 <= rdata_1_i;
  end
end

blk_mem_gen_0 blk_mem
(
 .clka(clk_i),
 .wea(wea),
 .addra(addra),
 .dina(wdata_0_int),
 .douta(rdata_0_i),

 .clkb(clk_i),
 .web(web),
 .addrb(addrb),
 .dinb(wdata_1_int),
 .doutb(rdata_1_i)
);


endmodule
