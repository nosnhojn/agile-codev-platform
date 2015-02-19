// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.3 (lin32) Build 329390 Wed Oct 16 18:28:36 MDT 2013
// Date        : Thu Feb 12 16:33:52 2015
// Host        : agilehw-laptop running 32-bit Ubuntu 10.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/agilehw/agile-codev-platform/hw/Vivado/sdpram/sdpram30x15360/sdpram30x15360_funcsim.v
// Design      : sdpram30x15360
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_0,Vivado 2013.3" *) (* CHECK_LICENSE_TYPE = "sdpram30x15360,blk_mem_gen_v8_0,{}" *) 
(* core_generation_info = "sdpram30x15360,blk_mem_gen_v8_0,{x_ipProduct=Vivado 2013.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=blk_mem_gen,x_ipVersion=8.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,C_FAMILY=virtex7,C_XDEVICEFAMILY=virtex7,C_ELABORATION_DIR=./,C_INTERFACE_TYPE=0,C_AXI_TYPE=1,C_AXI_SLAVE_TYPE=0,C_HAS_AXI_ID=0,C_AXI_ID_WIDTH=4,C_MEM_TYPE=1,C_BYTE_SIZE=9,C_ALGORITHM=1,C_PRIM_TYPE=1,C_LOAD_INIT_FILE=0,C_INIT_FILE_NAME=no_coe_file_loaded,C_INIT_FILE=sdpram30x15360.mem,C_USE_DEFAULT_DATA=0,C_DEFAULT_DATA=0,C_RST_TYPE=SYNC,C_HAS_RSTA=0,C_RST_PRIORITY_A=CE,C_RSTRAM_A=0,C_INITA_VAL=0,C_HAS_ENA=0,C_HAS_REGCEA=0,C_USE_BYTE_WEA=0,C_WEA_WIDTH=1,C_WRITE_MODE_A=READ_FIRST,C_WRITE_WIDTH_A=30,C_READ_WIDTH_A=30,C_WRITE_DEPTH_A=15360,C_READ_DEPTH_A=15360,C_ADDRA_WIDTH=14,C_HAS_RSTB=0,C_RST_PRIORITY_B=CE,C_RSTRAM_B=0,C_INITB_VAL=0,C_HAS_ENB=0,C_HAS_REGCEB=0,C_USE_BYTE_WEB=0,C_WEB_WIDTH=1,C_WRITE_MODE_B=READ_FIRST,C_WRITE_WIDTH_B=30,C_READ_WIDTH_B=30,C_WRITE_DEPTH_B=15360,C_READ_DEPTH_B=15360,C_ADDRB_WIDTH=14,C_HAS_MEM_OUTPUT_REGS_A=0,C_HAS_MEM_OUTPUT_REGS_B=0,C_HAS_MUX_OUTPUT_REGS_A=0,C_HAS_MUX_OUTPUT_REGS_B=0,C_MUX_PIPELINE_STAGES=0,C_HAS_SOFTECC_INPUT_REGS_A=0,C_HAS_SOFTECC_OUTPUT_REGS_B=0,C_USE_SOFTECC=0,C_USE_ECC=0,C_HAS_INJECTERR=0,C_SIM_COLLISION_CHECK=ALL,C_COMMON_CLK=1,C_ENABLE_32BIT_ADDRESS=0,C_DISABLE_WARN_BHV_COLL=0,C_DISABLE_WARN_BHV_RANGE=0,C_USE_BRAM_BLOCK=0,C_CTRL_ECC_ALGO=NONE}" *) 
(* NotValidForBitStream *)
module sdpram30x15360
   (clka,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  input clka;
  input [0:0]wea;
  input [13:0]addra;
  input [29:0]dina;
  input clkb;
  input [13:0]addrb;
  output [29:0]doutb;

  wire \<const0> ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [29:0]dina;
  wire [29:0]doutb;
  wire [0:0]wea;
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
  wire [29:0]NLW_U0_douta_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [29:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

GND GND
       (.G(\<const0> ));
(* C_ADDRA_WIDTH = "14" *) 
   (* C_ADDRB_WIDTH = "14" *) 
   (* C_ALGORITHM = "1" *) 
   (* C_AXI_ID_WIDTH = "4" *) 
   (* C_AXI_SLAVE_TYPE = "0" *) 
   (* C_AXI_TYPE = "1" *) 
   (* C_BYTE_SIZE = "9" *) 
   (* C_COMMON_CLK = "1" *) 
   (* C_CTRL_ECC_ALGO = "NONE" *) 
   (* C_DEFAULT_DATA = "0" *) 
   (* C_DISABLE_WARN_BHV_COLL = "0" *) 
   (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
   (* C_ELABORATION_DIR = "./" *) 
   (* C_ENABLE_32BIT_ADDRESS = "0" *) 
   (* C_FAMILY = "virtex7" *) 
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
   (* C_INIT_FILE = "sdpram30x15360.mem" *) 
   (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
   (* C_INTERFACE_TYPE = "0" *) 
   (* C_LOAD_INIT_FILE = "0" *) 
   (* C_MEM_TYPE = "1" *) 
   (* C_MUX_PIPELINE_STAGES = "0" *) 
   (* C_PRIM_TYPE = "1" *) 
   (* C_READ_DEPTH_A = "15360" *) 
   (* C_READ_DEPTH_B = "15360" *) 
   (* C_READ_WIDTH_A = "30" *) 
   (* C_READ_WIDTH_B = "30" *) 
   (* C_RSTRAM_A = "0" *) 
   (* C_RSTRAM_B = "0" *) 
   (* C_RST_PRIORITY_A = "CE" *) 
   (* C_RST_PRIORITY_B = "CE" *) 
   (* C_RST_TYPE = "SYNC" *) 
   (* C_SIM_COLLISION_CHECK = "ALL" *) 
   (* C_USE_BRAM_BLOCK = "0" *) 
   (* C_USE_BYTE_WEA = "0" *) 
   (* C_USE_BYTE_WEB = "0" *) 
   (* C_USE_DEFAULT_DATA = "0" *) 
   (* C_USE_ECC = "0" *) 
   (* C_USE_SOFTECC = "0" *) 
   (* C_WEA_WIDTH = "1" *) 
   (* C_WEB_WIDTH = "1" *) 
   (* C_WRITE_DEPTH_A = "15360" *) 
   (* C_WRITE_DEPTH_B = "15360" *) 
   (* C_WRITE_MODE_A = "READ_FIRST" *) 
   (* C_WRITE_MODE_B = "READ_FIRST" *) 
   (* C_WRITE_WIDTH_A = "30" *) 
   (* C_WRITE_WIDTH_B = "30" *) 
   (* C_XDEVICEFAMILY = "virtex7" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   sdpram30x15360blk_mem_gen_v8_0 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .dina(dina),
        .dinb({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .douta(NLW_U0_douta_UNCONNECTED[29:0]),
        .doutb(doutb),
        .ena(\<const0> ),
        .enb(\<const0> ),
        .injectdbiterr(\<const0> ),
        .injectsbiterr(\<const0> ),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[29:0]),
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
        .web(\<const0> ));
endmodule

module sdpram30x15360bindec
   (O1,
    addrb);
  output O1;
  input [3:0]addrb;

  wire O1;
  wire [3:0]addrb;

LUT4 #(
    .INIT(16'h4000)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2 
       (.I0(addrb[0]),
        .I1(addrb[2]),
        .I2(addrb[3]),
        .I3(addrb[1]),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module sdpram30x15360bindec_0
   (p_0_in,
    addra,
    wea);
  output [0:0]p_0_in;
  input [3:0]addra;
  input [0:0]wea;

  wire [3:0]addra;
  wire [0:0]p_0_in;
  wire [0:0]wea;

LUT5 #(
    .INIT(32'h40000000)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1 
       (.I0(addra[0]),
        .I1(addra[3]),
        .I2(wea),
        .I3(addra[1]),
        .I4(addra[2]),
        .O(p_0_in));
endmodule

module sdpram30x15360blk_mem_gen_generic_cstr
   (doutb,
    clka,
    clkb,
    wea,
    addra,
    addrb,
    dina);
  output [29:0]doutb;
  input clka;
  input clkb;
  input [0:0]wea;
  input [13:0]addra;
  input [13:0]addrb;
  input [29:0]dina;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [29:0]dina;
  wire [29:0]doutb;
  wire \n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0 ;
  wire \n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1 ;
  wire \n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2 ;
  wire \n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0 ;
  wire \n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1 ;
  wire \n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2 ;
  wire \n_0_bindec_b.bindec_inst_b ;
  wire \n_0_ramloop[11].ram.r ;
  wire \n_0_ramloop[12].ram.r ;
  wire \n_0_ramloop[13].ram.r ;
  wire \n_0_ramloop[14].ram.r ;
  wire \n_0_ramloop[1].ram.r ;
  wire \n_0_ramloop[2].ram.r ;
  wire \n_0_ramloop[3].ram.r ;
  wire \n_0_ramloop[4].ram.r ;
  wire \n_0_ramloop[6].ram.r ;
  wire \n_0_ramloop[7].ram.r ;
  wire \n_0_ramloop[8].ram.r ;
  wire \n_0_ramloop[9].ram.r ;
  wire \n_10_ramloop[4].ram.r ;
  wire \n_1_ramloop[11].ram.r ;
  wire \n_1_ramloop[12].ram.r ;
  wire \n_1_ramloop[13].ram.r ;
  wire \n_1_ramloop[14].ram.r ;
  wire \n_1_ramloop[1].ram.r ;
  wire \n_1_ramloop[2].ram.r ;
  wire \n_1_ramloop[3].ram.r ;
  wire \n_1_ramloop[4].ram.r ;
  wire \n_1_ramloop[6].ram.r ;
  wire \n_1_ramloop[7].ram.r ;
  wire \n_1_ramloop[8].ram.r ;
  wire \n_1_ramloop[9].ram.r ;
  wire \n_2_ramloop[11].ram.r ;
  wire \n_2_ramloop[12].ram.r ;
  wire \n_2_ramloop[13].ram.r ;
  wire \n_2_ramloop[14].ram.r ;
  wire \n_2_ramloop[1].ram.r ;
  wire \n_2_ramloop[2].ram.r ;
  wire \n_2_ramloop[3].ram.r ;
  wire \n_2_ramloop[4].ram.r ;
  wire \n_2_ramloop[6].ram.r ;
  wire \n_2_ramloop[7].ram.r ;
  wire \n_2_ramloop[8].ram.r ;
  wire \n_2_ramloop[9].ram.r ;
  wire \n_3_ramloop[11].ram.r ;
  wire \n_3_ramloop[12].ram.r ;
  wire \n_3_ramloop[13].ram.r ;
  wire \n_3_ramloop[14].ram.r ;
  wire \n_3_ramloop[1].ram.r ;
  wire \n_3_ramloop[2].ram.r ;
  wire \n_3_ramloop[3].ram.r ;
  wire \n_3_ramloop[4].ram.r ;
  wire \n_3_ramloop[6].ram.r ;
  wire \n_3_ramloop[7].ram.r ;
  wire \n_3_ramloop[8].ram.r ;
  wire \n_3_ramloop[9].ram.r ;
  wire \n_4_ramloop[11].ram.r ;
  wire \n_4_ramloop[12].ram.r ;
  wire \n_4_ramloop[13].ram.r ;
  wire \n_4_ramloop[14].ram.r ;
  wire \n_4_ramloop[1].ram.r ;
  wire \n_4_ramloop[2].ram.r ;
  wire \n_4_ramloop[3].ram.r ;
  wire \n_4_ramloop[4].ram.r ;
  wire \n_4_ramloop[6].ram.r ;
  wire \n_4_ramloop[7].ram.r ;
  wire \n_4_ramloop[8].ram.r ;
  wire \n_4_ramloop[9].ram.r ;
  wire \n_5_ramloop[11].ram.r ;
  wire \n_5_ramloop[12].ram.r ;
  wire \n_5_ramloop[13].ram.r ;
  wire \n_5_ramloop[14].ram.r ;
  wire \n_5_ramloop[1].ram.r ;
  wire \n_5_ramloop[2].ram.r ;
  wire \n_5_ramloop[3].ram.r ;
  wire \n_5_ramloop[4].ram.r ;
  wire \n_5_ramloop[6].ram.r ;
  wire \n_5_ramloop[7].ram.r ;
  wire \n_5_ramloop[8].ram.r ;
  wire \n_5_ramloop[9].ram.r ;
  wire \n_6_ramloop[11].ram.r ;
  wire \n_6_ramloop[12].ram.r ;
  wire \n_6_ramloop[13].ram.r ;
  wire \n_6_ramloop[14].ram.r ;
  wire \n_6_ramloop[1].ram.r ;
  wire \n_6_ramloop[2].ram.r ;
  wire \n_6_ramloop[3].ram.r ;
  wire \n_6_ramloop[4].ram.r ;
  wire \n_6_ramloop[6].ram.r ;
  wire \n_6_ramloop[7].ram.r ;
  wire \n_6_ramloop[8].ram.r ;
  wire \n_6_ramloop[9].ram.r ;
  wire \n_7_ramloop[11].ram.r ;
  wire \n_7_ramloop[12].ram.r ;
  wire \n_7_ramloop[13].ram.r ;
  wire \n_7_ramloop[14].ram.r ;
  wire \n_7_ramloop[1].ram.r ;
  wire \n_7_ramloop[2].ram.r ;
  wire \n_7_ramloop[3].ram.r ;
  wire \n_7_ramloop[4].ram.r ;
  wire \n_7_ramloop[6].ram.r ;
  wire \n_7_ramloop[7].ram.r ;
  wire \n_7_ramloop[8].ram.r ;
  wire \n_7_ramloop[9].ram.r ;
  wire \n_8_ramloop[11].ram.r ;
  wire \n_8_ramloop[12].ram.r ;
  wire \n_8_ramloop[13].ram.r ;
  wire \n_8_ramloop[14].ram.r ;
  wire \n_8_ramloop[1].ram.r ;
  wire \n_8_ramloop[2].ram.r ;
  wire \n_8_ramloop[3].ram.r ;
  wire \n_8_ramloop[4].ram.r ;
  wire \n_8_ramloop[6].ram.r ;
  wire \n_8_ramloop[7].ram.r ;
  wire \n_8_ramloop[8].ram.r ;
  wire \n_8_ramloop[9].ram.r ;
  wire \n_9_ramloop[4].ram.r ;
  wire [14:14]p_0_in;
  wire [17:0]ram_doutb;
  wire ram_ena;
  wire ram_enb;
  wire [3:3]sel_pipe;
  wire [0:0]wea;

(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[13]),
        .I1(wea),
        .I2(addra[12]),
        .O(ram_ena));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[12]),
        .I1(addra[13]),
        .I2(wea),
        .O(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(addra[13]),
        .I1(wea),
        .I2(addra[12]),
        .O(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'h10)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2 
       (.I0(addra[13]),
        .I1(addra[12]),
        .I2(wea),
        .O(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2 
       (.I0(addrb[12]),
        .I1(addrb[13]),
        .O(ram_enb));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h4)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0 
       (.I0(addrb[12]),
        .I1(addrb[13]),
        .O(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'h4)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1 
       (.I0(addrb[13]),
        .I1(addrb[12]),
        .O(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2 
       (.I0(addrb[12]),
        .I1(addrb[13]),
        .O(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2 ));
sdpram30x15360bindec_0 \bindec_a.bindec_inst_a 
       (.addra(addra[13:10]),
        .p_0_in(p_0_in),
        .wea(wea));
sdpram30x15360bindec \bindec_b.bindec_inst_b 
       (.O1(\n_0_bindec_b.bindec_inst_b ),
        .addrb(addrb[13:10]));
sdpram30x15360blk_mem_gen_mux__parameterized0 \has_mux_b.B 
       (.DOBDO({\n_0_ramloop[14].ram.r ,\n_1_ramloop[14].ram.r ,\n_2_ramloop[14].ram.r ,\n_3_ramloop[14].ram.r ,\n_4_ramloop[14].ram.r ,\n_5_ramloop[14].ram.r ,\n_6_ramloop[14].ram.r ,\n_7_ramloop[14].ram.r }),
        .DOPBDOP(\n_8_ramloop[14].ram.r ),
        .I1(\n_8_ramloop[12].ram.r ),
        .I10(\n_1_ramloop[8].ram.r ),
        .I11({\n_0_ramloop[9].ram.r ,\n_1_ramloop[9].ram.r ,\n_2_ramloop[9].ram.r ,\n_3_ramloop[9].ram.r ,\n_4_ramloop[9].ram.r ,\n_5_ramloop[9].ram.r ,\n_6_ramloop[9].ram.r ,\n_7_ramloop[9].ram.r }),
        .I12({\n_0_ramloop[7].ram.r ,\n_1_ramloop[7].ram.r ,\n_2_ramloop[7].ram.r ,\n_3_ramloop[7].ram.r ,\n_4_ramloop[7].ram.r ,\n_5_ramloop[7].ram.r ,\n_6_ramloop[7].ram.r ,\n_7_ramloop[7].ram.r }),
        .I13(\n_2_ramloop[8].ram.r ),
        .I14(\n_3_ramloop[8].ram.r ),
        .I15(\n_4_ramloop[8].ram.r ),
        .I16(\n_5_ramloop[8].ram.r ),
        .I17(\n_6_ramloop[8].ram.r ),
        .I18(\n_7_ramloop[8].ram.r ),
        .I19(\n_8_ramloop[8].ram.r ),
        .I2(\n_8_ramloop[13].ram.r ),
        .I20(\n_0_ramloop[3].ram.r ),
        .I21(\n_8_ramloop[4].ram.r ),
        .I22(\n_8_ramloop[2].ram.r ),
        .I23(\n_1_ramloop[3].ram.r ),
        .I24({\n_0_ramloop[4].ram.r ,\n_1_ramloop[4].ram.r ,\n_2_ramloop[4].ram.r ,\n_3_ramloop[4].ram.r ,\n_4_ramloop[4].ram.r ,\n_5_ramloop[4].ram.r ,\n_6_ramloop[4].ram.r ,\n_7_ramloop[4].ram.r }),
        .I25({\n_0_ramloop[2].ram.r ,\n_1_ramloop[2].ram.r ,\n_2_ramloop[2].ram.r ,\n_3_ramloop[2].ram.r ,\n_4_ramloop[2].ram.r ,\n_5_ramloop[2].ram.r ,\n_6_ramloop[2].ram.r ,\n_7_ramloop[2].ram.r }),
        .I26(\n_2_ramloop[3].ram.r ),
        .I27(\n_3_ramloop[3].ram.r ),
        .I28(\n_4_ramloop[3].ram.r ),
        .I29(\n_5_ramloop[3].ram.r ),
        .I3(\n_8_ramloop[11].ram.r ),
        .I30(\n_6_ramloop[3].ram.r ),
        .I31(\n_7_ramloop[3].ram.r ),
        .I32(\n_8_ramloop[3].ram.r ),
        .I4({\n_0_ramloop[12].ram.r ,\n_1_ramloop[12].ram.r ,\n_2_ramloop[12].ram.r ,\n_3_ramloop[12].ram.r ,\n_4_ramloop[12].ram.r ,\n_5_ramloop[12].ram.r ,\n_6_ramloop[12].ram.r ,\n_7_ramloop[12].ram.r }),
        .I5({\n_0_ramloop[13].ram.r ,\n_1_ramloop[13].ram.r ,\n_2_ramloop[13].ram.r ,\n_3_ramloop[13].ram.r ,\n_4_ramloop[13].ram.r ,\n_5_ramloop[13].ram.r ,\n_6_ramloop[13].ram.r ,\n_7_ramloop[13].ram.r }),
        .I6({\n_0_ramloop[11].ram.r ,\n_1_ramloop[11].ram.r ,\n_2_ramloop[11].ram.r ,\n_3_ramloop[11].ram.r ,\n_4_ramloop[11].ram.r ,\n_5_ramloop[11].ram.r ,\n_6_ramloop[11].ram.r ,\n_7_ramloop[11].ram.r }),
        .I7(\n_0_ramloop[8].ram.r ),
        .I8(\n_8_ramloop[9].ram.r ),
        .I9(\n_8_ramloop[7].ram.r ),
        .Q(sel_pipe),
        .addrb(addrb[13:10]),
        .clkb(clkb),
        .doutb({doutb[29:21],doutb[18:1]}),
        .ram_doutb(ram_doutb));
sdpram30x15360blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[0]),
        .doutb(doutb[0]),
        .wea(wea));
sdpram30x15360blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[20:19]),
        .doutb(doutb[20:19]),
        .wea(wea));
sdpram30x15360blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.I1(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2 ),
        .I2(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2 ),
        .I3(\n_8_ramloop[11].ram.r ),
        .I6({\n_0_ramloop[11].ram.r ,\n_1_ramloop[11].ram.r ,\n_2_ramloop[11].ram.r ,\n_3_ramloop[11].ram.r ,\n_4_ramloop[11].ram.r ,\n_5_ramloop[11].ram.r ,\n_6_ramloop[11].ram.r ,\n_7_ramloop[11].ram.r }),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[29:21]));
sdpram30x15360blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.I1(\n_8_ramloop[12].ram.r ),
        .I2(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1 ),
        .I3(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1 ),
        .I4({\n_0_ramloop[12].ram.r ,\n_1_ramloop[12].ram.r ,\n_2_ramloop[12].ram.r ,\n_3_ramloop[12].ram.r ,\n_4_ramloop[12].ram.r ,\n_5_ramloop[12].ram.r ,\n_6_ramloop[12].ram.r ,\n_7_ramloop[12].ram.r }),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[29:21]));
sdpram30x15360blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.I1(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0 ),
        .I2(\n_8_ramloop[13].ram.r ),
        .I3(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0 ),
        .I5({\n_0_ramloop[13].ram.r ,\n_1_ramloop[13].ram.r ,\n_2_ramloop[13].ram.r ,\n_3_ramloop[13].ram.r ,\n_4_ramloop[13].ram.r ,\n_5_ramloop[13].ram.r ,\n_6_ramloop[13].ram.r ,\n_7_ramloop[13].ram.r }),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[29:21]));
sdpram30x15360blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.DOBDO({\n_0_ramloop[14].ram.r ,\n_1_ramloop[14].ram.r ,\n_2_ramloop[14].ram.r ,\n_3_ramloop[14].ram.r ,\n_4_ramloop[14].ram.r ,\n_5_ramloop[14].ram.r ,\n_6_ramloop[14].ram.r ,\n_7_ramloop[14].ram.r }),
        .DOPBDOP(\n_8_ramloop[14].ram.r ),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[29:21]),
        .ram_ena(ram_ena),
        .ram_enb(ram_enb));
sdpram30x15360blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOBDO({\n_0_ramloop[1].ram.r ,\n_1_ramloop[1].ram.r ,\n_2_ramloop[1].ram.r ,\n_3_ramloop[1].ram.r ,\n_4_ramloop[1].ram.r ,\n_5_ramloop[1].ram.r ,\n_6_ramloop[1].ram.r ,\n_7_ramloop[1].ram.r }),
        .DOPBDOP(\n_8_ramloop[1].ram.r ),
        .I1(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2 ),
        .I2(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2 ),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[9:1]));
sdpram30x15360blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.I1(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1 ),
        .I2(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1 ),
        .I22(\n_8_ramloop[2].ram.r ),
        .I25({\n_0_ramloop[2].ram.r ,\n_1_ramloop[2].ram.r ,\n_2_ramloop[2].ram.r ,\n_3_ramloop[2].ram.r ,\n_4_ramloop[2].ram.r ,\n_5_ramloop[2].ram.r ,\n_6_ramloop[2].ram.r ,\n_7_ramloop[2].ram.r }),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[9:1]));
sdpram30x15360blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.DOBDO({\n_0_ramloop[1].ram.r ,\n_1_ramloop[1].ram.r ,\n_2_ramloop[1].ram.r ,\n_3_ramloop[1].ram.r ,\n_4_ramloop[1].ram.r ,\n_5_ramloop[1].ram.r ,\n_6_ramloop[1].ram.r ,\n_7_ramloop[1].ram.r }),
        .DOPBDOP(\n_8_ramloop[1].ram.r ),
        .I1(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0 ),
        .I2(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0 ),
        .O1(\n_0_ramloop[3].ram.r ),
        .O2(\n_1_ramloop[3].ram.r ),
        .O3(\n_2_ramloop[3].ram.r ),
        .O4(\n_3_ramloop[3].ram.r ),
        .O5(\n_4_ramloop[3].ram.r ),
        .O6(\n_5_ramloop[3].ram.r ),
        .O7(\n_6_ramloop[3].ram.r ),
        .O8(\n_7_ramloop[3].ram.r ),
        .O9(\n_8_ramloop[3].ram.r ),
        .Q(sel_pipe),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[9:1]));
sdpram30x15360blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.I21(\n_8_ramloop[4].ram.r ),
        .I24({\n_0_ramloop[4].ram.r ,\n_1_ramloop[4].ram.r ,\n_2_ramloop[4].ram.r ,\n_3_ramloop[4].ram.r ,\n_4_ramloop[4].ram.r ,\n_5_ramloop[4].ram.r ,\n_6_ramloop[4].ram.r ,\n_7_ramloop[4].ram.r }),
        .O1(\n_9_ramloop[4].ram.r ),
        .O2(\n_10_ramloop[4].ram.r ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[9:1]),
        .wea(wea));
sdpram30x15360blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.I1(\n_0_bindec_b.bindec_inst_b ),
        .addra(addra[9:0]),
        .addrb(addrb[9:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[18:1]),
        .p_0_in(p_0_in),
        .ram_doutb(ram_doutb));
sdpram30x15360blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.DOBDO({\n_0_ramloop[6].ram.r ,\n_1_ramloop[6].ram.r ,\n_2_ramloop[6].ram.r ,\n_3_ramloop[6].ram.r ,\n_4_ramloop[6].ram.r ,\n_5_ramloop[6].ram.r ,\n_6_ramloop[6].ram.r ,\n_7_ramloop[6].ram.r }),
        .DOPBDOP(\n_8_ramloop[6].ram.r ),
        .I1(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2 ),
        .I2(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2 ),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[18:10]));
sdpram30x15360blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.I1(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1 ),
        .I12({\n_0_ramloop[7].ram.r ,\n_1_ramloop[7].ram.r ,\n_2_ramloop[7].ram.r ,\n_3_ramloop[7].ram.r ,\n_4_ramloop[7].ram.r ,\n_5_ramloop[7].ram.r ,\n_6_ramloop[7].ram.r ,\n_7_ramloop[7].ram.r }),
        .I2(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1 ),
        .I9(\n_8_ramloop[7].ram.r ),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[18:10]));
sdpram30x15360blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.DOBDO({\n_0_ramloop[6].ram.r ,\n_1_ramloop[6].ram.r ,\n_2_ramloop[6].ram.r ,\n_3_ramloop[6].ram.r ,\n_4_ramloop[6].ram.r ,\n_5_ramloop[6].ram.r ,\n_6_ramloop[6].ram.r ,\n_7_ramloop[6].ram.r }),
        .DOPBDOP(\n_8_ramloop[6].ram.r ),
        .I1(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0 ),
        .I2(\n_0_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0 ),
        .O1(\n_0_ramloop[8].ram.r ),
        .O2(\n_1_ramloop[8].ram.r ),
        .O3(\n_2_ramloop[8].ram.r ),
        .O4(\n_3_ramloop[8].ram.r ),
        .O5(\n_4_ramloop[8].ram.r ),
        .O6(\n_5_ramloop[8].ram.r ),
        .O7(\n_6_ramloop[8].ram.r ),
        .O8(\n_7_ramloop[8].ram.r ),
        .O9(\n_8_ramloop[8].ram.r ),
        .Q(sel_pipe),
        .addra(addra[11:0]),
        .addrb(addrb[11:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[18:10]));
sdpram30x15360blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.I1(\n_9_ramloop[4].ram.r ),
        .I11({\n_0_ramloop[9].ram.r ,\n_1_ramloop[9].ram.r ,\n_2_ramloop[9].ram.r ,\n_3_ramloop[9].ram.r ,\n_4_ramloop[9].ram.r ,\n_5_ramloop[9].ram.r ,\n_6_ramloop[9].ram.r ,\n_7_ramloop[9].ram.r }),
        .I2(\n_10_ramloop[4].ram.r ),
        .I8(\n_8_ramloop[9].ram.r ),
        .addra(addra[10:0]),
        .addrb(addrb[10:0]),
        .clka(clka),
        .clkb(clkb),
        .dina(dina[18:10]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module sdpram30x15360blk_mem_gen_mux__parameterized0
   (doutb,
    Q,
    DOPBDOP,
    I1,
    I2,
    I3,
    DOBDO,
    I4,
    I5,
    I6,
    I7,
    ram_doutb,
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
    I23,
    I24,
    I25,
    I26,
    I27,
    I28,
    I29,
    I30,
    I31,
    I32,
    addrb,
    clkb);
  output [26:0]doutb;
  output [0:0]Q;
  input [0:0]DOPBDOP;
  input [0:0]I1;
  input [0:0]I2;
  input [0:0]I3;
  input [7:0]DOBDO;
  input [7:0]I4;
  input [7:0]I5;
  input [7:0]I6;
  input I7;
  input [17:0]ram_doutb;
  input [0:0]I8;
  input [0:0]I9;
  input I10;
  input [7:0]I11;
  input [7:0]I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input I18;
  input I19;
  input I20;
  input [0:0]I21;
  input [0:0]I22;
  input I23;
  input [7:0]I24;
  input [7:0]I25;
  input I26;
  input I27;
  input I28;
  input I29;
  input I30;
  input I31;
  input I32;
  input [3:0]addrb;
  input clkb;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire [0:0]I1;
  wire I10;
  wire [7:0]I11;
  wire [7:0]I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire I19;
  wire [0:0]I2;
  wire I20;
  wire [0:0]I21;
  wire [0:0]I22;
  wire I23;
  wire [7:0]I24;
  wire [7:0]I25;
  wire I26;
  wire I27;
  wire I28;
  wire I29;
  wire [0:0]I3;
  wire I30;
  wire I31;
  wire I32;
  wire [7:0]I4;
  wire [7:0]I5;
  wire [7:0]I6;
  wire I7;
  wire [0:0]I8;
  wire [0:0]I9;
  wire [0:0]Q;
  wire [3:0]addrb;
  wire clkb;
  wire [26:0]doutb;
  wire \n_0_doutb[10]_INST_0_i_2 ;
  wire \n_0_doutb[11]_INST_0_i_2 ;
  wire \n_0_doutb[12]_INST_0_i_2 ;
  wire \n_0_doutb[13]_INST_0_i_2 ;
  wire \n_0_doutb[14]_INST_0_i_2 ;
  wire \n_0_doutb[15]_INST_0_i_2 ;
  wire \n_0_doutb[16]_INST_0_i_2 ;
  wire \n_0_doutb[17]_INST_0_i_2 ;
  wire \n_0_doutb[18]_INST_0_i_2 ;
  wire \n_0_doutb[1]_INST_0_i_2 ;
  wire \n_0_doutb[2]_INST_0_i_2 ;
  wire \n_0_doutb[3]_INST_0_i_2 ;
  wire \n_0_doutb[4]_INST_0_i_2 ;
  wire \n_0_doutb[5]_INST_0_i_2 ;
  wire \n_0_doutb[6]_INST_0_i_2 ;
  wire \n_0_doutb[7]_INST_0_i_2 ;
  wire \n_0_doutb[8]_INST_0_i_2 ;
  wire \n_0_doutb[9]_INST_0_i_2 ;
  wire [17:0]ram_doutb;
  wire [2:0]sel_pipe;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
MUXF7 \doutb[10]_INST_0 
       (.I0(I19),
        .I1(\n_0_doutb[10]_INST_0_i_2 ),
        .O(doutb[9]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[10]_INST_0_i_2 
       (.I0(ram_doutb[9]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I11[0]),
        .I4(Q),
        .I5(I12[0]),
        .O(\n_0_doutb[10]_INST_0_i_2 ));
MUXF7 \doutb[11]_INST_0 
       (.I0(I18),
        .I1(\n_0_doutb[11]_INST_0_i_2 ),
        .O(doutb[10]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[11]_INST_0_i_2 
       (.I0(ram_doutb[10]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I11[1]),
        .I4(Q),
        .I5(I12[1]),
        .O(\n_0_doutb[11]_INST_0_i_2 ));
MUXF7 \doutb[12]_INST_0 
       (.I0(I17),
        .I1(\n_0_doutb[12]_INST_0_i_2 ),
        .O(doutb[11]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[12]_INST_0_i_2 
       (.I0(ram_doutb[11]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I11[2]),
        .I4(Q),
        .I5(I12[2]),
        .O(\n_0_doutb[12]_INST_0_i_2 ));
MUXF7 \doutb[13]_INST_0 
       (.I0(I16),
        .I1(\n_0_doutb[13]_INST_0_i_2 ),
        .O(doutb[12]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[13]_INST_0_i_2 
       (.I0(ram_doutb[12]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I11[3]),
        .I4(Q),
        .I5(I12[3]),
        .O(\n_0_doutb[13]_INST_0_i_2 ));
MUXF7 \doutb[14]_INST_0 
       (.I0(I15),
        .I1(\n_0_doutb[14]_INST_0_i_2 ),
        .O(doutb[13]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[14]_INST_0_i_2 
       (.I0(ram_doutb[13]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I11[4]),
        .I4(Q),
        .I5(I12[4]),
        .O(\n_0_doutb[14]_INST_0_i_2 ));
MUXF7 \doutb[15]_INST_0 
       (.I0(I14),
        .I1(\n_0_doutb[15]_INST_0_i_2 ),
        .O(doutb[14]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[15]_INST_0_i_2 
       (.I0(ram_doutb[14]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I11[5]),
        .I4(Q),
        .I5(I12[5]),
        .O(\n_0_doutb[15]_INST_0_i_2 ));
MUXF7 \doutb[16]_INST_0 
       (.I0(I13),
        .I1(\n_0_doutb[16]_INST_0_i_2 ),
        .O(doutb[15]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[16]_INST_0_i_2 
       (.I0(ram_doutb[15]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I11[6]),
        .I4(Q),
        .I5(I12[6]),
        .O(\n_0_doutb[16]_INST_0_i_2 ));
MUXF7 \doutb[17]_INST_0 
       (.I0(I10),
        .I1(\n_0_doutb[17]_INST_0_i_2 ),
        .O(doutb[16]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[17]_INST_0_i_2 
       (.I0(ram_doutb[16]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I11[7]),
        .I4(Q),
        .I5(I12[7]),
        .O(\n_0_doutb[17]_INST_0_i_2 ));
MUXF7 \doutb[18]_INST_0 
       (.I0(I7),
        .I1(\n_0_doutb[18]_INST_0_i_2 ),
        .O(doutb[17]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[18]_INST_0_i_2 
       (.I0(ram_doutb[17]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I8),
        .I4(Q),
        .I5(I9),
        .O(\n_0_doutb[18]_INST_0_i_2 ));
MUXF7 \doutb[1]_INST_0 
       (.I0(I32),
        .I1(\n_0_doutb[1]_INST_0_i_2 ),
        .O(doutb[0]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[1]_INST_0_i_2 
       (.I0(ram_doutb[0]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I24[0]),
        .I4(Q),
        .I5(I25[0]),
        .O(\n_0_doutb[1]_INST_0_i_2 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[21]_INST_0 
       (.I0(DOBDO[0]),
        .I1(I4[0]),
        .I2(sel_pipe[2]),
        .I3(I5[0]),
        .I4(Q),
        .I5(I6[0]),
        .O(doutb[18]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[22]_INST_0 
       (.I0(DOBDO[1]),
        .I1(I4[1]),
        .I2(sel_pipe[2]),
        .I3(I5[1]),
        .I4(Q),
        .I5(I6[1]),
        .O(doutb[19]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[23]_INST_0 
       (.I0(DOBDO[2]),
        .I1(I4[2]),
        .I2(sel_pipe[2]),
        .I3(I5[2]),
        .I4(Q),
        .I5(I6[2]),
        .O(doutb[20]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[24]_INST_0 
       (.I0(DOBDO[3]),
        .I1(I4[3]),
        .I2(sel_pipe[2]),
        .I3(I5[3]),
        .I4(Q),
        .I5(I6[3]),
        .O(doutb[21]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[25]_INST_0 
       (.I0(DOBDO[4]),
        .I1(I4[4]),
        .I2(sel_pipe[2]),
        .I3(I5[4]),
        .I4(Q),
        .I5(I6[4]),
        .O(doutb[22]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[26]_INST_0 
       (.I0(DOBDO[5]),
        .I1(I4[5]),
        .I2(sel_pipe[2]),
        .I3(I5[5]),
        .I4(Q),
        .I5(I6[5]),
        .O(doutb[23]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[27]_INST_0 
       (.I0(DOBDO[6]),
        .I1(I4[6]),
        .I2(sel_pipe[2]),
        .I3(I5[6]),
        .I4(Q),
        .I5(I6[6]),
        .O(doutb[24]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[28]_INST_0 
       (.I0(DOBDO[7]),
        .I1(I4[7]),
        .I2(sel_pipe[2]),
        .I3(I5[7]),
        .I4(Q),
        .I5(I6[7]),
        .O(doutb[25]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \doutb[29]_INST_0 
       (.I0(DOPBDOP),
        .I1(I1),
        .I2(sel_pipe[2]),
        .I3(I2),
        .I4(Q),
        .I5(I3),
        .O(doutb[26]));
MUXF7 \doutb[2]_INST_0 
       (.I0(I31),
        .I1(\n_0_doutb[2]_INST_0_i_2 ),
        .O(doutb[1]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[2]_INST_0_i_2 
       (.I0(ram_doutb[1]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I24[1]),
        .I4(Q),
        .I5(I25[1]),
        .O(\n_0_doutb[2]_INST_0_i_2 ));
MUXF7 \doutb[3]_INST_0 
       (.I0(I30),
        .I1(\n_0_doutb[3]_INST_0_i_2 ),
        .O(doutb[2]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[3]_INST_0_i_2 
       (.I0(ram_doutb[2]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I24[2]),
        .I4(Q),
        .I5(I25[2]),
        .O(\n_0_doutb[3]_INST_0_i_2 ));
MUXF7 \doutb[4]_INST_0 
       (.I0(I29),
        .I1(\n_0_doutb[4]_INST_0_i_2 ),
        .O(doutb[3]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[4]_INST_0_i_2 
       (.I0(ram_doutb[3]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I24[3]),
        .I4(Q),
        .I5(I25[3]),
        .O(\n_0_doutb[4]_INST_0_i_2 ));
MUXF7 \doutb[5]_INST_0 
       (.I0(I28),
        .I1(\n_0_doutb[5]_INST_0_i_2 ),
        .O(doutb[4]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[5]_INST_0_i_2 
       (.I0(ram_doutb[4]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I24[4]),
        .I4(Q),
        .I5(I25[4]),
        .O(\n_0_doutb[5]_INST_0_i_2 ));
MUXF7 \doutb[6]_INST_0 
       (.I0(I27),
        .I1(\n_0_doutb[6]_INST_0_i_2 ),
        .O(doutb[5]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[6]_INST_0_i_2 
       (.I0(ram_doutb[5]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I24[5]),
        .I4(Q),
        .I5(I25[5]),
        .O(\n_0_doutb[6]_INST_0_i_2 ));
MUXF7 \doutb[7]_INST_0 
       (.I0(I26),
        .I1(\n_0_doutb[7]_INST_0_i_2 ),
        .O(doutb[6]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[7]_INST_0_i_2 
       (.I0(ram_doutb[6]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I24[6]),
        .I4(Q),
        .I5(I25[6]),
        .O(\n_0_doutb[7]_INST_0_i_2 ));
MUXF7 \doutb[8]_INST_0 
       (.I0(I23),
        .I1(\n_0_doutb[8]_INST_0_i_2 ),
        .O(doutb[7]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[8]_INST_0_i_2 
       (.I0(ram_doutb[7]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I24[7]),
        .I4(Q),
        .I5(I25[7]),
        .O(\n_0_doutb[8]_INST_0_i_2 ));
MUXF7 \doutb[9]_INST_0 
       (.I0(I20),
        .I1(\n_0_doutb[9]_INST_0_i_2 ),
        .O(doutb[8]),
        .S(sel_pipe[2]));
LUT6 #(
    .INIT(64'h2F20FFFF2F200000)) 
     \doutb[9]_INST_0_i_2 
       (.I0(ram_doutb[8]),
        .I1(sel_pipe[0]),
        .I2(sel_pipe[1]),
        .I3(I21),
        .I4(Q),
        .I5(I22),
        .O(\n_0_doutb[9]_INST_0_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clkb),
        .CE(\<const1> ),
        .D(addrb[0]),
        .Q(sel_pipe[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clkb),
        .CE(\<const1> ),
        .D(addrb[1]),
        .Q(sel_pipe[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clkb),
        .CE(\<const1> ),
        .D(addrb[2]),
        .Q(sel_pipe[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clkb),
        .CE(\<const1> ),
        .D(addrb[3]),
        .Q(Q),
        .R(\<const0> ));
endmodule

module sdpram30x15360blk_mem_gen_prim_width
   (doutb,
    clka,
    clkb,
    wea,
    addra,
    addrb,
    dina);
  output [0:0]doutb;
  input clka;
  input clkb;
  input [0:0]wea;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]doutb;
  wire [0:0]wea;

sdpram30x15360blk_mem_gen_prim_wrapper_v6 \v6_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized0
   (DOBDO,
    DOPBDOP,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]DOBDO;
  output [0:0]DOPBDOP;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire I1;
  wire I2;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized0 \v6_noinit.ram 
       (.DOBDO(DOBDO),
        .DOPBDOP(DOPBDOP),
        .I1(I1),
        .I2(I2),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized1
   (I25,
    I22,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]I25;
  output [0:0]I22;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire I1;
  wire I2;
  wire [0:0]I22;
  wire [7:0]I25;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized1 \v6_noinit.ram 
       (.I1(I1),
        .I2(I2),
        .I22(I22),
        .I25(I25),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized10
   (I6,
    I3,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]I6;
  output [0:0]I3;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire I1;
  wire I2;
  wire [0:0]I3;
  wire [7:0]I6;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized10 \v6_noinit.ram 
       (.I1(I1),
        .I2(I2),
        .I3(I3),
        .I6(I6),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized11
   (I4,
    I1,
    I2,
    clka,
    I3,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]I4;
  output [0:0]I1;
  input I2;
  input clka;
  input I3;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire [0:0]I1;
  wire I2;
  wire I3;
  wire [7:0]I4;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized11 \v6_noinit.ram 
       (.I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized12
   (I5,
    I2,
    I1,
    clka,
    I3,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]I5;
  output [0:0]I2;
  input I1;
  input clka;
  input I3;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire I1;
  wire [0:0]I2;
  wire I3;
  wire [7:0]I5;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized12 \v6_noinit.ram 
       (.I1(I1),
        .I2(I2),
        .I3(I3),
        .I5(I5),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized13
   (DOBDO,
    DOPBDOP,
    ram_ena,
    clka,
    ram_enb,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]DOBDO;
  output [0:0]DOPBDOP;
  input ram_ena;
  input clka;
  input ram_enb;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire ram_ena;
  wire ram_enb;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized13 \v6_noinit.ram 
       (.DOBDO(DOBDO),
        .DOPBDOP(DOPBDOP),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .ram_ena(ram_ena),
        .ram_enb(ram_enb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized2
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina,
    Q,
    DOPBDOP,
    DOBDO);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [0:0]Q;
  input [0:0]DOPBDOP;
  input [7:0]DOBDO;

  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire I1;
  wire I2;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]Q;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized2 \v6_noinit.ram 
       (.DOBDO(DOBDO),
        .DOPBDOP(DOPBDOP),
        .I1(I1),
        .I2(I2),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(Q),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized3
   (I24,
    I21,
    O1,
    O2,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [7:0]I24;
  output [0:0]I21;
  output O1;
  output O2;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;

  wire [0:0]I21;
  wire [7:0]I24;
  wire O1;
  wire O2;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [0:0]wea;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized3 \v6_noinit.ram 
       (.I21(I21),
        .I24(I24),
        .O1(O1),
        .O2(O2),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .wea(wea));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized4
   (ram_doutb,
    clka,
    clkb,
    p_0_in,
    I1,
    addra,
    addrb,
    dina);
  output [17:0]ram_doutb;
  input clka;
  input clkb;
  input [0:0]p_0_in;
  input I1;
  input [9:0]addra;
  input [9:0]addrb;
  input [17:0]dina;

  wire I1;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [17:0]dina;
  wire [0:0]p_0_in;
  wire [17:0]ram_doutb;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized4 \v6_noinit.ram 
       (.I1(I1),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .p_0_in(p_0_in),
        .ram_doutb(ram_doutb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized5
   (DOBDO,
    DOPBDOP,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]DOBDO;
  output [0:0]DOPBDOP;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire I1;
  wire I2;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized5 \v6_noinit.ram 
       (.DOBDO(DOBDO),
        .DOPBDOP(DOPBDOP),
        .I1(I1),
        .I2(I2),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized6
   (I12,
    I9,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]I12;
  output [0:0]I9;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire I1;
  wire [7:0]I12;
  wire I2;
  wire [0:0]I9;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized6 \v6_noinit.ram 
       (.I1(I1),
        .I12(I12),
        .I2(I2),
        .I9(I9),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized7
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina,
    Q,
    DOPBDOP,
    DOBDO);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [0:0]Q;
  input [0:0]DOPBDOP;
  input [7:0]DOBDO;

  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire I1;
  wire I2;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]Q;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized7 \v6_noinit.ram 
       (.DOBDO(DOBDO),
        .DOPBDOP(DOPBDOP),
        .I1(I1),
        .I2(I2),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(Q),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized8
   (I11,
    I8,
    clka,
    clkb,
    I1,
    I2,
    addra,
    addrb,
    dina);
  output [7:0]I11;
  output [0:0]I8;
  input clka;
  input clkb;
  input I1;
  input I2;
  input [10:0]addra;
  input [10:0]addrb;
  input [8:0]dina;

  wire I1;
  wire [7:0]I11;
  wire I2;
  wire [0:0]I8;
  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized8 \v6_noinit.ram 
       (.I1(I1),
        .I11(I11),
        .I2(I2),
        .I8(I8),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sdpram30x15360blk_mem_gen_prim_width__parameterized9
   (doutb,
    wea,
    clka,
    clkb,
    addra,
    addrb,
    dina);
  output [1:0]doutb;
  input [0:0]wea;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;
  input [1:0]dina;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [1:0]dina;
  wire [1:0]doutb;
  wire [0:0]wea;

sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized9 \v6_noinit.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

module sdpram30x15360blk_mem_gen_prim_wrapper_v6
   (doutb,
    clka,
    clkb,
    wea,
    addra,
    addrb,
    dina);
  output [0:0]doutb;
  input clka;
  input clkb;
  input [0:0]wea;
  input [13:0]addra;
  input [13:0]addrb;
  input [0:0]dina;

  wire \<const0> ;
  wire \<const1> ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [0:0]dina;
  wire [0:0]doutb;
  wire [0:0]wea;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGB_UNCONNECTED ;
  wire [15:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;
  wire [1:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEA_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR(addra),
        .ADDRBWRADDR(addrb),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:1],doutb}),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(wea),
        .ENBWREN(\<const1> ),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGB_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEA_UNCONNECTED [1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEBWE_UNCONNECTED [3:1],\<const0> }));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized0
   (DOBDO,
    DOPBDOP,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]DOBDO;
  output [0:0]DOPBDOP;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire I1;
  wire I2;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],DOBDO}),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],DOPBDOP}),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(I2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:1],\<const0> }));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized1
   (I25,
    I22,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]I25;
  output [0:0]I22;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I2;
  wire [0:0]I22;
  wire [7:0]I25;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],I25}),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],I22}),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(I2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:1],\<const0> }));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized10
   (I6,
    I3,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]I6;
  output [0:0]I3;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I2;
  wire [0:0]I3;
  wire [7:0]I6;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],I6}),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],I3}),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(I2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:1],\<const0> }));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized11
   (I4,
    I1,
    I2,
    clka,
    I3,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]I4;
  output [0:0]I1;
  input I2;
  input clka;
  input I3;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]I1;
  wire I2;
  wire I3;
  wire [7:0]I4;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],I4}),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],I1}),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I2),
        .ENBWREN(I3),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:1],\<const0> }));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized12
   (I5,
    I2,
    I1,
    clka,
    I3,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]I5;
  output [0:0]I2;
  input I1;
  input clka;
  input I3;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire [0:0]I2;
  wire I3;
  wire [7:0]I5;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],I5}),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],I2}),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(I3),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:1],\<const0> }));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized13
   (DOBDO,
    DOPBDOP,
    ram_ena,
    clka,
    ram_enb,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]DOBDO;
  output [0:0]DOPBDOP;
  input ram_ena;
  input clka;
  input ram_enb;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire ram_ena;
  wire ram_enb;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],DOBDO}),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],DOPBDOP}),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ram_ena),
        .ENBWREN(ram_enb),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:1],\<const0> }));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized2
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina,
    Q,
    DOPBDOP,
    DOBDO);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [0:0]Q;
  input [0:0]DOPBDOP;
  input [7:0]DOBDO;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire I1;
  wire I2;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]Q;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire \n_60_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_61_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_62_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_63_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_64_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_65_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_66_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_67_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_75_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\n_60_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_61_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_62_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_63_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_64_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_65_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_66_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_67_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram }),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\n_75_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram }),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(I2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:1],\<const0> }));
VCC VCC
       (.P(\<const1> ));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[1]_INST_0_i_1 
       (.I0(\n_67_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[0]),
        .O(O9));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[2]_INST_0_i_1 
       (.I0(\n_66_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[1]),
        .O(O8));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[3]_INST_0_i_1 
       (.I0(\n_65_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[2]),
        .O(O7));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[4]_INST_0_i_1 
       (.I0(\n_64_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[3]),
        .O(O6));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[5]_INST_0_i_1 
       (.I0(\n_63_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[4]),
        .O(O5));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[6]_INST_0_i_1 
       (.I0(\n_62_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[5]),
        .O(O4));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[7]_INST_0_i_1 
       (.I0(\n_61_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[6]),
        .O(O3));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[8]_INST_0_i_1 
       (.I0(\n_60_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[7]),
        .O(O2));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[9]_INST_0_i_1 
       (.I0(\n_75_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOPBDOP),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized3
   (I24,
    I21,
    O1,
    O2,
    clka,
    clkb,
    addra,
    addrb,
    dina,
    wea);
  output [7:0]I24;
  output [0:0]I21;
  output O1;
  output O2;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;
  input [8:0]dina;
  input [0:0]wea;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]I21;
  wire [7:0]I24;
  wire O1;
  wire O2;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire [0:0]wea;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGB_UNCONNECTED ;
  wire [15:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:8]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;
  wire [1:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEA_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra[10:0],\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({addrb[10:0],\<const0> ,\<const0> ,\<const0> }),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,dina[8]}),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:8],I24}),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1],I21}),
        .ENARDEN(O1),
        .ENBWREN(O2),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGB_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEA_UNCONNECTED [1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEBWE_UNCONNECTED [3:1],\<const0> }));
LUT4 #(
    .INIT(16'h0080)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1 
       (.I0(wea),
        .I1(addra[12]),
        .I2(addra[13]),
        .I3(addra[11]),
        .O(O1));
LUT3 #(
    .INIT(8'h08)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2 
       (.I0(addrb[13]),
        .I1(addrb[12]),
        .I2(addrb[11]),
        .O(O2));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized4
   (ram_doutb,
    clka,
    clkb,
    p_0_in,
    I1,
    addra,
    addrb,
    dina);
  output [17:0]ram_doutb;
  input clka;
  input clkb;
  input [0:0]p_0_in;
  input I1;
  input [9:0]addra;
  input [9:0]addrb;
  input [17:0]dina;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire clkb;
  wire [17:0]dina;
  wire [0:0]p_0_in;
  wire [17:0]ram_doutb;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGB_UNCONNECTED ;
  wire [15:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [1:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [3:2]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({addrb,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({dina[16:9],dina[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({dina[17],dina[8]}),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({ram_doutb[16:9],ram_doutb[7:0]}),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP({ram_doutb[17],ram_doutb[8]}),
        .ENARDEN(p_0_in),
        .ENBWREN(I1),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGB_UNCONNECTED ),
        .WEA({\<const1> ,\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEBWE_UNCONNECTED [3:2],\<const0> ,\<const0> }));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized5
   (DOBDO,
    DOPBDOP,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]DOBDO;
  output [0:0]DOPBDOP;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire I1;
  wire I2;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],DOBDO}),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],DOPBDOP}),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(I2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:1],\<const0> }));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized6
   (I12,
    I9,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina);
  output [7:0]I12;
  output [0:0]I9;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire [7:0]I12;
  wire I2;
  wire [0:0]I9;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],I12}),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],I9}),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(I2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:1],\<const0> }));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized7
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    I1,
    clka,
    I2,
    clkb,
    addra,
    addrb,
    dina,
    Q,
    DOPBDOP,
    DOBDO);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  input I1;
  input clka;
  input I2;
  input clkb;
  input [11:0]addra;
  input [11:0]addrb;
  input [8:0]dina;
  input [0:0]Q;
  input [0:0]DOPBDOP;
  input [7:0]DOBDO;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]DOBDO;
  wire [0:0]DOPBDOP;
  wire I1;
  wire I2;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]Q;
  wire [11:0]addra;
  wire [11:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire \n_60_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_61_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_62_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_63_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_64_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_65_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_66_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_67_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_75_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,dina[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\n_60_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_61_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_62_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_63_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_64_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_65_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_66_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_67_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram }),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\n_75_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram }),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(I2),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:1],\<const0> }));
VCC VCC
       (.P(\<const1> ));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[10]_INST_0_i_1 
       (.I0(\n_67_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[0]),
        .O(O9));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[11]_INST_0_i_1 
       (.I0(\n_66_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[1]),
        .O(O8));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[12]_INST_0_i_1 
       (.I0(\n_65_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[2]),
        .O(O7));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[13]_INST_0_i_1 
       (.I0(\n_64_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[3]),
        .O(O6));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[14]_INST_0_i_1 
       (.I0(\n_63_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[4]),
        .O(O5));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[15]_INST_0_i_1 
       (.I0(\n_62_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[5]),
        .O(O4));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[16]_INST_0_i_1 
       (.I0(\n_61_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[6]),
        .O(O3));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[17]_INST_0_i_1 
       (.I0(\n_60_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOBDO[7]),
        .O(O2));
LUT3 #(
    .INIT(8'hB8)) 
     \doutb[18]_INST_0_i_1 
       (.I0(\n_75_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .I1(Q),
        .I2(DOPBDOP),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized8
   (I11,
    I8,
    clka,
    clkb,
    I1,
    I2,
    addra,
    addrb,
    dina);
  output [7:0]I11;
  output [0:0]I8;
  input clka;
  input clkb;
  input I1;
  input I2;
  input [10:0]addra;
  input [10:0]addrb;
  input [8:0]dina;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire [7:0]I11;
  wire I2;
  wire [0:0]I8;
  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [8:0]dina;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGB_UNCONNECTED ;
  wire [15:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:8]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;
  wire [1:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEA_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({addrb,\<const0> ,\<const0> ,\<const0> }),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,dina[8]}),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:8],I11}),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1],I8}),
        .ENARDEN(I1),
        .ENBWREN(I2),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_RSTREGB_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEA_UNCONNECTED [1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEBWE_UNCONNECTED [3:1],\<const0> }));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_v6" *) 
module sdpram30x15360blk_mem_gen_prim_wrapper_v6__parameterized9
   (doutb,
    wea,
    clka,
    clkb,
    addra,
    addrb,
    dina);
  output [1:0]doutb;
  input [0:0]wea;
  input clka;
  input clkb;
  input [13:0]addra;
  input [13:0]addrb;
  input [1:0]dina;

  wire \<const0> ;
  wire \<const1> ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [1:0]dina;
  wire [1:0]doutb;
  wire [0:0]wea;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ;
  wire \NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:2]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;
  wire [7:1]\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED ;

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
    .READ_WIDTH_B(2),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(2),
    .WRITE_WIDTH_B(2)) 
     \NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,addra,\<const1> }),
        .ADDRBWRADDR({\<const1> ,addrb,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clkb),
        .DBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,dina}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:2],doutb}),
        .DOPADOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(wea),
        .ENBWREN(\<const1> ),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEAREGCE_UNCONNECTED ),
        .REGCEB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_REGCEB_UNCONNECTED ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGARSTREG_UNCONNECTED ),
        .RSTREGB(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RSTREGB_UNCONNECTED ),
        .SBITERR(\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],\<const1> }),
        .WEBWE({\NLW_NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEBWE_UNCONNECTED [7:1],\<const0> }));
VCC VCC
       (.P(\<const1> ));
endmodule

module sdpram30x15360blk_mem_gen_top
   (doutb,
    clka,
    clkb,
    wea,
    addra,
    addrb,
    dina);
  output [29:0]doutb;
  input clka;
  input clkb;
  input [0:0]wea;
  input [13:0]addra;
  input [13:0]addrb;
  input [29:0]dina;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [29:0]dina;
  wire [29:0]doutb;
  wire [0:0]wea;

sdpram30x15360blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

(* C_FAMILY = "virtex7" *) (* C_XDEVICEFAMILY = "virtex7" *) (* C_ELABORATION_DIR = "./" *) 
(* C_INTERFACE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) (* C_AXI_SLAVE_TYPE = "0" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_CTRL_ECC_ALGO = "NONE" *) 
(* C_HAS_AXI_ID = "0" *) (* C_AXI_ID_WIDTH = "4" *) (* C_MEM_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_ALGORITHM = "1" *) (* C_PRIM_TYPE = "1" *) 
(* C_LOAD_INIT_FILE = "0" *) (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) (* C_INIT_FILE = "sdpram30x15360.mem" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_DEFAULT_DATA = "0" *) (* C_RST_TYPE = "SYNC" *) 
(* C_HAS_RSTA = "0" *) (* C_RST_PRIORITY_A = "CE" *) (* C_RSTRAM_A = "0" *) 
(* C_INITA_VAL = "0" *) (* C_HAS_ENA = "0" *) (* C_HAS_REGCEA = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_WEA_WIDTH = "1" *) (* C_WRITE_MODE_A = "READ_FIRST" *) 
(* C_WRITE_WIDTH_A = "30" *) (* C_READ_WIDTH_A = "30" *) (* C_WRITE_DEPTH_A = "15360" *) 
(* C_READ_DEPTH_A = "15360" *) (* C_ADDRA_WIDTH = "14" *) (* C_HAS_RSTB = "0" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_RSTRAM_B = "0" *) (* C_INITB_VAL = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_REGCEB = "0" *) (* C_USE_BYTE_WEB = "0" *) 
(* C_WEB_WIDTH = "1" *) (* C_WRITE_MODE_B = "READ_FIRST" *) (* C_WRITE_WIDTH_B = "30" *) 
(* C_READ_WIDTH_B = "30" *) (* C_WRITE_DEPTH_B = "15360" *) (* C_READ_DEPTH_B = "15360" *) 
(* C_ADDRB_WIDTH = "14" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
(* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) (* C_MUX_PIPELINE_STAGES = "0" *) 
(* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_ECC = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_COMMON_CLK = "1" *) (* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module sdpram30x15360blk_mem_gen_v8_0
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
  input [13:0]addrb;
  input [29:0]dinb;
  output [29:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
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
  output [29:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [29:0]dina;
  wire [29:0]dinb;
  wire [29:0]doutb;
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
  wire NLW_i_75_O_UNCONNECTED;

  assign dbiterr = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
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
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
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
LUT4 #(
    .INIT(16'hFFFF)) 
     i_75
       (.I0(addrb[10]),
        .I1(addrb[11]),
        .I2(addrb[13]),
        .I3(addrb[12]),
        .O(NLW_i_75_O_UNCONNECTED));
sdpram30x15360blk_mem_gen_v8_0_synth inst_blk_mem_gen
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
endmodule

module sdpram30x15360blk_mem_gen_v8_0_synth
   (doutb,
    clka,
    clkb,
    wea,
    addra,
    addrb,
    dina);
  output [29:0]doutb;
  input clka;
  input clkb;
  input [0:0]wea;
  input [13:0]addra;
  input [13:0]addrb;
  input [29:0]dina;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire clkb;
  wire [29:0]dina;
  wire [29:0]doutb;
  wire [0:0]wea;

sdpram30x15360blk_mem_gen_top \gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dina(dina),
        .doutb(doutb),
        .wea(wea));
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
