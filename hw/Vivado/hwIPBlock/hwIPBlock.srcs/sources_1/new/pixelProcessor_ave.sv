module pixelProcessor_ave
#(
  DATA_WIDTH = 24,
  RAM_DATA_WIDTH = DATA_WIDTH+6,
  RAM_ADDR_WIDTH = 14
)
(
  input clk,
  input rst_n,

  // pipe input
  input [RAM_DATA_WIDTH-1:0] wdata_i,
  input [RAM_ADDR_WIDTH-1:0] waddr_i,
  input                      wr_i,

  // pipe output
  output logic [RAM_DATA_WIDTH-1:0] wdata_o,
  output logic [RAM_ADDR_WIDTH-1:0] waddr_o,
  output logic                      wr_o
);

logic [RAM_DATA_WIDTH-1:0] wdata_d [5];
logic [RAM_ADDR_WIDTH-1:0] waddr_d [5];
logic                      wr_d    [5];


always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    for (int i=0; i<5; i+=1) begin
      wdata_d[i] <= 0;
      waddr_d[i] <= 0;
      wr_d[i] <= 0;
    end
  end else begin
    wdata_d[0] <= wdata_i;
    waddr_d[0] <= waddr_i;
    wr_d[0] <= wr_i;
    for (int i=0; i<4; i+=1) begin
      wdata_d[i+1] <= wdata_d[i];
      waddr_d[i+1] <= waddr_d[i];
      wr_d[i+1] <= wr_d[i];
    end
  end
end

assign wdata_o = wdata_d[4];
assign waddr_o = waddr_d[4];
assign wr_o = wr_d[4];

endmodule
