module dpram
(
  input clk,
  input rst_n,

  input wdata_0,
  input waddr_0,
  input wr_0,

  input wdata_1,
  input waddr_1,
  input wr_1,

  output logic rdata_0,
  input raddr_0,

  output logic rdata_1,
  input raddr_1
);

endmodule
