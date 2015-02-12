// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.3 (lin32) Build 329390 Wed Oct 16 18:28:36 MDT 2013
// Date        : Wed Feb 11 20:23:59 2015
// Host        : agilehw-laptop running 32-bit Ubuntu 10.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_0_stub.v
// Design      : blk_mem_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module blk_mem_gen_0(clka, wea, addra, dina, douta, clkb, web, addrb, dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[13:0],dina[29:0],douta[29:0],clkb,web[0:0],addrb[11:0],dinb[119:0],doutb[119:0]" */;
  input clka;
  input [0:0]wea;
  input [13:0]addra;
  input [29:0]dina;
  output [29:0]douta;
  input clkb;
  input [0:0]web;
  input [11:0]addrb;
  input [119:0]dinb;
  output [119:0]doutb;
endmodule
