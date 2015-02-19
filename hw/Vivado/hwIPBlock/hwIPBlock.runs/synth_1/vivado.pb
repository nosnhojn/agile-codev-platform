
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
…
Loaded user repository '%s'.
1135*coregen2J
6/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock2default:defaultZ19-1700
r
Loaded Vivado repository '%s'.
1332*coregen25
!/opt/Xilinx/Vivado/2013.3/data/ip2default:defaultZ19-2313
p
Command: %s
53*	vivadotcl2H
4synth_design -top agileHWBlock -part xc7z020clg484-12default:defaultZ4-113
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
wStarting RTL Elaboration : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 496.953 ; gain = 99.562
2default:default
è
synthesizing module '%s'638*oasys2 
agileHWBlock2default:default2x
b/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/agileHwBlock.v2default:default2
12default:default8@Z8-638
ó
synthesizing module '%s'638*oasys2%
pixelProcessor_s12default:default2~
h/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/pixelProcessor_s1.sv2default:default2
12default:default8@Z8-638
W
%s*synth2H
4	Parameter MEM_DEPTH bound to: 321 - type: integer 
2default:default
U
%s*synth2F
2	Parameter P0_WIDTH bound to: 30 - type: integer 
2default:default
V
%s*synth2G
3	Parameter P1_WIDTH bound to: 120 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter P0_ADDR_WIDTH bound to: 9 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter P1_ADDR_WIDTH bound to: 7 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter INGRESS_THRESH bound to: 3 - type: integer 
2default:default
Y
%s*synth2J
6	Parameter INGRESS_FULL bound to: 10 - type: integer 
2default:default
ó
synthesizing module '%s'638*oasys2%
pixelProcessor_IO2default:default2~
h/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/pixelProcessor_IO.sv2default:default2
12default:default8@Z8-638
W
%s*synth2H
4	Parameter MEM_DEPTH bound to: 321 - type: integer 
2default:default
W
%s*synth2H
4	Parameter DATA_WIDTH bound to: 24 - type: integer 
2default:default
[
%s*synth2L
8	Parameter RAM_DATA_WIDTH bound to: 30 - type: integer 
2default:default
Z
%s*synth2K
7	Parameter RAM_ADDR_WIDTH bound to: 9 - type: integer 
2default:default
®
%done synthesizing module '%s' (%s#%s)256*oasys2%
pixelProcessor_IO2default:default2
12default:default2
12default:default2~
h/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/pixelProcessor_IO.sv2default:default2
12default:default8@Z8-256
Û
synthesizing module '%s'638*oasys2
qpram2default:default2r
\/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/qpram.sv2default:default2
12default:default8@Z8-638
Y
%s*synth2J
6	Parameter QPRAM_DEPTH bound to: 321 - type: integer 
2default:default
^
%s*synth2O
;	Parameter QPRAM_PORT0_WIDTH bound to: 30 - type: integer 
2default:default
_
%s*synth2P
<	Parameter QPRAM_PORT1_WIDTH bound to: 120 - type: integer 
2default:default
b
%s*synth2S
?	Parameter QPRAM_PORT0_ADDR_WIDTH bound to: 9 - type: integer 
2default:default
b
%s*synth2S
?	Parameter QPRAM_PORT1_ADDR_WIDTH bound to: 7 - type: integer 
2default:default
Ó
synthesizing module '%s'638*oasys2
	clk_wiz_02default:default2e
O/home/agilehw/agile-codev-platform/hw/Vivado/clk_wiz/clk_wiz_0/clk_wiz_0_stub.v2default:default2
162default:default8@Z8-638
×
Ginstance '%s' of module '%s' requires %s connections, but only %s given350*oasys2
clk22default:default2
	clk_wiz_02default:default2
42default:default2
32default:default2r
\/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/qpram.sv2default:default2
342default:default8@Z8-350
•
synthesizing module '%s'638*oasys2!
blk_mem_gen_02default:default2£
Œ/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/.Xil/Vivado-18330-agilehw-laptop/realtime/blk_mem_gen_0_stub.v2default:default2
62default:default8@Z8-638
Ð
%done synthesizing module '%s' (%s#%s)256*oasys2!
blk_mem_gen_02default:default2
22default:default2
12default:default2£
Œ/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/.Xil/Vivado-18330-agilehw-laptop/realtime/blk_mem_gen_0_stub.v2default:default2
62default:default8@Z8-256
æ
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
92default:default2
addra2default:default2
142default:default2!
blk_mem_gen_02default:default2r
\/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/qpram.sv2default:default2
882default:default8@Z8-689
æ
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
72default:default2
addrb2default:default2
122default:default2!
blk_mem_gen_02default:default2r
\/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/qpram.sv2default:default2
942default:default8@Z8-689
–
%done synthesizing module '%s' (%s#%s)256*oasys2
qpram2default:default2
32default:default2
12default:default2r
\/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/qpram.sv2default:default2
12default:default8@Z8-256
®
%done synthesizing module '%s' (%s#%s)256*oasys2%
pixelProcessor_s12default:default2
42default:default2
12default:default2~
h/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/pixelProcessor_s1.sv2default:default2
12default:default8@Z8-256
ò
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322default:default2
iTDATA2default:default2
242default:default2%
pixelProcessor_s12default:default2x
b/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/agileHwBlock.v2default:default2
282default:default8@Z8-689
ò
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322default:default2
oTDATA2default:default2
242default:default2%
pixelProcessor_s12default:default2x
b/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/agileHwBlock.v2default:default2
362default:default8@Z8-689
£
%done synthesizing module '%s' (%s#%s)256*oasys2 
agileHWBlock2default:default2
52default:default2
12default:default2x
b/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.srcs/sources_1/new/agileHwBlock.v2default:default2
12default:default8@Z8-256

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[31]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[30]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[29]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[28]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[27]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[26]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[25]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[24]2default:default2
02default:defaultZ8-3917
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[31]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[30]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[29]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[28]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[27]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[26]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[25]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[24]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2
rst2default:defaultZ8-3331
œ
%s*synth2Œ
xFinished RTL Elaboration : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 521.773 ; gain = 124.383
2default:default
š
%s*synth2Š
vStart RTL Optimization : Time (s): cpu = 00:00:14 ; elapsed = 00:00:14 . Memory (MB): peak = 521.773 ; gain = 124.383
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
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[119]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[118]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[117]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[116]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[115]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[114]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[113]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[112]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[111]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[110]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[109]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[108]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[107]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[106]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[105]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[104]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[103]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[102]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[101]2default:defaultZ8-3295
€
'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2 
wdata_1[100]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[99]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[98]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[97]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[96]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[95]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[94]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[93]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[92]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[91]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[90]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[89]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[88]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[87]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[86]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[85]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[84]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[83]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[82]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[81]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[80]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[79]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[78]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[77]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[76]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[75]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[74]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[73]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[72]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[71]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[70]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[69]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[68]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[67]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[66]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[65]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[64]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[63]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[62]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[61]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[60]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[59]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[58]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[57]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[56]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[55]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[54]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[53]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[52]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[51]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[50]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[49]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[48]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[47]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[46]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[45]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[44]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[43]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[42]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[41]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[40]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[39]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[38]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[37]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[36]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[35]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[34]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[33]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[32]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[31]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[30]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[29]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[28]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[27]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[26]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[25]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[24]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[23]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[22]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[21]2default:defaultZ8-3295

'tying undriven pin %s:%s to constant 0
3295*oasys2
my_qpram2default:default2
wdata_1[20]2default:defaultZ8-3295
Ô
Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-32952default:default2
1002default:defaultZ17-14
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
‹
$Parsing XDC File [%s] for cell '%s'
848*designutils2 
‹/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/.Xil/Vivado-18330-agilehw-laptop/dcp/clk_wiz_0_in_context.xdc2default:default2$
s1/my_qpram/clk22default:defaultZ20-848
Ô
~There are no top level ports directly connected to pins of cell '%s', returning the pins matched for query '%s' of cell '%s'.
1399*	planAhead2$
s1/my_qpram/clk22default:default2(
[get_ports clk_out1]2default:default2$
s1/my_qpram/clk22default:default2¢
‹/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/.Xil/Vivado-18330-agilehw-laptop/dcp/clk_wiz_0_in_context.xdc2default:default2
22default:default8@Z12-1399
”
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2 
‹/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/.Xil/Vivado-18330-agilehw-laptop/dcp/clk_wiz_0_in_context.xdc2default:default2$
s1/my_qpram/clk22default:defaultZ20-847
¦
Parsing XDC File [%s]
179*designutils2p
\/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/dont_touch.xdc2default:defaultZ20-179
¯
Finished Parsing XDC File [%s]
178*designutils2p
\/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/dont_touch.xdc2default:defaultZ20-178
è
ÙImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2p
\/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/dont_touch.xdc2default:default2€
l/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/.Xil/agileHWBlock_propImpl.xdc2default:defaultZ1-236
§
Parsing XDC File [%s]
179*designutils2q
]/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/dont_buffer.xdc2default:defaultZ20-179
°
Finished Parsing XDC File [%s]
178*designutils2q
]/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/dont_buffer.xdc2default:defaultZ20-178
é
ÙImplementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2q
]/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/dont_buffer.xdc2default:default2€
l/home/agilehw/agile-codev-platform/hw/Vivado/hwIPBlock/hwIPBlock.runs/synth_1/.Xil/agileHWBlock_propImpl.xdc2default:defaultZ1-236
?
&Completed Processing XDC Constraints

245*projectZ1-263
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-143
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
š
%s*synth2Š
vStart RTL Optimization : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 674.133 ; gain = 276.742
2default:default
µ
%s*synth2¥
Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 674.137 ; gain = 276.746
2default:default

%s*synth2
yFinished RTL Optimization : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 674.137 ; gain = 276.746
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
ŒFinished Loading Part and Timing Information : Time (s): cpu = 00:00:47 ; elapsed = 00:00:48 . Memory (MB): peak = 723.145 ; gain = 325.754
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      9 Bit       Adders := 2     
2default:default
Q
%s*synth2B
.	   4 Input      9 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	              120 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	               30 Bit    Registers := 3     
2default:default
Q
%s*synth2B
.	                9 Bit    Registers := 4     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 4     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input      9 Bit        Muxes := 2     
2default:default
Q
%s*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:default
F
%s*synth27
#Hierarchical RTL Component report 
2default:default
8
%s*synth2)
Module agileHWBlock 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
Module qpram 
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
.	              120 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	               30 Bit    Registers := 1     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input      9 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:default
=
%s*synth2.
Module pixelProcessor_IO 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
1
%s*synth2"
+---Adders : 
2default:default
Q
%s*synth2B
.	   2 Input     24 Bit       Adders := 1     
2default:default
Q
%s*synth2B
.	   2 Input      9 Bit       Adders := 2     
2default:default
Q
%s*synth2B
.	   4 Input      9 Bit       Adders := 1     
2default:default
4
%s*synth2%
+---Registers : 
2default:default
Q
%s*synth2B
.	               30 Bit    Registers := 2     
2default:default
Q
%s*synth2B
.	                9 Bit    Registers := 4     
2default:default
Q
%s*synth2B
.	                1 Bit    Registers := 2     
2default:default
0
%s*synth2!
+---Muxes : 
2default:default
Q
%s*synth2B
.	   2 Input      9 Bit        Muxes := 1     
2default:default
Q
%s*synth2B
.	   2 Input      1 Bit        Muxes := 1     
2default:default
=
%s*synth2.
Module pixelProcessor_s1 
2default:default
B
%s*synth23
Detailed RTL Component Info : 
2default:default
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[119] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[118] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[117] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[116] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[115] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[114] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[113] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[112] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[111] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[110] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[109] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[108] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[107] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[106] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[105] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[104] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[103] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[102] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[101] 2default:default2 
agileHWBlock2default:defaultZ8-3332
´
ESequential element (%s) is unused and will be removed from module %s.3332*oasys22
\s1/my_qpram/rdata_1_reg[100] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[99] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[98] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[97] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[96] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[95] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[94] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[93] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[92] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[91] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[90] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[89] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[88] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[87] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[86] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[85] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[84] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[83] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[82] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[81] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[80] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[79] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[78] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[77] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[76] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[75] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[74] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[73] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[72] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[71] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[70] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[69] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[68] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[67] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[66] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[65] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[64] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[63] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[62] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[61] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[60] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[59] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[58] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[57] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[56] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[55] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[54] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[53] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[52] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[51] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[50] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[49] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[48] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[47] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[46] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[45] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[44] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[43] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[42] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[41] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[40] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[39] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[38] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[37] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[36] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[35] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[34] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[33] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[32] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[31] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[30] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[29] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[28] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[27] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[26] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[25] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[24] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[23] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[22] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[21] 2default:default2 
agileHWBlock2default:defaultZ8-3332
³
ESequential element (%s) is unused and will be removed from module %s.3332*oasys21
\s1/my_qpram/rdata_1_reg[20] 2default:default2 
agileHWBlock2default:defaultZ8-3332
Ô
Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33322default:default2
1002default:defaultZ17-14

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[31]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[30]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[29]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[28]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[27]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[26]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[25]2default:default2
02default:defaultZ8-3917

+design %s has port %s driven by constant %s3447*oasys2 
agileHWBlock2default:default2

oTDATA[24]2default:default2
02default:defaultZ8-3917
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[31]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[30]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[29]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[28]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[27]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[26]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[25]2default:defaultZ8-3331
|
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2

iTDATA[24]2default:defaultZ8-3331
u
!design %s has unconnected port %s3331*oasys2 
agileHWBlock2default:default2
rst2default:defaultZ8-3331
©
%s*synth2™
„Finished Cross Boundary Optimization : Time (s): cpu = 00:00:47 ; elapsed = 00:00:48 . Memory (MB): peak = 723.145 ; gain = 325.754
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
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_ptr_reg[0] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_ptr_reg[1] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_ptr_reg[2] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_ptr_reg[3] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_ptr_reg[4] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_ptr_reg[5] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_ptr_reg[6] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_ptr_reg[7] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_ptr_reg[8] 2default:defaultZ8-3333
•
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2-
\s1/my_qpram/rst_i_n_reg 2default:defaultZ8-3333
¢
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\s1/my_pixelProcessor_IO/wdata_reg[0] 2default:defaultZ8-3333
¢
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\s1/my_pixelProcessor_IO/wdata_reg[1] 2default:defaultZ8-3333
¢
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\s1/my_pixelProcessor_IO/wdata_reg[2] 2default:defaultZ8-3333
¢
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\s1/my_pixelProcessor_IO/wdata_reg[3] 2default:defaultZ8-3333
¢
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\s1/my_pixelProcessor_IO/wdata_reg[4] 2default:defaultZ8-3333
¢
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\s1/my_pixelProcessor_IO/wdata_reg[5] 2default:defaultZ8-3333
¢
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\s1/my_pixelProcessor_IO/wdata_reg[6] 2default:defaultZ8-3333
¢
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\s1/my_pixelProcessor_IO/wdata_reg[7] 2default:defaultZ8-3333
¢
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\s1/my_pixelProcessor_IO/wdata_reg[8] 2default:defaultZ8-3333
¢
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\s1/my_pixelProcessor_IO/wdata_reg[9] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[10] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[11] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[12] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[13] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[14] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[15] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[16] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[17] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[18] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[19] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[20] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[21] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[22] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[23] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[24] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[25] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[26] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[27] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[28] 2default:defaultZ8-3333
£
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\s1/my_pixelProcessor_IO/wdata_reg[29] 2default:defaultZ8-3333
§
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\s1/my_pixelProcessor_IO/egress_ptr_reg[7] 2default:defaultZ8-3333
§
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\s1/my_pixelProcessor_IO/egress_ptr_reg[6] 2default:defaultZ8-3333
§
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\s1/my_pixelProcessor_IO/egress_ptr_reg[5] 2default:defaultZ8-3333
§
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\s1/my_pixelProcessor_IO/egress_ptr_reg[4] 2default:defaultZ8-3333
§
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\s1/my_pixelProcessor_IO/egress_ptr_reg[3] 2default:defaultZ8-3333
§
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\s1/my_pixelProcessor_IO/egress_ptr_reg[2] 2default:defaultZ8-3333
§
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\s1/my_pixelProcessor_IO/egress_ptr_reg[1] 2default:defaultZ8-3333
§
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\s1/my_pixelProcessor_IO/egress_ptr_reg[0] 2default:defaultZ8-3333
§
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2?
+\s1/my_pixelProcessor_IO/egress_ptr_reg[8] 2default:defaultZ8-3333
¢
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2:
&\s1/my_pixelProcessor_IO/waddr_reg[8] 2default:defaultZ8-3333
œ
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default24
 \s1/my_pixelProcessor_IO/wr_reg 2default:defaultZ8-3333
˜
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\s1/my_qpram/rdata_0_reg[9] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[24] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[25] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[26] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[27] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[28] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[29] 2default:defaultZ8-3333
˜
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\s1/my_qpram/rdata_0_reg[0] 2default:defaultZ8-3333
˜
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\s1/my_qpram/rdata_0_reg[1] 2default:defaultZ8-3333
˜
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\s1/my_qpram/rdata_0_reg[2] 2default:defaultZ8-3333
˜
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\s1/my_qpram/rdata_0_reg[3] 2default:defaultZ8-3333
˜
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\s1/my_qpram/rdata_0_reg[4] 2default:defaultZ8-3333
˜
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\s1/my_qpram/rdata_0_reg[5] 2default:defaultZ8-3333
˜
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\s1/my_qpram/rdata_0_reg[6] 2default:defaultZ8-3333
˜
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\s1/my_qpram/rdata_0_reg[7] 2default:defaultZ8-3333
˜
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default20
\s1/my_qpram/rdata_0_reg[8] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[10] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[11] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[12] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[13] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[14] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[15] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[16] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[17] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[18] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[19] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[20] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[21] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[22] 2default:defaultZ8-3333
™
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default21
\s1/my_qpram/rdata_0_reg[23] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_cnt_reg[0] 2default:defaultZ8-3333
°
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2H
4\s1/my_pixelProcessor_IO/concatenated_rdata_reg[23] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_cnt_reg[3] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_cnt_reg[2] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_cnt_reg[1] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_cnt_reg[8] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_cnt_reg[7] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_cnt_reg[6] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_cnt_reg[4] 2default:defaultZ8-3333
¨
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2@
,\s1/my_pixelProcessor_IO/ingress_cnt_reg[5] 2default:defaultZ8-3333
¡
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default29
%\s1/my_pixelProcessor_IO/oTVALID_reg 2default:defaultZ8-3333
ž
%s*synth2Ž
zFinished Area Optimization : Time (s): cpu = 00:00:47 ; elapsed = 00:00:49 . Memory (MB): peak = 741.195 ; gain = 343.805
2default:default
{
%s*synth2l
XINFO: Moved 1 constraints on hierarchical pins to their respective driving/loading pins
2default:default
­
%s*synth2
ˆFinished Applying XDC Timing Constraints : Time (s): cpu = 00:00:47 ; elapsed = 00:00:49 . Memory (MB): peak = 741.195 ; gain = 343.805
2default:default
 
%s*synth2
|Finished Timing Optimization : Time (s): cpu = 00:00:47 ; elapsed = 00:00:49 . Memory (MB): peak = 741.195 ; gain = 343.805
2default:default
Ÿ
%s*synth2
{Finished Technology Mapping : Time (s): cpu = 00:00:47 ; elapsed = 00:00:49 . Memory (MB): peak = 741.195 ; gain = 343.805
2default:default
™
%s*synth2‰
uFinished IO Insertion : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 741.195 ; gain = 343.805
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
…Finished Renaming Generated Instances : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 741.195 ; gain = 343.805
2default:default
§
%s*synth2—
‚Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 741.195 ; gain = 343.805
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
F
%s*synth27
#+------+--------------+----------+
2default:default
F
%s*synth27
#|      |BlackBox name |Instances |
2default:default
F
%s*synth27
#+------+--------------+----------+
2default:default
F
%s*synth27
#|1     |clk_wiz_0     |         1|
2default:default
F
%s*synth27
#|2     |blk_mem_gen_0 |         1|
2default:default
F
%s*synth27
#+------+--------------+----------+
2default:default
8
%s*synth2)

Report Cell Usage: 
2default:default
C
%s*synth24
 +------+---------------+------+
2default:default
C
%s*synth24
 |      |Cell           |Count |
2default:default
C
%s*synth24
 +------+---------------+------+
2default:default
C
%s*synth24
 |1     |blk_mem_gen_0  |     1|
2default:default
C
%s*synth24
 |2     |clk_wiz_0_bbox |     1|
2default:default
C
%s*synth24
 |3     |OBUF           |    32|
2default:default
C
%s*synth24
 +------+---------------+------+
2default:default
<
%s*synth2-

Report Instance Areas: 
2default:default
T
%s*synth2E
1+------+-------------+------------------+------+
2default:default
T
%s*synth2E
1|      |Instance     |Module            |Cells |
2default:default
T
%s*synth2E
1+------+-------------+------------------+------+
2default:default
T
%s*synth2E
1|1     |top          |                  |   184|
2default:default
T
%s*synth2E
1|2     |  s1         |pixelProcessor_s1 |   152|
2default:default
T
%s*synth2E
1|3     |    my_qpram |qpram             |   152|
2default:default
T
%s*synth2E
1+------+-------------+------------------+------+
2default:default
¦
%s*synth2–
Finished Writing Synthesis Report : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 741.195 ; gain = 343.805
2default:default
k
%s*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 267 warnings.
2default:default
£
%s*synth2“
Synthesis Optimization Complete : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 741.195 ; gain = 343.805
2default:default
^
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
02default:defaultZ31-140
^
1Inserted %s OBUFs to IO ports without IO buffers.101*opt2
02default:defaultZ31-141
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
|
MSuccessfully populated the BRAM INIT strings from the following elf files: %s96*memdata2
 2default:defaultZ28-143
u
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111
L
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83
À
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1182default:default2
2402default:default2
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
00:01:012default:default2
00:01:022default:default2
914.1882default:default2
441.2302default:defaultZ17-268
<
%Done setting XDC timing constraints.
35*timingZ38-35
~
rreport_utilization: Time (s): cpu = 00:00:00.18 ; elapsed = 00:00:01 . Memory (MB): peak = 914.191 ; gain = 0.000
*common
w
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Feb 12 11:03:17 20152default:defaultZ17-206