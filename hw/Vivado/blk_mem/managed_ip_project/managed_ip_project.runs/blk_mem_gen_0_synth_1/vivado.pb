
[
 Attempting to get a license: %s
78*common2"
Implementation2default:defaultZ17-78
Q
Feature available: %s
81*common2"
Implementation2default:defaultZ17-81
…
+Loading parts and site information from %s
36*device2A
-/opt/Xilinx/Vivado/2013.3/data/parts/arch.xml2default:defaultZ21-36
’
!Parsing RTL primitives file [%s]
14*netlist2W
C/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-14
›
*Finished parsing RTL primitives file [%s]
11*netlist2W
C/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-11
5
Refreshing IP repositories
234*coregenZ19-234
;
No user repositories specified
1154*coregenZ19-1704
r
Loaded Vivado repository '%s'.
1332*coregen25
!/opt/Xilinx/Vivado/2013.3/data/ip2default:defaultZ19-2313
ö
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
	read_ip: 2default:default2
00:00:052default:default2
00:00:052default:default2
471.9382default:default2
12.0002default:defaultZ17-268
†
Command: %s
53*	vivadotcl2^
Jsynth_design -top blk_mem_gen_0 -part xc7z020clg484-1 -mode out_of_context2default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
³
%IP '%s' is locked. Locked reason: %s
1260*coregen2!
blk_mem_gen_02default:default2M
9Property 'IS_LOCKED' is set to true by the system or user2default:defaultZ19-2162
•
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347
…
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349
›
%s*synth2‹
wStarting RTL Elaboration : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 496.938 ; gain = 99.551
2default:default
â
synthesizing module '%s'638*oasys2!
blk_mem_gen_02default:default2p
Z/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/synth/blk_mem_gen_0.vhd2default:default2
712default:default8@Z8-638
V
%s*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
\
%s*synth2M
9	Parameter C_INTERFACE_TYPE bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_AXI_TYPE bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_AXI_SLAVE_TYPE bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_HAS_AXI_ID bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_ALGORITHM bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_PRIM_TYPE bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
f
%s*synth2W
C	Parameter C_INIT_FILE bound to: blk_mem_gen_0.mem - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_INITA_VAL bound to: 0 - type: string 
2default:default
U
%s*synth2F
2	Parameter C_HAS_ENA bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_HAS_REGCEA bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_A bound to: 30 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_A bound to: 30 - type: integer 
2default:default
_
%s*synth2P
<	Parameter C_WRITE_DEPTH_A bound to: 15360 - type: integer 
2default:default
^
%s*synth2O
;	Parameter C_READ_DEPTH_A bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_ADDRA_WIDTH bound to: 14 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_INITB_VAL bound to: 0 - type: string 
2default:default
U
%s*synth2F
2	Parameter C_HAS_ENB bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_HAS_REGCEB bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
]
%s*synth2N
:	Parameter C_WRITE_WIDTH_B bound to: 120 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_READ_WIDTH_B bound to: 120 - type: integer 
2default:default
^
%s*synth2O
;	Parameter C_WRITE_DEPTH_B bound to: 3840 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_READ_DEPTH_B bound to: 3840 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_ADDRB_WIDTH bound to: 12 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_MUX_PIPELINE_STAGES bound to: 0 - type: integer 
2default:default
f
%s*synth2W
C	Parameter C_HAS_SOFTECC_INPUT_REGS_A bound to: 0 - type: integer 
2default:default
g
%s*synth2X
D	Parameter C_HAS_SOFTECC_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USE_SOFTECC bound to: 0 - type: integer 
2default:default
U
%s*synth2F
2	Parameter C_USE_ECC bound to: 0 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_HAS_INJECTERR bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 1 - type: integer 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_DISABLE_WARN_BHV_COLL bound to: 1 - type: integer 
2default:default
d
%s*synth2U
A	Parameter C_DISABLE_WARN_BHV_RANGE bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
í
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
blk_mem_gen_v8_02default:default2|
h/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_v8_0.vhd2default:default2
1232default:default2
U02default:default2$
blk_mem_gen_v8_02default:default2p
Z/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/synth/blk_mem_gen_0.vhd2default:default2
2192default:default8@Z8-3491
ô
synthesizing module '%s'638*oasys2$
blk_mem_gen_v8_02default:default2~
h/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_v8_0.vhd2default:default2
2502default:default8@Z8-638
V
%s*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
\
%s*synth2M
9	Parameter C_INTERFACE_TYPE bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_AXI_TYPE bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_AXI_SLAVE_TYPE bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
X
%s*synth2I
5	Parameter C_HAS_AXI_ID bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_ALGORITHM bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_PRIM_TYPE bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
f
%s*synth2W
C	Parameter C_INIT_FILE bound to: blk_mem_gen_0.mem - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_INITA_VAL bound to: 0 - type: string 
2default:default
U
%s*synth2F
2	Parameter C_HAS_ENA bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_HAS_REGCEA bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_A bound to: 30 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_A bound to: 30 - type: integer 
2default:default
_
%s*synth2P
<	Parameter C_WRITE_DEPTH_A bound to: 15360 - type: integer 
2default:default
^
%s*synth2O
;	Parameter C_READ_DEPTH_A bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_ADDRA_WIDTH bound to: 14 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_INITB_VAL bound to: 0 - type: string 
2default:default
U
%s*synth2F
2	Parameter C_HAS_ENB bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_HAS_REGCEB bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
]
%s*synth2N
:	Parameter C_WRITE_WIDTH_B bound to: 120 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_READ_WIDTH_B bound to: 120 - type: integer 
2default:default
^
%s*synth2O
;	Parameter C_WRITE_DEPTH_B bound to: 3840 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_READ_DEPTH_B bound to: 3840 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_ADDRB_WIDTH bound to: 12 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_MUX_PIPELINE_STAGES bound to: 0 - type: integer 
2default:default
f
%s*synth2W
C	Parameter C_HAS_SOFTECC_INPUT_REGS_A bound to: 0 - type: integer 
2default:default
g
%s*synth2X
D	Parameter C_HAS_SOFTECC_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USE_SOFTECC bound to: 0 - type: integer 
2default:default
U
%s*synth2F
2	Parameter C_USE_ECC bound to: 0 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_HAS_INJECTERR bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 1 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_DISABLE_WARN_BHV_COLL bound to: 1 - type: integer 
2default:default
d
%s*synth2U
A	Parameter C_DISABLE_WARN_BHV_RANGE bound to: 1 - type: integer 
2default:default

synthesizing module '%s'638*oasys2*
blk_mem_gen_v8_0_synth2default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_v8_0_synth.vhd2default:default2
3112default:default8@Z8-638
V
%s*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
\
%s*synth2M
9	Parameter C_INTERFACE_TYPE bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_AXI_TYPE bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_AXI_SLAVE_TYPE bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_HAS_AXI_ID bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_AXI_ID_WIDTH bound to: 4 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_ALGORITHM bound to: 1 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
W
%s*synth2H
4	Parameter C_PRIM_TYPE bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
f
%s*synth2W
C	Parameter C_INIT_FILE bound to: blk_mem_gen_0.mem - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_INITA_VAL bound to: 0 - type: string 
2default:default
U
%s*synth2F
2	Parameter C_HAS_ENA bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_HAS_REGCEA bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_A bound to: 30 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_A bound to: 30 - type: integer 
2default:default
_
%s*synth2P
<	Parameter C_WRITE_DEPTH_A bound to: 15360 - type: integer 
2default:default
^
%s*synth2O
;	Parameter C_READ_DEPTH_A bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_ADDRA_WIDTH bound to: 14 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_INITB_VAL bound to: 0 - type: string 
2default:default
U
%s*synth2F
2	Parameter C_HAS_ENB bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_HAS_REGCEB bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
]
%s*synth2N
:	Parameter C_WRITE_WIDTH_B bound to: 120 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_READ_WIDTH_B bound to: 120 - type: integer 
2default:default
^
%s*synth2O
;	Parameter C_WRITE_DEPTH_B bound to: 3840 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_READ_DEPTH_B bound to: 3840 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_ADDRB_WIDTH bound to: 12 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_MUX_PIPELINE_STAGES bound to: 0 - type: integer 
2default:default
f
%s*synth2W
C	Parameter C_HAS_SOFTECC_INPUT_REGS_A bound to: 0 - type: integer 
2default:default
g
%s*synth2X
D	Parameter C_HAS_SOFTECC_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
U
%s*synth2F
2	Parameter C_USE_ECC bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USE_SOFTECC bound to: 0 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_HAS_INJECTERR bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 1 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_DISABLE_WARN_BHV_COLL bound to: 1 - type: integer 
2default:default
d
%s*synth2U
A	Parameter C_DISABLE_WARN_BHV_RANGE bound to: 1 - type: integer 
2default:default
ò
synthesizing module '%s'638*oasys2#
blk_mem_gen_top2default:default2}
g/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_top.vhd2default:default2
4312default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_ALGORITHM bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_PRIM_TYPE bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_INITA_VAL bound to: 0 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter C_HAS_ENA bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_HAS_REGCEA bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_A bound to: 30 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_A bound to: 30 - type: integer 
2default:default
_
%s*synth2P
<	Parameter C_WRITE_DEPTH_A bound to: 15360 - type: integer 
2default:default
^
%s*synth2O
;	Parameter C_READ_DEPTH_A bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_ADDRA_WIDTH bound to: 14 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_INITB_VAL bound to: 0 - type: string 
2default:default
U
%s*synth2F
2	Parameter C_HAS_ENB bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_HAS_REGCEB bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
]
%s*synth2N
:	Parameter C_WRITE_WIDTH_B bound to: 120 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_READ_WIDTH_B bound to: 120 - type: integer 
2default:default
^
%s*synth2O
;	Parameter C_WRITE_DEPTH_B bound to: 3840 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_READ_DEPTH_B bound to: 3840 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_ADDRB_WIDTH bound to: 12 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_MUX_PIPELINE_STAGES bound to: 0 - type: integer 
2default:default
f
%s*synth2W
C	Parameter C_HAS_SOFTECC_INPUT_REGS_A bound to: 0 - type: integer 
2default:default
g
%s*synth2X
D	Parameter C_HAS_SOFTECC_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USE_SOFTECC bound to: 0 - type: integer 
2default:default
U
%s*synth2F
2	Parameter C_USE_ECC bound to: 0 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_HAS_INJECTERR bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 1 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_DISABLE_WARN_BHV_COLL bound to: 1 - type: integer 
2default:default
d
%s*synth2U
A	Parameter C_DISABLE_WARN_BHV_RANGE bound to: 1 - type: integer 
2default:default
û
synthesizing module '%s'638*oasys2'
blk_mem_input_block2default:default2
k/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_input_block.vhd2default:default2
3922default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_RSTA_WIDTH bound to: 1 - type: integer 
2default:default
U
%s*synth2F
2	Parameter C_HAS_ENA bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_HAS_REGCEA bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_REGCEA_WIDTH bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_WEA_I_WIDTH bound to: 4 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_A bound to: 30 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_WIDTH_A_CORE bound to: 30 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_ADDRA_WIDTH bound to: 14 - type: integer 
2default:default
_
%s*synth2P
<	Parameter C_ADDRA_WIDTH_CORE bound to: 14 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_RSTB_WIDTH bound to: 1 - type: integer 
2default:default
U
%s*synth2F
2	Parameter C_HAS_ENB bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_HAS_REGCEB bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_REGCEB_WIDTH bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_WEB_I_WIDTH bound to: 14 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_WRITE_WIDTH_B bound to: 120 - type: integer 
2default:default
b
%s*synth2S
?	Parameter C_WRITE_WIDTH_B_CORE bound to: 120 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_ADDRB_WIDTH bound to: 12 - type: integer 
2default:default
_
%s*synth2P
<	Parameter C_ADDRB_WIDTH_CORE bound to: 12 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_MUX_PIPELINE_STAGES_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_MUX_PIPELINE_STAGES_B bound to: 0 - type: integer 
2default:default
f
%s*synth2W
C	Parameter C_HAS_SOFTECC_INPUT_REGS_A bound to: 0 - type: integer 
2default:default
U
%s*synth2F
2	Parameter C_USE_ECC bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USE_SOFTECC bound to: 0 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_HAS_INJECTERR bound to: 0 - type: integer 
2default:default
¶
%done synthesizing module '%s' (%s#%s)256*oasys2'
blk_mem_input_block2default:default2
12default:default2
12default:default2
k/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_input_block.vhd2default:default2
3922default:default8@Z8-256
…
synthesizing module '%s'638*oasys2,
blk_mem_gen_generic_cstr2default:default2†
p/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_generic_cstr.vhd2default:default2
4422default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_TOTAL_PRIMS bound to: 14 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_DEPTH_RESOLUTION bound to: 4096 - type: integer 
2default:default
¤@
%s*synth2”@
ÿ?	Parameter C_START_WIDTH bound to: 320000'b0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000110000000000000000000000000000001100000000000000000000000000000011000000000000000000000000000000110000000000000000000000000000110000000000000000000000000000001100000000000000000000000000000011000000000000000000000000000000110000000000000000000000000000010101000000000000000000000000000101010000000000000000000000000001010100000000000000000000000000010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002default:default
;
%s*synth2,
... (message truncated)
2default:default
¤@
%s*synth2”@
ÿ?	Parameter C_START_DEPTH bound to: 320000'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000010000000000000000000000000000000110000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000100000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000001000000000000000000000000000000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002default:default
;
%s*synth2,
... (message truncated)
2default:default
¤@
%s*synth2”@
ÿ?	Parameter C_PRIM_WIDTH bound to: 320000'b00000000000000000000000000000001000000000000000000000000000000100000000000000000000000000000100100000000000000000000000000001001000000000000000000000000000010010000000000000000000000000000100100000000000000000000000000001001000000000000000000000000000010010000000000000000000000000000100100000000000000000000000000001001000000000000000000000000000010010000000000000000000000000000100100000000000000000000000000001001000000000000000000000000000010010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002default:default
;
%s*synth2,
... (message truncated)
2default:default
¤@
%s*synth2”@
ÿ?	Parameter C_PRIM_DEPTH bound to: 320000'b00000000000000000100000000000000000000000000000001000000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002default:default
;
%s*synth2,
... (message truncated)
2default:default
¤@
%s*synth2”@
ÿ?	Parameter C_USED_WIDTH bound to: 320000'b00000000000000000000000000000001000000000000000000000000000000100000000000000000000000000000100100000000000000000000000000001001000000000000000000000000000010010000000000000000000000000000100100000000000000000000000000001001000000000000000000000000000010010000000000000000000000000000100100000000000000000000000000001001000000000000000000000000000010010000000000000000000000000000100100000000000000000000000000001001000000000000000000000000000010010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002default:default
;
%s*synth2,
... (message truncated)
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_RSTA_WIDTH bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_INITA_VAL bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_HAS_REGCEA bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_REGCEA_WIDTH bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_WE_WIDTH_A bound to: 4 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_A bound to: 30 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_A bound to: 30 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 14 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_RSTB_WIDTH bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_INITB_VAL bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_HAS_REGCEB bound to: 0 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_REGCEB_WIDTH bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_WE_WIDTH_B bound to: 14 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
]
%s*synth2N
:	Parameter C_WRITE_WIDTH_B bound to: 120 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_READ_WIDTH_B bound to: 120 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 12 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_MUX_PIPELINE_STAGES_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_MUX_PIPELINE_STAGES_B bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USE_SOFTECC bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
í
synthesizing module '%s'638*oasys2
bindec2default:default2€
j/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_bindec.vhd2default:default2
1672default:default8@Z8-638
\
%s*synth2M
9	Parameter C_NUM_PRIM_DEPTH bound to: 4 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_SEL_WIDTH bound to: 2 - type: integer 
2default:default
¨
%done synthesizing module '%s' (%s#%s)256*oasys2
bindec2default:default2
22default:default2
12default:default2€
j/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_bindec.vhd2default:default2
1672default:default8@Z8-256

synthesizing module '%s'638*oasys2*
blk_mem_gen_prim_width2default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_WIDTH bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_DEPTH bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_PRIM_DEPTH bound to: 16384 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
J
%s*synth2;
'	Parameter C_INITA_VAL bound to: 1'b0 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 14 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
M
%s*synth2>
*	Parameter C_INITB_VAL bound to: 4'b0000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 12 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
‹
synthesizing module '%s'638*oasys2/
blk_mem_gen_prim_wrapper_v62default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_WIDTH bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_DEPTH bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_PRIM_DEPTH bound to: 16384 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 1 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
K
%s*synth2<
(	Parameter C_SINITA_VAL bound to: 1'b0 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 14 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
N
%s*synth2?
+	Parameter C_SINITB_VAL bound to: 4'b0000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_B bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_B bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 12 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
Ý
null assignment ignored3449*oasys2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
102092default:default8@Z8-3919
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_A bound to: 18'b000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_B bound to: 18'b000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 1 - type: integer 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_B bound to: 4 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
X
%s*synth2I
5	Parameter SRVAL_A bound to: 18'b000000000000000000 
2default:default
X
%s*synth2I
5	Parameter SRVAL_B bound to: 18'b000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 1 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_B bound to: 4 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB18E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
102492default:default8@Z8-113
Æ
%done synthesizing module '%s' (%s#%s)256*oasys2/
blk_mem_gen_prim_wrapper_v62default:default2
32default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
¼
%done synthesizing module '%s' (%s#%s)256*oasys2*
blk_mem_gen_prim_width2default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
‘
synthesizing module '%s'638*oasys2:
&blk_mem_gen_prim_width__parameterized02default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_WIDTH bound to: 1 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_DEPTH bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 2 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_PRIM_DEPTH bound to: 16384 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 2 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
K
%s*synth2<
(	Parameter C_INITA_VAL bound to: 2'b00 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 14 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
Q
%s*synth2B
.	Parameter C_INITB_VAL bound to: 8'b00000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 12 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
›
synthesizing module '%s'638*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized02default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_WIDTH bound to: 1 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_DEPTH bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 2 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_PRIM_DEPTH bound to: 16384 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 2 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
L
%s*synth2=
)	Parameter C_SINITA_VAL bound to: 2'b00 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 2 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 2 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 14 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter C_SINITB_VAL bound to: 9'b000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_B bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_B bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 12 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
T
%s*synth2E
1	Parameter EN_ECC_READ bound to: 0 - type: bool 
2default:default
U
%s*synth2F
2	Parameter EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 2 - type: integer 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_B bound to: 9 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
j
%s*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:default
j
%s*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 2 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_B bound to: 9 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB36E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104822default:default8@Z8-113
Ö
%done synthesizing module '%s' (%s#%s)256*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized02default:default2
42default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
Ì
%done synthesizing module '%s' (%s#%s)256*oasys2:
&blk_mem_gen_prim_width__parameterized02default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
‘
synthesizing module '%s'638*oasys2:
&blk_mem_gen_prim_width__parameterized12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_WIDTH bound to: 3 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_DEPTH bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
R
%s*synth2C
/	Parameter C_INITA_VAL bound to: 9'b000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
n
%s*synth2_
K	Parameter C_INITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
›
synthesizing module '%s'638*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_WIDTH bound to: 3 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_DEPTH bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter C_SINITA_VAL bound to: 9'b000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
o
%s*synth2`
L	Parameter C_SINITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
Ý
null assignment ignored3449*oasys2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104372default:default8@Z8-3919
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
T
%s*synth2E
1	Parameter EN_ECC_READ bound to: 0 - type: bool 
2default:default
U
%s*synth2F
2	Parameter EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
j
%s*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:default
j
%s*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB36E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104822default:default8@Z8-113
Ö
%done synthesizing module '%s' (%s#%s)256*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized12default:default2
42default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
Ì
%done synthesizing module '%s' (%s#%s)256*oasys2:
&blk_mem_gen_prim_width__parameterized12default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
‘
synthesizing module '%s'638*oasys2:
&blk_mem_gen_prim_width__parameterized22default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_WIDTH bound to: 3 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_START_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
R
%s*synth2C
/	Parameter C_INITA_VAL bound to: 9'b000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
n
%s*synth2_
K	Parameter C_INITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
›
synthesizing module '%s'638*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized22default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_WIDTH bound to: 3 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_START_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter C_SINITA_VAL bound to: 9'b000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
o
%s*synth2`
L	Parameter C_SINITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
Ý
null assignment ignored3449*oasys2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104372default:default8@Z8-3919
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
T
%s*synth2E
1	Parameter EN_ECC_READ bound to: 0 - type: bool 
2default:default
U
%s*synth2F
2	Parameter EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
j
%s*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:default
j
%s*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB36E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104822default:default8@Z8-113
Ö
%done synthesizing module '%s' (%s#%s)256*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized22default:default2
42default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
Ì
%done synthesizing module '%s' (%s#%s)256*oasys2:
&blk_mem_gen_prim_width__parameterized22default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
‘
synthesizing module '%s'638*oasys2:
&blk_mem_gen_prim_width__parameterized32default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_WIDTH bound to: 3 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_START_DEPTH bound to: 8192 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
R
%s*synth2C
/	Parameter C_INITA_VAL bound to: 9'b000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
n
%s*synth2_
K	Parameter C_INITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
›
synthesizing module '%s'638*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized32default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_WIDTH bound to: 3 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_START_DEPTH bound to: 8192 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter C_SINITA_VAL bound to: 9'b000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
o
%s*synth2`
L	Parameter C_SINITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
Ý
null assignment ignored3449*oasys2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104372default:default8@Z8-3919
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
T
%s*synth2E
1	Parameter EN_ECC_READ bound to: 0 - type: bool 
2default:default
U
%s*synth2F
2	Parameter EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
j
%s*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:default
j
%s*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB36E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104822default:default8@Z8-113
Ö
%done synthesizing module '%s' (%s#%s)256*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized32default:default2
42default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
Ì
%done synthesizing module '%s' (%s#%s)256*oasys2:
&blk_mem_gen_prim_width__parameterized32default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
‘
synthesizing module '%s'638*oasys2:
&blk_mem_gen_prim_width__parameterized42default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_WIDTH bound to: 3 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_START_DEPTH bound to: 12288 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
R
%s*synth2C
/	Parameter C_INITA_VAL bound to: 9'b000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
n
%s*synth2_
K	Parameter C_INITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
›
synthesizing module '%s'638*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized42default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_WIDTH bound to: 3 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_START_DEPTH bound to: 12288 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter C_SINITA_VAL bound to: 9'b000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
o
%s*synth2`
L	Parameter C_SINITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
Ý
null assignment ignored3449*oasys2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104372default:default8@Z8-3919
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
T
%s*synth2E
1	Parameter EN_ECC_READ bound to: 0 - type: bool 
2default:default
U
%s*synth2F
2	Parameter EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
j
%s*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:default
j
%s*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB36E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104822default:default8@Z8-113
Ö
%done synthesizing module '%s' (%s#%s)256*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized42default:default2
42default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
Ì
%done synthesizing module '%s' (%s#%s)256*oasys2:
&blk_mem_gen_prim_width__parameterized42default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
‘
synthesizing module '%s'638*oasys2:
&blk_mem_gen_prim_width__parameterized52default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 12 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_DEPTH bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
R
%s*synth2C
/	Parameter C_INITA_VAL bound to: 9'b000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
n
%s*synth2_
K	Parameter C_INITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
›
synthesizing module '%s'638*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized52default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 12 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_DEPTH bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter C_SINITA_VAL bound to: 9'b000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
o
%s*synth2`
L	Parameter C_SINITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
Ý
null assignment ignored3449*oasys2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104372default:default8@Z8-3919
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
T
%s*synth2E
1	Parameter EN_ECC_READ bound to: 0 - type: bool 
2default:default
U
%s*synth2F
2	Parameter EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
j
%s*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:default
j
%s*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB36E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104822default:default8@Z8-113
Ö
%done synthesizing module '%s' (%s#%s)256*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized52default:default2
42default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
Ì
%done synthesizing module '%s' (%s#%s)256*oasys2:
&blk_mem_gen_prim_width__parameterized52default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
‘
synthesizing module '%s'638*oasys2:
&blk_mem_gen_prim_width__parameterized62default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 12 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_START_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
R
%s*synth2C
/	Parameter C_INITA_VAL bound to: 9'b000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
n
%s*synth2_
K	Parameter C_INITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
›
synthesizing module '%s'638*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized62default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 12 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_START_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter C_SINITA_VAL bound to: 9'b000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
o
%s*synth2`
L	Parameter C_SINITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
Ý
null assignment ignored3449*oasys2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104372default:default8@Z8-3919
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
T
%s*synth2E
1	Parameter EN_ECC_READ bound to: 0 - type: bool 
2default:default
U
%s*synth2F
2	Parameter EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
j
%s*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:default
j
%s*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB36E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104822default:default8@Z8-113
Ö
%done synthesizing module '%s' (%s#%s)256*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized62default:default2
42default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
Ì
%done synthesizing module '%s' (%s#%s)256*oasys2:
&blk_mem_gen_prim_width__parameterized62default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
‘
synthesizing module '%s'638*oasys2:
&blk_mem_gen_prim_width__parameterized72default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 12 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_START_DEPTH bound to: 8192 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
R
%s*synth2C
/	Parameter C_INITA_VAL bound to: 9'b000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
n
%s*synth2_
K	Parameter C_INITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
›
synthesizing module '%s'638*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized72default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 12 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_START_DEPTH bound to: 8192 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter C_SINITA_VAL bound to: 9'b000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
o
%s*synth2`
L	Parameter C_SINITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
Ý
null assignment ignored3449*oasys2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104372default:default8@Z8-3919
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
T
%s*synth2E
1	Parameter EN_ECC_READ bound to: 0 - type: bool 
2default:default
U
%s*synth2F
2	Parameter EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
j
%s*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:default
j
%s*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB36E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104822default:default8@Z8-113
Ö
%done synthesizing module '%s' (%s#%s)256*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized72default:default2
42default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
Ì
%done synthesizing module '%s' (%s#%s)256*oasys2:
&blk_mem_gen_prim_width__parameterized72default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
‘
synthesizing module '%s'638*oasys2:
&blk_mem_gen_prim_width__parameterized82default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 12 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_START_DEPTH bound to: 12288 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
R
%s*synth2C
/	Parameter C_INITA_VAL bound to: 9'b000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
n
%s*synth2_
K	Parameter C_INITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
›
synthesizing module '%s'638*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized82default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 12 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_START_DEPTH bound to: 12288 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter C_SINITA_VAL bound to: 9'b000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
o
%s*synth2`
L	Parameter C_SINITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
Ý
null assignment ignored3449*oasys2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104372default:default8@Z8-3919
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
T
%s*synth2E
1	Parameter EN_ECC_READ bound to: 0 - type: bool 
2default:default
U
%s*synth2F
2	Parameter EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
j
%s*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:default
j
%s*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB36E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104822default:default8@Z8-113
Ö
%done synthesizing module '%s' (%s#%s)256*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized82default:default2
42default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
Ì
%done synthesizing module '%s' (%s#%s)256*oasys2:
&blk_mem_gen_prim_width__parameterized82default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
‘
synthesizing module '%s'638*oasys2:
&blk_mem_gen_prim_width__parameterized92default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 21 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_DEPTH bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
R
%s*synth2C
/	Parameter C_INITA_VAL bound to: 9'b000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
n
%s*synth2_
K	Parameter C_INITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
›
synthesizing module '%s'638*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized92default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 21 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_START_DEPTH bound to: 0 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter C_SINITA_VAL bound to: 9'b000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
o
%s*synth2`
L	Parameter C_SINITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
Ý
null assignment ignored3449*oasys2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104372default:default8@Z8-3919
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
T
%s*synth2E
1	Parameter EN_ECC_READ bound to: 0 - type: bool 
2default:default
U
%s*synth2F
2	Parameter EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
j
%s*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:default
j
%s*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB36E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104822default:default8@Z8-113
Ö
%done synthesizing module '%s' (%s#%s)256*oasys2?
+blk_mem_gen_prim_wrapper_v6__parameterized92default:default2
42default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
Ì
%done synthesizing module '%s' (%s#%s)256*oasys2:
&blk_mem_gen_prim_width__parameterized92default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
’
synthesizing module '%s'638*oasys2;
'blk_mem_gen_prim_width__parameterized102default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 21 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_START_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
R
%s*synth2C
/	Parameter C_INITA_VAL bound to: 9'b000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
n
%s*synth2_
K	Parameter C_INITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
œ
synthesizing module '%s'638*oasys2@
,blk_mem_gen_prim_wrapper_v6__parameterized102default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 21 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_START_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter C_SINITA_VAL bound to: 9'b000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
o
%s*synth2`
L	Parameter C_SINITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
Ý
null assignment ignored3449*oasys2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104372default:default8@Z8-3919
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
T
%s*synth2E
1	Parameter EN_ECC_READ bound to: 0 - type: bool 
2default:default
U
%s*synth2F
2	Parameter EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
j
%s*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:default
j
%s*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB36E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104822default:default8@Z8-113
×
%done synthesizing module '%s' (%s#%s)256*oasys2@
,blk_mem_gen_prim_wrapper_v6__parameterized102default:default2
42default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
Í
%done synthesizing module '%s' (%s#%s)256*oasys2;
'blk_mem_gen_prim_width__parameterized102default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
’
synthesizing module '%s'638*oasys2;
'blk_mem_gen_prim_width__parameterized112default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 21 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_START_DEPTH bound to: 8192 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
R
%s*synth2C
/	Parameter C_INITA_VAL bound to: 9'b000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
n
%s*synth2_
K	Parameter C_INITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
œ
synthesizing module '%s'638*oasys2@
,blk_mem_gen_prim_wrapper_v6__parameterized112default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 21 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_START_DEPTH bound to: 8192 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter C_SINITA_VAL bound to: 9'b000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
o
%s*synth2`
L	Parameter C_SINITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
Ý
null assignment ignored3449*oasys2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104372default:default8@Z8-3919
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
T
%s*synth2E
1	Parameter EN_ECC_READ bound to: 0 - type: bool 
2default:default
U
%s*synth2F
2	Parameter EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
j
%s*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:default
j
%s*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB36E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104822default:default8@Z8-113
×
%done synthesizing module '%s' (%s#%s)256*oasys2@
,blk_mem_gen_prim_wrapper_v6__parameterized112default:default2
42default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
Í
%done synthesizing module '%s' (%s#%s)256*oasys2;
'blk_mem_gen_prim_width__parameterized112default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
’
synthesizing module '%s'638*oasys2;
'blk_mem_gen_prim_width__parameterized122default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 21 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_START_DEPTH bound to: 12288 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
R
%s*synth2C
/	Parameter C_INITA_VAL bound to: 9'b000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEA bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_RSTB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
n
%s*synth2_
K	Parameter C_INITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
Z
%s*synth2K
7	Parameter C_USE_BYTE_WEB bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10352default:default8@Z8-3919
×
null assignment ignored3449*oasys2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
10362default:default8@Z8-3919
œ
synthesizing module '%s'638*oasys2@
,blk_mem_gen_prim_wrapper_v6__parameterized122default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-638
]
%s*synth2N
:	Parameter C_SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
]
%s*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:default
b
%s*synth2S
?	Parameter C_ENABLE_32BIT_ADDRESS bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USE_BRAM_BLOCK bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_CTRL_ECC_ALGO bound to: NONE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_BYTE_SIZE bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USER_WIDTH bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_USER_DEPTH bound to: 15360 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_START_WIDTH bound to: 21 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_START_DEPTH bound to: 12288 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_PRIM_WIDTH bound to: 9 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_PRIM_DEPTH bound to: 4096 - type: integer 
2default:default
X
%s*synth2I
5	Parameter C_USED_WIDTH bound to: 9 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_LOAD_INIT_FILE bound to: 0 - type: integer 
2default:default
l
%s*synth2]
I	Parameter C_INIT_FILE_NAME bound to: no_coe_file_loaded - type: string 
2default:default
^
%s*synth2O
;	Parameter C_USE_DEFAULT_DATA bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:default
Y
%s*synth2J
6	Parameter C_USE_BYTE_WE bound to: 0 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEA_WIDTH bound to: 1 - type: integer 
2default:default
W
%s*synth2H
4	Parameter C_WEB_WIDTH bound to: 1 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRA bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_A bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_A bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter C_SINITA_VAL bound to: 9'b000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WA bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_READ_WIDTH_A bound to: 9 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RA bound to: 1 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_A bound to: 12 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_HAS_SSRB bound to: 0 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_RST_PRIORITY_B bound to: CE - type: string 
2default:default
V
%s*synth2G
3	Parameter C_RSTRAM_B bound to: 0 - type: integer 
2default:default
o
%s*synth2`
L	Parameter C_SINITB_VAL bound to: 36'b000000000000000000000000000000000000 
2default:default
a
%s*synth2R
>	Parameter C_WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_WB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_B bound to: 36 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_RATIO_RB bound to: 4 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 10 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MEM_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_A bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_HAS_MUX_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
X
%s*synth2I
5	Parameter C_COMMON_CLK bound to: 0 - type: integer 
2default:default
c
%s*synth2T
@	Parameter C_SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
Ý
null assignment ignored3449*oasys2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104372default:default8@Z8-3919
S
%s*synth2D
0	Parameter DOA_REG bound to: 0 - type: integer 
2default:default
S
%s*synth2D
0	Parameter DOB_REG bound to: 0 - type: integer 
2default:default
T
%s*synth2E
1	Parameter EN_ECC_READ bound to: 0 - type: bool 
2default:default
U
%s*synth2F
2	Parameter EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
Ê
%s*synth2º
¥	Parameter INITP_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_00 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_01 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_02 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_03 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_04 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_05 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_06 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_07 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_08 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_09 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_0F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_10 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_11 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_12 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_13 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_14 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_15 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_16 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_17 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_18 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_19 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_1F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_20 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_21 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_22 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_23 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_24 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_25 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_26 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_27 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_28 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_29 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_2F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_30 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_31 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_32 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_33 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_34 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_35 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_36 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_37 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_38 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_39 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_3F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_40 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_41 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_42 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_43 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_44 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_45 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_46 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_47 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_48 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_49 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_4F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_50 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_51 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_52 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_53 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_54 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_55 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_56 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_57 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_58 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_59 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_5F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_60 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_61 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_62 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_63 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_64 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_65 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_66 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_67 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_68 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_69 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_6F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_70 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_71 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_72 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_73 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_74 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_75 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_76 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_77 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_78 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_79 bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7A bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7B bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7C bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7D bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7E bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
É
%s*synth2¹
¤	Parameter INIT_7F bound to: 256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_A bound to: 36'b000000000000000000000000000000000000 
2default:default
i
%s*synth2Z
F	Parameter INIT_B bound to: 36'b000000000000000000000000000000000000 
2default:default
W
%s*synth2H
4	Parameter INIT_FILE bound to: NONE - type: string 
2default:default
T
%s*synth2E
1	Parameter IS_CLKARDCLK_INVERTED bound to: 1'b0 
2default:default
T
%s*synth2E
1	Parameter IS_CLKBWRCLK_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENARDEN_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_ENBWREN_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTRAMARSTRAM_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTRAMB_INVERTED bound to: 1'b0 
2default:default
X
%s*synth2I
5	Parameter IS_RSTREGARSTREG_INVERTED bound to: 1'b0 
2default:default
R
%s*synth2C
/	Parameter IS_RSTREGB_INVERTED bound to: 1'b0 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_A bound to: NONE - type: string 
2default:default
]
%s*synth2N
:	Parameter RAM_EXTENSION_B bound to: NONE - type: string 
2default:default
U
%s*synth2F
2	Parameter RAM_MODE bound to: TDP - type: string 
2default:default
p
%s*synth2a
M	Parameter RDADDR_COLLISION_HWCONFIG bound to: DELAYED_WRITE - type: string 
2default:default
X
%s*synth2I
5	Parameter READ_WIDTH_A bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter READ_WIDTH_B bound to: 36 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_A bound to: REGCE - type: string 
2default:default
`
%s*synth2Q
=	Parameter RSTREG_PRIORITY_B bound to: REGCE - type: string 
2default:default
a
%s*synth2R
>	Parameter SIM_COLLISION_CHECK bound to: NONE - type: string 
2default:default
[
%s*synth2L
8	Parameter SIM_DEVICE bound to: 7SERIES - type: string 
2default:default
j
%s*synth2[
G	Parameter SRVAL_A bound to: 36'b000000000000000000000000000000000000 
2default:default
j
%s*synth2[
G	Parameter SRVAL_B bound to: 36'b000000000000000000000000000000000000 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_A bound to: NO_CHANGE - type: string 
2default:default
_
%s*synth2P
<	Parameter WRITE_MODE_B bound to: NO_CHANGE - type: string 
2default:default
Y
%s*synth2J
6	Parameter WRITE_WIDTH_A bound to: 9 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter WRITE_WIDTH_B bound to: 36 - type: integer 
2default:default
§
,binding component instance '%s' to cell '%s'113*oasys2
ram2default:default2
RAMB36E12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
104822default:default8@Z8-113
×
%done synthesizing module '%s' (%s#%s)256*oasys2@
,blk_mem_gen_prim_wrapper_v6__parameterized122default:default2
42default:default2
12default:default2‰
s/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_wrapper_v6.vhd2default:default2
3852default:default8@Z8-256
Í
%done synthesizing module '%s' (%s#%s)256*oasys2;
'blk_mem_gen_prim_width__parameterized122default:default2
42default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_prim_width.vhd2default:default2
3932default:default8@Z8-256
ò
synthesizing module '%s'638*oasys2#
blk_mem_gen_mux2default:default2}
g/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_mux.vhd2default:default2
2822default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
U
%s*synth2F
2	Parameter C_HAS_RST bound to: 0 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_MUX_RST_WIDTH bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_RST_PRIORITY bound to: CE - type: string 
2default:default
T
%s*synth2E
1	Parameter C_RSTRAM bound to: 0 - type: integer 
2default:default
g
%s*synth2X
D	Parameter C_INIT_VAL bound to: 30'b000000000000000000000000000000 
2default:default
]
%s*synth2N
:	Parameter C_MUX_REGCE_WIDTH bound to: 1 - type: integer 
2default:default
_
%s*synth2P
<	Parameter C_WRITE_MODE bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 12 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_MUX_DATA_WIDTH bound to: 30 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_INPUT_MUX_DEPTH bound to: 4 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_SELECT_WIDTH bound to: 2 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_HAS_MEM_OUTPUT_REGS bound to: 0 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_HAS_MUX_OUTPUT_REGS bound to: 0 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_MUX_PIPELINE_STAGES bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USE_SOFTECC bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_ECC_DATA_WIDTH bound to: 30 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
­
%done synthesizing module '%s' (%s#%s)256*oasys2#
blk_mem_gen_mux2default:default2
52default:default2
12default:default2}
g/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_mux.vhd2default:default2
2822default:default8@Z8-256
‚
synthesizing module '%s'638*oasys23
blk_mem_gen_mux__parameterized02default:default2}
g/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_mux.vhd2default:default2
2822default:default8@Z8-638
Y
%s*synth2J
6	Parameter C_FAMILY bound to: virtex6 - type: string 
2default:default
]
%s*synth2N
:	Parameter C_XDEVICEFAMILY bound to: zynq - type: string 
2default:default
X
%s*synth2I
5	Parameter C_RST_TYPE bound to: SYNC - type: string 
2default:default
U
%s*synth2F
2	Parameter C_HAS_RST bound to: 0 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_MUX_RST_WIDTH bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_RST_PRIORITY bound to: CE - type: string 
2default:default
T
%s*synth2E
1	Parameter C_RSTRAM bound to: 0 - type: integer 
2default:default
Ä
%s*synth2´
Ÿ	Parameter C_INIT_VAL bound to: 120'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 
2default:default
]
%s*synth2N
:	Parameter C_MUX_REGCE_WIDTH bound to: 1 - type: integer 
2default:default
_
%s*synth2P
<	Parameter C_WRITE_MODE bound to: NO_CHANGE - type: string 
2default:default
[
%s*synth2L
8	Parameter C_ADDR_WIDTH_B bound to: 12 - type: integer 
2default:default
^
%s*synth2O
;	Parameter C_MUX_DATA_WIDTH bound to: 120 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_INPUT_MUX_DEPTH bound to: 4 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_SELECT_WIDTH bound to: 2 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_HAS_MEM_OUTPUT_REGS bound to: 0 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_HAS_MUX_OUTPUT_REGS bound to: 0 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_MUX_PIPELINE_STAGES bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USE_SOFTECC bound to: 0 - type: integer 
2default:default
]
%s*synth2N
:	Parameter C_ECC_DATA_WIDTH bound to: 30 - type: integer 
2default:default
V
%s*synth2G
3	Parameter C_EN_ECC_READ bound to: 0 - type: bool 
2default:default
W
%s*synth2H
4	Parameter C_EN_ECC_WRITE bound to: 0 - type: bool 
2default:default
½
%done synthesizing module '%s' (%s#%s)256*oasys23
blk_mem_gen_mux__parameterized02default:default2
52default:default2
12default:default2}
g/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_mux.vhd2default:default2
2822default:default8@Z8-256
À
%done synthesizing module '%s' (%s#%s)256*oasys2,
blk_mem_gen_generic_cstr2default:default2
62default:default2
12default:default2†
p/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_generic_cstr.vhd2default:default2
4422default:default8@Z8-256
ý
synthesizing module '%s'638*oasys2(
blk_mem_output_block2default:default2‚
l/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_output_block.vhd2default:default2
2142default:default8@Z8-638
V
%s*synth2G
3	Parameter C_MEM_TYPE bound to: 2 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_WRITE_WIDTH_A bound to: 30 - type: integer 
2default:default
[
%s*synth2L
8	Parameter C_READ_WIDTH_A bound to: 30 - type: integer 
2default:default
\
%s*synth2M
9	Parameter C_READ_WIDTH_B bound to: 120 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter C_READ_WIDTH_A_CORE bound to: 30 - type: integer 
2default:default
a
%s*synth2R
>	Parameter C_READ_WIDTH_B_CORE bound to: 120 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter C_ADDRB_WIDTH bound to: 12 - type: integer 
2default:default
g
%s*synth2X
D	Parameter C_HAS_SOFTECC_OUTPUT_REGS_B bound to: 0 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter C_USE_SOFTECC bound to: 0 - type: integer 
2default:default
U
%s*synth2F
2	Parameter C_USE_ECC bound to: 0 - type: integer 
2default:default
¸
%done synthesizing module '%s' (%s#%s)256*oasys2(
blk_mem_output_block2default:default2
72default:default2
12default:default2‚
l/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_output_block.vhd2default:default2
2142default:default8@Z8-256
­
%done synthesizing module '%s' (%s#%s)256*oasys2#
blk_mem_gen_top2default:default2
82default:default2
12default:default2}
g/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_top.vhd2default:default2
4312default:default8@Z8-256
¼
%done synthesizing module '%s' (%s#%s)256*oasys2*
blk_mem_gen_v8_0_synth2default:default2
92default:default2
12default:default2„
n/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_v8_0_synth.vhd2default:default2
3112default:default8@Z8-256
°
%done synthesizing module '%s' (%s#%s)256*oasys2$
blk_mem_gen_v8_02default:default2
102default:default2
12default:default2~
h/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_v8_0/blk_mem_gen_v8_0.vhd2default:default2
2502default:default8@Z8-256
ž
%done synthesizing module '%s' (%s#%s)256*oasys2!
blk_mem_gen_02default:default2
112default:default2
12default:default2p
Z/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/synth/blk_mem_gen_0.vhd2default:default2
712default:default8@Z8-256
œ
%s*synth2Œ
xFinished RTL Elaboration : Time (s): cpu = 00:01:55 ; elapsed = 00:01:56 . Memory (MB): peak = 578.426 ; gain = 181.039
2default:default
š
%s*synth2Š
vStart RTL Optimization : Time (s): cpu = 00:01:55 ; elapsed = 00:01:56 . Memory (MB): peak = 578.426 ; gain = 181.039
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
‚
'tying undriven pin %s:%s to constant 0
3295*oasys2#
\v6_noinit.ram 2default:default2
DINB[8]2default:defaultZ8-3295
]
-Analyzing %s Unisim elements for replacement
17*netlist2
142default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
˜
Loading clock regions from %s
13*device2a
M/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/zynq/zynq/xc7z020/ClockRegion.xml2default:defaultZ21-13
™
Loading clock buffers from %s
11*device2b
N/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/zynq/zynq/xc7z020/ClockBuffers.xml2default:defaultZ21-11
™
&Loading clock placement rules from %s
318*place2Y
E/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/zynq/ClockPlacerRules.xml2default:defaultZ30-318
—
)Loading package pin functions from %s...
17*device2U
A/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/zynq/PinFunctions.xml2default:defaultZ21-17
•
Loading package from %s
16*device2d
P/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/zynq/zynq/xc7z020/clg484/Package.xml2default:defaultZ21-16
Œ
Loading io standards from %s
15*device2V
B/opt/Xilinx/Vivado/2013.3/data/./parts/xilinx/zynq/IOStandards.xml2default:defaultZ21-15
_
 Attempting to get a license: %s
78*common2&
Internal_bitstream2default:defaultZ17-78
]
Failed to get a license: %s
295*common2&
Internal_bitstream2default:defaultZ17-301
5

Processing XDC Constraints
244*projectZ1-262
È
$Parsing XDC File [%s] for cell '%s'
848*designutils2l
X/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc2default:default2
U02default:defaultZ20-848
Ñ
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2l
X/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc2default:default2
U02default:defaultZ20-847
Ž
ÙImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2l
X/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc2default:default2ª
•/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/managed_ip_project/managed_ip_project.runs/blk_mem_gen_0_synth_1/.Xil/blk_mem_gen_0_propImpl.xdc2default:defaultZ1-236
Ð
Parsing XDC File [%s]
179*designutils2™
„/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/managed_ip_project/managed_ip_project.runs/blk_mem_gen_0_synth_1/dont_touch.xdc2default:defaultZ20-179
Ù
Finished Parsing XDC File [%s]
178*designutils2™
„/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/managed_ip_project/managed_ip_project.runs/blk_mem_gen_0_synth_1/dont_touch.xdc2default:defaultZ20-178
¼
ÙImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2™
„/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/managed_ip_project/managed_ip_project.runs/blk_mem_gen_0_synth_1/dont_touch.xdc2default:default2ª
•/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/managed_ip_project/managed_ip_project.runs/blk_mem_gen_0_synth_1/.Xil/blk_mem_gen_0_propImpl.xdc2default:defaultZ1-236
?
&Completed Processing XDC Constraints

245*projectZ1-263
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
š
%s*synth2Š
vStart RTL Optimization : Time (s): cpu = 00:02:13 ; elapsed = 00:02:14 . Memory (MB): peak = 686.316 ; gain = 288.930
2default:default
µ
%s*synth2¥
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:02:13 ; elapsed = 00:02:14 . Memory (MB): peak = 686.320 ; gain = 288.934
2default:default

%s*synth2
yFinished RTL Optimization : Time (s): cpu = 00:02:13 ; elapsed = 00:02:14 . Memory (MB): peak = 686.320 ; gain = 288.934
2default:default
<
%s*synth2-

Report RTL Partitions: 
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
+| |RTL Partition |Replication |Instances |
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
N
%s*synth2?
++-+--------------+------------+----------+
2default:default
‹
%s*synth2|
hPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB8 0 RAMB16 0 RAMB18 60 RAMB36 30)
2default:default
±
%s*synth2¡
ŒFinished Loading Part and Timing Information : Time (s): cpu = 00:02:32 ; elapsed = 00:02:34 . Memory (MB): peak = 732.336 ; gain = 334.949
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 2     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input     30 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 8     
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
9
%s*synth2*
Module blk_mem_gen_0 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
K
%s*synth2<
(Module blk_mem_gen_mux__parameterized0 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 1     
2default:default
S
%s*synth2D
0Module blk_mem_gen_prim_width__parameterized11 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
W
%s*synth2H
4Module blk_mem_gen_prim_wrapper_v6__parameterized2 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
W
%s*synth2H
4Module blk_mem_gen_prim_wrapper_v6__parameterized3 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
<
%s*synth2-
Module blk_mem_gen_v8_0 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
W
%s*synth2H
4Module blk_mem_gen_prim_wrapper_v6__parameterized4 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
;
%s*synth2,
Module blk_mem_gen_top 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
W
%s*synth2H
4Module blk_mem_gen_prim_wrapper_v6__parameterized5 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
W
%s*synth2H
4Module blk_mem_gen_prim_wrapper_v6__parameterized6 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
G
%s*synth28
$Module blk_mem_gen_prim_wrapper_v6 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
W
%s*synth2H
4Module blk_mem_gen_prim_wrapper_v6__parameterized7 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
B
%s*synth23
Module blk_mem_gen_v8_0_synth 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
W
%s*synth2H
4Module blk_mem_gen_prim_wrapper_v6__parameterized8 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
2
%s*synth2#
Module bindec 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:default
R
%s*synth2C
/Module blk_mem_gen_prim_width__parameterized0 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
B
%s*synth23
Module blk_mem_gen_prim_width 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
R
%s*synth2C
/Module blk_mem_gen_prim_width__parameterized1 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
X
%s*synth2I
5Module blk_mem_gen_prim_wrapper_v6__parameterized10 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
X
%s*synth2I
5Module blk_mem_gen_prim_wrapper_v6__parameterized11 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
X
%s*synth2I
5Module blk_mem_gen_prim_wrapper_v6__parameterized12 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
S
%s*synth2D
0Module blk_mem_gen_prim_width__parameterized10 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
R
%s*synth2C
/Module blk_mem_gen_prim_width__parameterized2 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
R
%s*synth2C
/Module blk_mem_gen_prim_width__parameterized3 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
R
%s*synth2C
/Module blk_mem_gen_prim_width__parameterized4 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
R
%s*synth2C
/Module blk_mem_gen_prim_width__parameterized5 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
S
%s*synth2D
0Module blk_mem_gen_prim_width__parameterized12 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
R
%s*synth2C
/Module blk_mem_gen_prim_width__parameterized7 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
R
%s*synth2C
/Module blk_mem_gen_prim_width__parameterized8 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
R
%s*synth2C
/Module blk_mem_gen_prim_width__parameterized9 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
;
%s*synth2,
Module blk_mem_gen_mux 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	                2 Bit    Registers := 1     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   4 Input     30 Bit        Muxes := 1     
2default:default
W
%s*synth2H
4Module blk_mem_gen_prim_wrapper_v6__parameterized9 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
D
%s*synth25
!Module blk_mem_gen_generic_cstr 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
@
%s*synth21
Module blk_mem_output_block 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
R
%s*synth2C
/Module blk_mem_gen_prim_width__parameterized6 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
W
%s*synth2H
4Module blk_mem_gen_prim_wrapper_v6__parameterized0 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
?
%s*synth20
Module blk_mem_input_block 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
W
%s*synth2H
4Module blk_mem_gen_prim_wrapper_v6__parameterized1 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
©
%s*synth2™
„Finished Cross Boundary Optimization : Time (s): cpu = 00:02:32 ; elapsed = 00:02:34 . Memory (MB): peak = 738.348 ; gain = 340.961
2default:default
¢
%s*synth2’
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¦
%s*synth2–
---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
ž
%s*synth2Ž
zFinished Area Optimization : Time (s): cpu = 00:02:32 ; elapsed = 00:02:34 . Memory (MB): peak = 744.363 ; gain = 346.977
2default:default
­
%s*synth2
ˆFinished Applying XDC Timing Constraints : Time (s): cpu = 00:02:33 ; elapsed = 00:02:35 . Memory (MB): peak = 744.363 ; gain = 346.977
2default:default
 
%s*synth2
|Finished Timing Optimization : Time (s): cpu = 00:02:33 ; elapsed = 00:02:35 . Memory (MB): peak = 744.363 ; gain = 346.977
2default:default
Ÿ
%s*synth2
{Finished Technology Mapping : Time (s): cpu = 00:02:33 ; elapsed = 00:02:35 . Memory (MB): peak = 748.371 ; gain = 350.984
2default:default
™
%s*synth2‰
uFinished IO Insertion : Time (s): cpu = 00:02:34 ; elapsed = 00:02:36 . Memory (MB): peak = 748.371 ; gain = 350.984
2default:default
;
%s*synth2,

Report Check Netlist: 
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
l
%s*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:default
l
%s*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:default
ª
%s*synth2š
…Finished Renaming Generated Instances : Time (s): cpu = 00:02:34 ; elapsed = 00:02:36 . Memory (MB): peak = 748.371 ; gain = 350.984
2default:default
§
%s*synth2—
‚Finished Rebuilding User Hierarchy : Time (s): cpu = 00:02:34 ; elapsed = 00:02:36 . Memory (MB): peak = 748.371 ; gain = 350.984
2default:default
¢
%s*synth2’
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¦
%s*synth2–
---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
8
%s*synth2)

Report BlackBoxes: 
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
| |BlackBox name |Instances |
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
A
%s*synth22
+-+--------------+----------+
2default:default
8
%s*synth2)

Report Cell Usage: 
2default:default
?
%s*synth20
+------+-----------+------+
2default:default
?
%s*synth20
|      |Cell       |Count |
2default:default
?
%s*synth20
+------+-----------+------+
2default:default
?
%s*synth20
|1     |LUT2       |     8|
2default:default
?
%s*synth20
|2     |LUT3       |     4|
2default:default
?
%s*synth20
|3     |LUT6       |   135|
2default:default
?
%s*synth20
|4     |RAMB18E1_1 |     1|
2default:default
?
%s*synth20
|5     |RAMB36E1_1 |     1|
2default:default
?
%s*synth20
|6     |RAMB36E1_2 |    12|
2default:default
?
%s*synth20
|7     |FDRE       |     4|
2default:default
?
%s*synth20
+------+-----------+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
ˆ
%s*synth2y
e+------+--------------------------------------+---------------------------------------------+------+
2default:default
ˆ
%s*synth2y
e|      |Instance                              |Module                                       |Cells |
2default:default
ˆ
%s*synth2y
e+------+--------------------------------------+---------------------------------------------+------+
2default:default
ˆ
%s*synth2y
e|1     |top                                   |                                             |   165|
2default:default
ˆ
%s*synth2y
e|2     |  U0                                  |blk_mem_gen_v8_0                             |   165|
2default:default
ˆ
%s*synth2y
e|3     |    inst_blk_mem_gen                  |blk_mem_gen_v8_0_synth                       |   165|
2default:default
ˆ
%s*synth2y
e|4     |      \gnativebmg.native_blk_mem_gen  |blk_mem_gen_top                              |   165|
2default:default
ˆ
%s*synth2y
e|5     |        \valid.cstr                   |blk_mem_gen_generic_cstr                     |   165|
2default:default
ˆ
%s*synth2y
e|6     |          \ramloop[8].ram.r           |blk_mem_gen_prim_width__parameterized7       |     1|
2default:default
ˆ
%s*synth2y
e|7     |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6__parameterized7  |     1|
2default:default
ˆ
%s*synth2y
e|8     |          \has_mux_b.B                |blk_mem_gen_mux__parameterized0              |   112|
2default:default
ˆ
%s*synth2y
e|9     |          \ramloop[11].ram.r          |blk_mem_gen_prim_width__parameterized10      |     3|
2default:default
ˆ
%s*synth2y
e|10    |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6__parameterized10 |     3|
2default:default
ˆ
%s*synth2y
e|11    |          \ramloop[4].ram.r           |blk_mem_gen_prim_width__parameterized3       |     1|
2default:default
ˆ
%s*synth2y
e|12    |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6__parameterized3  |     1|
2default:default
ˆ
%s*synth2y
e|13    |          \ramloop[9].ram.r           |blk_mem_gen_prim_width__parameterized8       |     1|
2default:default
ˆ
%s*synth2y
e|14    |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6__parameterized8  |     1|
2default:default
ˆ
%s*synth2y
e|15    |          \ramloop[0].ram.r           |blk_mem_gen_prim_width                       |     1|
2default:default
ˆ
%s*synth2y
e|16    |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6                  |     1|
2default:default
ˆ
%s*synth2y
e|17    |          \ramloop[2].ram.r           |blk_mem_gen_prim_width__parameterized1       |     1|
2default:default
ˆ
%s*synth2y
e|18    |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6__parameterized1  |     1|
2default:default
ˆ
%s*synth2y
e|19    |          \ramloop[7].ram.r           |blk_mem_gen_prim_width__parameterized6       |     1|
2default:default
ˆ
%s*synth2y
e|20    |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6__parameterized6  |     1|
2default:default
ˆ
%s*synth2y
e|21    |          \ramloop[10].ram.r          |blk_mem_gen_prim_width__parameterized9       |     3|
2default:default
ˆ
%s*synth2y
e|22    |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6__parameterized9  |     3|
2default:default
ˆ
%s*synth2y
e|23    |          \ramloop[3].ram.r           |blk_mem_gen_prim_width__parameterized2       |     1|
2default:default
ˆ
%s*synth2y
e|24    |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6__parameterized2  |     1|
2default:default
ˆ
%s*synth2y
e|25    |          \has_mux_a.A                |blk_mem_gen_mux                              |    31|
2default:default
ˆ
%s*synth2y
e|26    |          \ramloop[12].ram.r          |blk_mem_gen_prim_width__parameterized11      |     3|
2default:default
ˆ
%s*synth2y
e|27    |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6__parameterized11 |     3|
2default:default
ˆ
%s*synth2y
e|28    |          \ramloop[5].ram.r           |blk_mem_gen_prim_width__parameterized4       |     1|
2default:default
ˆ
%s*synth2y
e|29    |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6__parameterized4  |     1|
2default:default
ˆ
%s*synth2y
e|30    |          \ramloop[1].ram.r           |blk_mem_gen_prim_width__parameterized0       |     1|
2default:default
ˆ
%s*synth2y
e|31    |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6__parameterized0  |     1|
2default:default
ˆ
%s*synth2y
e|32    |          \ramloop[13].ram.r          |blk_mem_gen_prim_width__parameterized12      |     3|
2default:default
ˆ
%s*synth2y
e|33    |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6__parameterized12 |     3|
2default:default
ˆ
%s*synth2y
e|34    |          \ramloop[6].ram.r           |blk_mem_gen_prim_width__parameterized5       |     1|
2default:default
ˆ
%s*synth2y
e|35    |            \v6_noinit.ram            |blk_mem_gen_prim_wrapper_v6__parameterized5  |     1|
2default:default
ˆ
%s*synth2y
e+------+--------------------------------------+---------------------------------------------+------+
2default:default
¦
%s*synth2–
Finished Writing Synthesis Report : Time (s): cpu = 00:02:34 ; elapsed = 00:02:36 . Memory (MB): peak = 748.371 ; gain = 350.984
2default:default
i
%s*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:default
£
%s*synth2“
Synthesis Optimization Complete : Time (s): cpu = 00:02:34 ; elapsed = 00:02:36 . Memory (MB): peak = 748.371 ; gain = 350.984
2default:default
]
-Analyzing %s Unisim elements for replacement
17*netlist2
142default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
È
$Parsing XDC File [%s] for cell '%s'
848*designutils2l
X/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc2default:default2
U02default:defaultZ20-848
Ñ
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2l
X/home/agilehw/agile-codev-platform/hw/Vivado/blk_mem/blk_mem_gen_0/blk_mem_gen_0_ooc.xdc2default:default2
U02default:defaultZ20-847
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
¾
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1472default:default2
12default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42
ü
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:02:482default:default2
00:02:502default:default2
926.3712default:default2
454.4342default:defaultZ17-268
H
Renamed %s cell refs.
330*coretcl2
342default:defaultZ2-1174
<
%Done setting XDC timing constraints.
35*timingZ38-35

ureport_utilization: Time (s): cpu = 00:00:00.17 ; elapsed = 00:00:00.33 . Memory (MB): peak = 926.387 ; gain = 0.012
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Feb 11 20:24:00 20152default:defaultZ17-206