// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.3 (lin32) Build 329390 Wed Oct 16 18:28:36 MDT 2013
// Date        : Wed Feb 11 20:23:59 2015
// Host        : agilehw-laptop running 32-bit Ubuntu 10.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_0_funcsim.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_0,Vivado 2013.3" *) (* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_0,{}" *) 
(* core_generation_info = "blk_mem_gen_0,blk_mem_gen_v8_0,{x_ipProduct=Vivado 2013.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=blk_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,C_FAMILY=zynq,C_XDEVICEFAMILY=zynq,C_ELABORATION_DIR=./,C_INTERFACE_TYPE=0,C_AXI_TYPE=1,C_AXI_SLAVE_TYPE=0,C_HAS_AXI_ID=0,C_AXI_ID_WIDTH=4,C_MEM_TYPE=2,C_BYTE_SIZE=9,C_ALGORITHM=1,C_PRIM_TYPE=1,C_LOAD_INIT_FILE=0,C_INIT_FILE_NAME=no_coe_file_loaded,C_INIT_FILE=blk_mem_gen_0.mem,C_USE_DEFAULT_DATA=0,C_DEFAULT_DATA=0,C_RST_TYPE=SYNC,C_HAS_RSTA=0,C_RST_PRIORITY_A=CE,C_RSTRAM_A=0,C_INITA_VAL=0,C_HAS_ENA=0,C_HAS_REGCEA=0,C_USE_BYTE_WEA=0,C_WEA_WIDTH=1,C_WRITE_MODE_A=NO_CHANGE,C_WRITE_WIDTH_A=30,C_READ_WIDTH_A=30,C_WRITE_DEPTH_A=15360,C_READ_DEPTH_A=15360,C_ADDRA_WIDTH=14,C_HAS_RSTB=0,C_RST_PRIORITY_B=CE,C_RSTRAM_B=0,C_INITB_VAL=0,C_HAS_ENB=0,C_HAS_REGCEB=0,C_USE_BYTE_WEB=0,C_WEB_WIDTH=1,C_WRITE_MODE_B=NO_CHANGE,C_WRITE_WIDTH_B=120,C_READ_WIDTH_B=120,C_WRITE_DEPTH_B=3840,C_READ_DEPTH_B=3840,C_ADDRB_WIDTH=12,C_HAS_MEM_OUTPUT_REGS_A=0,C_HAS_MEM_OUTPUT_REGS_B=0,C_HAS_MUX_OUTPUT_REGS_A=0,C_HAS_MUX_OUTPUT_REGS_B=0,C_MUX_PIPELINE_STAGES=0,C_HAS_SOFTECC_INPUT_REGS_A=0,C_HAS_SOFTECC_OUTPUT_REGS_B=0,C_USE_SOFTECC=0,C_USE_ECC=0,C_HAS_INJECTERR=0,C_SIM_COLLISION_CHECK=NONE,C_COMMON_CLK=1,C_ENABLE_32BIT_ADDRESS=0,C_DISABLE_WARN_BHV_COLL=1,C_DISABLE_WARN_BHV_RANGE=1,C_USE_BRAM_BLOCK=0,C_CTRL_ECC_ALGO=NONE}" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
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

  wire \<const0> ;
  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [29:0]dina;
  wire [119:0]dinb;
  wire [29:0]douta;
  wire [119:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [119:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

GND GND
       (.G(\<const0> ));
(* C_ADDRA_WIDTH = "14" *) 
   (* C_ADDRB_WIDTH = "12" *) 
   (* C_ALGORITHM = "1" *) 
   (* C_AXI_ID_WIDTH = "4" *) 
   (* C_AXI_SLAVE_TYPE = "0" *) 
   (* C_AXI_TYPE = "1" *) 
   (* C_BYTE_SIZE = "9" *) 
   (* C_COMMON_CLK = "1" *) 
   (* C_CTRL_ECC_ALGO = "NONE" *) 
   (* C_DEFAULT_DATA = "0" *) 
   (* C_DISABLE_WARN_BHV_COLL = "1" *) 
   (* C_DISABLE_WARN_BHV_RANGE = "1" *) 
   (* C_ELABORATION_DIR = "./" *) 
   (* C_ENABLE_32BIT_ADDRESS = "0" *) 
   (* C_FAMILY = "zynq" *) 
   (* C_HAS_AXI_ID = "0" *) 
   (* C_HAS_ENA = "0" *) 
   (* C_HAS_ENB = "0" *) 
   (* C_HAS_INJECTERR = "0" *) 
   (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
   (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
   (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
   (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
   (* C_HAS_REGCEA = "0" *) 
   (* C_HAS_REGCEB = "0" *) 
   (* C_HAS_RSTA = "0" *) 
   (* C_HAS_RSTB = "0" *) 
   (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
   (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
   (* C_INITA_VAL = "0" *) 
   (* C_INITB_VAL = "0" *) 
   (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
   (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
   (* C_INTERFACE_TYPE = "0" *) 
   (* C_LOAD_INIT_FILE = "0" *) 
   (* C_MEM_TYPE = "2" *) 
   (* C_MUX_PIPELINE_STAGES = "0" *) 
   (* C_PRIM_TYPE = "1" *) 
   (* C_READ_DEPTH_A = "15360" *) 
   (* C_READ_DEPTH_B = "3840" *) 
   (* C_READ_WIDTH_A = "30" *) 
   (* C_READ_WIDTH_B = "120" *) 
   (* C_RSTRAM_A = "0" *) 
   (* C_RSTRAM_B = "0" *) 
   (* C_RST_PRIORITY_A = "CE" *) 
   (* C_RST_PRIORITY_B = "CE" *) 
   (* C_RST_TYPE = "SYNC" *) 
   (* C_SIM_COLLISION_CHECK = "NONE" *) 
   (* C_USE_BRAM_BLOCK = "0" *) 
   (* C_USE_BYTE_WEA = "0" *) 
   (* C_USE_BYTE_WEB = "0" *) 
   (* C_USE_DEFAULT_DATA = "0" *) 
   (* C_USE_ECC = "0" *) 
   (* C_USE_SOFTECC = "0" *) 
   (* C_WEA_WIDTH = "1" *) 
   (* C_WEB_WIDTH = "1" *) 
   (* C_WRITE_DEPTH_A = "15360" *) 
   (* C_WRITE_DEPTH_B = "3840" *) 
   (* C_WRITE_MODE_A = "NO_CHANGE" *) 
   (* C_WRITE_MODE_B = "NO_CHANGE" *) 
   (* C_WRITE_WIDTH_A = "30" *) 
   (* C_WRITE_WIDTH_B = "120" *) 
   (* C_XDEVICEFAMILY = "zynq" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   blk_mem_gen_0blk_mem_gen_v8_0 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .ena(\<const0> ),
        .enb(\<const0> ),
        .injectdbiterr(\<const0> ),
        .injectsbiterr(\<const0> ),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(\<const0> ),
        .regceb(\<const0> ),
        .rsta(\<const0> ),
        .rstb(\<const0> ),
        .s_aclk(\<const0> ),
        .s_aresetn(\<const0> ),
        .s_axi_araddr({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arburst({\<const0> ,\<const0> }),
        .s_axi_arid({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arlen({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_arvalid(\<const0> ),
        .s_axi_awaddr({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awburst({\<const0> ,\<const0> }),
        .s_axi_awid({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awlen({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({\<const0> ,\<const0> ,\<const0> }),
        .s_axi_awvalid(\<const0> ),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(\<const0> ),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(\<const0> ),
        .s_axi_injectsbiterr(\<const0> ),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[119:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(\<const0> ),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .s_axi_wlast(\<const0> ),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(\<const0> ),
        .s_axi_wvalid(\<const0> ),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .wea(wea),
        .web(web));
endmodule

module blk_mem_gen_0blk_mem_gen_generic_cstr
   (douta,
    doutb,
    addra,
    addrb,
    clka,
    clkb,
    dina,
    dinb,
    wea,
    web);
  output [29:0]douta;
  output [119:0]doutb;
  input [13:0]addra;
  input [11:0]addrb;
  input clka;
  input clkb;
  input [29:0]dina;
  input [119:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [29:0]dina;
  wire [119:0]dinb;
  wire [29:0]douta;
  wire [119:0]doutb;
  wire \n_0_ramloop[10].ram.r ;
  wire \n_0_ramloop[11].ram.r ;
  wire \n_0_ramloop[12].ram.r ;
  wire \n_0_ramloop[13].ram.r ;
  wire \n_0_ramloop[2].ram.r ;
  wire \n_0_ramloop[3].ram.r ;
  wire \n_0_ramloop[4].ram.r ;
  wire \n_0_ramloop[5].ram.r ;
  wire \n_0_ramloop[6].ram.r ;
  wire \n_0_ramloop[7].ram.r ;
  wire \n_0_ramloop[8].ram.r ;
  wire \n_0_ramloop[9].ram.r ;
  wire \n_10_ramloop[10].ram.r ;
  wire \n_10_ramloop[11].ram.r ;
  wire \n_10_ramloop[12].ram.r ;
  wire \n_10_ramloop[13].ram.r ;
  wire \n_10_ramloop[2].ram.r ;
  wire \n_10_ramloop[3].ram.r ;
  wire \n_10_ramloop[4].ram.r ;
  wire \n_10_ramloop[5].ram.r ;
  wire \n_10_ramloop[6].ram.r ;
  wire \n_10_ramloop[7].ram.r ;
  wire \n_10_ramloop[8].ram.r ;
  wire \n_10_ramloop[9].ram.r ;
  wire \n_11_ramloop[10].ram.r ;
  wire \n_11_ramloop[11].ram.r ;
  wire \n_11_ramloop[12].ram.r ;
  wire \n_11_ramloop[13].ram.r ;
  wire \n_11_ramloop[2].ram.r ;
  wire \n_11_ramloop[3].ram.r ;
  wire \n_11_ramloop[4].ram.r ;
  wire \n_11_ramloop[5].ram.r ;
  wire \n_11_ramloop[6].ram.r ;
  wire \n_11_ramloop[7].ram.r ;
  wire \n_11_ramloop[8].ram.r ;
  wire \n_11_ramloop[9].ram.r ;
  wire \n_12_ramloop[10].ram.r ;
  wire \n_12_ramloop[11].ram.r ;
  wire \n_12_ramloop[12].ram.r ;
  wire \n_12_ramloop[13].ram.r ;
  wire \n_12_ramloop[2].ram.r ;
  wire \n_12_ramloop[3].ram.r ;
  wire \n_12_ramloop[4].ram.r ;
  wire \n_12_ramloop[5].ram.r ;
  wire \n_12_ramloop[6].ram.r ;
  wire \n_12_ramloop[7].ram.r ;
  wire \n_12_ramloop[8].ram.r ;
  wire \n_12_ramloop[9].ram.r ;
  wire \n_13_ramloop[10].ram.r ;
  wire \n_13_ramloop[11].ram.r ;
  wire \n_13_ramloop[12].ram.r ;
  wire \n_13_ramloop[13].ram.r ;
  wire \n_13_ramloop[2].ram.r ;
  wire \n_13_ramloop[3].ram.r ;
  wire \n_13_ramloop[4].ram.r ;
  wire \n_13_ramloop[5].ram.r ;
  wire \n_13_ramloop[6].ram.r ;
  wire \n_13_ramloop[7].ram.r ;
  wire \n_13_ramloop[8].ram.r ;
  wire \n_13_ramloop[9].ram.r ;
  wire \n_14_ramloop[10].ram.r ;
  wire \n_14_ramloop[11].ram.r ;
  wire \n_14_ramloop[12].ram.r ;
  wire \n_14_ramloop[13].ram.r ;
  wire \n_14_ramloop[2].ram.r ;
  wire \n_14_ramloop[3].ram.r ;
  wire \n_14_ramloop[4].ram.r ;
  wire \n_14_ramloop[5].ram.r ;
  wire \n_14_ramloop[6].ram.r ;
  wire \n_14_ramloop[7].ram.r ;
  wire \n_14_ramloop[8].ram.r ;
  wire \n_14_ramloop[9].ram.r ;
  wire \n_15_ramloop[10].ram.r ;
  wire \n_15_ramloop[11].ram.r ;
  wire \n_15_ramloop[12].ram.r ;
  wire \n_15_ramloop[13].ram.r ;
  wire \n_15_ramloop[2].ram.r ;
  wire \n_15_ramloop[3].ram.r ;
  wire \n_15_ramloop[4].ram.r ;
  wire \n_15_ramloop[5].ram.r ;
  wire \n_15_ramloop[6].ram.r ;
  wire \n_15_ramloop[7].ram.r ;
  wire \n_15_ramloop[8].ram.r ;
  wire \n_15_ramloop[9].ram.r ;
  wire \n_16_ramloop[10].ram.r ;
  wire \n_16_ramloop[11].ram.r ;
  wire \n_16_ramloop[12].ram.r ;
  wire \n_16_ramloop[13].ram.r ;
  wire \n_16_ramloop[2].ram.r ;
  wire \n_16_ramloop[3].ram.r ;
  wire \n_16_ramloop[4].ram.r ;
  wire \n_16_ramloop[5].ram.r ;
  wire \n_16_ramloop[6].ram.r ;
  wire \n_16_ramloop[7].ram.r ;
  wire \n_16_ramloop[8].ram.r ;
  wire \n_16_ramloop[9].ram.r ;
  wire \n_17_ramloop[10].ram.r ;
  wire \n_17_ramloop[11].ram.r ;
  wire \n_17_ramloop[12].ram.r ;
  wire \n_17_ramloop[13].ram.r ;
  wire \n_17_ramloop[2].ram.r ;
  wire \n_17_ramloop[3].ram.r ;
  wire \n_17_ramloop[4].ram.r ;
  wire \n_17_ramloop[5].ram.r ;
  wire \n_17_ramloop[6].ram.r ;
  wire \n_17_ramloop[7].ram.r ;
  wire \n_17_ramloop[8].ram.r ;
  wire \n_17_ramloop[9].ram.r ;
  wire \n_18_ramloop[10].ram.r ;
  wire \n_18_ramloop[11].ram.r ;
  wire \n_18_ramloop[12].ram.r ;
  wire \n_18_ramloop[13].ram.r ;
  wire \n_18_ramloop[2].ram.r ;
  wire \n_18_ramloop[3].ram.r ;
  wire \n_18_ramloop[4].ram.r ;
  wire \n_18_ramloop[5].ram.r ;
  wire \n_18_ramloop[6].ram.r ;
  wire \n_18_ramloop[7].ram.r ;
  wire \n_18_ramloop[8].ram.r ;
  wire \n_18_ramloop[9].ram.r ;
  wire \n_19_ramloop[10].ram.r ;
  wire \n_19_ramloop[11].ram.r ;
  wire \n_19_ramloop[12].ram.r ;
  wire \n_19_ramloop[13].ram.r ;
  wire \n_19_ramloop[2].ram.r ;
  wire \n_19_ramloop[3].ram.r ;
  wire \n_19_ramloop[4].ram.r ;
  wire \n_19_ramloop[5].ram.r ;
  wire \n_19_ramloop[6].ram.r ;
  wire \n_19_ramloop[7].ram.r ;
  wire \n_19_ramloop[8].ram.r ;
  wire \n_19_ramloop[9].ram.r ;
  wire \n_1_ramloop[10].ram.r ;
  wire \n_1_ramloop[11].ram.r ;
  wire \n_1_ramloop[12].ram.r ;
  wire \n_1_ramloop[13].ram.r ;
  wire \n_1_ramloop[2].ram.r ;
  wire \n_1_ramloop[3].ram.r ;
  wire \n_1_ramloop[4].ram.r ;
  wire \n_1_ramloop[5].ram.r ;
  wire \n_1_ramloop[6].ram.r ;
  wire \n_1_ramloop[7].ram.r ;
  wire \n_1_ramloop[8].ram.r ;
  wire \n_1_ramloop[9].ram.r ;
  wire \n_20_ramloop[10].ram.r ;
  wire \n_20_ramloop[11].ram.r ;
  wire \n_20_ramloop[12].ram.r ;
  wire \n_20_ramloop[13].ram.r ;
  wire \n_20_ramloop[2].ram.r ;
  wire \n_20_ramloop[3].ram.r ;
  wire \n_20_ramloop[4].ram.r ;
  wire \n_20_ramloop[5].ram.r ;
  wire \n_20_ramloop[6].ram.r ;
  wire \n_20_ramloop[7].ram.r ;
  wire \n_20_ramloop[8].ram.r ;
  wire \n_20_ramloop[9].ram.r ;
  wire \n_21_ramloop[10].ram.r ;
  wire \n_21_ramloop[11].ram.r ;
  wire \n_21_ramloop[12].ram.r ;
  wire \n_21_ramloop[13].ram.r ;
  wire \n_21_ramloop[2].ram.r ;
  wire \n_21_ramloop[3].ram.r ;
  wire \n_21_ramloop[4].ram.r ;
  wire \n_21_ramloop[5].ram.r ;
  wire \n_21_ramloop[6].ram.r ;
  wire \n_21_ramloop[7].ram.r ;
  wire \n_21_ramloop[8].ram.r ;
  wire \n_21_ramloop[9].ram.r ;
  wire \n_22_ramloop[10].ram.r ;
  wire \n_22_ramloop[11].ram.r ;
  wire \n_22_ramloop[12].ram.r ;
  wire \n_22_ramloop[13].ram.r ;
  wire \n_22_ramloop[2].ram.r ;
  wire \n_22_ramloop[3].ram.r ;
  wire \n_22_ramloop[4].ram.r ;
  wire \n_22_ramloop[5].ram.r ;
  wire \n_22_ramloop[6].ram.r ;
  wire \n_22_ramloop[7].ram.r ;
  wire \n_22_ramloop[8].ram.r ;
  wire \n_22_ramloop[9].ram.r ;
  wire \n_23_ramloop[10].ram.r ;
  wire \n_23_ramloop[11].ram.r ;
  wire \n_23_ramloop[12].ram.r ;
  wire \n_23_ramloop[13].ram.r ;
  wire \n_23_ramloop[2].ram.r ;
  wire \n_23_ramloop[3].ram.r ;
  wire \n_23_ramloop[4].ram.r ;
  wire \n_23_ramloop[5].ram.r ;
  wire \n_23_ramloop[6].ram.r ;
  wire \n_23_ramloop[7].ram.r ;
  wire \n_23_ramloop[8].ram.r ;
  wire \n_23_ramloop[9].ram.r ;
  wire \n_24_ramloop[10].ram.r ;
  wire \n_24_ramloop[11].ram.r ;
  wire \n_24_ramloop[12].ram.r ;
  wire \n_24_ramloop[13].ram.r ;
  wire \n_24_ramloop[2].ram.r ;
  wire \n_24_ramloop[3].ram.r ;
  wire \n_24_ramloop[4].ram.r ;
  wire \n_24_ramloop[5].ram.r ;
  wire \n_24_ramloop[6].ram.r ;
  wire \n_24_ramloop[7].ram.r ;
  wire \n_24_ramloop[8].ram.r ;
  wire \n_24_ramloop[9].ram.r ;
  wire \n_25_ramloop[10].ram.r ;
  wire \n_25_ramloop[11].ram.r ;
  wire \n_25_ramloop[12].ram.r ;
  wire \n_25_ramloop[13].ram.r ;
  wire \n_25_ramloop[2].ram.r ;
  wire \n_25_ramloop[3].ram.r ;
  wire \n_25_ramloop[4].ram.r ;
  wire \n_25_ramloop[5].ram.r ;
  wire \n_25_ramloop[6].ram.r ;
  wire \n_25_ramloop[7].ram.r ;
  wire \n_25_ramloop[8].ram.r ;
  wire \n_25_ramloop[9].ram.r ;
  wire \n_26_ramloop[10].ram.r ;
  wire \n_26_ramloop[11].ram.r ;
  wire \n_26_ramloop[12].ram.r ;
  wire \n_26_ramloop[13].ram.r ;
  wire \n_26_ramloop[2].ram.r ;
  wire \n_26_ramloop[3].ram.r ;
  wire \n_26_ramloop[4].ram.r ;
  wire \n_26_ramloop[5].ram.r ;
  wire \n_26_ramloop[6].ram.r ;
  wire \n_26_ramloop[7].ram.r ;
  wire \n_26_ramloop[8].ram.r ;
  wire \n_26_ramloop[9].ram.r ;
  wire \n_27_ramloop[10].ram.r ;
  wire \n_27_ramloop[11].ram.r ;
  wire \n_27_ramloop[12].ram.r ;
  wire \n_27_ramloop[13].ram.r ;
  wire \n_27_ramloop[2].ram.r ;
  wire \n_27_ramloop[3].ram.r ;
  wire \n_27_ramloop[4].ram.r ;
  wire \n_27_ramloop[5].ram.r ;
  wire \n_27_ramloop[6].ram.r ;
  wire \n_27_ramloop[7].ram.r ;
  wire \n_27_ramloop[8].ram.r ;
  wire \n_27_ramloop[9].ram.r ;
  wire \n_28_ramloop[10].ram.r ;
  wire \n_28_ramloop[11].ram.r ;
  wire \n_28_ramloop[12].ram.r ;
  wire \n_28_ramloop[13].ram.r ;
  wire \n_28_ramloop[2].ram.r ;
  wire \n_28_ramloop[3].ram.r ;
  wire \n_28_ramloop[4].ram.r ;
  wire \n_28_ramloop[5].ram.r ;
  wire \n_28_ramloop[6].ram.r ;
  wire \n_28_ramloop[7].ram.r ;
  wire \n_28_ramloop[8].ram.r ;
  wire \n_28_ramloop[9].ram.r ;
  wire \n_29_ramloop[10].ram.r ;
  wire \n_29_ramloop[11].ram.r ;
  wire \n_29_ramloop[12].ram.r ;
  wire \n_29_ramloop[13].ram.r ;
  wire \n_29_ramloop[2].ram.r ;
  wire \n_29_ramloop[3].ram.r ;
  wire \n_29_ramloop[4].ram.r ;
  wire \n_29_ramloop[5].ram.r ;
  wire \n_29_ramloop[6].ram.r ;
  wire \n_29_ramloop[7].ram.r ;
  wire \n_29_ramloop[8].ram.r ;
  wire \n_29_ramloop[9].ram.r ;
  wire \n_2_ramloop[10].ram.r ;
  wire \n_2_ramloop[11].ram.r ;
  wire \n_2_ramloop[12].ram.r ;
  wire \n_2_ramloop[13].ram.r ;
  wire \n_2_ramloop[2].ram.r ;
  wire \n_2_ramloop[3].ram.r ;
  wire \n_2_ramloop[4].ram.r ;
  wire \n_2_ramloop[5].ram.r ;
  wire \n_2_ramloop[6].ram.r ;
  wire \n_2_ramloop[7].ram.r ;
  wire \n_2_ramloop[8].ram.r ;
  wire \n_2_ramloop[9].ram.r ;
  wire \n_30_ramloop[10].ram.r ;
  wire \n_30_ramloop[11].ram.r ;
  wire \n_30_ramloop[12].ram.r ;
  wire \n_30_ramloop[13].ram.r ;
  wire \n_30_ramloop[2].ram.r ;
  wire \n_30_ramloop[3].ram.r ;
  wire \n_30_ramloop[4].ram.r ;
  wire \n_30_ramloop[5].ram.r ;
  wire \n_30_ramloop[6].ram.r ;
  wire \n_30_ramloop[7].ram.r ;
  wire \n_30_ramloop[8].ram.r ;
  wire \n_30_ramloop[9].ram.r ;
  wire \n_31_ramloop[10].ram.r ;
  wire \n_31_ramloop[11].ram.r ;
  wire \n_31_ramloop[12].ram.r ;
  wire \n_31_ramloop[13].ram.r ;
  wire \n_31_ramloop[2].ram.r ;
  wire \n_31_ramloop[3].ram.r ;
  wire \n_31_ramloop[4].ram.r ;
  wire \n_31_ramloop[5].ram.r ;
  wire \n_31_ramloop[6].ram.r ;
  wire \n_31_ramloop[7].ram.r ;
  wire \n_31_ramloop[8].ram.r ;
  wire \n_31_ramloop[9].ram.r ;
  wire \n_32_ramloop[10].ram.r ;
  wire \n_32_ramloop[11].ram.r ;
  wire \n_32_ramloop[12].ram.r ;
  wire \n_32_ramloop[13].ram.r ;
  wire \n_32_ramloop[2].ram.r ;
  wire \n_32_ramloop[3].ram.r ;
  wire \n_32_ramloop[4].ram.r ;
  wire \n_32_ramloop[5].ram.r ;
  wire \n_32_ramloop[6].ram.r ;
  wire \n_32_ramloop[7].ram.r ;
  wire \n_32_ramloop[8].ram.r ;
  wire \n_32_ramloop[9].ram.r ;
  wire \n_33_ramloop[10].ram.r ;
  wire \n_33_ramloop[11].ram.r ;
  wire \n_33_ramloop[12].ram.r ;
  wire \n_33_ramloop[13].ram.r ;
  wire \n_33_ramloop[2].ram.r ;
  wire \n_33_ramloop[3].ram.r ;
  wire \n_33_ramloop[4].ram.r ;
  wire \n_33_ramloop[5].ram.r ;
  wire \n_33_ramloop[6].ram.r ;
  wire \n_33_ramloop[7].ram.r ;
  wire \n_33_ramloop[8].ram.r ;
  wire \n_33_ramloop[9].ram.r ;
  wire \n_34_ramloop[10].ram.r ;
  wire \n_34_ramloop[11].ram.r ;
  wire \n_34_ramloop[12].ram.r ;
  wire \n_34_ramloop[13].ram.r ;
  wire \n_34_ramloop[2].ram.r ;
  wire \n_34_ramloop[3].ram.r ;
  wire \n_34_ramloop[4].ram.r ;
  wire \n_34_ramloop[5].ram.r ;
  wire \n_34_ramloop[6].ram.r ;
  wire \n_34_ramloop[7].ram.r ;
  wire \n_34_ramloop[8].ram.r ;
  wire \n_34_ramloop[9].ram.r ;
  wire \n_35_ramloop[10].ram.r ;
  wire \n_35_ramloop[11].ram.r ;
  wire \n_35_ramloop[12].ram.r ;
  wire \n_35_ramloop[13].ram.r ;
  wire \n_35_ramloop[2].ram.r ;
  wire \n_35_ramloop[3].ram.r ;
  wire \n_35_ramloop[4].ram.r ;
  wire \n_35_ramloop[5].ram.r ;
  wire \n_35_ramloop[6].ram.r ;
  wire \n_35_ramloop[7].ram.r ;
  wire \n_35_ramloop[8].ram.r ;
  wire \n_35_ramloop[9].ram.r ;
  wire \n_36_ramloop[10].ram.r ;
  wire \n_36_ramloop[11].ram.r ;
  wire \n_36_ramloop[12].ram.r ;
  wire \n_36_ramloop[13].ram.r ;
  wire \n_36_ramloop[2].ram.r ;
  wire \n_36_ramloop[3].ram.r ;
  wire \n_36_ramloop[4].ram.r ;
  wire \n_36_ramloop[5].ram.r ;
  wire \n_36_ramloop[6].ram.r ;
  wire \n_36_ramloop[7].ram.r ;
  wire \n_36_ramloop[8].ram.r ;
  wire \n_36_ramloop[9].ram.r ;
  wire \n_37_ramloop[10].ram.r ;
  wire \n_37_ramloop[11].ram.r ;
  wire \n_37_ramloop[12].ram.r ;
  wire \n_37_ramloop[13].ram.r ;
  wire \n_37_ramloop[2].ram.r ;
  wire \n_37_ramloop[3].ram.r ;
  wire \n_37_ramloop[4].ram.r ;
  wire \n_37_ramloop[5].ram.r ;
  wire \n_37_ramloop[6].ram.r ;
  wire \n_37_ramloop[7].ram.r ;
  wire \n_37_ramloop[8].ram.r ;
  wire \n_37_ramloop[9].ram.r ;
  wire \n_38_ramloop[10].ram.r ;
  wire \n_38_ramloop[11].ram.r ;
  wire \n_38_ramloop[12].ram.r ;
  wire \n_38_ramloop[13].ram.r ;
  wire \n_38_ramloop[2].ram.r ;
  wire \n_38_ramloop[3].ram.r ;
  wire \n_38_ramloop[4].ram.r ;
  wire \n_38_ramloop[5].ram.r ;
  wire \n_38_ramloop[6].ram.r ;
  wire \n_38_ramloop[7].ram.r ;
  wire \n_38_ramloop[8].ram.r ;
  wire \n_38_ramloop[9].ram.r ;
  wire \n_39_ramloop[10].ram.r ;
  wire \n_39_ramloop[11].ram.r ;
  wire \n_39_ramloop[12].ram.r ;
  wire \n_39_ramloop[13].ram.r ;
  wire \n_39_ramloop[2].ram.r ;
  wire \n_39_ramloop[3].ram.r ;
  wire \n_39_ramloop[4].ram.r ;
  wire \n_39_ramloop[5].ram.r ;
  wire \n_39_ramloop[6].ram.r ;
  wire \n_39_ramloop[7].ram.r ;
  wire \n_39_ramloop[8].ram.r ;
  wire \n_39_ramloop[9].ram.r ;
  wire \n_3_ramloop[10].ram.r ;
  wire \n_3_ramloop[11].ram.r ;
  wire \n_3_ramloop[12].ram.r ;
  wire \n_3_ramloop[13].ram.r ;
  wire \n_3_ramloop[2].ram.r ;
  wire \n_3_ramloop[3].ram.r ;
  wire \n_3_ramloop[4].ram.r ;
  wire \n_3_ramloop[5].ram.r ;
  wire \n_3_ramloop[6].ram.r ;
  wire \n_3_ramloop[7].ram.r ;
  wire \n_3_ramloop[8].ram.r ;
  wire \n_3_ramloop[9].ram.r ;
  wire \n_40_ramloop[10].ram.r ;
  wire \n_40_ramloop[11].ram.r ;
  wire \n_40_ramloop[12].ram.r ;
  wire \n_40_ramloop[13].ram.r ;
  wire \n_40_ramloop[2].ram.r ;
  wire \n_40_ramloop[3].ram.r ;
  wire \n_40_ramloop[4].ram.r ;
  wire \n_40_ramloop[5].ram.r ;
  wire \n_40_ramloop[6].ram.r ;
  wire \n_40_ramloop[7].ram.r ;
  wire \n_40_ramloop[8].ram.r ;
  wire \n_40_ramloop[9].ram.r ;
  wire \n_41_ramloop[10].ram.r ;
  wire \n_41_ramloop[11].ram.r ;
  wire \n_41_ramloop[12].ram.r ;
  wire \n_41_ramloop[13].ram.r ;
  wire \n_41_ramloop[2].ram.r ;
  wire \n_41_ramloop[3].ram.r ;
  wire \n_41_ramloop[4].ram.r ;
  wire \n_41_ramloop[5].ram.r ;
  wire \n_41_ramloop[6].ram.r ;
  wire \n_41_ramloop[7].ram.r ;
  wire \n_41_ramloop[8].ram.r ;
  wire \n_41_ramloop[9].ram.r ;
  wire \n_42_ramloop[10].ram.r ;
  wire \n_42_ramloop[11].ram.r ;
  wire \n_42_ramloop[12].ram.r ;
  wire \n_42_ramloop[13].ram.r ;
  wire \n_42_ramloop[2].ram.r ;
  wire \n_42_ramloop[3].ram.r ;
  wire \n_42_ramloop[4].ram.r ;
  wire \n_42_ramloop[5].ram.r ;
  wire \n_42_ramloop[6].ram.r ;
  wire \n_42_ramloop[7].ram.r ;
  wire \n_42_ramloop[8].ram.r ;
  wire \n_42_ramloop[9].ram.r ;
  wire \n_43_ramloop[10].ram.r ;
  wire \n_43_ramloop[11].ram.r ;
  wire \n_43_ramloop[12].ram.r ;
  wire \n_43_ramloop[13].ram.r ;
  wire \n_43_ramloop[2].ram.r ;
  wire \n_43_ramloop[3].ram.r ;
  wire \n_43_ramloop[4].ram.r ;
  wire \n_43_ramloop[5].ram.r ;
  wire \n_43_ramloop[6].ram.r ;
  wire \n_43_ramloop[7].ram.r ;
  wire \n_43_ramloop[8].ram.r ;
  wire \n_43_ramloop[9].ram.r ;
  wire \n_44_ramloop[10].ram.r ;
  wire \n_44_ramloop[11].ram.r ;
  wire \n_44_ramloop[12].ram.r ;
  wire \n_44_ramloop[13].ram.r ;
  wire \n_44_ramloop[2].ram.r ;
  wire \n_44_ramloop[3].ram.r ;
  wire \n_44_ramloop[4].ram.r ;
  wire \n_44_ramloop[5].ram.r ;
  wire \n_44_ramloop[6].ram.r ;
  wire \n_44_ramloop[7].ram.r ;
  wire \n_44_ramloop[8].ram.r ;
  wire \n_44_ramloop[9].ram.r ;
  wire \n_45_ramloop[10].ram.r ;
  wire \n_45_ramloop[11].ram.r ;
  wire \n_45_ramloop[12].ram.r ;
  wire \n_46_ramloop[10].ram.r ;
  wire \n_46_ramloop[11].ram.r ;
  wire \n_46_ramloop[12].ram.r ;
  wire \n_4_ramloop[10].ram.r ;
  wire \n_4_ramloop[11].ram.r ;
  wire \n_4_ramloop[12].ram.r ;
  wire \n_4_ramloop[13].ram.r ;
  wire \n_4_ramloop[2].ram.r ;
  wire \n_4_ramloop[3].ram.r ;
  wire \n_4_ramloop[4].ram.r ;
  wire \n_4_ramloop[5].ram.r ;
  wire \n_4_ramloop[6].ram.r ;
  wire \n_4_ramloop[7].ram.r ;
  wire \n_4_ramloop[8].ram.r ;
  wire \n_4_ramloop[9].ram.r ;
  wire \n_5_ramloop[10].ram.r ;
  wire \n_5_ramloop[11].ram.r ;
  wire \n_5_ramloop[12].ram.r ;
  wire \n_5_ramloop[13].ram.r ;
  wire \n_5_ramloop[2].ram.r ;
  wire \n_5_ramloop[3].ram.r ;
  wire \n_5_ramloop[4].ram.r ;
  wire \n_5_ramloop[5].ram.r ;
  wire \n_5_ramloop[6].ram.r ;
  wire \n_5_ramloop[7].ram.r ;
  wire \n_5_ramloop[8].ram.r ;
  wire \n_5_ramloop[9].ram.r ;
  wire \n_6_ramloop[10].ram.r ;
  wire \n_6_ramloop[11].ram.r ;
  wire \n_6_ramloop[12].ram.r ;
  wire \n_6_ramloop[13].ram.r ;
  wire \n_6_ramloop[2].ram.r ;
  wire \n_6_ramloop[3].ram.r ;
  wire \n_6_ramloop[4].ram.r ;
  wire \n_6_ramloop[5].ram.r ;
  wire \n_6_ramloop[6].ram.r ;
  wire \n_6_ramloop[7].ram.r ;
  wire \n_6_ramloop[8].ram.r ;
  wire \n_6_ramloop[9].ram.r ;
  wire \n_7_ramloop[10].ram.r ;
  wire \n_7_ramloop[11].ram.r ;
  wire \n_7_ramloop[12].ram.r ;
  wire \n_7_ramloop[13].ram.r ;
  wire \n_7_ramloop[2].ram.r ;
  wire \n_7_ramloop[3].ram.r ;
  wire \n_7_ramloop[4].ram.r ;
  wire \n_7_ramloop[5].ram.r ;
  wire \n_7_ramloop[6].ram.r ;
  wire \n_7_ramloop[7].ram.r ;
  wire \n_7_ramloop[8].ram.r ;
  wire \n_7_ramloop[9].ram.r ;
  wire \n_8_ramloop[10].ram.r ;
  wire \n_8_ramloop[11].ram.r ;
  wire \n_8_ramloop[12].ram.r ;
  wire \n_8_ramloop[13].ram.r ;
  wire \n_8_ramloop[2].ram.r ;
  wire \n_8_ramloop[3].ram.r ;
  wire \n_8_ramloop[4].ram.r ;
  wire \n_8_ramloop[5].ram.r ;
  wire \n_8_ramloop[6].ram.r ;
  wire \n_8_ramloop[7].ram.r ;
  wire \n_8_ramloop[8].ram.r ;
  wire \n_8_ramloop[9].ram.r ;
  wire \n_9_ramloop[10].ram.r ;
  wire \n_9_ramloop[11].ram.r ;
  wire \n_9_ramloop[12].ram.r ;
  wire \n_9_ramloop[13].ram.r ;
  wire \n_9_ramloop[2].ram.r ;
  wire \n_9_ramloop[3].ram.r ;
  wire \n_9_ramloop[4].ram.r ;
  wire \n_9_ramloop[5].ram.r ;
  wire \n_9_ramloop[6].ram.r ;
  wire \n_9_ramloop[7].ram.r ;
  wire \n_9_ramloop[8].ram.r ;
  wire \n_9_ramloop[9].ram.r ;
  wire ram_ena;
  wire ram_enb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\n_0_ramloop[5].ram.r ,\n_1_ramloop[5].ram.r ,\n_2_ramloop[5].ram.r ,\n_3_ramloop[5].ram.r ,\n_4_ramloop[5].ram.r ,\n_5_ramloop[5].ram.r ,\n_6_ramloop[5].ram.r ,\n_7_ramloop[5].ram.r }),
        .DOPADOP(\n_40_ramloop[5].ram.r ),
        .I1({\n_0_ramloop[3].ram.r ,\n_1_ramloop[3].ram.r ,\n_2_ramloop[3].ram.r ,\n_3_ramloop[3].ram.r ,\n_4_ramloop[3].ram.r ,\n_5_ramloop[3].ram.r ,\n_6_ramloop[3].ram.r ,\n_7_ramloop[3].ram.r }),
        .I10({\n_0_ramloop[6].ram.r ,\n_1_ramloop[6].ram.r ,\n_2_ramloop[6].ram.r ,\n_3_ramloop[6].ram.r ,\n_4_ramloop[6].ram.r ,\n_5_ramloop[6].ram.r ,\n_6_ramloop[6].ram.r ,\n_7_ramloop[6].ram.r }),
        .I11(\n_40_ramloop[9].ram.r ),
        .I12(\n_40_ramloop[7].ram.r ),
        .I13(\n_40_ramloop[8].ram.r ),
        .I14(\n_40_ramloop[6].ram.r ),
        .I15({\n_0_ramloop[13].ram.r ,\n_1_ramloop[13].ram.r ,\n_2_ramloop[13].ram.r ,\n_3_ramloop[13].ram.r ,\n_4_ramloop[13].ram.r ,\n_5_ramloop[13].ram.r ,\n_6_ramloop[13].ram.r ,\n_7_ramloop[13].ram.r }),
        .I16({\n_0_ramloop[11].ram.r ,\n_1_ramloop[11].ram.r ,\n_2_ramloop[11].ram.r ,\n_3_ramloop[11].ram.r ,\n_4_ramloop[11].ram.r ,\n_5_ramloop[11].ram.r ,\n_6_ramloop[11].ram.r ,\n_7_ramloop[11].ram.r }),
        .I17({\n_0_ramloop[12].ram.r ,\n_1_ramloop[12].ram.r ,\n_2_ramloop[12].ram.r ,\n_3_ramloop[12].ram.r ,\n_4_ramloop[12].ram.r ,\n_5_ramloop[12].ram.r ,\n_6_ramloop[12].ram.r ,\n_7_ramloop[12].ram.r }),
        .I18({\n_0_ramloop[10].ram.r ,\n_1_ramloop[10].ram.r ,\n_2_ramloop[10].ram.r ,\n_3_ramloop[10].ram.r ,\n_4_ramloop[10].ram.r ,\n_5_ramloop[10].ram.r ,\n_6_ramloop[10].ram.r ,\n_7_ramloop[10].ram.r }),
        .I19(\n_40_ramloop[13].ram.r ),
        .I2({\n_0_ramloop[4].ram.r ,\n_1_ramloop[4].ram.r ,\n_2_ramloop[4].ram.r ,\n_3_ramloop[4].ram.r ,\n_4_ramloop[4].ram.r ,\n_5_ramloop[4].ram.r ,\n_6_ramloop[4].ram.r ,\n_7_ramloop[4].ram.r }),
        .I20(\n_40_ramloop[11].ram.r ),
        .I21(\n_40_ramloop[12].ram.r ),
        .I22(\n_40_ramloop[10].ram.r ),
        .I3({\n_0_ramloop[2].ram.r ,\n_1_ramloop[2].ram.r ,\n_2_ramloop[2].ram.r ,\n_3_ramloop[2].ram.r ,\n_4_ramloop[2].ram.r ,\n_5_ramloop[2].ram.r ,\n_6_ramloop[2].ram.r ,\n_7_ramloop[2].ram.r }),
        .I4(\n_40_ramloop[3].ram.r ),
        .I5(\n_40_ramloop[4].ram.r ),
        .I6(\n_40_ramloop[2].ram.r ),
        .I7({\n_0_ramloop[9].ram.r ,\n_1_ramloop[9].ram.r ,\n_2_ramloop[9].ram.r ,\n_3_ramloop[9].ram.r ,\n_4_ramloop[9].ram.r ,\n_5_ramloop[9].ram.r ,\n_6_ramloop[9].ram.r ,\n_7_ramloop[9].ram.r }),
        .I8({\n_0_ramloop[7].ram.r ,\n_1_ramloop[7].ram.r ,\n_2_ramloop[7].ram.r ,\n_3_ramloop[7].ram.r ,\n_4_ramloop[7].ram.r ,\n_5_ramloop[7].ram.r ,\n_6_ramloop[7].ram.r ,\n_7_ramloop[7].ram.r }),
        .I9({\n_0_ramloop[8].ram.r ,\n_1_ramloop[8].ram.r ,\n_2_ramloop[8].ram.r ,\n_3_ramloop[8].ram.r ,\n_4_ramloop[8].ram.r ,\n_5_ramloop[8].ram.r ,\n_6_ramloop[8].ram.r ,\n_7_ramloop[8].ram.r }),
        .addra(addra[13:12]),
        .clka(clka),
        .douta(douta[29:3]),
        .wea(wea));
blk_mem_gen_0blk_mem_gen_mux__parameterized0 \has_mux_b.B 
       (.DOBDO({\n_8_ramloop[5].ram.r ,\n_9_ramloop[5].ram.r ,\n_10_ramloop[5].ram.r ,\n_11_ramloop[5].ram.r ,\n_12_ramloop[5].ram.r ,\n_13_ramloop[5].ram.r ,\n_14_ramloop[5].ram.r ,\n_15_ramloop[5].ram.r ,\n_16_ramloop[5].ram.r ,\n_17_ramloop[5].ram.r ,\n_18_ramloop[5].ram.r ,\n_19_ramloop[5].ram.r ,\n_20_ramloop[5].ram.r ,\n_21_ramloop[5].ram.r ,\n_22_ramloop[5].ram.r ,\n_23_ramloop[5].ram.r ,\n_24_ramloop[5].ram.r ,\n_25_ramloop[5].ram.r ,\n_26_ramloop[5].ram.r ,\n_27_ramloop[5].ram.r ,\n_28_ramloop[5].ram.r ,\n_29_ramloop[5].ram.r ,\n_30_ramloop[5].ram.r ,\n_31_ramloop[5].ram.r ,\n_32_ramloop[5].ram.r ,\n_33_ramloop[5].ram.r ,\n_34_ramloop[5].ram.r ,\n_35_ramloop[5].ram.r ,\n_36_ramloop[5].ram.r ,\n_37_ramloop[5].ram.r ,\n_38_ramloop[5].ram.r ,\n_39_ramloop[5].ram.r }),
        .DOPBDOP({\n_41_ramloop[5].ram.r ,\n_42_ramloop[5].ram.r ,\n_43_ramloop[5].ram.r ,\n_44_ramloop[5].ram.r }),
        .I1({\n_8_ramloop[4].ram.r ,\n_9_ramloop[4].ram.r ,\n_10_ramloop[4].ram.r ,\n_11_ramloop[4].ram.r ,\n_12_ramloop[4].ram.r ,\n_13_ramloop[4].ram.r ,\n_14_ramloop[4].ram.r ,\n_15_ramloop[4].ram.r ,\n_16_ramloop[4].ram.r ,\n_17_ramloop[4].ram.r ,\n_18_ramloop[4].ram.r ,\n_19_ramloop[4].ram.r ,\n_20_ramloop[4].ram.r ,\n_21_ramloop[4].ram.r ,\n_22_ramloop[4].ram.r ,\n_23_ramloop[4].ram.r ,\n_24_ramloop[4].ram.r ,\n_25_ramloop[4].ram.r ,\n_26_ramloop[4].ram.r ,\n_27_ramloop[4].ram.r ,\n_28_ramloop[4].ram.r ,\n_29_ramloop[4].ram.r ,\n_30_ramloop[4].ram.r ,\n_31_ramloop[4].ram.r ,\n_32_ramloop[4].ram.r ,\n_33_ramloop[4].ram.r ,\n_34_ramloop[4].ram.r ,\n_35_ramloop[4].ram.r ,\n_36_ramloop[4].ram.r ,\n_37_ramloop[4].ram.r ,\n_38_ramloop[4].ram.r ,\n_39_ramloop[4].ram.r }),
        .I10({\n_8_ramloop[6].ram.r ,\n_9_ramloop[6].ram.r ,\n_10_ramloop[6].ram.r ,\n_11_ramloop[6].ram.r ,\n_12_ramloop[6].ram.r ,\n_13_ramloop[6].ram.r ,\n_14_ramloop[6].ram.r ,\n_15_ramloop[6].ram.r ,\n_16_ramloop[6].ram.r ,\n_17_ramloop[6].ram.r ,\n_18_ramloop[6].ram.r ,\n_19_ramloop[6].ram.r ,\n_20_ramloop[6].ram.r ,\n_21_ramloop[6].ram.r ,\n_22_ramloop[6].ram.r ,\n_23_ramloop[6].ram.r ,\n_24_ramloop[6].ram.r ,\n_25_ramloop[6].ram.r ,\n_26_ramloop[6].ram.r ,\n_27_ramloop[6].ram.r ,\n_28_ramloop[6].ram.r ,\n_29_ramloop[6].ram.r ,\n_30_ramloop[6].ram.r ,\n_31_ramloop[6].ram.r ,\n_32_ramloop[6].ram.r ,\n_33_ramloop[6].ram.r ,\n_34_ramloop[6].ram.r ,\n_35_ramloop[6].ram.r ,\n_36_ramloop[6].ram.r ,\n_37_ramloop[6].ram.r ,\n_38_ramloop[6].ram.r ,\n_39_ramloop[6].ram.r }),
        .I11({\n_41_ramloop[9].ram.r ,\n_42_ramloop[9].ram.r ,\n_43_ramloop[9].ram.r ,\n_44_ramloop[9].ram.r }),
        .I12({\n_41_ramloop[8].ram.r ,\n_42_ramloop[8].ram.r ,\n_43_ramloop[8].ram.r ,\n_44_ramloop[8].ram.r }),
        .I13({\n_41_ramloop[7].ram.r ,\n_42_ramloop[7].ram.r ,\n_43_ramloop[7].ram.r ,\n_44_ramloop[7].ram.r }),
        .I14({\n_41_ramloop[6].ram.r ,\n_42_ramloop[6].ram.r ,\n_43_ramloop[6].ram.r ,\n_44_ramloop[6].ram.r }),
        .I15({\n_8_ramloop[13].ram.r ,\n_9_ramloop[13].ram.r ,\n_10_ramloop[13].ram.r ,\n_11_ramloop[13].ram.r ,\n_12_ramloop[13].ram.r ,\n_13_ramloop[13].ram.r ,\n_14_ramloop[13].ram.r ,\n_15_ramloop[13].ram.r ,\n_16_ramloop[13].ram.r ,\n_17_ramloop[13].ram.r ,\n_18_ramloop[13].ram.r ,\n_19_ramloop[13].ram.r ,\n_20_ramloop[13].ram.r ,\n_21_ramloop[13].ram.r ,\n_22_ramloop[13].ram.r ,\n_23_ramloop[13].ram.r ,\n_24_ramloop[13].ram.r ,\n_25_ramloop[13].ram.r ,\n_26_ramloop[13].ram.r ,\n_27_ramloop[13].ram.r ,\n_28_ramloop[13].ram.r ,\n_29_ramloop[13].ram.r ,\n_30_ramloop[13].ram.r ,\n_31_ramloop[13].ram.r ,\n_32_ramloop[13].ram.r ,\n_33_ramloop[13].ram.r ,\n_34_ramloop[13].ram.r ,\n_35_ramloop[13].ram.r ,\n_36_ramloop[13].ram.r ,\n_37_ramloop[13].ram.r ,\n_38_ramloop[13].ram.r ,\n_39_ramloop[13].ram.r }),
        .I16({\n_8_ramloop[12].ram.r ,\n_9_ramloop[12].ram.r ,\n_10_ramloop[12].ram.r ,\n_11_ramloop[12].ram.r ,\n_12_ramloop[12].ram.r ,\n_13_ramloop[12].ram.r ,\n_14_ramloop[12].ram.r ,\n_15_ramloop[12].ram.r ,\n_16_ramloop[12].ram.r ,\n_17_ramloop[12].ram.r ,\n_18_ramloop[12].ram.r ,\n_19_ramloop[12].ram.r ,\n_20_ramloop[12].ram.r ,\n_21_ramloop[12].ram.r ,\n_22_ramloop[12].ram.r ,\n_23_ramloop[12].ram.r ,\n_24_ramloop[12].ram.r ,\n_25_ramloop[12].ram.r ,\n_26_ramloop[12].ram.r ,\n_27_ramloop[12].ram.r ,\n_28_ramloop[12].ram.r ,\n_29_ramloop[12].ram.r ,\n_30_ramloop[12].ram.r ,\n_31_ramloop[12].ram.r ,\n_32_ramloop[12].ram.r ,\n_33_ramloop[12].ram.r ,\n_34_ramloop[12].ram.r ,\n_35_ramloop[12].ram.r ,\n_36_ramloop[12].ram.r ,\n_37_ramloop[12].ram.r ,\n_38_ramloop[12].ram.r ,\n_39_ramloop[12].ram.r }),
        .I17({\n_8_ramloop[11].ram.r ,\n_9_ramloop[11].ram.r ,\n_10_ramloop[11].ram.r ,\n_11_ramloop[11].ram.r ,\n_12_ramloop[11].ram.r ,\n_13_ramloop[11].ram.r ,\n_14_ramloop[11].ram.r ,\n_15_ramloop[11].ram.r ,\n_16_ramloop[11].ram.r ,\n_17_ramloop[11].ram.r ,\n_18_ramloop[11].ram.r ,\n_19_ramloop[11].ram.r ,\n_20_ramloop[11].ram.r ,\n_21_ramloop[11].ram.r ,\n_22_ramloop[11].ram.r ,\n_23_ramloop[11].ram.r ,\n_24_ramloop[11].ram.r ,\n_25_ramloop[11].ram.r ,\n_26_ramloop[11].ram.r ,\n_27_ramloop[11].ram.r ,\n_28_ramloop[11].ram.r ,\n_29_ramloop[11].ram.r ,\n_30_ramloop[11].ram.r ,\n_31_ramloop[11].ram.r ,\n_32_ramloop[11].ram.r ,\n_33_ramloop[11].ram.r ,\n_34_ramloop[11].ram.r ,\n_35_ramloop[11].ram.r ,\n_36_ramloop[11].ram.r ,\n_37_ramloop[11].ram.r ,\n_38_ramloop[11].ram.r ,\n_39_ramloop[11].ram.r }),
        .I18({\n_8_ramloop[10].ram.r ,\n_9_ramloop[10].ram.r ,\n_10_ramloop[10].ram.r ,\n_11_ramloop[10].ram.r ,\n_12_ramloop[10].ram.r ,\n_13_ramloop[10].ram.r ,\n_14_ramloop[10].ram.r ,\n_15_ramloop[10].ram.r ,\n_16_ramloop[10].ram.r ,\n_17_ramloop[10].ram.r ,\n_18_ramloop[10].ram.r ,\n_19_ramloop[10].ram.r ,\n_20_ramloop[10].ram.r ,\n_21_ramloop[10].ram.r ,\n_22_ramloop[10].ram.r ,\n_23_ramloop[10].ram.r ,\n_24_ramloop[10].ram.r ,\n_25_ramloop[10].ram.r ,\n_26_ramloop[10].ram.r ,\n_27_ramloop[10].ram.r ,\n_28_ramloop[10].ram.r ,\n_29_ramloop[10].ram.r ,\n_30_ramloop[10].ram.r ,\n_31_ramloop[10].ram.r ,\n_32_ramloop[10].ram.r ,\n_33_ramloop[10].ram.r ,\n_34_ramloop[10].ram.r ,\n_35_ramloop[10].ram.r ,\n_36_ramloop[10].ram.r ,\n_37_ramloop[10].ram.r ,\n_38_ramloop[10].ram.r ,\n_39_ramloop[10].ram.r }),
        .I19({\n_41_ramloop[13].ram.r ,\n_42_ramloop[13].ram.r ,\n_43_ramloop[13].ram.r ,\n_44_ramloop[13].ram.r }),
        .I2({\n_8_ramloop[3].ram.r ,\n_9_ramloop[3].ram.r ,\n_10_ramloop[3].ram.r ,\n_11_ramloop[3].ram.r ,\n_12_ramloop[3].ram.r ,\n_13_ramloop[3].ram.r ,\n_14_ramloop[3].ram.r ,\n_15_ramloop[3].ram.r ,\n_16_ramloop[3].ram.r ,\n_17_ramloop[3].ram.r ,\n_18_ramloop[3].ram.r ,\n_19_ramloop[3].ram.r ,\n_20_ramloop[3].ram.r ,\n_21_ramloop[3].ram.r ,\n_22_ramloop[3].ram.r ,\n_23_ramloop[3].ram.r ,\n_24_ramloop[3].ram.r ,\n_25_ramloop[3].ram.r ,\n_26_ramloop[3].ram.r ,\n_27_ramloop[3].ram.r ,\n_28_ramloop[3].ram.r ,\n_29_ramloop[3].ram.r ,\n_30_ramloop[3].ram.r ,\n_31_ramloop[3].ram.r ,\n_32_ramloop[3].ram.r ,\n_33_ramloop[3].ram.r ,\n_34_ramloop[3].ram.r ,\n_35_ramloop[3].ram.r ,\n_36_ramloop[3].ram.r ,\n_37_ramloop[3].ram.r ,\n_38_ramloop[3].ram.r ,\n_39_ramloop[3].ram.r }),
        .I20({\n_41_ramloop[12].ram.r ,\n_42_ramloop[12].ram.r ,\n_43_ramloop[12].ram.r ,\n_44_ramloop[12].ram.r }),
        .I21({\n_41_ramloop[11].ram.r ,\n_42_ramloop[11].ram.r ,\n_43_ramloop[11].ram.r ,\n_44_ramloop[11].ram.r }),
        .I22({\n_41_ramloop[10].ram.r ,\n_42_ramloop[10].ram.r ,\n_43_ramloop[10].ram.r ,\n_44_ramloop[10].ram.r }),
        .I3({\n_8_ramloop[2].ram.r ,\n_9_ramloop[2].ram.r ,\n_10_ramloop[2].ram.r ,\n_11_ramloop[2].ram.r ,\n_12_ramloop[2].ram.r ,\n_13_ramloop[2].ram.r ,\n_14_ramloop[2].ram.r ,\n_15_ramloop[2].ram.r ,\n_16_ramloop[2].ram.r ,\n_17_ramloop[2].ram.r ,\n_18_ramloop[2].ram.r ,\n_19_ramloop[2].ram.r ,\n_20_ramloop[2].ram.r ,\n_21_ramloop[2].ram.r ,\n_22_ramloop[2].ram.r ,\n_23_ramloop[2].ram.r ,\n_24_ramloop[2].ram.r ,\n_25_ramloop[2].ram.r ,\n_26_ramloop[2].ram.r ,\n_27_ramloop[2].ram.r ,\n_28_ramloop[2].ram.r ,\n_29_ramloop[2].ram.r ,\n_30_ramloop[2].ram.r ,\n_31_ramloop[2].ram.r ,\n_32_ramloop[2].ram.r ,\n_33_ramloop[2].ram.r ,\n_34_ramloop[2].ram.r ,\n_35_ramloop[2].ram.r ,\n_36_ramloop[2].ram.r ,\n_37_ramloop[2].ram.r ,\n_38_ramloop[2].ram.r ,\n_39_ramloop[2].ram.r }),
        .I4({\n_41_ramloop[4].ram.r ,\n_42_ramloop[4].ram.r ,\n_43_ramloop[4].ram.r ,\n_44_ramloop[4].ram.r }),
        .I5({\n_41_ramloop[3].ram.r ,\n_42_ramloop[3].ram.r ,\n_43_ramloop[3].ram.r ,\n_44_ramloop[3].ram.r }),
        .I6({\n_41_ramloop[2].ram.r ,\n_42_ramloop[2].ram.r ,\n_43_ramloop[2].ram.r ,\n_44_ramloop[2].ram.r }),
        .I7({\n_8_ramloop[9].ram.r ,\n_9_ramloop[9].ram.r ,\n_10_ramloop[9].ram.r ,\n_11_ramloop[9].ram.r ,\n_12_ramloop[9].ram.r ,\n_13_ramloop[9].ram.r ,\n_14_ramloop[9].ram.r ,\n_15_ramloop[9].ram.r ,\n_16_ramloop[9].ram.r ,\n_17_ramloop[9].ram.r ,\n_18_ramloop[9].ram.r ,\n_19_ramloop[9].ram.r ,\n_20_ramloop[9].ram.r ,\n_21_ramloop[9].ram.r ,\n_22_ramloop[9].ram.r ,\n_23_ramloop[9].ram.r ,\n_24_ramloop[9].ram.r ,\n_25_ramloop[9].ram.r ,\n_26_ramloop[9].ram.r ,\n_27_ramloop[9].ram.r ,\n_28_ramloop[9].ram.r ,\n_29_ramloop[9].ram.r ,\n_30_ramloop[9].ram.r ,\n_31_ramloop[9].ram.r ,\n_32_ramloop[9].ram.r ,\n_33_ramloop[9].ram.r ,\n_34_ramloop[9].ram.r ,\n_35_ramloop[9].ram.r ,\n_36_ramloop[9].ram.r ,\n_37_ramloop[9].ram.r ,\n_38_ramloop[9].ram.r ,\n_39_ramloop[9].ram.r }),
        .I8({\n_8_ramloop[8].ram.r ,\n_9_ramloop[8].ram.r ,\n_10_ramloop[8].ram.r ,\n_11_ramloop[8].ram.r ,\n_12_ramloop[8].ram.r ,\n_13_ramloop[8].ram.r ,\n_14_ramloop[8].ram.r ,\n_15_ramloop[8].ram.r ,\n_16_ramloop[8].ram.r ,\n_17_ramloop[8].ram.r ,\n_18_ramloop[8].ram.r ,\n_19_ramloop[8].ram.r ,\n_20_ramloop[8].ram.r ,\n_21_ramloop[8].ram.r ,\n_22_ramloop[8].ram.r ,\n_23_ramloop[8].ram.r ,\n_24_ramloop[8].ram.r ,\n_25_ramloop[8].ram.r ,\n_26_ramloop[8].ram.r ,\n_27_ramloop[8].ram.r ,\n_28_ramloop[8].ram.r ,\n_29_ramloop[8].ram.r ,\n_30_ramloop[8].ram.r ,\n_31_ramloop[8].ram.r ,\n_32_ramloop[8].ram.r ,\n_33_ramloop[8].ram.r ,\n_34_ramloop[8].ram.r ,\n_35_ramloop[8].ram.r ,\n_36_ramloop[8].ram.r ,\n_37_ramloop[8].ram.r ,\n_38_ramloop[8].ram.r ,\n_39_ramloop[8].ram.r }),
        .I9({\n_8_ramloop[7].ram.r ,\n_9_ramloop[7].ram.r ,\n_10_ramloop[7].ram.r ,\n_11_ramloop[7].ram.r ,\n_12_ramloop[7].ram.r ,\n_13_ramloop[7].ram.r ,\n_14_ramloop[7].ram.r ,\n_15_ramloop[7].ram.r ,\n_16_ramloop[7].ram.r ,\n_17_ramloop[7].ram.r ,\n_18_ramloop[7].ram.r ,\n_19_ramloop[7].ram.r ,\n_20_ramloop[7].ram.r ,\n_21_ramloop[7].ram.r ,\n_22_ramloop[7].ram.r ,\n_23_ramloop[7].ram.r ,\n_24_ramloop[7].ram.r ,\n_25_ramloop[7].ram.r ,\n_26_ramloop[7].ram.r ,\n_27_ramloop[7].ram.r ,\n_28_ramloop[7].ram.r ,\n_29_ramloop[7].ram.r ,\n_30_ramloop[7].ram.r ,\n_31_ramloop[7].ram.r ,\n_32_ramloop[7].ram.r ,\n_33_ramloop[7].ram.r ,\n_34_ramloop[7].ram.r ,\n_35_ramloop[7].ram.r ,\n_36_ramloop[7].ram.r ,\n_37_ramloop[7].ram.r ,\n_38_ramloop[7].ram.r ,\n_39_ramloop[7].ram.r }),
        .addrb(addrb[11:10]),
        .clkb(clkb),
        .doutb({doutb[119:93],doutb[89:63],doutb[59:33],doutb[29:3]}),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[0]),
        .dinb({dinb[90],dinb[60],dinb[30],dinb[0]}),
        .douta(douta[0]),
        .doutb({doutb[90],doutb[60],doutb[30],doutb[0]}),
        .wea(wea),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.DOADO({\n_0_ramloop[10].ram.r ,\n_1_ramloop[10].ram.r ,\n_2_ramloop[10].ram.r ,\n_3_ramloop[10].ram.r ,\n_4_ramloop[10].ram.r ,\n_5_ramloop[10].ram.r ,\n_6_ramloop[10].ram.r ,\n_7_ramloop[10].ram.r }),
        .DOPADOP(\n_40_ramloop[10].ram.r ),
        .I18({\n_8_ramloop[10].ram.r ,\n_9_ramloop[10].ram.r ,\n_10_ramloop[10].ram.r ,\n_11_ramloop[10].ram.r ,\n_12_ramloop[10].ram.r ,\n_13_ramloop[10].ram.r ,\n_14_ramloop[10].ram.r ,\n_15_ramloop[10].ram.r ,\n_16_ramloop[10].ram.r ,\n_17_ramloop[10].ram.r ,\n_18_ramloop[10].ram.r ,\n_19_ramloop[10].ram.r ,\n_20_ramloop[10].ram.r ,\n_21_ramloop[10].ram.r ,\n_22_ramloop[10].ram.r ,\n_23_ramloop[10].ram.r ,\n_24_ramloop[10].ram.r ,\n_25_ramloop[10].ram.r ,\n_26_ramloop[10].ram.r ,\n_27_ramloop[10].ram.r ,\n_28_ramloop[10].ram.r ,\n_29_ramloop[10].ram.r ,\n_30_ramloop[10].ram.r ,\n_31_ramloop[10].ram.r ,\n_32_ramloop[10].ram.r ,\n_33_ramloop[10].ram.r ,\n_34_ramloop[10].ram.r ,\n_35_ramloop[10].ram.r ,\n_36_ramloop[10].ram.r ,\n_37_ramloop[10].ram.r ,\n_38_ramloop[10].ram.r ,\n_39_ramloop[10].ram.r }),
        .I22({\n_41_ramloop[10].ram.r ,\n_42_ramloop[10].ram.r ,\n_43_ramloop[10].ram.r ,\n_44_ramloop[10].ram.r }),
        .O1(\n_45_ramloop[10].ram.r ),
        .O2(\n_46_ramloop[10].ram.r ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[29:21]),
        .dinb({dinb[119:111],dinb[89:81],dinb[59:51],dinb[29:21]}),
        .wea(wea),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.DOADO({\n_0_ramloop[11].ram.r ,\n_1_ramloop[11].ram.r ,\n_2_ramloop[11].ram.r ,\n_3_ramloop[11].ram.r ,\n_4_ramloop[11].ram.r ,\n_5_ramloop[11].ram.r ,\n_6_ramloop[11].ram.r ,\n_7_ramloop[11].ram.r }),
        .DOPADOP(\n_40_ramloop[11].ram.r ),
        .I17({\n_8_ramloop[11].ram.r ,\n_9_ramloop[11].ram.r ,\n_10_ramloop[11].ram.r ,\n_11_ramloop[11].ram.r ,\n_12_ramloop[11].ram.r ,\n_13_ramloop[11].ram.r ,\n_14_ramloop[11].ram.r ,\n_15_ramloop[11].ram.r ,\n_16_ramloop[11].ram.r ,\n_17_ramloop[11].ram.r ,\n_18_ramloop[11].ram.r ,\n_19_ramloop[11].ram.r ,\n_20_ramloop[11].ram.r ,\n_21_ramloop[11].ram.r ,\n_22_ramloop[11].ram.r ,\n_23_ramloop[11].ram.r ,\n_24_ramloop[11].ram.r ,\n_25_ramloop[11].ram.r ,\n_26_ramloop[11].ram.r ,\n_27_ramloop[11].ram.r ,\n_28_ramloop[11].ram.r ,\n_29_ramloop[11].ram.r ,\n_30_ramloop[11].ram.r ,\n_31_ramloop[11].ram.r ,\n_32_ramloop[11].ram.r ,\n_33_ramloop[11].ram.r ,\n_34_ramloop[11].ram.r ,\n_35_ramloop[11].ram.r ,\n_36_ramloop[11].ram.r ,\n_37_ramloop[11].ram.r ,\n_38_ramloop[11].ram.r ,\n_39_ramloop[11].ram.r }),
        .I21({\n_41_ramloop[11].ram.r ,\n_42_ramloop[11].ram.r ,\n_43_ramloop[11].ram.r ,\n_44_ramloop[11].ram.r }),
        .O1(\n_45_ramloop[11].ram.r ),
        .O2(\n_46_ramloop[11].ram.r ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[29:21]),
        .dinb({dinb[119:111],dinb[89:81],dinb[59:51],dinb[29:21]}),
        .wea(wea),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.I16({\n_8_ramloop[12].ram.r ,\n_9_ramloop[12].ram.r ,\n_10_ramloop[12].ram.r ,\n_11_ramloop[12].ram.r ,\n_12_ramloop[12].ram.r ,\n_13_ramloop[12].ram.r ,\n_14_ramloop[12].ram.r ,\n_15_ramloop[12].ram.r ,\n_16_ramloop[12].ram.r ,\n_17_ramloop[12].ram.r ,\n_18_ramloop[12].ram.r ,\n_19_ramloop[12].ram.r ,\n_20_ramloop[12].ram.r ,\n_21_ramloop[12].ram.r ,\n_22_ramloop[12].ram.r ,\n_23_ramloop[12].ram.r ,\n_24_ramloop[12].ram.r ,\n_25_ramloop[12].ram.r ,\n_26_ramloop[12].ram.r ,\n_27_ramloop[12].ram.r ,\n_28_ramloop[12].ram.r ,\n_29_ramloop[12].ram.r ,\n_30_ramloop[12].ram.r ,\n_31_ramloop[12].ram.r ,\n_32_ramloop[12].ram.r ,\n_33_ramloop[12].ram.r ,\n_34_ramloop[12].ram.r ,\n_35_ramloop[12].ram.r ,\n_36_ramloop[12].ram.r ,\n_37_ramloop[12].ram.r ,\n_38_ramloop[12].ram.r ,\n_39_ramloop[12].ram.r }),
        .I17({\n_0_ramloop[12].ram.r ,\n_1_ramloop[12].ram.r ,\n_2_ramloop[12].ram.r ,\n_3_ramloop[12].ram.r ,\n_4_ramloop[12].ram.r ,\n_5_ramloop[12].ram.r ,\n_6_ramloop[12].ram.r ,\n_7_ramloop[12].ram.r }),
        .I20({\n_41_ramloop[12].ram.r ,\n_42_ramloop[12].ram.r ,\n_43_ramloop[12].ram.r ,\n_44_ramloop[12].ram.r }),
        .I21(\n_40_ramloop[12].ram.r ),
        .O1(\n_45_ramloop[12].ram.r ),
        .O2(\n_46_ramloop[12].ram.r ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[29:21]),
        .dinb({dinb[119:111],dinb[89:81],dinb[59:51],dinb[29:21]}),
        .wea(wea),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.I15({\n_0_ramloop[13].ram.r ,\n_1_ramloop[13].ram.r ,\n_2_ramloop[13].ram.r ,\n_3_ramloop[13].ram.r ,\n_4_ramloop[13].ram.r ,\n_5_ramloop[13].ram.r ,\n_6_ramloop[13].ram.r ,\n_7_ramloop[13].ram.r }),
        .I19(\n_40_ramloop[13].ram.r ),
        .O1({\n_8_ramloop[13].ram.r ,\n_9_ramloop[13].ram.r ,\n_10_ramloop[13].ram.r ,\n_11_ramloop[13].ram.r ,\n_12_ramloop[13].ram.r ,\n_13_ramloop[13].ram.r ,\n_14_ramloop[13].ram.r ,\n_15_ramloop[13].ram.r ,\n_16_ramloop[13].ram.r ,\n_17_ramloop[13].ram.r ,\n_18_ramloop[13].ram.r ,\n_19_ramloop[13].ram.r ,\n_20_ramloop[13].ram.r ,\n_21_ramloop[13].ram.r ,\n_22_ramloop[13].ram.r ,\n_23_ramloop[13].ram.r ,\n_24_ramloop[13].ram.r ,\n_25_ramloop[13].ram.r ,\n_26_ramloop[13].ram.r ,\n_27_ramloop[13].ram.r ,\n_28_ramloop[13].ram.r ,\n_29_ramloop[13].ram.r ,\n_30_ramloop[13].ram.r ,\n_31_ramloop[13].ram.r ,\n_32_ramloop[13].ram.r ,\n_33_ramloop[13].ram.r ,\n_34_ramloop[13].ram.r ,\n_35_ramloop[13].ram.r ,\n_36_ramloop[13].ram.r ,\n_37_ramloop[13].ram.r ,\n_38_ramloop[13].ram.r ,\n_39_ramloop[13].ram.r }),
        .O2({\n_41_ramloop[13].ram.r ,\n_42_ramloop[13].ram.r ,\n_43_ramloop[13].ram.r ,\n_44_ramloop[13].ram.r }),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[29:21]),
        .dinb({dinb[119:111],dinb[89:81],dinb[59:51],dinb[29:21]}),
        .ram_ena(ram_ena),
        .ram_enb(ram_enb),
        .wea(wea),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[2:1]),
        .dinb({dinb[92:91],dinb[62:61],dinb[32:31],dinb[2:1]}),
        .douta(douta[2:1]),
        .doutb({doutb[92:91],doutb[62:61],doutb[32:31],doutb[2:1]}),
        .wea(wea),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DOADO({\n_0_ramloop[2].ram.r ,\n_1_ramloop[2].ram.r ,\n_2_ramloop[2].ram.r ,\n_3_ramloop[2].ram.r ,\n_4_ramloop[2].ram.r ,\n_5_ramloop[2].ram.r ,\n_6_ramloop[2].ram.r ,\n_7_ramloop[2].ram.r }),
        .DOPADOP(\n_40_ramloop[2].ram.r ),
        .I1(\n_45_ramloop[10].ram.r ),
        .I2(\n_46_ramloop[10].ram.r ),
        .I3({\n_8_ramloop[2].ram.r ,\n_9_ramloop[2].ram.r ,\n_10_ramloop[2].ram.r ,\n_11_ramloop[2].ram.r ,\n_12_ramloop[2].ram.r ,\n_13_ramloop[2].ram.r ,\n_14_ramloop[2].ram.r ,\n_15_ramloop[2].ram.r ,\n_16_ramloop[2].ram.r ,\n_17_ramloop[2].ram.r ,\n_18_ramloop[2].ram.r ,\n_19_ramloop[2].ram.r ,\n_20_ramloop[2].ram.r ,\n_21_ramloop[2].ram.r ,\n_22_ramloop[2].ram.r ,\n_23_ramloop[2].ram.r ,\n_24_ramloop[2].ram.r ,\n_25_ramloop[2].ram.r ,\n_26_ramloop[2].ram.r ,\n_27_ramloop[2].ram.r ,\n_28_ramloop[2].ram.r ,\n_29_ramloop[2].ram.r ,\n_30_ramloop[2].ram.r ,\n_31_ramloop[2].ram.r ,\n_32_ramloop[2].ram.r ,\n_33_ramloop[2].ram.r ,\n_34_ramloop[2].ram.r ,\n_35_ramloop[2].ram.r ,\n_36_ramloop[2].ram.r ,\n_37_ramloop[2].ram.r ,\n_38_ramloop[2].ram.r ,\n_39_ramloop[2].ram.r }),
        .I6({\n_41_ramloop[2].ram.r ,\n_42_ramloop[2].ram.r ,\n_43_ramloop[2].ram.r ,\n_44_ramloop[2].ram.r }),
        .addra(addra[11:0]),
        .addrb(addrb[9:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[11:3]),
        .dinb({dinb[101:93],dinb[71:63],dinb[41:33],dinb[11:3]}),
        .wea(wea),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.DOADO({\n_0_ramloop[3].ram.r ,\n_1_ramloop[3].ram.r ,\n_2_ramloop[3].ram.r ,\n_3_ramloop[3].ram.r ,\n_4_ramloop[3].ram.r ,\n_5_ramloop[3].ram.r ,\n_6_ramloop[3].ram.r ,\n_7_ramloop[3].ram.r }),
        .DOPADOP(\n_40_ramloop[3].ram.r ),
        .I1(\n_45_ramloop[11].ram.r ),
        .I2({\n_8_ramloop[3].ram.r ,\n_9_ramloop[3].ram.r ,\n_10_ramloop[3].ram.r ,\n_11_ramloop[3].ram.r ,\n_12_ramloop[3].ram.r ,\n_13_ramloop[3].ram.r ,\n_14_ramloop[3].ram.r ,\n_15_ramloop[3].ram.r ,\n_16_ramloop[3].ram.r ,\n_17_ramloop[3].ram.r ,\n_18_ramloop[3].ram.r ,\n_19_ramloop[3].ram.r ,\n_20_ramloop[3].ram.r ,\n_21_ramloop[3].ram.r ,\n_22_ramloop[3].ram.r ,\n_23_ramloop[3].ram.r ,\n_24_ramloop[3].ram.r ,\n_25_ramloop[3].ram.r ,\n_26_ramloop[3].ram.r ,\n_27_ramloop[3].ram.r ,\n_28_ramloop[3].ram.r ,\n_29_ramloop[3].ram.r ,\n_30_ramloop[3].ram.r ,\n_31_ramloop[3].ram.r ,\n_32_ramloop[3].ram.r ,\n_33_ramloop[3].ram.r ,\n_34_ramloop[3].ram.r ,\n_35_ramloop[3].ram.r ,\n_36_ramloop[3].ram.r ,\n_37_ramloop[3].ram.r ,\n_38_ramloop[3].ram.r ,\n_39_ramloop[3].ram.r }),
        .I3(\n_46_ramloop[11].ram.r ),
        .I5({\n_41_ramloop[3].ram.r ,\n_42_ramloop[3].ram.r ,\n_43_ramloop[3].ram.r ,\n_44_ramloop[3].ram.r }),
        .addra(addra[11:0]),
        .addrb(addrb[9:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[11:3]),
        .dinb({dinb[101:93],dinb[71:63],dinb[41:33],dinb[11:3]}),
        .wea(wea),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.DOADO({\n_0_ramloop[4].ram.r ,\n_1_ramloop[4].ram.r ,\n_2_ramloop[4].ram.r ,\n_3_ramloop[4].ram.r ,\n_4_ramloop[4].ram.r ,\n_5_ramloop[4].ram.r ,\n_6_ramloop[4].ram.r ,\n_7_ramloop[4].ram.r }),
        .DOPADOP(\n_40_ramloop[4].ram.r ),
        .I1({\n_8_ramloop[4].ram.r ,\n_9_ramloop[4].ram.r ,\n_10_ramloop[4].ram.r ,\n_11_ramloop[4].ram.r ,\n_12_ramloop[4].ram.r ,\n_13_ramloop[4].ram.r ,\n_14_ramloop[4].ram.r ,\n_15_ramloop[4].ram.r ,\n_16_ramloop[4].ram.r ,\n_17_ramloop[4].ram.r ,\n_18_ramloop[4].ram.r ,\n_19_ramloop[4].ram.r ,\n_20_ramloop[4].ram.r ,\n_21_ramloop[4].ram.r ,\n_22_ramloop[4].ram.r ,\n_23_ramloop[4].ram.r ,\n_24_ramloop[4].ram.r ,\n_25_ramloop[4].ram.r ,\n_26_ramloop[4].ram.r ,\n_27_ramloop[4].ram.r ,\n_28_ramloop[4].ram.r ,\n_29_ramloop[4].ram.r ,\n_30_ramloop[4].ram.r ,\n_31_ramloop[4].ram.r ,\n_32_ramloop[4].ram.r ,\n_33_ramloop[4].ram.r ,\n_34_ramloop[4].ram.r ,\n_35_ramloop[4].ram.r ,\n_36_ramloop[4].ram.r ,\n_37_ramloop[4].ram.r ,\n_38_ramloop[4].ram.r ,\n_39_ramloop[4].ram.r }),
        .I2(\n_45_ramloop[12].ram.r ),
        .I3(\n_46_ramloop[12].ram.r ),
        .I4({\n_41_ramloop[4].ram.r ,\n_42_ramloop[4].ram.r ,\n_43_ramloop[4].ram.r ,\n_44_ramloop[4].ram.r }),
        .addra(addra[11:0]),
        .addrb(addrb[9:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[11:3]),
        .dinb({dinb[101:93],dinb[71:63],dinb[41:33],dinb[11:3]}),
        .wea(wea),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.DOADO({\n_0_ramloop[5].ram.r ,\n_1_ramloop[5].ram.r ,\n_2_ramloop[5].ram.r ,\n_3_ramloop[5].ram.r ,\n_4_ramloop[5].ram.r ,\n_5_ramloop[5].ram.r ,\n_6_ramloop[5].ram.r ,\n_7_ramloop[5].ram.r }),
        .DOBDO({\n_8_ramloop[5].ram.r ,\n_9_ramloop[5].ram.r ,\n_10_ramloop[5].ram.r ,\n_11_ramloop[5].ram.r ,\n_12_ramloop[5].ram.r ,\n_13_ramloop[5].ram.r ,\n_14_ramloop[5].ram.r ,\n_15_ramloop[5].ram.r ,\n_16_ramloop[5].ram.r ,\n_17_ramloop[5].ram.r ,\n_18_ramloop[5].ram.r ,\n_19_ramloop[5].ram.r ,\n_20_ramloop[5].ram.r ,\n_21_ramloop[5].ram.r ,\n_22_ramloop[5].ram.r ,\n_23_ramloop[5].ram.r ,\n_24_ramloop[5].ram.r ,\n_25_ramloop[5].ram.r ,\n_26_ramloop[5].ram.r ,\n_27_ramloop[5].ram.r ,\n_28_ramloop[5].ram.r ,\n_29_ramloop[5].ram.r ,\n_30_ramloop[5].ram.r ,\n_31_ramloop[5].ram.r ,\n_32_ramloop[5].ram.r ,\n_33_ramloop[5].ram.r ,\n_34_ramloop[5].ram.r ,\n_35_ramloop[5].ram.r ,\n_36_ramloop[5].ram.r ,\n_37_ramloop[5].ram.r ,\n_38_ramloop[5].ram.r ,\n_39_ramloop[5].ram.r }),
        .DOPADOP(\n_40_ramloop[5].ram.r ),
        .DOPBDOP({\n_41_ramloop[5].ram.r ,\n_42_ramloop[5].ram.r ,\n_43_ramloop[5].ram.r ,\n_44_ramloop[5].ram.r }),
        .addra(addra[11:0]),
        .addrb(addrb[9:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[11:3]),
        .dinb({dinb[101:93],dinb[71:63],dinb[41:33],dinb[11:3]}),
        .ram_ena(ram_ena),
        .ram_enb(ram_enb),
        .wea(wea),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.I1(\n_45_ramloop[10].ram.r ),
        .I10({\n_0_ramloop[6].ram.r ,\n_1_ramloop[6].ram.r ,\n_2_ramloop[6].ram.r ,\n_3_ramloop[6].ram.r ,\n_4_ramloop[6].ram.r ,\n_5_ramloop[6].ram.r ,\n_6_ramloop[6].ram.r ,\n_7_ramloop[6].ram.r }),
        .I14(\n_40_ramloop[6].ram.r ),
        .I2(\n_46_ramloop[10].ram.r ),
        .O1({\n_8_ramloop[6].ram.r ,\n_9_ramloop[6].ram.r ,\n_10_ramloop[6].ram.r ,\n_11_ramloop[6].ram.r ,\n_12_ramloop[6].ram.r ,\n_13_ramloop[6].ram.r ,\n_14_ramloop[6].ram.r ,\n_15_ramloop[6].ram.r ,\n_16_ramloop[6].ram.r ,\n_17_ramloop[6].ram.r ,\n_18_ramloop[6].ram.r ,\n_19_ramloop[6].ram.r ,\n_20_ramloop[6].ram.r ,\n_21_ramloop[6].ram.r ,\n_22_ramloop[6].ram.r ,\n_23_ramloop[6].ram.r ,\n_24_ramloop[6].ram.r ,\n_25_ramloop[6].ram.r ,\n_26_ramloop[6].ram.r ,\n_27_ramloop[6].ram.r ,\n_28_ramloop[6].ram.r ,\n_29_ramloop[6].ram.r ,\n_30_ramloop[6].ram.r ,\n_31_ramloop[6].ram.r ,\n_32_ramloop[6].ram.r ,\n_33_ramloop[6].ram.r ,\n_34_ramloop[6].ram.r ,\n_35_ramloop[6].ram.r ,\n_36_ramloop[6].ram.r ,\n_37_ramloop[6].ram.r ,\n_38_ramloop[6].ram.r ,\n_39_ramloop[6].ram.r }),
        .O2({\n_41_ramloop[6].ram.r ,\n_42_ramloop[6].ram.r ,\n_43_ramloop[6].ram.r ,\n_44_ramloop[6].ram.r }),
        .addra(addra[11:0]),
        .addrb(addrb[9:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[20:12]),
        .dinb({dinb[110:102],dinb[80:72],dinb[50:42],dinb[20:12]}),
        .wea(wea),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.DOADO({\n_0_ramloop[7].ram.r ,\n_1_ramloop[7].ram.r ,\n_2_ramloop[7].ram.r ,\n_3_ramloop[7].ram.r ,\n_4_ramloop[7].ram.r ,\n_5_ramloop[7].ram.r ,\n_6_ramloop[7].ram.r ,\n_7_ramloop[7].ram.r }),
        .DOPADOP(\n_40_ramloop[7].ram.r ),
        .I1(\n_45_ramloop[11].ram.r ),
        .I13({\n_41_ramloop[7].ram.r ,\n_42_ramloop[7].ram.r ,\n_43_ramloop[7].ram.r ,\n_44_ramloop[7].ram.r }),
        .I2(\n_46_ramloop[11].ram.r ),
        .I9({\n_8_ramloop[7].ram.r ,\n_9_ramloop[7].ram.r ,\n_10_ramloop[7].ram.r ,\n_11_ramloop[7].ram.r ,\n_12_ramloop[7].ram.r ,\n_13_ramloop[7].ram.r ,\n_14_ramloop[7].ram.r ,\n_15_ramloop[7].ram.r ,\n_16_ramloop[7].ram.r ,\n_17_ramloop[7].ram.r ,\n_18_ramloop[7].ram.r ,\n_19_ramloop[7].ram.r ,\n_20_ramloop[7].ram.r ,\n_21_ramloop[7].ram.r ,\n_22_ramloop[7].ram.r ,\n_23_ramloop[7].ram.r ,\n_24_ramloop[7].ram.r ,\n_25_ramloop[7].ram.r ,\n_26_ramloop[7].ram.r ,\n_27_ramloop[7].ram.r ,\n_28_ramloop[7].ram.r ,\n_29_ramloop[7].ram.r ,\n_30_ramloop[7].ram.r ,\n_31_ramloop[7].ram.r ,\n_32_ramloop[7].ram.r ,\n_33_ramloop[7].ram.r ,\n_34_ramloop[7].ram.r ,\n_35_ramloop[7].ram.r ,\n_36_ramloop[7].ram.r ,\n_37_ramloop[7].ram.r ,\n_38_ramloop[7].ram.r ,\n_39_ramloop[7].ram.r }),
        .addra(addra[11:0]),
        .addrb(addrb[9:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[20:12]),
        .dinb({dinb[110:102],dinb[80:72],dinb[50:42],dinb[20:12]}),
        .wea(wea),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.DOADO({\n_0_ramloop[8].ram.r ,\n_1_ramloop[8].ram.r ,\n_2_ramloop[8].ram.r ,\n_3_ramloop[8].ram.r ,\n_4_ramloop[8].ram.r ,\n_5_ramloop[8].ram.r ,\n_6_ramloop[8].ram.r ,\n_7_ramloop[8].ram.r }),
        .DOBDO({\n_8_ramloop[8].ram.r ,\n_9_ramloop[8].ram.r ,\n_10_ramloop[8].ram.r ,\n_11_ramloop[8].ram.r ,\n_12_ramloop[8].ram.r ,\n_13_ramloop[8].ram.r ,\n_14_ramloop[8].ram.r ,\n_15_ramloop[8].ram.r ,\n_16_ramloop[8].ram.r ,\n_17_ramloop[8].ram.r ,\n_18_ramloop[8].ram.r ,\n_19_ramloop[8].ram.r ,\n_20_ramloop[8].ram.r ,\n_21_ramloop[8].ram.r ,\n_22_ramloop[8].ram.r ,\n_23_ramloop[8].ram.r ,\n_24_ramloop[8].ram.r ,\n_25_ramloop[8].ram.r ,\n_26_ramloop[8].ram.r ,\n_27_ramloop[8].ram.r ,\n_28_ramloop[8].ram.r ,\n_29_ramloop[8].ram.r ,\n_30_ramloop[8].ram.r ,\n_31_ramloop[8].ram.r ,\n_32_ramloop[8].ram.r ,\n_33_ramloop[8].ram.r ,\n_34_ramloop[8].ram.r ,\n_35_ramloop[8].ram.r ,\n_36_ramloop[8].ram.r ,\n_37_ramloop[8].ram.r ,\n_38_ramloop[8].ram.r ,\n_39_ramloop[8].ram.r }),
        .DOPADOP(\n_40_ramloop[8].ram.r ),
        .DOPBDOP({\n_41_ramloop[8].ram.r ,\n_42_ramloop[8].ram.r ,\n_43_ramloop[8].ram.r ,\n_44_ramloop[8].ram.r }),
        .I1(\n_45_ramloop[12].ram.r ),
        .I2(\n_46_ramloop[12].ram.r ),
        .addra(addra[11:0]),
        .addrb(addrb[9:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[20:12]),
        .dinb({dinb[110:102],dinb[80:72],dinb[50:42],dinb[20:12]}),
        .wea(wea),
        .web(web));
blk_mem_gen_0blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.DOADO({\n_0_ramloop[9].ram.r ,\n_1_ramloop[9].ram.r ,\n_2_ramloop[9].ram.r ,\n_3_ramloop[9].ram.r ,\n_4_ramloop[9].ram.r ,\n_5_ramloop[9].ram.r ,\n_6_ramloop[9].ram.r ,\n_7_ramloop[9].ram.r }),
        .DOPADOP(\n_40_ramloop[9].ram.r ),
        .I11({\n_41_ramloop[9].ram.r ,\n_42_ramloop[9].ram.r ,\n_43_ramloop[9].ram.r ,\n_44_ramloop[9].ram.r }),
        .I7({\n_8_ramloop[9].ram.r ,\n_9_ramloop[9].ram.r ,\n_10_ramloop[9].ram.r ,\n_11_ramloop[9].ram.r ,\n_12_ramloop[9].ram.r ,\n_13_ramloop[9].ram.r ,\n_14_ramloop[9].ram.r ,\n_15_ramloop[9].ram.r ,\n_16_ramloop[9].ram.r ,\n_17_ramloop[9].ram.r ,\n_18_ramloop[9].ram.r ,\n_19_ramloop[9].ram.r ,\n_20_ramloop[9].ram.r ,\n_21_ramloop[9].ram.r ,\n_22_ramloop[9].ram.r ,\n_23_ramloop[9].ram.r ,\n_24_ramloop[9].ram.r ,\n_25_ramloop[9].ram.r ,\n_26_ramloop[9].ram.r ,\n_27_ramloop[9].ram.r ,\n_28_ramloop[9].ram.r ,\n_29_ramloop[9].ram.r ,\n_30_ramloop[9].ram.r ,\n_31_ramloop[9].ram.r ,\n_32_ramloop[9].ram.r ,\n_33_ramloop[9].ram.r ,\n_34_ramloop[9].ram.r ,\n_35_ramloop[9].ram.r ,\n_36_ramloop[9].ram.r ,\n_37_ramloop[9].ram.r ,\n_38_ramloop[9].ram.r ,\n_39_ramloop[9].ram.r }),
        .addra(addra[11:0]),
        .addrb(addrb[9:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[20:12]),
        .dinb({dinb[110:102],dinb[80:72],dinb[50:42],dinb[20:12]}),
        .ram_ena(ram_ena),
        .ram_enb(ram_enb),
        .wea(wea),
        .web(web));
endmodule

module blk_mem_gen_0blk_mem_gen_mux
   (douta,
    DOADO,
    I1,
    I2,
    I3,
    DOPADOP,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    I18,
    I19,
    I20,
    I21,
    I22,
    addra,
    wea,
    clka);
  output [26:0]douta;
  input [7:0]DOADO;
  input [7:0]I1;
  input [7:0]I2;
  input [7:0]I3;
  input [0:0]DOPADOP;
  input [0:0]I4;
  input [0:0]I5;
  input [0:0]I6;
  input [7:0]I7;
  input [7:0]I8;
  input [7:0]I9;
  input [7:0]I10;
  input [0:0]I11;
  input [0:0]I12;
  input [0:0]I13;
  input [0:0]I14;
  input [7:0]I15;
  input [7:0]I16;
  input [7:0]I17;
  input [7:0]I18;
  input [0:0]I19;
  input [0:0]I20;
  input [0:0]I21;
  input [0:0]I22;
  input [1:0]addra;
  input [0:0]wea;
  input clka;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [7:0]I1;
  wire [7:0]I10;
  wire [0:0]I11;
  wire [0:0]I12;
  wire [0:0]I13;
  wire [0:0]I14;
  wire [7:0]I15;
  wire [7:0]I16;
  wire [7:0]I17;
  wire [7:0]I18;
  wire [0:0]I19;
  wire [7:0]I2;
  wire [0:0]I20;
  wire [0:0]I21;
  wire [0:0]I22;
  wire [7:0]I3;
  wire [0:0]I4;
  wire [0:0]I5;
  wire [0:0]I6;
  wire [7:0]I7;
  wire [7:0]I8;
  wire [7:0]I9;
  wire [1:0]addra;
  wire clka;
  wire [26:0]douta;
  wire \n_0_no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 ;
  wire \n_0_no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 ;
  wire [1:0]sel_pipe;
  wire [0:0]wea;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[10]_INST_0 
       (.I0(DOADO[7]),
        .I1(I1[7]),
        .I2(I2[7]),
        .I3(sel_pipe[1]),
        .I4(I3[7]),
        .I5(sel_pipe[0]),
        .O(douta[7]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[11]_INST_0 
       (.I0(DOPADOP),
        .I1(I4),
        .I2(I5),
        .I3(sel_pipe[1]),
        .I4(I6),
        .I5(sel_pipe[0]),
        .O(douta[8]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[12]_INST_0 
       (.I0(I7[0]),
        .I1(I8[0]),
        .I2(I9[0]),
        .I3(sel_pipe[1]),
        .I4(I10[0]),
        .I5(sel_pipe[0]),
        .O(douta[9]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[13]_INST_0 
       (.I0(I7[1]),
        .I1(I8[1]),
        .I2(I9[1]),
        .I3(sel_pipe[1]),
        .I4(I10[1]),
        .I5(sel_pipe[0]),
        .O(douta[10]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[14]_INST_0 
       (.I0(I7[2]),
        .I1(I8[2]),
        .I2(I9[2]),
        .I3(sel_pipe[1]),
        .I4(I10[2]),
        .I5(sel_pipe[0]),
        .O(douta[11]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[15]_INST_0 
       (.I0(I7[3]),
        .I1(I8[3]),
        .I2(I9[3]),
        .I3(sel_pipe[1]),
        .I4(I10[3]),
        .I5(sel_pipe[0]),
        .O(douta[12]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[16]_INST_0 
       (.I0(I7[4]),
        .I1(I8[4]),
        .I2(I9[4]),
        .I3(sel_pipe[1]),
        .I4(I10[4]),
        .I5(sel_pipe[0]),
        .O(douta[13]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[17]_INST_0 
       (.I0(I7[5]),
        .I1(I8[5]),
        .I2(I9[5]),
        .I3(sel_pipe[1]),
        .I4(I10[5]),
        .I5(sel_pipe[0]),
        .O(douta[14]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[18]_INST_0 
       (.I0(I7[6]),
        .I1(I8[6]),
        .I2(I9[6]),
        .I3(sel_pipe[1]),
        .I4(I10[6]),
        .I5(sel_pipe[0]),
        .O(douta[15]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[19]_INST_0 
       (.I0(I7[7]),
        .I1(I8[7]),
        .I2(I9[7]),
        .I3(sel_pipe[1]),
        .I4(I10[7]),
        .I5(sel_pipe[0]),
        .O(douta[16]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[20]_INST_0 
       (.I0(I11),
        .I1(I12),
        .I2(I13),
        .I3(sel_pipe[1]),
        .I4(I14),
        .I5(sel_pipe[0]),
        .O(douta[17]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[21]_INST_0 
       (.I0(I15[0]),
        .I1(I16[0]),
        .I2(I17[0]),
        .I3(sel_pipe[1]),
        .I4(I18[0]),
        .I5(sel_pipe[0]),
        .O(douta[18]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[22]_INST_0 
       (.I0(I15[1]),
        .I1(I16[1]),
        .I2(I17[1]),
        .I3(sel_pipe[1]),
        .I4(I18[1]),
        .I5(sel_pipe[0]),
        .O(douta[19]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[23]_INST_0 
       (.I0(I15[2]),
        .I1(I16[2]),
        .I2(I17[2]),
        .I3(sel_pipe[1]),
        .I4(I18[2]),
        .I5(sel_pipe[0]),
        .O(douta[20]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[24]_INST_0 
       (.I0(I15[3]),
        .I1(I16[3]),
        .I2(I17[3]),
        .I3(sel_pipe[1]),
        .I4(I18[3]),
        .I5(sel_pipe[0]),
        .O(douta[21]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[25]_INST_0 
       (.I0(I15[4]),
        .I1(I16[4]),
        .I2(I17[4]),
        .I3(sel_pipe[1]),
        .I4(I18[4]),
        .I5(sel_pipe[0]),
        .O(douta[22]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[26]_INST_0 
       (.I0(I15[5]),
        .I1(I16[5]),
        .I2(I17[5]),
        .I3(sel_pipe[1]),
        .I4(I18[5]),
        .I5(sel_pipe[0]),
        .O(douta[23]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[27]_INST_0 
       (.I0(I15[6]),
        .I1(I16[6]),
        .I2(I17[6]),
        .I3(sel_pipe[1]),
        .I4(I18[6]),
        .I5(sel_pipe[0]),
        .O(douta[24]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[28]_INST_0 
       (.I0(I15[7]),
        .I1(I16[7]),
        .I2(I17[7]),
        .I3(sel_pipe[1]),
        .I4(I18[7]),
        .I5(sel_pipe[0]),
        .O(douta[25]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[29]_INST_0 
       (.I0(I19),
        .I1(I20),
        .I2(I21),
        .I3(sel_pipe[1]),
        .I4(I22),
        .I5(sel_pipe[0]),
        .O(douta[26]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[3]_INST_0 
       (.I0(DOADO[0]),
        .I1(I1[0]),
        .I2(I2[0]),
        .I3(sel_pipe[1]),
        .I4(I3[0]),
        .I5(sel_pipe[0]),
        .O(douta[0]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[4]_INST_0 
       (.I0(DOADO[1]),
        .I1(I1[1]),
        .I2(I2[1]),
        .I3(sel_pipe[1]),
        .I4(I3[1]),
        .I5(sel_pipe[0]),
        .O(douta[1]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[5]_INST_0 
       (.I0(DOADO[2]),
        .I1(I1[2]),
        .I2(I2[2]),
        .I3(sel_pipe[1]),
        .I4(I3[2]),
        .I5(sel_pipe[0]),
        .O(douta[2]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[6]_INST_0 
       (.I0(DOADO[3]),
        .I1(I1[3]),
        .I2(I2[3]),
        .I3(sel_pipe[1]),
        .I4(I3[3]),
        .I5(sel_pipe[0]),
        .O(douta[3]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[7]_INST_0 
       (.I0(DOADO[4]),
        .I1(I1[4]),
        .I2(I2[4]),
        .I3(sel_pipe[1]),
        .I4(I3[4]),
        .I5(sel_pipe[0]),
        .O(douta[4]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[8]_INST_0 
       (.I0(DOADO[5]),
        .I1(I1[5]),
        .I2(I2[5]),
        .I3(sel_pipe[1]),
        .I4(I3[5]),
        .I5(sel_pipe[0]),
        .O(douta[5]));
LUT6 #(
    .INIT(64'hAACCAACCF0FFF000)) 
     \douta[9]_INST_0 
       (.I0(DOADO[6]),
        .I1(I1[6]),
        .I2(I2[6]),
        .I3(sel_pipe[1]),
        .I4(I3[6]),
        .I5(sel_pipe[0]),
        .O(douta[6]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'hE2)) 
     \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 
       (.I0(addra[0]),
        .I1(wea),
        .I2(sel_pipe[0]),
        .O(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'hE2)) 
     \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 
       (.I0(addra[1]),
        .I1(wea),
        .I2(sel_pipe[1]),
        .O(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(\<const1> ),
        .D(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 ),
        .Q(sel_pipe[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(\<const1> ),
        .D(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 ),
        .Q(sel_pipe[1]),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_0blk_mem_gen_mux__parameterized0
   (doutb,
    DOBDO,
    I1,
    I2,
    I3,
    DOPBDOP,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    I18,
    I19,
    I20,
    I21,
    I22,
    addrb,
    web,
    clkb);
  output [107:0]doutb;
  input [31:0]DOBDO;
  input [31:0]I1;
  input [31:0]I2;
  input [31:0]I3;
  input [3:0]DOPBDOP;
  input [3:0]I4;
  input [3:0]I5;
  input [3:0]I6;
  input [31:0]I7;
  input [31:0]I8;
  input [31:0]I9;
  input [31:0]I10;
  input [3:0]I11;
  input [3:0]I12;
  input [3:0]I13;
  input [3:0]I14;
  input [31:0]I15;
  input [31:0]I16;
  input [31:0]I17;
  input [31:0]I18;
  input [3:0]I19;
  input [3:0]I20;
  input [3:0]I21;
  input [3:0]I22;
  input [1:0]addrb;
  input [0:0]web;
  input clkb;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]DOBDO;
  wire [3:0]DOPBDOP;
  wire [31:0]I1;
  wire [31:0]I10;
  wire [3:0]I11;
  wire [3:0]I12;
  wire [3:0]I13;
  wire [3:0]I14;
  wire [31:0]I15;
  wire [31:0]I16;
  wire [31:0]I17;
  wire [31:0]I18;
  wire [3:0]I19;
  wire [31:0]I2;
  wire [3:0]I20;
  wire [3:0]I21;
  wire [3:0]I22;
  wire [31:0]I3;
  wire [3:0]I4;
  wire [3:0]I5;
  wire [3:0]I6;
  wire [31:0]I7;
  wire [31:0]I8;
  wire [31:0]I9;
  wire [1:0]addrb;
  wire clkb;
  wire [107:0]doutb;
  wire \n_0_no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 ;
  wire \n_0_no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 ;
  wire \n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ;
  wire \n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ;
  wire [0:0]web;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[100]_INST_0 
       (.I0(DOBDO[31]),
        .I1(I1[31]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[31]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[31]),
        .O(doutb[88]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[101]_INST_0 
       (.I0(DOPBDOP[3]),
        .I1(I4[3]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I5[3]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I6[3]),
        .O(doutb[89]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[102]_INST_0 
       (.I0(I7[24]),
        .I1(I8[24]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[24]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[24]),
        .O(doutb[90]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[103]_INST_0 
       (.I0(I7[25]),
        .I1(I8[25]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[25]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[25]),
        .O(doutb[91]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[104]_INST_0 
       (.I0(I7[26]),
        .I1(I8[26]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[26]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[26]),
        .O(doutb[92]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[105]_INST_0 
       (.I0(I7[27]),
        .I1(I8[27]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[27]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[27]),
        .O(doutb[93]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[106]_INST_0 
       (.I0(I7[28]),
        .I1(I8[28]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[28]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[28]),
        .O(doutb[94]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[107]_INST_0 
       (.I0(I7[29]),
        .I1(I8[29]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[29]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[29]),
        .O(doutb[95]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[108]_INST_0 
       (.I0(I7[30]),
        .I1(I8[30]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[30]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[30]),
        .O(doutb[96]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[109]_INST_0 
       (.I0(I7[31]),
        .I1(I8[31]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[31]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[31]),
        .O(doutb[97]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[10]_INST_0 
       (.I0(DOBDO[7]),
        .I1(I1[7]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[7]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[7]),
        .O(doutb[7]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[110]_INST_0 
       (.I0(I11[3]),
        .I1(I12[3]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I13[3]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I14[3]),
        .O(doutb[98]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[111]_INST_0 
       (.I0(I15[24]),
        .I1(I16[24]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[24]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[24]),
        .O(doutb[99]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[112]_INST_0 
       (.I0(I15[25]),
        .I1(I16[25]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[25]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[25]),
        .O(doutb[100]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[113]_INST_0 
       (.I0(I15[26]),
        .I1(I16[26]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[26]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[26]),
        .O(doutb[101]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[114]_INST_0 
       (.I0(I15[27]),
        .I1(I16[27]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[27]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[27]),
        .O(doutb[102]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[115]_INST_0 
       (.I0(I15[28]),
        .I1(I16[28]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[28]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[28]),
        .O(doutb[103]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[116]_INST_0 
       (.I0(I15[29]),
        .I1(I16[29]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[29]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[29]),
        .O(doutb[104]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[117]_INST_0 
       (.I0(I15[30]),
        .I1(I16[30]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[30]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[30]),
        .O(doutb[105]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[118]_INST_0 
       (.I0(I15[31]),
        .I1(I16[31]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[31]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[31]),
        .O(doutb[106]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[119]_INST_0 
       (.I0(I19[3]),
        .I1(I20[3]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I21[3]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I22[3]),
        .O(doutb[107]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[11]_INST_0 
       (.I0(DOPBDOP[0]),
        .I1(I4[0]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I5[0]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I6[0]),
        .O(doutb[8]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[12]_INST_0 
       (.I0(I7[0]),
        .I1(I8[0]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[0]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[0]),
        .O(doutb[9]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[13]_INST_0 
       (.I0(I7[1]),
        .I1(I8[1]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[1]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[1]),
        .O(doutb[10]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[14]_INST_0 
       (.I0(I7[2]),
        .I1(I8[2]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[2]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[2]),
        .O(doutb[11]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[15]_INST_0 
       (.I0(I7[3]),
        .I1(I8[3]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[3]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[3]),
        .O(doutb[12]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[16]_INST_0 
       (.I0(I7[4]),
        .I1(I8[4]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[4]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[4]),
        .O(doutb[13]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[17]_INST_0 
       (.I0(I7[5]),
        .I1(I8[5]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[5]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[5]),
        .O(doutb[14]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[18]_INST_0 
       (.I0(I7[6]),
        .I1(I8[6]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[6]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[6]),
        .O(doutb[15]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[19]_INST_0 
       (.I0(I7[7]),
        .I1(I8[7]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[7]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[7]),
        .O(doutb[16]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[20]_INST_0 
       (.I0(I11[0]),
        .I1(I12[0]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I13[0]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I14[0]),
        .O(doutb[17]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[21]_INST_0 
       (.I0(I15[0]),
        .I1(I16[0]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[0]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[0]),
        .O(doutb[18]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[22]_INST_0 
       (.I0(I15[1]),
        .I1(I16[1]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[1]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[1]),
        .O(doutb[19]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[23]_INST_0 
       (.I0(I15[2]),
        .I1(I16[2]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[2]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[2]),
        .O(doutb[20]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[24]_INST_0 
       (.I0(I15[3]),
        .I1(I16[3]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[3]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[3]),
        .O(doutb[21]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[25]_INST_0 
       (.I0(I15[4]),
        .I1(I16[4]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[4]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[4]),
        .O(doutb[22]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[26]_INST_0 
       (.I0(I15[5]),
        .I1(I16[5]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[5]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[5]),
        .O(doutb[23]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[27]_INST_0 
       (.I0(I15[6]),
        .I1(I16[6]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[6]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[6]),
        .O(doutb[24]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[28]_INST_0 
       (.I0(I15[7]),
        .I1(I16[7]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[7]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[7]),
        .O(doutb[25]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[29]_INST_0 
       (.I0(I19[0]),
        .I1(I20[0]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I21[0]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I22[0]),
        .O(doutb[26]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[33]_INST_0 
       (.I0(DOBDO[8]),
        .I1(I1[8]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[8]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[8]),
        .O(doutb[27]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[34]_INST_0 
       (.I0(DOBDO[9]),
        .I1(I1[9]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[9]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[9]),
        .O(doutb[28]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[35]_INST_0 
       (.I0(DOBDO[10]),
        .I1(I1[10]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[10]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[10]),
        .O(doutb[29]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[36]_INST_0 
       (.I0(DOBDO[11]),
        .I1(I1[11]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[11]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[11]),
        .O(doutb[30]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[37]_INST_0 
       (.I0(DOBDO[12]),
        .I1(I1[12]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[12]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[12]),
        .O(doutb[31]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[38]_INST_0 
       (.I0(DOBDO[13]),
        .I1(I1[13]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[13]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[13]),
        .O(doutb[32]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[39]_INST_0 
       (.I0(DOBDO[14]),
        .I1(I1[14]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[14]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[14]),
        .O(doutb[33]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[3]_INST_0 
       (.I0(DOBDO[0]),
        .I1(I1[0]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[0]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[0]),
        .O(doutb[0]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[40]_INST_0 
       (.I0(DOBDO[15]),
        .I1(I1[15]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[15]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[15]),
        .O(doutb[34]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[41]_INST_0 
       (.I0(DOPBDOP[1]),
        .I1(I4[1]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I5[1]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I6[1]),
        .O(doutb[35]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[42]_INST_0 
       (.I0(I7[8]),
        .I1(I8[8]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[8]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[8]),
        .O(doutb[36]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[43]_INST_0 
       (.I0(I7[9]),
        .I1(I8[9]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[9]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[9]),
        .O(doutb[37]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[44]_INST_0 
       (.I0(I7[10]),
        .I1(I8[10]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[10]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[10]),
        .O(doutb[38]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[45]_INST_0 
       (.I0(I7[11]),
        .I1(I8[11]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[11]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[11]),
        .O(doutb[39]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[46]_INST_0 
       (.I0(I7[12]),
        .I1(I8[12]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[12]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[12]),
        .O(doutb[40]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[47]_INST_0 
       (.I0(I7[13]),
        .I1(I8[13]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[13]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[13]),
        .O(doutb[41]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[48]_INST_0 
       (.I0(I7[14]),
        .I1(I8[14]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[14]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[14]),
        .O(doutb[42]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[49]_INST_0 
       (.I0(I7[15]),
        .I1(I8[15]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[15]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[15]),
        .O(doutb[43]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[4]_INST_0 
       (.I0(DOBDO[1]),
        .I1(I1[1]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[1]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[1]),
        .O(doutb[1]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[50]_INST_0 
       (.I0(I11[1]),
        .I1(I12[1]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I13[1]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I14[1]),
        .O(doutb[44]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[51]_INST_0 
       (.I0(I15[8]),
        .I1(I16[8]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[8]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[8]),
        .O(doutb[45]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[52]_INST_0 
       (.I0(I15[9]),
        .I1(I16[9]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[9]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[9]),
        .O(doutb[46]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[53]_INST_0 
       (.I0(I15[10]),
        .I1(I16[10]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[10]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[10]),
        .O(doutb[47]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[54]_INST_0 
       (.I0(I15[11]),
        .I1(I16[11]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[11]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[11]),
        .O(doutb[48]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[55]_INST_0 
       (.I0(I15[12]),
        .I1(I16[12]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[12]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[12]),
        .O(doutb[49]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[56]_INST_0 
       (.I0(I15[13]),
        .I1(I16[13]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[13]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[13]),
        .O(doutb[50]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[57]_INST_0 
       (.I0(I15[14]),
        .I1(I16[14]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[14]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[14]),
        .O(doutb[51]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[58]_INST_0 
       (.I0(I15[15]),
        .I1(I16[15]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[15]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[15]),
        .O(doutb[52]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[59]_INST_0 
       (.I0(I19[1]),
        .I1(I20[1]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I21[1]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I22[1]),
        .O(doutb[53]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[5]_INST_0 
       (.I0(DOBDO[2]),
        .I1(I1[2]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[2]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[2]),
        .O(doutb[2]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[63]_INST_0 
       (.I0(DOBDO[16]),
        .I1(I1[16]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[16]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[16]),
        .O(doutb[54]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[64]_INST_0 
       (.I0(DOBDO[17]),
        .I1(I1[17]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[17]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[17]),
        .O(doutb[55]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[65]_INST_0 
       (.I0(DOBDO[18]),
        .I1(I1[18]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[18]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[18]),
        .O(doutb[56]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[66]_INST_0 
       (.I0(DOBDO[19]),
        .I1(I1[19]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[19]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[19]),
        .O(doutb[57]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[67]_INST_0 
       (.I0(DOBDO[20]),
        .I1(I1[20]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[20]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[20]),
        .O(doutb[58]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[68]_INST_0 
       (.I0(DOBDO[21]),
        .I1(I1[21]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[21]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[21]),
        .O(doutb[59]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[69]_INST_0 
       (.I0(DOBDO[22]),
        .I1(I1[22]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[22]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[22]),
        .O(doutb[60]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[6]_INST_0 
       (.I0(DOBDO[3]),
        .I1(I1[3]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[3]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[3]),
        .O(doutb[3]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[70]_INST_0 
       (.I0(DOBDO[23]),
        .I1(I1[23]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[23]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[23]),
        .O(doutb[61]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[71]_INST_0 
       (.I0(DOPBDOP[2]),
        .I1(I4[2]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I5[2]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I6[2]),
        .O(doutb[62]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[72]_INST_0 
       (.I0(I7[16]),
        .I1(I8[16]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[16]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[16]),
        .O(doutb[63]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[73]_INST_0 
       (.I0(I7[17]),
        .I1(I8[17]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[17]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[17]),
        .O(doutb[64]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[74]_INST_0 
       (.I0(I7[18]),
        .I1(I8[18]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[18]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[18]),
        .O(doutb[65]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[75]_INST_0 
       (.I0(I7[19]),
        .I1(I8[19]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[19]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[19]),
        .O(doutb[66]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[76]_INST_0 
       (.I0(I7[20]),
        .I1(I8[20]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[20]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[20]),
        .O(doutb[67]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[77]_INST_0 
       (.I0(I7[21]),
        .I1(I8[21]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[21]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[21]),
        .O(doutb[68]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[78]_INST_0 
       (.I0(I7[22]),
        .I1(I8[22]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[22]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[22]),
        .O(doutb[69]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[79]_INST_0 
       (.I0(I7[23]),
        .I1(I8[23]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I9[23]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I10[23]),
        .O(doutb[70]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[7]_INST_0 
       (.I0(DOBDO[4]),
        .I1(I1[4]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[4]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[4]),
        .O(doutb[4]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[80]_INST_0 
       (.I0(I11[2]),
        .I1(I12[2]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I13[2]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I14[2]),
        .O(doutb[71]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[81]_INST_0 
       (.I0(I15[16]),
        .I1(I16[16]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[16]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[16]),
        .O(doutb[72]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[82]_INST_0 
       (.I0(I15[17]),
        .I1(I16[17]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[17]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[17]),
        .O(doutb[73]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[83]_INST_0 
       (.I0(I15[18]),
        .I1(I16[18]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[18]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[18]),
        .O(doutb[74]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[84]_INST_0 
       (.I0(I15[19]),
        .I1(I16[19]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[19]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[19]),
        .O(doutb[75]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[85]_INST_0 
       (.I0(I15[20]),
        .I1(I16[20]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[20]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[20]),
        .O(doutb[76]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[86]_INST_0 
       (.I0(I15[21]),
        .I1(I16[21]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[21]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[21]),
        .O(doutb[77]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[87]_INST_0 
       (.I0(I15[22]),
        .I1(I16[22]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[22]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[22]),
        .O(doutb[78]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[88]_INST_0 
       (.I0(I15[23]),
        .I1(I16[23]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I17[23]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I18[23]),
        .O(doutb[79]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[89]_INST_0 
       (.I0(I19[2]),
        .I1(I20[2]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I21[2]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I22[2]),
        .O(doutb[80]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[8]_INST_0 
       (.I0(DOBDO[5]),
        .I1(I1[5]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[5]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[5]),
        .O(doutb[5]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[93]_INST_0 
       (.I0(DOBDO[24]),
        .I1(I1[24]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[24]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[24]),
        .O(doutb[81]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[94]_INST_0 
       (.I0(DOBDO[25]),
        .I1(I1[25]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[25]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[25]),
        .O(doutb[82]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[95]_INST_0 
       (.I0(DOBDO[26]),
        .I1(I1[26]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[26]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[26]),
        .O(doutb[83]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[96]_INST_0 
       (.I0(DOBDO[27]),
        .I1(I1[27]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[27]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[27]),
        .O(doutb[84]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[97]_INST_0 
       (.I0(DOBDO[28]),
        .I1(I1[28]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[28]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[28]),
        .O(doutb[85]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[98]_INST_0 
       (.I0(DOBDO[29]),
        .I1(I1[29]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[29]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[29]),
        .O(doutb[86]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[99]_INST_0 
       (.I0(DOBDO[30]),
        .I1(I1[30]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[30]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[30]),
        .O(doutb[87]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[9]_INST_0 
       (.I0(DOBDO[6]),
        .I1(I1[6]),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .I3(I2[6]),
        .I4(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .I5(I3[6]),
        .O(doutb[6]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'hE2)) 
     \no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 
       (.I0(addrb[0]),
        .I1(web),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .O(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'hE2)) 
     \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 
       (.I0(addrb[1]),
        .I1(web),
        .I2(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .O(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clkb),
        .CE(\<const1> ),
        .D(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe[0]_i_1 ),
        .Q(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clkb),
        .CE(\<const1> ),
        .D(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 ),
        .Q(\n_0_no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] ),
        .R(\<const0> ));
endmodule

module blk_mem_gen_0blk_mem_gen_prim_width
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [0:0]douta;
  output [3:0]doutb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [11:0]addrb;
  input [0:0]dina;
  input [3:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [3:0]dinb;
  wire [0:0]douta;
  wire [3:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6 \v6_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0blk_mem_gen_prim_width__parameterized0
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [1:0]douta;
  output [7:0]doutb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [11:0]addrb;
  input [1:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [1:0]dina;
  wire [7:0]dinb;
  wire [1:0]douta;
  wire [7:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized0 \v6_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0blk_mem_gen_prim_width__parameterized1
   (DOADO,
    I3,
    DOPADOP,
    I6,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I3;
  output [0:0]DOPADOP;
  output [3:0]I6;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire I1;
  wire I2;
  wire [31:0]I3;
  wire [3:0]I6;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized1 \v6_noinit.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I6(I6),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0blk_mem_gen_prim_width__parameterized10
   (DOADO,
    I17,
    DOPADOP,
    I21,
    O1,
    O2,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I17;
  output [0:0]DOPADOP;
  output [3:0]I21;
  output O1;
  output O2;
  input clka;
  input clkb;
  input [13:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [31:0]I17;
  wire [3:0]I21;
  wire O1;
  wire O2;
  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized10 \v6_noinit.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .I17(I17),
        .I21(I21),
        .O1(O1),
        .O2(O2),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0blk_mem_gen_prim_width__parameterized11
   (I17,
    I16,
    I21,
    I20,
    O1,
    O2,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]I17;
  output [31:0]I16;
  output [0:0]I21;
  output [3:0]I20;
  output O1;
  output O2;
  input clka;
  input clkb;
  input [13:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [31:0]I16;
  wire [7:0]I17;
  wire [3:0]I20;
  wire [0:0]I21;
  wire O1;
  wire O2;
  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized11 \v6_noinit.ram 
       (.I16(I16),
        .I17(I17),
        .I20(I20),
        .I21(I21),
        .O1(O1),
        .O2(O2),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0blk_mem_gen_prim_width__parameterized12
   (I15,
    O1,
    I19,
    O2,
    ram_ena,
    ram_enb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]I15;
  output [31:0]O1;
  output [0:0]I19;
  output [3:0]O2;
  output ram_ena;
  output ram_enb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [7:0]I15;
  wire [0:0]I19;
  wire [31:0]O1;
  wire [3:0]O2;
  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire ram_ena;
  wire ram_enb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized12 \v6_noinit.ram 
       (.I15(I15),
        .I19(I19),
        .O1(O1),
        .O2(O2),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .ram_ena(ram_ena),
        .ram_enb(ram_enb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0blk_mem_gen_prim_width__parameterized2
   (DOADO,
    I2,
    DOPADOP,
    I5,
    I1,
    clka,
    I3,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I2;
  output [0:0]DOPADOP;
  output [3:0]I5;
  input I1;
  input clka;
  input I3;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire I1;
  wire [31:0]I2;
  wire I3;
  wire [3:0]I5;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized2 \v6_noinit.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I5(I5),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0blk_mem_gen_prim_width__parameterized3
   (DOADO,
    I1,
    DOPADOP,
    I4,
    I2,
    clka,
    I3,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I1;
  output [0:0]DOPADOP;
  output [3:0]I4;
  input I2;
  input clka;
  input I3;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [31:0]I1;
  wire I2;
  wire I3;
  wire [3:0]I4;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized3 \v6_noinit.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0blk_mem_gen_prim_width__parameterized4
   (DOADO,
    DOBDO,
    DOPADOP,
    DOPBDOP,
    ram_ena,
    clka,
    ram_enb,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]DOBDO;
  output [0:0]DOPADOP;
  output [3:0]DOPBDOP;
  input ram_ena;
  input clka;
  input ram_enb;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [7:0]DOADO;
  wire [31:0]DOBDO;
  wire [0:0]DOPADOP;
  wire [3:0]DOPBDOP;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire ram_ena;
  wire ram_enb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized4 \v6_noinit.ram 
       (.DOADO(DOADO),
        .DOBDO(DOBDO),
        .DOPADOP(DOPADOP),
        .DOPBDOP(DOPBDOP),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .ram_ena(ram_ena),
        .ram_enb(ram_enb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0blk_mem_gen_prim_width__parameterized5
   (I10,
    O1,
    I14,
    O2,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]I10;
  output [31:0]O1;
  output [0:0]I14;
  output [3:0]O2;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire I1;
  wire [7:0]I10;
  wire [0:0]I14;
  wire I2;
  wire [31:0]O1;
  wire [3:0]O2;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized5 \v6_noinit.ram 
       (.I1(I1),
        .I10(I10),
        .I14(I14),
        .I2(I2),
        .O1(O1),
        .O2(O2),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0blk_mem_gen_prim_width__parameterized6
   (DOADO,
    I9,
    DOPADOP,
    I13,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I9;
  output [0:0]DOPADOP;
  output [3:0]I13;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire I1;
  wire [3:0]I13;
  wire I2;
  wire [31:0]I9;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized6 \v6_noinit.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .I1(I1),
        .I13(I13),
        .I2(I2),
        .I9(I9),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0blk_mem_gen_prim_width__parameterized7
   (DOADO,
    DOBDO,
    DOPADOP,
    DOPBDOP,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]DOBDO;
  output [0:0]DOPADOP;
  output [3:0]DOPBDOP;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [7:0]DOADO;
  wire [31:0]DOBDO;
  wire [0:0]DOPADOP;
  wire [3:0]DOPBDOP;
  wire I1;
  wire I2;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized7 \v6_noinit.ram 
       (.DOADO(DOADO),
        .DOBDO(DOBDO),
        .DOPADOP(DOPADOP),
        .DOPBDOP(DOPBDOP),
        .I1(I1),
        .I2(I2),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0blk_mem_gen_prim_width__parameterized8
   (DOADO,
    I7,
    DOPADOP,
    I11,
    ram_ena,
    clka,
    ram_enb,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I7;
  output [0:0]DOPADOP;
  output [3:0]I11;
  input ram_ena;
  input clka;
  input ram_enb;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [3:0]I11;
  wire [31:0]I7;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire ram_ena;
  wire ram_enb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized8 \v6_noinit.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .I11(I11),
        .I7(I7),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .ram_ena(ram_ena),
        .ram_enb(ram_enb),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_0blk_mem_gen_prim_width__parameterized9
   (DOADO,
    I18,
    DOPADOP,
    I22,
    O1,
    O2,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I18;
  output [0:0]DOPADOP;
  output [3:0]I22;
  output O1;
  output O2;
  input clka;
  input clkb;
  input [13:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [31:0]I18;
  wire [3:0]I22;
  wire O1;
  wire O2;
  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized9 \v6_noinit.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .I18(I18),
        .I22(I22),
        .O1(O1),
        .O2(O2),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .wea(wea),
        .web(web));
endmodule

module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [0:0]douta;
  output [3:0]doutb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [11:0]addrb;
  input [0:0]dina;
  input [3:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [3:0]dinb;
  wire [0:0]douta;
  wire [3:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_RSTREGB_UNCONNECTED ;
  wire [15:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:4]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;
  wire [1:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_WEA_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(4)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR({addrb,\<const0> ,\<const0> }),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dinb}),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:1],douta}),
        .DOBDO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:4],doutb}),
        .DOPADOP(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(\<const1> ),
        .ENBWREN(\<const1> ),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_RSTREGB_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_WEA_UNCONNECTED [1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_WEBWE_UNCONNECTED [3:1],web}));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized0
   (douta,
    doutb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [1:0]douta;
  output [7:0]doutb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [11:0]addrb;
  input [1:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [1:0]dina;
  wire [7:0]dinb;
  wire [1:0]douta;
  wire [7:0]doutb;
  wire \n_75_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:2]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(2),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(9)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dinb}),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:2],douta}),
        .DOBDO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],doutb}),
        .DOPADOP(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\n_75_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram }),
        .ECCPARITY(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\<const1> ),
        .ENBWREN(\<const1> ),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:1],web}));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized1
   (DOADO,
    I3,
    DOPADOP,
    I6,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I3;
  output [0:0]DOPADOP;
  output [3:0]I6;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire I1;
  wire I2;
  wire [31:0]I3;
  wire [3:0]I6;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:4]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(36)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({dinb[34:27],dinb[25:18],dinb[16:9],dinb[7:0]}),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({dinb[35],dinb[26],dinb[17],dinb[8]}),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(I3),
        .DOPADOP({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(I6),
        .ECCPARITY(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(I2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:4],web,web,web,web}));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized10
   (DOADO,
    I17,
    DOPADOP,
    I21,
    O1,
    O2,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I17;
  output [0:0]DOPADOP;
  output [3:0]I21;
  output O1;
  output O2;
  input clka;
  input clkb;
  input [13:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [31:0]I17;
  wire [3:0]I21;
  wire O1;
  wire O2;
  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:4]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(36)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra[11:0],\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb[9:0],\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({dinb[34:27],dinb[25:18],dinb[16:9],dinb[7:0]}),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({dinb[35],dinb[26],dinb[17],dinb[8]}),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(I17),
        .DOPADOP({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(I21),
        .ECCPARITY(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(O1),
        .ENBWREN(O2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:4],web,web,web,web}));
LUT2 #(
    .INIT(4'h2)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(O1));
LUT2 #(
    .INIT(4'h2)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__1 
       (.I0(addrb[10]),
        .I1(addrb[11]),
        .O(O2));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized11
   (I17,
    I16,
    I21,
    I20,
    O1,
    O2,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]I17;
  output [31:0]I16;
  output [0:0]I21;
  output [3:0]I20;
  output O1;
  output O2;
  input clka;
  input clkb;
  input [13:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]I16;
  wire [7:0]I17;
  wire [3:0]I20;
  wire [0:0]I21;
  wire O1;
  wire O2;
  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:4]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(36)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra[11:0],\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb[9:0],\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({dinb[34:27],dinb[25:18],dinb[16:9],dinb[7:0]}),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({dinb[35],dinb[26],dinb[17],dinb[8]}),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],I17}),
        .DOBDO(I16),
        .DOPADOP({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],I21}),
        .DOPBDOP(I20),
        .ECCPARITY(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(O1),
        .ENBWREN(O2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:4],web,web,web,web}));
LUT2 #(
    .INIT(4'h2)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__2 
       (.I0(addra[13]),
        .I1(addra[12]),
        .O(O1));
LUT2 #(
    .INIT(4'h2)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__2 
       (.I0(addrb[11]),
        .I1(addrb[10]),
        .O(O2));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized12
   (I15,
    O1,
    I19,
    O2,
    ram_ena,
    ram_enb,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]I15;
  output [31:0]O1;
  output [0:0]I19;
  output [3:0]O2;
  output ram_ena;
  output ram_enb;
  input clka;
  input clkb;
  input [13:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]I15;
  wire [0:0]I19;
  wire [31:0]O1;
  wire [3:0]O2;
  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire ram_ena;
  wire ram_enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:4]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(36)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra[11:0],\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb[9:0],\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({dinb[34:27],dinb[25:18],dinb[16:9],dinb[7:0]}),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({dinb[35],dinb[26],dinb[17],dinb[8]}),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],I15}),
        .DOBDO(O1),
        .DOPADOP({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],I19}),
        .DOPBDOP(O2),
        .ECCPARITY(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(ram_enb),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:4],web,web,web,web}));
LUT2 #(
    .INIT(4'h8)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[13]),
        .I1(addra[12]),
        .O(ram_ena));
LUT2 #(
    .INIT(4'h8)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__0 
       (.I0(addrb[11]),
        .I1(addrb[10]),
        .O(ram_enb));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized2
   (DOADO,
    I2,
    DOPADOP,
    I5,
    I1,
    clka,
    I3,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I2;
  output [0:0]DOPADOP;
  output [3:0]I5;
  input I1;
  input clka;
  input I3;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire I1;
  wire [31:0]I2;
  wire I3;
  wire [3:0]I5;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:4]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(36)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({dinb[34:27],dinb[25:18],dinb[16:9],dinb[7:0]}),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({dinb[35],dinb[26],dinb[17],dinb[8]}),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(I2),
        .DOPADOP({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(I5),
        .ECCPARITY(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(I3),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:4],web,web,web,web}));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized3
   (DOADO,
    I1,
    DOPADOP,
    I4,
    I2,
    clka,
    I3,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I1;
  output [0:0]DOPADOP;
  output [3:0]I4;
  input I2;
  input clka;
  input I3;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [31:0]I1;
  wire I2;
  wire I3;
  wire [3:0]I4;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:4]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(36)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({dinb[34:27],dinb[25:18],dinb[16:9],dinb[7:0]}),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({dinb[35],dinb[26],dinb[17],dinb[8]}),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(I1),
        .DOPADOP({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(I4),
        .ECCPARITY(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I2),
        .ENBWREN(I3),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:4],web,web,web,web}));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized4
   (DOADO,
    DOBDO,
    DOPADOP,
    DOPBDOP,
    ram_ena,
    clka,
    ram_enb,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]DOBDO;
  output [0:0]DOPADOP;
  output [3:0]DOPBDOP;
  input ram_ena;
  input clka;
  input ram_enb;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOADO;
  wire [31:0]DOBDO;
  wire [0:0]DOPADOP;
  wire [3:0]DOPBDOP;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire ram_ena;
  wire ram_enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:4]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(36)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({dinb[34:27],dinb[25:18],dinb[16:9],dinb[7:0]}),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({dinb[35],dinb[26],dinb[17],dinb[8]}),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(DOBDO),
        .DOPADOP({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(DOPBDOP),
        .ECCPARITY(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(ram_enb),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:4],web,web,web,web}));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized5
   (I10,
    O1,
    I14,
    O2,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]I10;
  output [31:0]O1;
  output [0:0]I14;
  output [3:0]O2;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire [7:0]I10;
  wire [0:0]I14;
  wire I2;
  wire [31:0]O1;
  wire [3:0]O2;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:4]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(36)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({dinb[34:27],dinb[25:18],dinb[16:9],dinb[7:0]}),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({dinb[35],dinb[26],dinb[17],dinb[8]}),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],I10}),
        .DOBDO(O1),
        .DOPADOP({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],I14}),
        .DOPBDOP(O2),
        .ECCPARITY(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(I2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:4],web,web,web,web}));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized6
   (DOADO,
    I9,
    DOPADOP,
    I13,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I9;
  output [0:0]DOPADOP;
  output [3:0]I13;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire I1;
  wire [3:0]I13;
  wire I2;
  wire [31:0]I9;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:4]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(36)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({dinb[34:27],dinb[25:18],dinb[16:9],dinb[7:0]}),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({dinb[35],dinb[26],dinb[17],dinb[8]}),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(I9),
        .DOPADOP({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(I13),
        .ECCPARITY(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(I2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:4],web,web,web,web}));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized7
   (DOADO,
    DOBDO,
    DOPADOP,
    DOPBDOP,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]DOBDO;
  output [0:0]DOPADOP;
  output [3:0]DOPBDOP;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOADO;
  wire [31:0]DOBDO;
  wire [0:0]DOPADOP;
  wire [3:0]DOPBDOP;
  wire I1;
  wire I2;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:4]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(36)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({dinb[34:27],dinb[25:18],dinb[16:9],dinb[7:0]}),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({dinb[35],dinb[26],dinb[17],dinb[8]}),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(DOBDO),
        .DOPADOP({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(DOPBDOP),
        .ECCPARITY(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(I2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:4],web,web,web,web}));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized8
   (DOADO,
    I7,
    DOPADOP,
    I11,
    ram_ena,
    clka,
    ram_enb,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I7;
  output [0:0]DOPADOP;
  output [3:0]I11;
  input ram_ena;
  input clka;
  input ram_enb;
  input clkb;
  input [11:0]addra;
  input [9:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [3:0]I11;
  wire [31:0]I7;
  wire [11:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire ram_ena;
  wire ram_enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:4]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(36)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({dinb[34:27],dinb[25:18],dinb[16:9],dinb[7:0]}),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({dinb[35],dinb[26],dinb[17],dinb[8]}),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(I7),
        .DOPADOP({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(I11),
        .ECCPARITY(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(ram_enb),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:4],web,web,web,web}));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module blk_mem_gen_0blk_mem_gen_prim_wrapper_v6__parameterized9
   (DOADO,
    I18,
    DOPADOP,
    I22,
    O1,
    O2,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOADO;
  output [31:0]I18;
  output [0:0]DOPADOP;
  output [3:0]I22;
  output O1;
  output O2;
  input clka;
  input clkb;
  input [13:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [35:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [31:0]I18;
  wire [3:0]I22;
  wire O1;
  wire O2;
  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [35:0]dinb;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:4]\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(36),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("NONE"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("NO_CHANGE"),
    .WRITE_MODE_B("NO_CHANGE"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(36)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra[11:0],\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb[9:0],\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({dinb[34:27],dinb[25:18],dinb[16:9],dinb[7:0]}),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({dinb[35],dinb[26],dinb[17],dinb[8]}),
        .DOADO({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(I18),
        .DOPADOP({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(I22),
        .ECCPARITY(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(O1),
        .ENBWREN(O2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],wea}),
        .WEBWE({\NLW_NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:4],web,web,web,web}));
LUT2 #(
    .INIT(4'h1)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[13]),
        .I1(addra[12]),
        .O(O1));
LUT2 #(
    .INIT(4'h1)) 
     \NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2 
       (.I0(addrb[11]),
        .I1(addrb[10]),
        .O(O2));
VCC VCC
       (.P(\<const1> ));
endmodule

module blk_mem_gen_0blk_mem_gen_top
   (douta,
    doutb,
    addra,
    addrb,
    clka,
    clkb,
    dina,
    dinb,
    wea,
    web);
  output [29:0]douta;
  output [119:0]doutb;
  input [13:0]addra;
  input [11:0]addrb;
  input clka;
  input clkb;
  input [29:0]dina;
  input [119:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [29:0]dina;
  wire [119:0]dinb;
  wire [29:0]douta;
  wire [119:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

(* C_FAMILY = "zynq" *) (* C_XDEVICEFAMILY = "zynq" *) (* C_ELABORATION_DIR = "./" *) 
(* C_INTERFACE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) (* C_AXI_SLAVE_TYPE = "0" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) 
(* C_HAS_AXI_ID = "0" *) (* C_AXI_ID_WIDTH = "4" *) (* C_MEM_TYPE = "2" *) 
(* C_BYTE_SIZE = "9" *) (* C_ALGORITHM = "1" *) (* C_PRIM_TYPE = "1" *) 
(* C_LOAD_INIT_FILE = "0" *) (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_DEFAULT_DATA = "0" *) (* C_RST_TYPE = "SYNC" *) 
(* C_HAS_RSTA = "0" *) (* C_RST_PRIORITY_A = "CE" *) (* C_RSTRAM_A = "0" *) 
(* C_INITA_VAL = "0" *) (* C_HAS_ENA = "0" *) (* C_HAS_REGCEA = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WRITE_MODE_A = "NO_CHANGE" *) 
(* C_WRITE_WIDTH_A = "30" *) (* C_READ_WIDTH_A = "30" *) (* C_WRITE_DEPTH_A = "15360" *) 
(* C_READ_DEPTH_A = "15360" *) (* C_ADDRA_WIDTH = "14" *) (* C_HAS_RSTB = "0" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_RSTRAM_B = "0" *) (* C_INITB_VAL = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_REGCEB = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_WEB_WIDTH = "1" *) (* C_WRITE_MODE_B = "NO_CHANGE" *) (* C_WRITE_WIDTH_B = "120" *) 
(* C_READ_WIDTH_B = "120" *) (* C_WRITE_DEPTH_B = "3840" *) (* C_READ_DEPTH_B = "3840" *) 
(* C_ADDRB_WIDTH = "12" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
(* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) 
(* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_ECC = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_SIM_COLLISION_CHECK = "NONE" *) 
(* C_COMMON_CLK = "1" *) (* C_DISABLE_WARN_BHV_COLL = "1" *) (* C_DISABLE_WARN_BHV_RANGE = "1" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_0blk_mem_gen_v8_0
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr,
    rdaddrecc,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [29:0]dina;
  output [29:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [11:0]addrb;
  input [119:0]dinb;
  output [119:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;
  output [11:0]rdaddrecc;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [29:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [119:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [11:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [29:0]dina;
  wire [119:0]dinb;
  wire [29:0]douta;
  wire [119:0]doutb;
  wire ena;
  wire enb;
  wire injectdbiterr;
  wire injectsbiterr;
  wire regcea;
  wire regceb;
  wire rsta;
  wire rstb;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_injectdbiterr;
  wire s_axi_injectsbiterr;
  wire s_axi_rready;
  wire [29:0]s_axi_wdata;
  wire s_axi_wlast;
  wire [0:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]wea;
  wire [0:0]web;

  assign dbiterr = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[119] = \<const0> ;
  assign s_axi_rdata[118] = \<const0> ;
  assign s_axi_rdata[117] = \<const0> ;
  assign s_axi_rdata[116] = \<const0> ;
  assign s_axi_rdata[115] = \<const0> ;
  assign s_axi_rdata[114] = \<const0> ;
  assign s_axi_rdata[113] = \<const0> ;
  assign s_axi_rdata[112] = \<const0> ;
  assign s_axi_rdata[111] = \<const0> ;
  assign s_axi_rdata[110] = \<const0> ;
  assign s_axi_rdata[109] = \<const0> ;
  assign s_axi_rdata[108] = \<const0> ;
  assign s_axi_rdata[107] = \<const0> ;
  assign s_axi_rdata[106] = \<const0> ;
  assign s_axi_rdata[105] = \<const0> ;
  assign s_axi_rdata[104] = \<const0> ;
  assign s_axi_rdata[103] = \<const0> ;
  assign s_axi_rdata[102] = \<const0> ;
  assign s_axi_rdata[101] = \<const0> ;
  assign s_axi_rdata[100] = \<const0> ;
  assign s_axi_rdata[99] = \<const0> ;
  assign s_axi_rdata[98] = \<const0> ;
  assign s_axi_rdata[97] = \<const0> ;
  assign s_axi_rdata[96] = \<const0> ;
  assign s_axi_rdata[95] = \<const0> ;
  assign s_axi_rdata[94] = \<const0> ;
  assign s_axi_rdata[93] = \<const0> ;
  assign s_axi_rdata[92] = \<const0> ;
  assign s_axi_rdata[91] = \<const0> ;
  assign s_axi_rdata[90] = \<const0> ;
  assign s_axi_rdata[89] = \<const0> ;
  assign s_axi_rdata[88] = \<const0> ;
  assign s_axi_rdata[87] = \<const0> ;
  assign s_axi_rdata[86] = \<const0> ;
  assign s_axi_rdata[85] = \<const0> ;
  assign s_axi_rdata[84] = \<const0> ;
  assign s_axi_rdata[83] = \<const0> ;
  assign s_axi_rdata[82] = \<const0> ;
  assign s_axi_rdata[81] = \<const0> ;
  assign s_axi_rdata[80] = \<const0> ;
  assign s_axi_rdata[79] = \<const0> ;
  assign s_axi_rdata[78] = \<const0> ;
  assign s_axi_rdata[77] = \<const0> ;
  assign s_axi_rdata[76] = \<const0> ;
  assign s_axi_rdata[75] = \<const0> ;
  assign s_axi_rdata[74] = \<const0> ;
  assign s_axi_rdata[73] = \<const0> ;
  assign s_axi_rdata[72] = \<const0> ;
  assign s_axi_rdata[71] = \<const0> ;
  assign s_axi_rdata[70] = \<const0> ;
  assign s_axi_rdata[69] = \<const0> ;
  assign s_axi_rdata[68] = \<const0> ;
  assign s_axi_rdata[67] = \<const0> ;
  assign s_axi_rdata[66] = \<const0> ;
  assign s_axi_rdata[65] = \<const0> ;
  assign s_axi_rdata[64] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
GND GND
       (.G(\<const0> ));
blk_mem_gen_0blk_mem_gen_v8_0_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule

module blk_mem_gen_0blk_mem_gen_v8_0_synth
   (douta,
    doutb,
    addra,
    addrb,
    clka,
    clkb,
    dina,
    dinb,
    wea,
    web);
  output [29:0]douta;
  output [119:0]doutb;
  input [13:0]addra;
  input [11:0]addrb;
  input clka;
  input clkb;
  input [29:0]dina;
  input [119:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [13:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [29:0]dina;
  wire [119:0]dinb;
  wire [29:0]douta;
  wire [119:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;

blk_mem_gen_0blk_mem_gen_top \gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .wea(wea),
        .web(web));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
