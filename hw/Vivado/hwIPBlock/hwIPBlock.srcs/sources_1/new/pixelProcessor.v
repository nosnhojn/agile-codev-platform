module pixelProcessor
(
  input [31:0]  iTDATA,
  input         iTUSER,
  input [3:0]   iTKEEP,
  input         iTVALID,
  input         iTLAST,
  output        oTREADY,
  output [31:0] oTDATA,
  output        oTUSER,
  output [3:0]  oTKEEP,
  output        oTVALID,
  output        oTLAST,
  input         iTREADY,
  input clk,
  input rst
);
    
assign oTDATA = iTDATA;
assign oTUSER = iTUSER;
assign oTKEEP = iTKEEP;
assign oTVALID = iTVALID;
assign oTLAST = iTLAST;
assign oTREADY = iTREADY;

endmodule
