module dpram
#(
  SIZE = 16
)
(
  input clk,
  input rst_n,

  input [31:0] wdata_0,
  input [31:0] waddr_0,
  input wr_0,

  input [31:0] wdata_1,
  input [31:0] waddr_1,
  input wr_1,

  output logic [31:0] rdata_0,
  input        [31:0] raddr_0,

  output logic [31:0] rdata_1,
  input        [31:0] raddr_1
);

logic [31:0] mem [SIZE-1:0];

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    for (int i=0; i<SIZE; i++) begin
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
