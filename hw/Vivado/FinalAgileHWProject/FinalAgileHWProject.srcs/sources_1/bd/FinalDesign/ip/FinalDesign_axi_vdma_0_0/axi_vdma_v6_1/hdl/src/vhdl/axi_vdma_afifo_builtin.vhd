-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- axi_vdma_afifo_builtin.vhd - entity/architecture pair
-------------------------------------------------------------------------------
--
-- *************************************************************************
--
--  (c) Copyright 2010, 2012-2013 Xilinx, Inc. All rights reserved.
--
--  This file contains confidential and proprietary information
--  of Xilinx, Inc. and is protected under U.S. and
--  international copyright and other intellectual property
--  laws.
--
--  DISCLAIMER
--  This disclaimer is not a license and does not grant any
--  rights to the materials distributed herewith. Except as
--  otherwise provided in a valid license issued to you by
--  Xilinx, and to the maximum extent permitted by applicable
--  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
--  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
--  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
--  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
--  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
--  (2) Xilinx shall not be liable (whether in contract or tort,
--  including negligence, or under any other theory of
--  liability) for any loss or damage of any kind or nature
--  related to, arising under or in connection with these
--  materials, including for any direct, or any indirect,
--  special, incidental, or consequential loss or damage
--  (including loss of data, profits, goodwill, or any type of
--  loss or damage suffered as a result of any action brought
--  by a third party) even if such damage or loss was
--  reasonably foreseeable or Xilinx had been advised of the
--  possibility of the same.
--
--  CRITICAL APPLICATIONS
--  Xilinx products are not designed or intended to be fail-
--  safe, or for use in any application requiring fail-safe
--  performance, such as life-support or safety devices or
--  systems, Class III medical devices, nuclear facilities,
--  applications related to the deployment of airbags, or any
--  other applications that could lead to death, personal
--  injury, or severe property or environmental damage
--  (individually and collectively, "Critical
--  Applications"). Customer assumes the sole risk and
--  liability of any use of Xilinx products in Critical
--  Applications, subject only to applicable laws and
--  regulations governing limitations on product liability.
--
--  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
--  PART OF THIS FILE AT ALL TIMES. 
--
-- *************************************************************************
--



LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

library proc_common_v4_0;
use proc_common_v4_0.proc_common_pkg.all;
use proc_common_v4_0.coregen_comp_defs.all;
use proc_common_v4_0.family_support.all;


library axi_vdma_v6_1;
use axi_vdma_v6_1.axi_vdma_pkg.all;


-- synopsys translate_off
--library XilinxCoreLib;
--use XilinxCoreLib.all;
-- synopsys translate_on


ENTITY axi_vdma_afifo_builtin IS
  GENERIC (
    -------------------------------------------------------------------------
    -- Generic Declarations
    -------------------------------------------------------------------------
    PL_FIFO_TYPE          : STRING  := "BLOCK_RAM"; -- BLOCK_RAM, LUTRAM, BUILT_IN; Default: BLOCK_RAM
    PL_READ_MODE          : STRING  := "STANDARD";  -- STANDARD, FWFT; Default: STANDARD
    PL_FASTER_CLOCK       : STRING  := "WR_CLK";    -- WR_CLK, RD_CLK; Default: WR_CLK
    PL_FULL_FLAGS_RST_VAL : INTEGER := 1;           -- 1, 0; Default: 1
    PL_DATA_WIDTH         : INTEGER := 16;          -- 1 - 1024; Default 16
    C_FAMILY              : string  := "virtex7";
    PL_FIFO_DEPTH         : INTEGER := 1024         -- 16 - 256K; Default 1K
    );
  PORT (

    -- Common signal
    rst              : in  std_logic := '0';

    -- Write Domain signals
    wr_clk           : in  std_logic := '0';
    din              : in  std_logic_vector(PL_DATA_WIDTH-1 downto 0) := (others => '0');
    wr_en            : in  std_logic := '0';
    full             : out std_logic := '0';

    -- Write Domain signals
    rd_clk           : in  std_logic := '0';
    rd_en            : in  std_logic := '0';
    dout             : out std_logic_vector(PL_DATA_WIDTH-1 downto 0) := (others => '0');
    empty            : out std_logic := '1'

    );
END ENTITY axi_vdma_afifo_builtin;

ARCHITECTURE xilinx OF axi_vdma_afifo_builtin IS
attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of xilinx : architecture is "yes";

  ---------------------------------------------------------------------------
  -- FUNCTION : log2roundup
  ---------------------------------------------------------------------------
  FUNCTION log2roundup (
      data_value : integer)
  	RETURN integer IS
  	
  	VARIABLE width       : integer := 0;
  	VARIABLE cnt         : integer := 1;
  	CONSTANT lower_limit : integer := 1;
  	CONSTANT upper_limit : integer := 8;
  	
  BEGIN
  	IF (data_value <= 1) THEN
      width   := 0;
  	ELSE
  	  WHILE (cnt < data_value) LOOP
  	    width := width + 1;
  	    cnt   := cnt *2;
  	  END LOOP;
  	END IF;
  	
  	RETURN width;
  END log2roundup;

  ------------------------------------------------------------------------------
  -- This function is used to implement an IF..THEN when such a statement is not
  --  allowed. 
  ------------------------------------------------------------------------------
  FUNCTION if_then_else (
    condition : boolean; 
    true_case : integer; 
    false_case : integer) 
  RETURN integer IS
    VARIABLE retval : integer := 0;
  BEGIN
    IF NOT condition THEN
      retval:=false_case;
    ELSE
      retval:=true_case;
    END IF;
    RETURN retval;
  END if_then_else;

  ------------------------------------------------------------------------------
   -- This function is used to implement an IF..THEN when such a statement is not
   --  allowed and returns string. 
   ------------------------------------------------------------------------------
   function if_then_else (
     condition : boolean; 
     true_case : string;
     false_case : string) 
   return string is
   begin
     if not condition then
       return false_case;
     else
       return true_case;
     end if;
   end if_then_else;
  
    -----------------------------------------------------------------------------
    -- FUNCTION: to_lower_case_char
    -- Returns the lower case form of char IF char is an upper case letter.
    -- Otherwise char is returned.
    -----------------------------------------------------------------------------
    FUNCTION to_lower_case_char(
      char : character )
    RETURN character IS
    BEGIN
      -------------------------------------------------------------------------
      -- If char is not an upper case letter THEN return char
      --
      -- Otherwise map char to its corresponding lower case character and
      -- return that
      -------------------------------------------------------------------------
      IF char<'A' OR char>'Z' THEN
        RETURN char;
      END IF;
  
      CASE char IS
        WHEN 'A' => RETURN 'a';
        WHEN 'B' => RETURN 'b';
        WHEN 'C' => RETURN 'c';
        WHEN 'D' => RETURN 'd';
        WHEN 'E' => RETURN 'e';
        WHEN 'F' => RETURN 'f';
        WHEN 'G' => RETURN 'g';
        WHEN 'H' => RETURN 'h';
        WHEN 'I' => RETURN 'i';
        WHEN 'J' => RETURN 'j';
        WHEN 'K' => RETURN 'k';
        WHEN 'L' => RETURN 'l';
        WHEN 'M' => RETURN 'm';
        WHEN 'N' => RETURN 'n';
        WHEN 'O' => RETURN 'o';
        WHEN 'P' => RETURN 'p';
        WHEN 'Q' => RETURN 'q';
        WHEN 'R' => RETURN 'r';
        WHEN 'S' => RETURN 's';
        WHEN 'T' => RETURN 't';
        WHEN 'U' => RETURN 'u';
        WHEN 'V' => RETURN 'v';
        WHEN 'W' => RETURN 'w';
        WHEN 'X' => RETURN 'x';
        WHEN 'Y' => RETURN 'y';
        WHEN 'Z' => RETURN 'z';
        WHEN OTHERS => RETURN char;
      END CASE;
    END to_lower_case_char;
  
    -----------------------------------------------------------------------------
    -- Returns true IF case insensitive string comparison determines that
    -- str1 and str2 are equal
    -----------------------------------------------------------------------------
    FUNCTION equal_ignore_case(
      str1 : string;
      str2 : string )
    RETURN boolean IS
      CONSTANT len1 : integer := str1'length;
      CONSTANT len2 : integer := str2'length;
      VARIABLE equal : boolean := TRUE;
    BEGIN
      IF NOT (len1=len2) THEN
        equal := FALSE;
      ELSE
        FOR i IN str2'left TO str1'right LOOP
          IF NOT (to_lower_case_char(str1(i)) = to_lower_case_char(str2(i))) THEN
            equal := FALSE;
          END IF;
        END LOOP;
      END IF;
  
      RETURN equal;
    END equal_ignore_case;

  --#############################################################
  --#
  --# Get the Primitive fifo type
  --# Description: Algorithm for Built-In FIFO implementation
  --# to determine which primitive is most optimal to use 
  --#
  --#############################################################

  function get_Prim_Fifo_Type (
    width    : integer;
    depth    : integer;
    use_ecc  : integer)
  return string is

    variable prim_4kx4_used   : integer :=  (((width-1)/4 +1)*((depth-1)/4096 +1));
    variable prim_2kx9_used   : integer :=  (((width-1)/9 +1)*((depth-1)/2048 +1));
    variable prim_1kx18_used  : integer :=  (((width-1)/18+1)*((depth-1)/1024 +1));
    variable prim_512x36_used : integer :=  (((width-1)/36+1)*((depth-1)/512  +1));
    variable prim_8kx4_used   : integer :=  (((width-1)/4 +1)*((depth-1)/8192 +1));
    variable prim_4kx9_used   : integer :=  (((width-1)/9 +1)*((depth-1)/4096 +1));
    variable prim_2kx18_used  : integer :=  (((width-1)/18+1)*((depth-1)/2048 +1));
    variable prim_1kx36_used  : integer :=  (((width-1)/36+1)*((depth-1)/1024 +1));
    variable prim_512x72_used : integer :=  (((width-1)/72+1)*((depth-1)/512  +1));
     
    variable min_used    : integer := prim_4kx4_used;
    variable min_type    : string (1 to 6) := "4kx4  ";
  begin
     
     if (use_ecc = 0) then      

       --##########################################################
       --# Rules: Primitive used should
       --# - generate correct full flags if depth >= 512
       --# - use min number of primitives
       --# - use primitive that reduces latency when possible
       --# This creates 3 cases:
       --# 1) depth <= 512
       --# 2) depth = 1k 
       --# 3) depth = 2k 
       --# 4) depth >= 4k
       --##########################################################
       if (depth <= 512) then

         if (min_used > prim_512x72_used) then
           min_used := prim_512x72_used;
           min_type := "512x72";     
         else
           min_used := prim_512x36_used;
           min_type := "512x36";     
         end if;

       elsif (depth = 1024) then
           min_used := prim_1kx18_used;
           min_type := "1kx18 ";     

         if (min_used > prim_512x36_used) then
           min_used := prim_512x36_used;
           min_type := "512x36";     
         end if;

         if (min_used > prim_1kx36_used) then
           min_used := prim_1kx36_used;
           min_type := "1kx36 ";     
         end if;

         if (min_used > prim_512x72_used) then
           min_used := prim_512x72_used;
           min_type := "512x72";     
         end if;

       elsif (depth = 2048) then
           min_used := prim_2kx9_used;
           min_type := "2kx9  ";     

         if (min_used > prim_1kx18_used) then
           min_used := prim_1kx18_used;
           min_type := "1kx18 ";     
         end if;

         if (min_used > prim_512x36_used) then
           min_used := prim_512x36_used;
           min_type := "512x36";     
         end if;

         if (min_used > prim_2kx18_used) then
           min_used := prim_2kx18_used;
           min_type := "2kx18 ";     
         end if;

         if (min_used > prim_1kx36_used) then
           min_used := prim_1kx36_used;
           min_type := "1kx36 ";     
         end if;

         if (min_used > prim_512x72_used) then
           min_used := prim_512x72_used;
           min_type := "512x72";     
         end if;

       else
           min_used := prim_4kx4_used;
           min_type := "4kx4  ";     

         if (min_used > prim_2kx9_used) then
           min_used := prim_2kx9_used;
           min_type := "2kx9  ";     
         end if;

         if (min_used > prim_1kx18_used) then
           min_used := prim_1kx18_used;
           min_type := "1kx18 ";     
         end if;

         if (min_used > prim_512x36_used) then
           min_used := prim_512x36_used;
           min_type := "512x36";     
         end if;

         if (min_used > prim_8kx4_used) then
           min_used := prim_8kx4_used;
           min_type := "8kx4  ";     
         end if;

         if (min_used > prim_4kx9_used) then
           min_used := prim_4kx9_used;
           min_type := "4kx9  ";     
         end if;

         if (min_used > prim_2kx18_used) then
           min_used := prim_2kx18_used;
           min_type := "2kx18 ";     
         end if;

         if (min_used > prim_1kx36_used) then
           min_used := prim_1kx36_used;
           min_type := "1kx36 ";     
         end if;

         if (min_used > prim_512x72_used) then
           min_used := prim_512x72_used;
           min_type := "512x72";     
         end if;
       end if;
    else
      
      -- if ecc is used, always use the 512x72 primitive
      min_used := prim_512x72_used;
      min_type := "512x72";     
 
    end if;
      
     return min_type;
  end get_Prim_Fifo_Type;

  CONSTANT GND : std_logic := '0';
  CONSTANT VCC : std_logic := '1';

  CONSTANT ZERO1 : std_logic_vector(0 downto 0) := (others => '0');
  CONSTANT ZERO2 : std_logic_vector(1 downto 0) := (others => '0');
  CONSTANT ZERO3 : std_logic_vector(2 downto 0) := (others => '0');
  CONSTANT ZERO4 : std_logic_vector(3 downto 0) := (others => '0');
  CONSTANT ZERO8 : std_logic_vector(7 downto 0) := (others => '0');
  CONSTANT ZERO16 : std_logic_vector(15 downto 0) := (others => '0');
  CONSTANT ZERO32 : std_logic_vector(31 downto 0) := (others => '0');
  CONSTANT ZERO64 : std_logic_vector(63 downto 0) := (others => '0');
  CONSTANT ZERO_pntr : std_logic_vector(log2roundup(pl_fifo_depth)-1 downto 0) := (others => '0');

  CONSTANT C_PRELOAD_LATENCY : integer := if_then_else((PL_READ_MODE = "FWFT"), 0, 1);
  CONSTANT C_PRELOAD_REGS    : integer := if_then_else((PL_READ_MODE = "FWFT"), 1, 0);
  CONSTANT C_WR_FREQ         : integer := if_then_else((PL_FASTER_CLOCK = "WR_CLK"), 10, 1);
  CONSTANT C_RD_FREQ         : integer := if_then_else((PL_FASTER_CLOCK = "RD_CLK"), 10, 1);

  CONSTANT C_MEMORY_TYPE     : integer := if_then_else((PL_FIFO_TYPE = "BLOCK_RAM"), 1,
                                          if_then_else((PL_FIFO_TYPE = "LUTRAM"), 2,
                                          if_then_else((PL_FIFO_TYPE = "BUILT_IN"), 4, 0)));

  CONSTANT C_IMPLEMENTATION_TYPE : integer := if_then_else((PL_FIFO_TYPE = "BLOCK_RAM"), 0,
                                              if_then_else((PL_FIFO_TYPE = "LUTRAM"), 0,
                                              if_then_else((PL_FIFO_TYPE = "BUILT_IN"), 6, 8)));

  CONSTANT PRIM_FIFO_TYPE    : string := get_Prim_Fifo_Type(pl_data_width,pl_fifo_depth,0);
  CONSTANT C_PRIM_FIFO_TYPE  : string := if_then_else(PRIM_FIFO_TYPE = "8kx4  ", "8kx4",
                                         if_then_else(PRIM_FIFO_TYPE = "4kx9  ", "4kx9",
                                         if_then_else(PRIM_FIFO_TYPE = "4kx4  ", "4kx4",
                                         if_then_else(PRIM_FIFO_TYPE = "2kx18 ", "2kx18",
                                         if_then_else(PRIM_FIFO_TYPE = "2kx9  ", "2kx9",
                                         if_then_else(PRIM_FIFO_TYPE = "1kx36 ", "1kx36",
                                         if_then_else(PRIM_FIFO_TYPE = "1kx18 ", "1kx18",
                                         if_then_else(PRIM_FIFO_TYPE = "512x72", "512x72",
                                         if_then_else(PRIM_FIFO_TYPE = "512x36", "512x36","")))))))));

  CONSTANT IS_FIFO_TYPE_VLD  : integer := if_then_else((PL_FIFO_TYPE = "BLOCK_RAM") or 
                                                       (PL_FIFO_TYPE = "LUTRAM") or 
                                                       (PL_FIFO_TYPE = "BUILT_IN"), 1, 0);
  CONSTANT IS_READ_MODE_VLD  : integer := if_then_else((PL_READ_MODE = "STANDARD") or 
                                                       (PL_READ_MODE = "FWFT"), 1, 0);
  CONSTANT IS_DATA_WIDTH_VLD : integer := if_then_else(PL_DATA_WIDTH > 0 and PL_DATA_WIDTH <= 1024, 1, 0);
  CONSTANT IS_FIFO_DEPTH_VLD : integer := if_then_else((PL_FIFO_DEPTH = 16 or PL_FIFO_DEPTH = 32 or PL_FIFO_DEPTH = 64 or
                                                       PL_FIFO_DEPTH = 128 or PL_FIFO_DEPTH = 256 or PL_FIFO_DEPTH = 512 or
                                                       PL_FIFO_DEPTH = 1024 or PL_FIFO_DEPTH = 2048 or PL_FIFO_DEPTH = 4096 or
                                                       PL_FIFO_DEPTH = 8192 or PL_FIFO_DEPTH = 16384 or PL_FIFO_DEPTH = 32768 or
                                                       PL_FIFO_DEPTH = 65536 or PL_FIFO_DEPTH = 131072 or PL_FIFO_DEPTH = 262144),1,0);
  CONSTANT VLD_BI_DEPTH      : integer := if_then_else((PL_FIFO_DEPTH = 512 or PL_FIFO_DEPTH = 1024 or PL_FIFO_DEPTH = 2048 or PL_FIFO_DEPTH = 4096 or
                                                       PL_FIFO_DEPTH = 8192 or PL_FIFO_DEPTH = 16384 or PL_FIFO_DEPTH = 32768 or
                                                       PL_FIFO_DEPTH = 65536 or PL_FIFO_DEPTH = 131072 or PL_FIFO_DEPTH = 262144),1,0);
--  CONSTANT IS_BI_DEPTH_VLD   : integer := if_then_else((VLD_BI_DEPTH = 1 and PL_FIFO_TYPE = "BUILT_IN"), 1, 0);
  CONSTANT IS_BI_DEPTH_VLD   : integer := if_then_else((VLD_BI_DEPTH = 1), 1, 0);

BEGIN

  fg_builtin_fifo_inst : fifo_generator_v11_0
  GENERIC MAP (
    C_COMMON_CLOCK                      => 0,
--    C_COUNT_TYPE                        => C_COUNT_TYPE,
--    C_DATA_COUNT_WIDTH                  => C_DATA_COUNT_WIDTH,
--    C_DEFAULT_VALUE                     => C_DEFAULT_VALUE,
    C_DIN_WIDTH                         => pl_data_width,
--    C_DOUT_RST_VAL                      => C_DOUT_RST_VAL,
    C_DOUT_WIDTH                        => pl_data_width,
--    C_ENABLE_RLOCS                      => C_ENABLE_RLOCS,
    --C_FAMILY                            => "virtex7",
    C_FAMILY                            => C_FAMILY,
    C_FULL_FLAGS_RST_VAL                => pl_full_flags_rst_val,
--    C_HAS_ALMOST_EMPTY                  => C_HAS_ALMOST_EMPTY,
--    C_HAS_ALMOST_FULL                   => C_HAS_ALMOST_FULL,
--    C_HAS_BACKUP                        => C_HAS_BACKUP,
--    C_HAS_DATA_COUNT                    => C_HAS_DATA_COUNT,
--    C_HAS_INT_CLK                       => C_HAS_INT_CLK,
--    C_HAS_MEMINIT_FILE                  => C_HAS_MEMINIT_FILE,
--    C_HAS_OVERFLOW                      => C_HAS_OVERFLOW,
--    C_HAS_RD_DATA_COUNT                 => C_HAS_RD_DATA_COUNT,
--    C_HAS_RD_RST                        => C_HAS_RD_RST,
    C_HAS_RST                           => 1,
    C_HAS_SRST                          => 0,
--    C_HAS_UNDERFLOW                     => C_HAS_UNDERFLOW,
--    C_HAS_VALID                         => C_HAS_VALID,
--    C_HAS_WR_ACK                        => C_HAS_WR_ACK,
--    C_HAS_WR_DATA_COUNT                 => C_HAS_WR_DATA_COUNT,
--    C_HAS_WR_RST                        => C_HAS_WR_RST,
    C_IMPLEMENTATION_TYPE               => C_IMPLEMENTATION_TYPE,
--    C_INIT_WR_PNTR_VAL                  => C_INIT_WR_PNTR_VAL,
    C_MEMORY_TYPE                       => C_MEMORY_TYPE,
--    C_MIF_FILE_NAME                     => C_MIF_FILE_NAME,
--    C_OPTIMIZATION_MODE                 => C_OPTIMIZATION_MODE,
--    C_OVERFLOW_LOW                      => C_OVERFLOW_LOW,
    C_PRELOAD_LATENCY                   => C_PRELOAD_LATENCY,
    C_PRELOAD_REGS                      => C_PRELOAD_REGS,
    C_PRIM_FIFO_TYPE                    => C_PRIM_FIFO_TYPE,
    C_PROG_EMPTY_THRESH_ASSERT_VAL      => 10,
    C_PROG_EMPTY_THRESH_NEGATE_VAL      => 9,
    C_PROG_EMPTY_TYPE                   => 0,
    C_PROG_FULL_THRESH_ASSERT_VAL       => if_then_else((PL_FIFO_TYPE = "BUILT_IN"), PL_FIFO_DEPTH-150, 14),
    C_PROG_FULL_THRESH_NEGATE_VAL       => if_then_else((PL_FIFO_TYPE = "BUILT_IN"), PL_FIFO_DEPTH-160, 12),
    C_PROG_FULL_TYPE                    => 0,
--    C_RD_DATA_COUNT_WIDTH               => C_RD_DATA_COUNT_WIDTH,
    C_RD_DEPTH                          => pl_fifo_depth,
    C_RD_FREQ                           => C_RD_FREQ,
    C_RD_PNTR_WIDTH                     => log2roundup(pl_fifo_depth),
--    C_UNDERFLOW_LOW                     => C_UNDERFLOW_LOW,
--    C_USE_DOUT_RST                      => C_USE_DOUT_RST,
--    C_USE_ECC                           => C_USE_ECC,
--    C_USE_EMBEDDED_REG                  => C_USE_EMBEDDED_REG,
--    C_USE_FIFO16_FLAGS                  => C_USE_FIFO16_FLAGS,
--    C_USE_FWFT_DATA_COUNT               => C_USE_FWFT_DATA_COUNT,
--    C_VALID_LOW                         => C_VALID_LOW,
--    C_WR_ACK_LOW                        => C_WR_ACK_LOW,
--    C_WR_DATA_COUNT_WIDTH               => C_WR_DATA_COUNT_WIDTH,
    C_WR_DEPTH                          => pl_fifo_depth,
    C_WR_FREQ                           => C_WR_FREQ,
    C_WR_PNTR_WIDTH                     => log2roundup(pl_fifo_depth),
--    C_WR_RESPONSE_LATENCY               => C_WR_RESPONSE_LATENCY,
--    C_MSGON_VAL                         => C_MSGON_VAL,
--    C_ENABLE_RST_SYNC                   => C_ENABLE_RST_SYNC,
--    C_ERROR_INJECTION_TYPE              => C_ERROR_INJECTION_TYPE,
    C_SYNCHRONIZER_STAGE                => MTBF_STAGES,




              -- AXI Full/Lite
              C_AXI_ID_WIDTH                 =>  4 ,    --           : integer := 0;
              C_AXI_ADDR_WIDTH               =>  32,    --           : integer := 0;
              C_AXI_DATA_WIDTH               =>  64,    --           : integer := 0;
              C_HAS_AXI_AWUSER               =>  0 ,    --           : integer := 0;
              C_HAS_AXI_WUSER                =>  0 ,    --           : integer := 0;
              C_HAS_AXI_BUSER                =>  0 ,    --           : integer := 0;
              C_HAS_AXI_ARUSER               =>  0 ,    --           : integer := 0;
              C_HAS_AXI_RUSER                =>  0 ,    --           : integer := 0;
              C_AXI_ARUSER_WIDTH             =>  1 ,    --           : integer := 0;
              C_AXI_AWUSER_WIDTH             =>  1 ,    --           : integer := 0;
              C_AXI_WUSER_WIDTH              =>  1 ,    --           : integer := 0;
              C_AXI_BUSER_WIDTH              =>  1 ,    --           : integer := 0;
              C_AXI_RUSER_WIDTH              =>  1 ,    --           : integer := 0;



    C_INTERFACE_TYPE                    => 0
--    C_AXI_TYPE                          => C_AXI_TYPE,
--    C_HAS_AXI_WR_CHANNEL                => C_HAS_AXI_WR_CHANNEL,
--    C_HAS_AXI_RD_CHANNEL                => C_HAS_AXI_RD_CHANNEL,
--    C_HAS_SLAVE_CE                      => C_HAS_SLAVE_CE,
--    C_HAS_MASTER_CE                     => C_HAS_MASTER_CE,
--    C_ADD_NGC_CONSTRAINT                => C_ADD_NGC_CONSTRAINT,
--    C_USE_COMMON_OVERFLOW               => C_USE_COMMON_OVERFLOW,
--    C_USE_COMMON_UNDERFLOW              => C_USE_COMMON_UNDERFLOW,
--    C_USE_DEFAULT_SETTINGS              => C_USE_DEFAULT_SETTINGS,
--    C_AXI_ID_WIDTH                      => C_AXI_ID_WIDTH,
--    C_AXI_ADDR_WIDTH                    => C_AXI_ADDR_WIDTH,
--    C_AXI_DATA_WIDTH                    => C_AXI_DATA_WIDTH,
--    C_HAS_AXI_AWUSER                    => C_HAS_AXI_AWUSER,
--    C_HAS_AXI_WUSER                     => C_HAS_AXI_WUSER,
--    C_HAS_AXI_BUSER                     => C_HAS_AXI_BUSER,
--    C_HAS_AXI_ARUSER                    => C_HAS_AXI_ARUSER,
--    C_HAS_AXI_RUSER                     => C_HAS_AXI_RUSER,
--    C_AXI_AWUSER_WIDTH                  => C_AXI_AWUSER_WIDTH,
--    C_AXI_WUSER_WIDTH                   => C_AXI_WUSER_WIDTH,
--    C_AXI_BUSER_WIDTH                   => C_AXI_BUSER_WIDTH,
--    C_AXI_ARUSER_WIDTH                  => C_AXI_ARUSER_WIDTH,
--    C_AXI_RUSER_WIDTH                   => C_AXI_RUSER_WIDTH,
--    C_HAS_AXIS_TDATA                    => C_HAS_AXIS_TDATA,
--    C_HAS_AXIS_TID                      => C_HAS_AXIS_TID,
--    C_HAS_AXIS_TDEST                    => C_HAS_AXIS_TDEST,
--    C_HAS_AXIS_TUSER                    => C_HAS_AXIS_TUSER,
--    C_HAS_AXIS_TREADY                   => C_HAS_AXIS_TREADY,
--    C_HAS_AXIS_TLAST                    => C_HAS_AXIS_TLAST,
--    C_HAS_AXIS_TSTRB                    => C_HAS_AXIS_TSTRB,
--    C_HAS_AXIS_TKEEP                    => C_HAS_AXIS_TKEEP,
--    C_AXIS_TDATA_WIDTH                  => C_AXIS_TDATA_WIDTH,
--    C_AXIS_TID_WIDTH                    => C_AXIS_TID_WIDTH,
--    C_AXIS_TDEST_WIDTH                  => C_AXIS_TDEST_WIDTH,
--    C_AXIS_TUSER_WIDTH                  => C_AXIS_TUSER_WIDTH,
--    C_AXIS_TSTRB_WIDTH                  => C_AXIS_TSTRB_WIDTH,
--    C_AXIS_TKEEP_WIDTH                  => C_AXIS_TKEEP_WIDTH,
--    C_WACH_TYPE                         => C_WACH_TYPE,
--    C_WDCH_TYPE                         => C_WDCH_TYPE,
--    C_WRCH_TYPE                         => C_WRCH_TYPE,
--    C_RACH_TYPE                         => C_RACH_TYPE,
--    C_RDCH_TYPE                         => C_RDCH_TYPE,
--    C_AXIS_TYPE                         => C_AXIS_TYPE,
--    C_IMPLEMENTATION_TYPE_WACH          => C_IMPLEMENTATION_TYPE_WACH,
--    C_IMPLEMENTATION_TYPE_WDCH          => C_IMPLEMENTATION_TYPE_WDCH,
--    C_IMPLEMENTATION_TYPE_WRCH          => C_IMPLEMENTATION_TYPE_WRCH,
--    C_IMPLEMENTATION_TYPE_RACH          => C_IMPLEMENTATION_TYPE_RACH,
--    C_IMPLEMENTATION_TYPE_RDCH          => C_IMPLEMENTATION_TYPE_RDCH,
--    C_IMPLEMENTATION_TYPE_AXIS          => C_IMPLEMENTATION_TYPE_AXIS,
--    C_APPLICATION_TYPE_WACH             => C_APPLICATION_TYPE_WACH,
--    C_APPLICATION_TYPE_WDCH             => C_APPLICATION_TYPE_WDCH,
--    C_APPLICATION_TYPE_WRCH             => C_APPLICATION_TYPE_WRCH,
--    C_APPLICATION_TYPE_RACH             => C_APPLICATION_TYPE_RACH,
--    C_APPLICATION_TYPE_RDCH             => C_APPLICATION_TYPE_RDCH,
--    C_APPLICATION_TYPE_AXIS             => C_APPLICATION_TYPE_AXIS,
--    C_USE_ECC_WACH                      => C_USE_ECC_WACH,
--    C_USE_ECC_WDCH                      => C_USE_ECC_WDCH,
--    C_USE_ECC_WRCH                      => C_USE_ECC_WRCH,
--    C_USE_ECC_RACH                      => C_USE_ECC_RACH,
--    C_USE_ECC_RDCH                      => C_USE_ECC_RDCH,
--    C_USE_ECC_AXIS                      => C_USE_ECC_AXIS,
--    C_ERROR_INJECTION_TYPE_WACH         => C_ERROR_INJECTION_TYPE_WACH,
--    C_ERROR_INJECTION_TYPE_WDCH         => C_ERROR_INJECTION_TYPE_WDCH,
--    C_ERROR_INJECTION_TYPE_WRCH         => C_ERROR_INJECTION_TYPE_WRCH,
--    C_ERROR_INJECTION_TYPE_RACH         => C_ERROR_INJECTION_TYPE_RACH,
--    C_ERROR_INJECTION_TYPE_RDCH         => C_ERROR_INJECTION_TYPE_RDCH,
--    C_ERROR_INJECTION_TYPE_AXIS         => C_ERROR_INJECTION_TYPE_AXIS,
--    C_DIN_WIDTH_WACH                    => C_DIN_WIDTH_WACH,
--    C_DIN_WIDTH_WDCH                    => C_DIN_WIDTH_WDCH,
--    C_DIN_WIDTH_WRCH                    => C_DIN_WIDTH_WRCH,
--    C_DIN_WIDTH_RACH                    => C_DIN_WIDTH_RACH,
--    C_DIN_WIDTH_RDCH                    => C_DIN_WIDTH_RDCH,
--    C_DIN_WIDTH_AXIS                    => C_DIN_WIDTH_AXIS,
--    C_WR_DEPTH_WACH                     => C_WR_DEPTH_WACH,
--    C_WR_DEPTH_WDCH                     => C_WR_DEPTH_WDCH,
--    C_WR_DEPTH_WRCH                     => C_WR_DEPTH_WRCH,
--    C_WR_DEPTH_RACH                     => C_WR_DEPTH_RACH,
--    C_WR_DEPTH_RDCH                     => C_WR_DEPTH_RDCH,
--    C_WR_DEPTH_AXIS                     => C_WR_DEPTH_AXIS,
--    C_WR_PNTR_WIDTH_WACH                => C_WR_PNTR_WIDTH_WACH,
--    C_WR_PNTR_WIDTH_WDCH                => C_WR_PNTR_WIDTH_WDCH,
--    C_WR_PNTR_WIDTH_WRCH                => C_WR_PNTR_WIDTH_WRCH,
--    C_WR_PNTR_WIDTH_RACH                => C_WR_PNTR_WIDTH_RACH,
--    C_WR_PNTR_WIDTH_RDCH                => C_WR_PNTR_WIDTH_RDCH,
--    C_WR_PNTR_WIDTH_AXIS                => C_WR_PNTR_WIDTH_AXIS,
--    C_HAS_DATA_COUNTS_WACH              => C_HAS_DATA_COUNTS_WACH,
--    C_HAS_DATA_COUNTS_WDCH              => C_HAS_DATA_COUNTS_WDCH,
--    C_HAS_DATA_COUNTS_WRCH              => C_HAS_DATA_COUNTS_WRCH,
--    C_HAS_DATA_COUNTS_RACH              => C_HAS_DATA_COUNTS_RACH,
--    C_HAS_DATA_COUNTS_RDCH              => C_HAS_DATA_COUNTS_RDCH,
--    C_HAS_DATA_COUNTS_AXIS              => C_HAS_DATA_COUNTS_AXIS,
--    C_PROG_FULL_TYPE_WACH               => C_PROG_FULL_TYPE_WACH,
--    C_PROG_FULL_TYPE_WDCH               => C_PROG_FULL_TYPE_WDCH,
--    C_PROG_FULL_TYPE_WRCH               => C_PROG_FULL_TYPE_WRCH,
--    C_PROG_FULL_TYPE_RACH               => C_PROG_FULL_TYPE_RACH,
--    C_PROG_FULL_TYPE_RDCH               => C_PROG_FULL_TYPE_RDCH,
--    C_PROG_FULL_TYPE_AXIS               => C_PROG_FULL_TYPE_AXIS,
--    C_PROG_FULL_THRESH_ASSERT_VAL_WACH  => C_PROG_FULL_THRESH_ASSERT_VAL_WACH,
--    C_PROG_FULL_THRESH_ASSERT_VAL_WDCH  => C_PROG_FULL_THRESH_ASSERT_VAL_WDCH,
--    C_PROG_FULL_THRESH_ASSERT_VAL_WRCH  => C_PROG_FULL_THRESH_ASSERT_VAL_WRCH,
--    C_PROG_FULL_THRESH_ASSERT_VAL_RACH  => C_PROG_FULL_THRESH_ASSERT_VAL_RACH,
--    C_PROG_FULL_THRESH_ASSERT_VAL_RDCH  => C_PROG_FULL_THRESH_ASSERT_VAL_RDCH,
--    C_PROG_FULL_THRESH_ASSERT_VAL_AXIS  => C_PROG_FULL_THRESH_ASSERT_VAL_AXIS,
--    C_PROG_EMPTY_TYPE_WACH              => C_PROG_EMPTY_TYPE_WACH,
--    C_PROG_EMPTY_TYPE_WDCH              => C_PROG_EMPTY_TYPE_WDCH,
--    C_PROG_EMPTY_TYPE_WRCH              => C_PROG_EMPTY_TYPE_WRCH,
--    C_PROG_EMPTY_TYPE_RACH              => C_PROG_EMPTY_TYPE_RACH,
--    C_PROG_EMPTY_TYPE_RDCH              => C_PROG_EMPTY_TYPE_RDCH,
--    C_PROG_EMPTY_TYPE_AXIS              => C_PROG_EMPTY_TYPE_AXIS,
--    C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH => C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH,
--    C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH => C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH,
--    C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH => C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH,
--    C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH => C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH,
--    C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH => C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH,
--    C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS => C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS,
--    C_REG_SLICE_MODE_WACH               => C_REG_SLICE_MODE_WACH,
--    C_REG_SLICE_MODE_WDCH               => C_REG_SLICE_MODE_WDCH,
--    C_REG_SLICE_MODE_WRCH               => C_REG_SLICE_MODE_WRCH,
--    C_REG_SLICE_MODE_RACH               => C_REG_SLICE_MODE_RACH,
--    C_REG_SLICE_MODE_RDCH               => C_REG_SLICE_MODE_RDCH,
--    C_REG_SLICE_MODE_AXIS               => C_REG_SLICE_MODE_AXIS,
--    C_HAS_ALMOST_FULL_WACH              => 0,
--    C_HAS_ALMOST_FULL_WDCH              => 0,
--    C_HAS_ALMOST_FULL_WRCH              => 0,
--    C_HAS_ALMOST_FULL_RACH              => 0,
--    C_HAS_ALMOST_FULL_RDCH              => 0,
--    C_HAS_ALMOST_FULL_AXIS              => 0,
--    C_HAS_ALMOST_EMPTY_WACH             => 0,
--    C_HAS_ALMOST_EMPTY_WDCH             => 0,
--    C_HAS_ALMOST_EMPTY_WRCH             => 0,
--    C_HAS_ALMOST_EMPTY_RACH             => 0,
--    C_HAS_ALMOST_EMPTY_RDCH             => 0,
--    C_HAS_ALMOST_EMPTY_AXIS             => 0
  )
  PORT MAP (
    backup                              => GND,
    backup_marker                       => GND,
    clk                                 => GND,
    rst                                 => rst,
    srst                                => GND,
    wr_clk                              => wr_clk,
    wr_rst                              => GND,
    rd_clk                              => rd_clk,
    rd_rst                              => GND,
    din                                 => din,
    wr_en                               => wr_en,
    rd_en                               => rd_en,
    prog_empty_thresh                   => (others => '0'),
    prog_empty_thresh_assert            => (others => '0'),
    prog_empty_thresh_negate            => (others => '0'),
    prog_full_thresh                    => (others => '0'),
    prog_full_thresh_assert             => (others => '0'),
    prog_full_thresh_negate             => (others => '0'),

    --prog_empty_thresh                   => ZERO_pntr,
    --prog_empty_thresh_assert            => ZERO_pntr,
    --prog_empty_thresh_negate            => ZERO_pntr,
    --prog_full_thresh                    => ZERO_pntr,
    --prog_full_thresh_assert             => ZERO_pntr,
    --prog_full_thresh_negate             => ZERO_pntr,
    int_clk                             => GND,
    injectdbiterr                       => GND,
    injectsbiterr                       => GND,
    dout                                => dout,
    full                                => full,
    empty                               => empty,
    almost_full                         => OPEN,
    wr_ack                              => OPEN,
    overflow                            => OPEN,
    almost_empty                        => OPEN,
    valid                               => OPEN,
    underflow                           => OPEN,
    data_count                          => OPEN,
    rd_data_count                       => OPEN,
    wr_data_count                       => OPEN,
    prog_full                           => OPEN,
    prog_empty                          => OPEN,
    sbiterr                             => OPEN,
    dbiterr                             => OPEN,
    m_aclk                              => GND,
    s_aclk                              => GND,
    s_aresetn                           => GND,
    m_aclk_en                           => GND,
    s_aclk_en                           => GND,
    m_axi_awid                          => OPEN,
    m_axi_awaddr                        => OPEN,
    m_axi_awlen                         => OPEN,
    m_axi_awsize                        => OPEN,
    m_axi_awburst                       => OPEN,
    m_axi_awlock                        => OPEN,
    m_axi_awcache                       => OPEN,
    m_axi_awprot                        => OPEN,
    m_axi_awqos                         => OPEN,
    m_axi_awregion                      => OPEN,
    m_axi_awuser                        => OPEN,
    m_axi_awvalid                       => OPEN,
    m_axi_awready                       => GND,
    m_axi_wid                           => OPEN,
    m_axi_wdata                         => OPEN,
    m_axi_wstrb                         => OPEN,
    m_axi_wlast                         => OPEN,
    m_axi_wuser                         => OPEN,
    m_axi_wvalid                        => OPEN,
    m_axi_wready                        => GND,
    m_axi_bid                           => (others => '0'),--ZERO4,
    m_axi_bresp                         => (others => '0'),--ZERO2,
    m_axi_buser                         => (others => '0'),--ZERO1,
    m_axi_bvalid                        => GND,
    m_axi_bready                        => OPEN,
    s_axi_awid                          => (others => '0'),--ZERO4,
    s_axi_awaddr                        => (others => '0'),--ZERO32,
    s_axi_awlen                         => (others => '0'),--ZERO8,
    s_axi_awsize                        => (others => '0'),--ZERO3,
    s_axi_awburst                       => (others => '0'),--ZERO2,
    s_axi_awlock                        => (others => '0'),--ZERO2,
    s_axi_awcache                       => (others => '0'),--ZERO4,
    s_axi_awprot                        => (others => '0'),--ZERO3,
    s_axi_awqos                         => (others => '0'),--ZERO4,
    s_axi_awregion                      => (others => '0'),--ZERO4,
    s_axi_awuser                        => (others => '0'),--ZERO1,
    s_axi_awvalid                       => GND,
    s_axi_awready                       => OPEN,
    s_axi_wid                           => (others => '0'),--ZERO4,
    s_axi_wdata                         => (others => '0'),--ZERO64,
    s_axi_wstrb                         => (others => '0'),--ZERO8,
    s_axi_wlast                         => GND,
    s_axi_wuser                         => (others => '0'),--ZERO1,
    s_axi_wvalid                        => GND,
    s_axi_wready                        => OPEN,
    s_axi_bid                           => OPEN,
    s_axi_bresp                         => OPEN,
    s_axi_buser                         => OPEN,
    s_axi_bvalid                        => OPEN,
    s_axi_bready                        => GND,
    m_axi_arid                          => OPEN,
    m_axi_araddr                        => OPEN,
    m_axi_arlen                         => OPEN,
    m_axi_arsize                        => OPEN,
    m_axi_arburst                       => OPEN,
    m_axi_arlock                        => OPEN,
    m_axi_arcache                       => OPEN,
    m_axi_arprot                        => OPEN,
    m_axi_arqos                         => OPEN,
    m_axi_arregion                      => OPEN,
    m_axi_aruser                        => OPEN,
    m_axi_arvalid                       => OPEN,
    m_axi_arready                       => OPEN,
    m_axi_rid                           => (others => '0'),--ZERO4,
    m_axi_rdata                         => (others => '0'),--ZERO64,
    m_axi_rresp                         => (others => '0'),--ZERO2,
    m_axi_rlast                         => OPEN,
    m_axi_ruser                         => (others => '0'),--ZERO1,
    m_axi_rvalid                        => GND,
    m_axi_rready                        => OPEN,
    s_axi_arid                          => (others => '0'),--ZERO4,
    s_axi_araddr                        => (others => '0'),--ZERO32,
    s_axi_arlen                         => (others => '0'),--ZERO8,
    s_axi_arsize                        => (others => '0'),--ZERO3,
    s_axi_arburst                       => (others => '0'),--ZERO2,
    s_axi_arlock                        => (others => '0'),--ZERO2,
    s_axi_arcache                       => (others => '0'),--ZERO4,
    s_axi_arprot                        => (others => '0'),--ZERO3,
    s_axi_arqos                         => (others => '0'),--ZERO4,
    s_axi_arregion                      => (others => '0'),--ZERO4,
    s_axi_aruser                        => (others => '0'),--ZERO1,
    s_axi_arvalid                       => GND,
    s_axi_arready                       => OPEN,
    s_axi_rid                           => OPEN,
    s_axi_rdata                         => OPEN,
    s_axi_rresp                         => OPEN,
    s_axi_rlast                         => OPEN,
    s_axi_ruser                         => OPEN,
    s_axi_rvalid                        => OPEN,
    s_axi_rready                        => GND,
    m_axis_tvalid                       => OPEN,
    m_axis_tready                       => GND,
    m_axis_tdata                        => OPEN,
    m_axis_tstrb                        => OPEN,
    m_axis_tkeep                        => OPEN,
    m_axis_tlast                        => OPEN,
    m_axis_tid                          => OPEN,
    m_axis_tdest                        => OPEN,
    m_axis_tuser                        => OPEN,
    s_axis_tvalid                       => GND,
    s_axis_tready                       => OPEN,
    s_axis_tdata                        => (others => '0'),--ZERO64,
    s_axis_tstrb                        => (others => '0'),--ZERO4,
    s_axis_tkeep                        => (others => '0'),--ZERO4,
    s_axis_tlast                        => GND,
    s_axis_tid                          => (others => '0'),--ZERO8,
    s_axis_tdest                        => (others => '0'),--ZERO4,
    s_axis_tuser                        => (others => '0'),--ZERO4,
    axi_aw_injectsbiterr                => OPEN,
    axi_aw_injectdbiterr                => OPEN,
    axi_aw_prog_full_thresh             => OPEN,
    axi_aw_prog_empty_thresh            => OPEN,
    axi_aw_data_count                   => OPEN,
    axi_aw_wr_data_count                => OPEN,
    axi_aw_rd_data_count                => OPEN,
    axi_aw_sbiterr                      => OPEN,
    axi_aw_dbiterr                      => OPEN,
    axi_aw_overflow                     => OPEN,
    axi_aw_underflow                    => OPEN,
    axi_aw_prog_full                    => OPEN,
    axi_aw_prog_empty                   => OPEN,
    axi_w_injectsbiterr                 => OPEN,
    axi_w_injectdbiterr                 => OPEN,
    axi_w_prog_full_thresh              => OPEN,
    axi_w_prog_empty_thresh             => OPEN,
    axi_w_data_count                    => OPEN,
    axi_w_wr_data_count                 => OPEN,
    axi_w_rd_data_count                 => OPEN,
    axi_w_sbiterr                       => OPEN,
    axi_w_dbiterr                       => OPEN,
    axi_w_overflow                      => OPEN,
    axi_w_underflow                     => OPEN,
    axi_w_prog_full                     => OPEN,
    axi_w_prog_empty                    => OPEN,
    axi_b_injectsbiterr                 => OPEN,
    axi_b_injectdbiterr                 => OPEN,
    axi_b_prog_full_thresh              => OPEN,
    axi_b_prog_empty_thresh             => OPEN,
    axi_b_data_count                    => OPEN,
    axi_b_wr_data_count                 => OPEN,
    axi_b_rd_data_count                 => OPEN,
    axi_b_sbiterr                       => OPEN,
    axi_b_dbiterr                       => OPEN,
    axi_b_overflow                      => OPEN,
    axi_b_underflow                     => OPEN,
    axi_b_prog_full                     => OPEN,
    axi_b_prog_empty                    => OPEN,
    axi_ar_injectsbiterr                => OPEN,
    axi_ar_injectdbiterr                => OPEN,
    axi_ar_prog_full_thresh             => OPEN,
    axi_ar_prog_empty_thresh            => OPEN,
    axi_ar_data_count                   => OPEN,
    axi_ar_wr_data_count                => OPEN,
    axi_ar_rd_data_count                => OPEN,
    axi_ar_sbiterr                      => OPEN,
    axi_ar_dbiterr                      => OPEN,
    axi_ar_overflow                     => OPEN,
    axi_ar_underflow                    => OPEN,
    axi_ar_prog_full                    => OPEN,
    axi_ar_prog_empty                   => OPEN,
    axi_r_injectsbiterr                 => OPEN,
    axi_r_injectdbiterr                 => OPEN,
    axi_r_prog_full_thresh              => OPEN,
    axi_r_prog_empty_thresh             => OPEN,
    axi_r_data_count                    => OPEN,
    axi_r_wr_data_count                 => OPEN,
    axi_r_rd_data_count                 => OPEN,
    axi_r_sbiterr                       => OPEN,
    axi_r_dbiterr                       => OPEN,
    axi_r_overflow                      => OPEN,
    axi_r_underflow                     => OPEN,
    axi_r_prog_full                     => OPEN,
    axi_r_prog_empty                    => OPEN,
    axis_injectsbiterr                  => OPEN,
    axis_injectdbiterr                  => OPEN,
    axis_prog_full_thresh               => OPEN,
    axis_prog_empty_thresh              => OPEN,
    axis_data_count                     => OPEN,
    axis_wr_data_count                  => OPEN,
    axis_rd_data_count                  => OPEN,
    axis_sbiterr                        => OPEN,
    axis_dbiterr                        => OPEN,
    axis_overflow                       => OPEN,
    axis_underflow                      => OPEN,
    axis_prog_full                      => OPEN,
    axis_prog_empty                     => OPEN
  );


END ARCHITECTURE xilinx;
