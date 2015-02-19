// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.3 (lin32) Build 329390 Wed Oct 16 18:28:36 MDT 2013
// Date        : Wed Feb 18 16:15:07 2015
// Host        : agilehw-laptop running 32-bit Ubuntu 10.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/sdpram30x15360/sdpram30x15360_stub.v
// Design      : sdpram30x15360
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module sdpram30x15360(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[13:0],dina[29:0],clkb,addrb[13:0],doutb[29:0]" */;
  input clka;
  input [0:0]wea;
  input [13:0]addra;
  input [29:0]dina;
  input clkb;
  input [13:0]addrb;
  output [29:0]doutb;
endmodule
