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

wire clk_i;
logic rst_i_n;

logic [QPRAM_PORT0_ADDR_WIDTH-1:0] raddr_i_0;

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
    raddr_i_0 <= 0;
  end

  else begin
    rst_i_n <= 1;
    raddr_i_0 <= raddr_0;
  end
end


always @(negedge rst_i_n or posedge clk_i) begin
  if (!rst_n) begin
  end

  else begin
    rdata_0 <= mem[raddr_i_0];
    rdata_1 <= next_rdata_1;

    if (wr_0) begin
      mem[waddr_0] <= wdata_0;
    end

    if (wr_1) begin
      for (int i=0; i<QPRAM_PORT1_WIDTH/QPRAM_PORT0_WIDTH; i+=1) begin
        mem[(waddr_1<<2)+i] <= wdata_1 >> QPRAM_PORT0_WIDTH*i;
      end
    end
  end
end

endmodule
