module pixelProcessor
(
  input clk,
  input rst_n,

  // axi4 ingress
  input [31:0]  iTDATA,
  input         iTUSER,
  input [3:0]   iTKEEP,
  input         iTVALID,
  input         iTLAST,
  output        oTREADY,

  // axi4 ingress
  output [31:0] oTDATA,
  output        oTUSER,
  output [3:0]  oTKEEP,
  output        oTVALID,
  output        oTLAST,
  input         iTREADY,

  // ram port 0
  input        [31:0] wdata_0,
  input        [31:0] waddr_0,
  input               wr_0,
  output logic [31:0] rdata_0,
  input        [31:0] raddr_0,

  // ram port 1
  input        [31:0] wdata_1,
  input        [31:0] waddr_1,
  input               wr_1,
  output logic [31:0] rdata_1,
  input        [31:0] raddr_1
);

endmodule
