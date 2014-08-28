module dpram
#(
  DPRAM_DEPTH = 1,
  DPRAM_PORT0_WIDTH = 1,
  DPRAM_PORT1_WIDTH = 1
)
(
  input clk,
  input rst_n,

  input [DPRAM_PORT0_WIDTH-1:0] wdata_0,
  input [31:0] waddr_0,
  input wr_0,

  input [DPRAM_PORT1_WIDTH-1:0] wdata_1,
  input [31:0] waddr_1,
  input wr_1,

  output logic [DPRAM_PORT0_WIDTH-1:0] rdata_0,
  input        [31:0] raddr_0,

  output logic [DPRAM_PORT1_WIDTH-1:0] rdata_1,
  input        [31:0] raddr_1
);

logic [31:0] mem [DPRAM_DEPTH-1:0];

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    for (int i=0; i<DPRAM_DEPTH; i++) begin
      mem[i] <= 'hx;
    end
  end

  else begin
    rdata_0 <= mem[raddr_0];
    rdata_1 <= mem[raddr_1];

    if (wr_0) begin
      mem[waddr_0] <= wdata_0;
    end

    if (wr_1) begin
      mem[waddr_1] <= wdata_1;
    end
  end
end

endmodule
