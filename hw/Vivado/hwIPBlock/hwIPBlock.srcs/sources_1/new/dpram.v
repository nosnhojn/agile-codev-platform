module dpram
#(
  DPRAM_DEPTH = 1,
  DPRAM_PORT0_WIDTH = 1,
  DPRAM_PORT1_WIDTH = 1,
  DPRAM_PORT0_ADDR_WIDTH = 32,
  DPRAM_PORT1_ADDR_WIDTH = 32
)
(
  input clk,
  input rst_n,

  input [DPRAM_PORT0_WIDTH-1:0] wdata_0,
  input [DPRAM_PORT0_ADDR_WIDTH-1:0] waddr_0,
  input wr_0,

  input [DPRAM_PORT1_WIDTH-1:0] wdata_1,
  input [DPRAM_PORT1_ADDR_WIDTH-1:0] waddr_1,
  input wr_1,

  output logic [DPRAM_PORT0_WIDTH-1:0] rdata_0,
  input        [DPRAM_PORT0_ADDR_WIDTH-1:0] raddr_0,

  output logic [DPRAM_PORT1_WIDTH-1:0] rdata_1,
  input        [DPRAM_PORT1_ADDR_WIDTH-1:0] raddr_1
);

logic [DPRAM_PORT0_WIDTH-1:0] mem [DPRAM_DEPTH-1:0];

logic [DPRAM_PORT1_WIDTH-1:0] next_rdata_1;

always @* begin
  next_rdata_1 = 0;
  for (int i=0; i<DPRAM_PORT1_WIDTH/DPRAM_PORT0_WIDTH; i+=1) begin
    next_rdata_1 = next_rdata_1 | (mem[(raddr_1<<2)+i] << 32*i);
  end
end

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
  end

  else begin
    rdata_0 <= mem[raddr_0];
    rdata_1 <= next_rdata_1;

    if (wr_0) begin
      mem[waddr_0] <= wdata_0;
    end

    if (wr_1) begin
      for (int i=0; i<DPRAM_PORT1_WIDTH/DPRAM_PORT0_WIDTH; i+=1) begin
        mem[(waddr_1<<2)+i] <= wdata_1 >> 32*i;
      end
    end
  end
end

endmodule
