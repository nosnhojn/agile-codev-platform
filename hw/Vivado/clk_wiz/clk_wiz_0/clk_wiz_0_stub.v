// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.3 (lin32) Build 329390 Wed Oct 16 18:28:36 MDT 2013
// Date        : Wed Feb 11 20:55:35 2015
// Host        : agilehw-laptop running 32-bit Ubuntu 10.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/agilehw/agile-codev-platform/hw/Vivado/clk_wiz/clk_wiz_0/clk_wiz_0_stub.v
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_in1, clk_out1, reset, locked)
/* synthesis syn_black_box black_box_pad_pin="clk_in1,clk_out1,reset,locked" */;
  input clk_in1;
  output clk_out1;
  input reset;
  output locked;
endmodule
