
[
 Attempting to get a license: %s
78*common2"
Implementation2default:defaultZ17-78
Q
Feature available: %s
81*common2"
Implementation2default:defaultZ17-81
Ö
+Loading parts and site information from %s
36*device2A
-/opt/Xilinx/Vivado/2013.3/data/parts/arch.xml2default:defaultZ21-36
í
!Parsing RTL primitives file [%s]
14*netlist2W
C/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-14
õ
*Finished parsing RTL primitives file [%s]
11*netlist2W
C/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/rtl/prims/rtl_prims.xml2default:defaultZ29-11
5
Refreshing IP repositories
234*coregenZ19-234
∞
Loaded user repository '%s'.
1135*coregen2u
a/home/agilehw/Documents/AgileCodevProject/documentation/AVNET_ZED_HDMI/2013_3/avnet_zed_hdmi_core2default:defaultZ19-1700
Ö
Loaded user repository '%s'.
1135*coregen2J
6/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock2default:defaultZ19-1700
r
Loaded Vivado repository '%s'.
1332*coregen25
!/opt/Xilinx/Vivado/2013.3/data/ip2default:defaultZ19-2313
ˆ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
	read_ip: 2default:default2
00:00:052default:default2
00:00:062default:default2
471.9532default:default2
12.0002default:defaultZ17-268
Ç
Command: %s
53*	vivadotcl2Z
Fsynth_design -top clk_wiz_0 -part xc7z020clg484-1 -mode out_of_context2default:defaultZ4-113
/

Starting synthesis...

3*	vivadotclZ4-3
Ø
%IP '%s' is locked. Locked reason: %s
1260*coregen2
	clk_wiz_02default:default2M
9Property 'IS_LOCKED' is set to true by the system or user2default:defaultZ19-2162
ï
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347
Ö
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349
ú
%s*synth2å
xStarting RTL Elaboration : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 497.949 ; gain = 100.562
2default:default
É
synthesizing module '%s'638*oasys2
	clk_wiz_02default:default2î
~/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0.v2default:default2
692default:default8@Z8-638
î
synthesizing module '%s'638*oasys2%
clk_wiz_0_clk_wiz2default:default2ù
Ü/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0_clk_wiz.v2default:default2
672default:default8@Z8-638
∏
synthesizing module '%s'638*oasys2
IBUF2default:default2M
7/opt/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
61592default:default8@Z8-638
^
%s*synth2O
;	Parameter CAPACITANCE bound to: DONT_CARE - type: string 
2default:default
[
%s*synth2L
8	Parameter IBUF_DELAY_VALUE bound to: 0 - type: string 
2default:default
Z
%s*synth2K
7	Parameter IBUF_LOW_PWR bound to: TRUE - type: string 
2default:default
]
%s*synth2N
:	Parameter IFD_DELAY_VALUE bound to: AUTO - type: string 
2default:default
[
%s*synth2L
8	Parameter IOSTANDARD bound to: DEFAULT - type: string 
2default:default
Û
%done synthesizing module '%s' (%s#%s)256*oasys2
IBUF2default:default2
12default:default2
12default:default2M
7/opt/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
61592default:default8@Z8-256
ø
synthesizing module '%s'638*oasys2

MMCME2_ADV2default:default2M
7/opt/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
111432default:default8@Z8-638
\
%s*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:default
c
%s*synth2T
@	Parameter CLKFBOUT_USE_FINE_PS bound to: FALSE - type: string 
2default:default
b
%s*synth2S
?	Parameter CLKOUT0_USE_FINE_PS bound to: FALSE - type: string 
2default:default
b
%s*synth2S
?	Parameter CLKOUT1_USE_FINE_PS bound to: FALSE - type: string 
2default:default
b
%s*synth2S
?	Parameter CLKOUT2_USE_FINE_PS bound to: FALSE - type: string 
2default:default
b
%s*synth2S
?	Parameter CLKOUT3_USE_FINE_PS bound to: FALSE - type: string 
2default:default
^
%s*synth2O
;	Parameter CLKOUT4_CASCADE bound to: FALSE - type: string 
2default:default
b
%s*synth2S
?	Parameter CLKOUT4_USE_FINE_PS bound to: FALSE - type: string 
2default:default
b
%s*synth2S
?	Parameter CLKOUT5_USE_FINE_PS bound to: FALSE - type: string 
2default:default
b
%s*synth2S
?	Parameter CLKOUT6_USE_FINE_PS bound to: FALSE - type: string 
2default:default
[
%s*synth2L
8	Parameter COMPENSATION bound to: ZHOLD - type: string 
2default:default
T
%s*synth2E
1	Parameter SS_EN bound to: FALSE - type: string 
2default:default
\
%s*synth2M
9	Parameter SS_MODE bound to: CENTER_HIGH - type: string 
2default:default
[
%s*synth2L
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
2default:default
S
%s*synth2D
0	Parameter IS_CLKINSEL_INVERTED bound to: 1'b0 
2default:default
O
%s*synth2@
,	Parameter IS_PSEN_INVERTED bound to: 1'b0 
2default:default
S
%s*synth2D
0	Parameter IS_PSINCDEC_INVERTED bound to: 1'b0 
2default:default
Q
%s*synth2B
.	Parameter IS_PWRDWN_INVERTED bound to: 1'b0 
2default:default
N
%s*synth2?
+	Parameter IS_RST_INVERTED bound to: 1'b0 
2default:default
Z
%s*synth2K
7	Parameter CLKOUT1_DIVIDE bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter CLKOUT2_DIVIDE bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter CLKOUT3_DIVIDE bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter CLKOUT4_DIVIDE bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter CLKOUT5_DIVIDE bound to: 1 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter CLKOUT6_DIVIDE bound to: 1 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
2default:default
]
%s*synth2N
:	Parameter SS_MOD_PERIOD bound to: 10000 - type: integer 
2default:default
`
%s*synth2Q
=	Parameter CLKFBOUT_MULT_F bound to: 6.750000 - type: float 
2default:default
_
%s*synth2P
<	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKIN1_PERIOD bound to: 6.667000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKIN2_PERIOD bound to: 0.000000 - type: float 
2default:default
a
%s*synth2R
>	Parameter CLKOUT0_DIVIDE_F bound to: 3.375000 - type: float 
2default:default
c
%s*synth2T
@	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: float 
2default:default
c
%s*synth2T
@	Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKOUT1_PHASE bound to: 0.000000 - type: float 
2default:default
c
%s*synth2T
@	Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKOUT2_PHASE bound to: 0.000000 - type: float 
2default:default
c
%s*synth2T
@	Parameter CLKOUT3_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKOUT3_PHASE bound to: 0.000000 - type: float 
2default:default
c
%s*synth2T
@	Parameter CLKOUT4_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKOUT4_PHASE bound to: 0.000000 - type: float 
2default:default
c
%s*synth2T
@	Parameter CLKOUT5_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKOUT5_PHASE bound to: 0.000000 - type: float 
2default:default
c
%s*synth2T
@	Parameter CLKOUT6_DUTY_CYCLE bound to: 0.500000 - type: float 
2default:default
^
%s*synth2O
;	Parameter CLKOUT6_PHASE bound to: 0.000000 - type: float 
2default:default
\
%s*synth2M
9	Parameter REF_JITTER1 bound to: 0.010000 - type: float 
2default:default
\
%s*synth2M
9	Parameter REF_JITTER2 bound to: 0.010000 - type: float 
2default:default
˙
%done synthesizing module '%s' (%s#%s)256*oasys2

MMCME2_ADV2default:default2
22default:default2
12default:default2M
7/opt/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
111432default:default8@Z8-256
∑
synthesizing module '%s'638*oasys2
BUFG2default:default2M
7/opt/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
4342default:default8@Z8-638
Ú
%done synthesizing module '%s' (%s#%s)256*oasys2
BUFG2default:default2
32default:default2
12default:default2M
7/opt/Xilinx/Vivado/2013.3/scripts/rt/data/unisim_comp.v2default:default2
4342default:default8@Z8-256
œ
%done synthesizing module '%s' (%s#%s)256*oasys2%
clk_wiz_0_clk_wiz2default:default2
42default:default2
12default:default2ù
Ü/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0_clk_wiz.v2default:default2
672default:default8@Z8-256
æ
%done synthesizing module '%s' (%s#%s)256*oasys2
	clk_wiz_02default:default2
52default:default2
12default:default2î
~/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0.v2default:default2
692default:default8@Z8-256
ú
%s*synth2å
xFinished RTL Elaboration : Time (s): cpu = 00:00:15 ; elapsed = 00:00:19 . Memory (MB): peak = 522.770 ; gain = 125.383
2default:default
ö
%s*synth2ä
vStart RTL Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:19 . Memory (MB): peak = 522.770 ; gain = 125.383
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
\
-Analyzing %s Unisim elements for replacement
17*netlist2
22default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
ò
Loading clock regions from %s
13*device2a
M/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/zynq/zynq/xc7z020/ClockRegion.xml2default:defaultZ21-13
ô
Loading clock buffers from %s
11*device2b
N/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/zynq/zynq/xc7z020/ClockBuffers.xml2default:defaultZ21-11
ô
&Loading clock placement rules from %s
318*place2Y
E/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/zynq/ClockPlacerRules.xml2default:defaultZ30-318
ó
)Loading package pin functions from %s...
17*device2U
A/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/zynq/PinFunctions.xml2default:defaultZ21-17
ï
Loading package from %s
16*device2d
P/opt/Xilinx/Vivado/2013.3/data/parts/xilinx/zynq/zynq/xc7z020/clg484/Package.xml2default:defaultZ21-16
å
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
¯
$Parsing XDC File [%s] for cell '%s'
848*designutils2ô
Ñ/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0_OOC.xdc2default:default2
inst2default:defaultZ20-848
Å
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2ô
Ñ/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0_OOC.xdc2default:default2
inst2default:defaultZ20-847
˙
$Parsing XDC File [%s] for cell '%s'
848*designutils2õ
Ü/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0_board.xdc2default:default2
inst2default:defaultZ20-848
É
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2õ
Ü/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0_board.xdc2default:default2
inst2default:defaultZ20-847
Ù
$Parsing XDC File [%s] for cell '%s'
848*designutils2ï
Ä/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0.xdc2default:default2
inst2default:defaultZ20-848
˝
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2ï
Ä/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0.xdc2default:default2
inst2default:defaultZ20-847
/
Deriving generated clocks
2*timingZ38-2
™
ŸImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2ï
Ä/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0.xdc2default:default2ú
á/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.runs/clk_wiz_0_synth_1/.Xil/clk_wiz_0_propImpl.xdc2default:defaultZ1-236
≈
Parsing XDC File [%s]
179*designutils2é
z/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.runs/clk_wiz_0_synth_1/dont_touch.xdc2default:defaultZ20-179
Œ
Finished Parsing XDC File [%s]
178*designutils2é
z/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.runs/clk_wiz_0_synth_1/dont_touch.xdc2default:defaultZ20-178
£
ŸImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2é
z/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.runs/clk_wiz_0_synth_1/dont_touch.xdc2default:default2ú
á/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.runs/clk_wiz_0_synth_1/.Xil/clk_wiz_0_propImpl.xdc2default:defaultZ1-236
?
&Completed Processing XDC Constraints

245*projectZ1-263
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
ö
%s*synth2ä
vStart RTL Optimization : Time (s): cpu = 00:00:31 ; elapsed = 00:00:36 . Memory (MB): peak = 672.129 ; gain = 274.742
2default:default
µ
%s*synth2•
êFinished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:31 ; elapsed = 00:00:36 . Memory (MB): peak = 672.133 ; gain = 274.746
2default:default
ù
%s*synth2ç
yFinished RTL Optimization : Time (s): cpu = 00:00:31 ; elapsed = 00:00:36 . Memory (MB): peak = 672.133 ; gain = 274.746
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
ã
%s*synth2|
hPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB8 0 RAMB16 0 RAMB18 60 RAMB36 30)
2default:default
±
%s*synth2°
åFinished Loading Part and Timing Information : Time (s): cpu = 00:00:48 ; elapsed = 00:00:53 . Memory (MB): peak = 723.133 ; gain = 325.746
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
5
%s*synth2&
Module clk_wiz_0 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
=
%s*synth2.
Module clk_wiz_0_clk_wiz 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
©
%s*synth2ô
ÑFinished Cross Boundary Optimization : Time (s): cpu = 00:00:48 ; elapsed = 00:00:54 . Memory (MB): peak = 723.133 ; gain = 325.746
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
Finished RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
û
%s*synth2é
zFinished Area Optimization : Time (s): cpu = 00:00:48 ; elapsed = 00:00:54 . Memory (MB): peak = 735.160 ; gain = 337.773
2default:default
≠
%s*synth2ù
àFinished Applying XDC Timing Constraints : Time (s): cpu = 00:00:49 ; elapsed = 00:00:54 . Memory (MB): peak = 735.160 ; gain = 337.773
2default:default
†
%s*synth2ê
|Finished Timing Optimization : Time (s): cpu = 00:00:49 ; elapsed = 00:00:54 . Memory (MB): peak = 735.160 ; gain = 337.773
2default:default
ü
%s*synth2è
{Finished Technology Mapping : Time (s): cpu = 00:00:49 ; elapsed = 00:00:54 . Memory (MB): peak = 735.160 ; gain = 337.773
2default:default
ô
%s*synth2â
uFinished IO Insertion : Time (s): cpu = 00:00:49 ; elapsed = 00:00:55 . Memory (MB): peak = 735.160 ; gain = 337.773
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
™
%s*synth2ö
ÖFinished Renaming Generated Instances : Time (s): cpu = 00:00:49 ; elapsed = 00:00:55 . Memory (MB): peak = 735.160 ; gain = 337.773
2default:default
ß
%s*synth2ó
ÇFinished Rebuilding User Hierarchy : Time (s): cpu = 00:00:49 ; elapsed = 00:00:55 . Memory (MB): peak = 735.160 ; gain = 337.773
2default:default
¢
%s*synth2í
~---------------------------------------------------------------------------------
Start RAM, DSP and Shift Register Reporting
2default:default
u
%s*synth2f
R---------------------------------------------------------------------------------
2default:default
¶
%s*synth2ñ
Å---------------------------------------------------------------------------------
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
|1     |BUFG       |     2|
2default:default
?
%s*synth20
|2     |LUT1       |     1|
2default:default
?
%s*synth20
|3     |MMCME2_ADV |     1|
2default:default
?
%s*synth20
|4     |IBUF       |     1|
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
P
%s*synth2A
-+------+---------+------------------+------+
2default:default
P
%s*synth2A
-|      |Instance |Module            |Cells |
2default:default
P
%s*synth2A
-+------+---------+------------------+------+
2default:default
P
%s*synth2A
-|1     |top      |                  |     5|
2default:default
P
%s*synth2A
-|2     |  inst   |clk_wiz_0_clk_wiz |     5|
2default:default
P
%s*synth2A
-+------+---------+------------------+------+
2default:default
¶
%s*synth2ñ
ÅFinished Writing Synthesis Report : Time (s): cpu = 00:00:49 ; elapsed = 00:00:55 . Memory (MB): peak = 735.160 ; gain = 337.773
2default:default
i
%s*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:default
£
%s*synth2ì
Synthesis Optimization Complete : Time (s): cpu = 00:00:49 ; elapsed = 00:00:55 . Memory (MB): peak = 735.160 ; gain = 337.773
2default:default
\
-Analyzing %s Unisim elements for replacement
17*netlist2
22default:defaultZ29-17
a
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
¯
$Parsing XDC File [%s] for cell '%s'
848*designutils2ô
Ñ/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0_OOC.xdc2default:default2
inst2default:defaultZ20-848
Å
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2ô
Ñ/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0_OOC.xdc2default:default2
inst2default:defaultZ20-847
˙
$Parsing XDC File [%s] for cell '%s'
848*designutils2õ
Ü/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0_board.xdc2default:default2
inst2default:defaultZ20-848
É
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2õ
Ü/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0_board.xdc2default:default2
inst2default:defaultZ20-847
Ù
$Parsing XDC File [%s] for cell '%s'
848*designutils2ï
Ä/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0.xdc2default:default2
inst2default:defaultZ20-848
Ù
%Done setting XDC timing constraints.
35*timing2ó
Ä/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0.xdc2default:default2
562default:default8@Z38-35
Á
Deriving generated clocks
2*timing2ó
Ä/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0.xdc2default:default2
562default:default8@Z38-2
˝
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2ï
Ä/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.srcs/sources_1/ip/clk_wiz_0_0/clk_wiz_0.xdc2default:default2
inst2default:defaultZ20-847
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
Ω
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
272default:default2
12default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42
¸
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:012default:default2
00:01:062default:default2
915.1602default:default2
443.2072default:defaultZ17-268
Å
ureport_utilization: Time (s): cpu = 00:00:00.15 ; elapsed = 00:00:00.37 . Memory (MB): peak = 915.164 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Feb 18 23:35:28 20152default:defaultZ17-206