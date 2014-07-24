-- (c) Copyright 1995-2014 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:v_cresample:4.0
-- IP Revision: 2

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY v_cresample_v4_0;
USE v_cresample_v4_0.v_cresample;

ENTITY MainDesign_v_cresample_0_1 IS
  PORT (
    aclk : IN STD_LOGIC;
    aclken : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    s_axis_video_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
    s_axis_video_tvalid : IN STD_LOGIC;
    s_axis_video_tready : OUT STD_LOGIC;
    s_axis_video_tuser : IN STD_LOGIC;
    s_axis_video_tlast : IN STD_LOGIC;
    m_axis_video_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    m_axis_video_tvalid : OUT STD_LOGIC;
    m_axis_video_tready : IN STD_LOGIC;
    m_axis_video_tuser : OUT STD_LOGIC;
    m_axis_video_tlast : OUT STD_LOGIC
  );
END MainDesign_v_cresample_0_1;

ARCHITECTURE MainDesign_v_cresample_0_1_arch OF MainDesign_v_cresample_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF MainDesign_v_cresample_0_1_arch: ARCHITECTURE IS "yes";

  COMPONENT v_cresample IS
    GENERIC (
      C_S_AXIS_VIDEO_DATA_WIDTH : INTEGER;
      C_M_AXIS_VIDEO_DATA_WIDTH : INTEGER;
      C_S_AXIS_VIDEO_TDATA_WIDTH : INTEGER;
      C_M_AXIS_VIDEO_TDATA_WIDTH : INTEGER;
      C_S_AXIS_VIDEO_FORMAT : INTEGER;
      C_M_AXIS_VIDEO_FORMAT : INTEGER;
      C_S_AXI_CLK_FREQ_HZ : INTEGER;
      C_HAS_AXI4_LITE : INTEGER;
      C_HAS_INTC_IF : INTEGER;
      C_HAS_DEBUG : INTEGER;
      C_FAMILY : STRING;
      C_MAX_COLS : INTEGER;
      C_ACTIVE_COLS : INTEGER;
      C_ACTIVE_ROWS : INTEGER;
      C_CHROMA_PARITY : INTEGER;
      C_FIELD_PARITY : INTEGER;
      C_INTERLACED : INTEGER;
      C_NUM_H_TAPS : INTEGER;
      C_NUM_V_TAPS : INTEGER;
      C_CONVERT_TYPE : INTEGER;
      C_COEF_WIDTH : INTEGER
    );
    PORT (
      aclk : IN STD_LOGIC;
      aclken : IN STD_LOGIC;
      aresetn : IN STD_LOGIC;
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aclken : IN STD_LOGIC;
      s_axi_aresetn : IN STD_LOGIC;
      intc_if : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
      irq : OUT STD_LOGIC;
      s_axis_video_tdata : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
      s_axis_video_tvalid : IN STD_LOGIC;
      s_axis_video_tready : OUT STD_LOGIC;
      s_axis_video_tuser : IN STD_LOGIC;
      s_axis_video_tlast : IN STD_LOGIC;
      m_axis_video_tdata : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
      m_axis_video_tvalid : OUT STD_LOGIC;
      m_axis_video_tready : IN STD_LOGIC;
      m_axis_video_tuser : OUT STD_LOGIC;
      m_axis_video_tlast : OUT STD_LOGIC;
      s_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_awvalid : IN STD_LOGIC;
      s_axi_awready : OUT STD_LOGIC;
      s_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_wvalid : IN STD_LOGIC;
      s_axi_wready : OUT STD_LOGIC;
      s_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_bvalid : OUT STD_LOGIC;
      s_axi_bready : IN STD_LOGIC;
      s_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
      s_axi_arvalid : IN STD_LOGIC;
      s_axi_arready : OUT STD_LOGIC;
      s_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_rvalid : OUT STD_LOGIC;
      s_axi_rready : IN STD_LOGIC
    );
  END COMPONENT v_cresample;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF MainDesign_v_cresample_0_1_arch: ARCHITECTURE IS "v_cresample,Vivado 2013.3";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF MainDesign_v_cresample_0_1_arch : ARCHITECTURE IS "MainDesign_v_cresample_0_1,v_cresample,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF MainDesign_v_cresample_0_1_arch: ARCHITECTURE IS "MainDesign_v_cresample_0_1,v_cresample,{x_ipProduct=Vivado 2013.3,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=v_cresample,x_ipVersion=4.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipLicense=v_cresample@2013.03(hardware_evaluation),C_S_AXIS_VIDEO_DATA_WIDTH=8,C_M_AXIS_VIDEO_DATA_WIDTH=8,C_S_AXIS_VIDEO_TDATA_WIDTH=24,C_M_AXIS_VIDEO_TDATA_WIDTH=16,C_S_AXIS_VIDEO_FORMAT=1,C_M_AXIS_VIDEO_FORMAT=0,C_S_AXI_CLK_FREQ_HZ=100000000,C_HAS_AXI4_LITE=0,C_HAS_INTC_IF=0,C_HAS_DEBUG=0,C_FAMILY=zynq,C_MAX_COLS=1920,C_ACTIVE_COLS=1920,C_ACTIVE_ROWS=1080,C_CHROMA_PARITY=1,C_FIELD_PARITY=1,C_INTERLACED=0,C_NUM_H_TAPS=3,C_NUM_V_TAPS=0,C_CONVERT_TYPE=1,C_COEF_WIDTH=16}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  ATTRIBUTE X_INTERFACE_INFO OF aclken: SIGNAL IS "xilinx.com:signal:clockenable:1.0 aclken_intf CE";
  ATTRIBUTE X_INTERFACE_INFO OF aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 aresetn_intf RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF s_axis_video_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 video_in TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF m_axis_video_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 video_out TLAST";
BEGIN
  U0 : v_cresample
    GENERIC MAP (
      C_S_AXIS_VIDEO_DATA_WIDTH => 8,
      C_M_AXIS_VIDEO_DATA_WIDTH => 8,
      C_S_AXIS_VIDEO_TDATA_WIDTH => 24,
      C_M_AXIS_VIDEO_TDATA_WIDTH => 16,
      C_S_AXIS_VIDEO_FORMAT => 1,
      C_M_AXIS_VIDEO_FORMAT => 0,
      C_S_AXI_CLK_FREQ_HZ => 100000000,
      C_HAS_AXI4_LITE => 0,
      C_HAS_INTC_IF => 0,
      C_HAS_DEBUG => 0,
      C_FAMILY => "zynq",
      C_MAX_COLS => 1920,
      C_ACTIVE_COLS => 1920,
      C_ACTIVE_ROWS => 1080,
      C_CHROMA_PARITY => 1,
      C_FIELD_PARITY => 1,
      C_INTERLACED => 0,
      C_NUM_H_TAPS => 3,
      C_NUM_V_TAPS => 0,
      C_CONVERT_TYPE => 1,
      C_COEF_WIDTH => 16
    )
    PORT MAP (
      aclk => aclk,
      aclken => aclken,
      aresetn => aresetn,
      s_axi_aclk => '0',
      s_axi_aclken => '1',
      s_axi_aresetn => '1',
      s_axis_video_tdata => s_axis_video_tdata,
      s_axis_video_tvalid => s_axis_video_tvalid,
      s_axis_video_tready => s_axis_video_tready,
      s_axis_video_tuser => s_axis_video_tuser,
      s_axis_video_tlast => s_axis_video_tlast,
      m_axis_video_tdata => m_axis_video_tdata,
      m_axis_video_tvalid => m_axis_video_tvalid,
      m_axis_video_tready => m_axis_video_tready,
      m_axis_video_tuser => m_axis_video_tuser,
      m_axis_video_tlast => m_axis_video_tlast,
      s_axi_awaddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 9)),
      s_axi_awvalid => '0',
      s_axi_wdata => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      s_axi_wstrb => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 4)),
      s_axi_wvalid => '0',
      s_axi_bready => '0',
      s_axi_araddr => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 9)),
      s_axi_arvalid => '0',
      s_axi_rready => '0'
    );
END MainDesign_v_cresample_0_1_arch;
