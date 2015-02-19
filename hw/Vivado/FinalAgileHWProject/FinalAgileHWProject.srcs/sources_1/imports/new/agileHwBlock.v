module agileHWBlock(
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

pixelProcessor_s1
#(
  .MEM_DEPTH(321)
)
s1
(
  .clk(clk),
  .rst_n(rst_n),

  // ingress port
  .iTDATA(iTDATA),
  .iTUSER(iTUSER),
  .iTKEEP(iTKEEP),
  .iTLAST(iTLAST),
  .iTVALID(iTVALID),
  .oTREADY(oTREADY),

  // egress port
  .oTDATA(oTDATA),
  .oTUSER(oTUSER),
  .oTKEEP(oTKEEP),
  .oTLAST(oTLAST),
  .oTVALID(oTVALID),
  .iTREADY(iTREADY)
);

    
endmodule
