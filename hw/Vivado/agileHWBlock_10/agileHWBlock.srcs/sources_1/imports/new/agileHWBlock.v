`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2014 09:58:00 PM
// Design Name: 
// Module Name: agileHWBlock
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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
    
    assign oTDATA = (iTDATA == 'h00000000) ? 'h000055ff : iTDATA;
    assign oTUSER = iTUSER;
    assign oTKEEP = iTKEEP;
    assign oTVALID = iTVALID;
    assign oTLAST = iTLAST;
    assign oTREADY = iTREADY;
endmodule
