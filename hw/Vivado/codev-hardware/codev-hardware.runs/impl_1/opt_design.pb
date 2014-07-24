
F
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113
š
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347
Š
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349
e
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22
I

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103
G
Running DRC with %s threads
24*drc2
22default:defaultZ23-27
L
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461
[
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.56 ; elapsed = 00:00:00.71 . Memory (MB): peak = 874.445 ; gain = 2.0002default:default
X

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103
4
(Logic Optimization | Checksum: 1f2bd82d
*common
<
%Done setting XDC timing constraints.
35*timingZ38-35
`

Phase %s%s
101*constraints2
1 2default:default2
Retarget2default:defaultZ18-101
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
B
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49
2
&Phase 1 Retarget | Checksum: be22b94e
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 875.445 ; gain = 1.0002default:default
l

Phase %s%s
101*constraints2
2 2default:default2(
Constant Propagation2default:defaultZ18-101
C
Pushed %s inverter(s).
98*opt2
42default:defaultZ31-138
B
Eliminated %s cells.
10*opt2
2902default:defaultZ31-10
>
2Phase 2 Constant Propagation | Checksum: 37c58fc7
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 875.445 ; gain = 1.0002default:default
]

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101
N
 Eliminated %s unconnected nets.
12*opt2
12632default:defaultZ31-12
N
!Eliminated %s unconnected cells.
11*opt2
3952default:defaultZ31-11
/
#Phase 3 Sweep | Checksum: 2803d4a4
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 875.445 ; gain = 1.0002default:default
@
4Ending Logic Optimization Task | Checksum: 2803d4a4
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 875.445 ; gain = 1.0002default:default
7
+Implement Debug Cores | Checksum: 1f2bd82d
*common
X

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103
<
%Done setting XDC timing constraints.
35*timingZ38-35
4
Applying IDT optimizations ...
9*pwroptZ34-9
6
Applying ODC optimizations ...
10*pwroptZ34-10


*pwropt
ñ
©WRITE_MODE attribute of %s BRAM(s) out of a total of %s was updated to NO_CHANGE to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
12default:default2
32default:defaultZ34-162
[
+Structural ODC has moved %s WE to EN ports
155*pwropt2
02default:defaultZ34-201
Ÿ
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
02default:default2
02default:default2
62default:defaultZ34-65
@
4Ending Power Optimization Task | Checksum: 2803d4a4
*common
†

%s
*constraints2o
[Time (s): cpu = 00:00:09 ; elapsed = 00:00:07 . Memory (MB): peak = 913.871 ; gain = 38.4262default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
¿
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
382default:default2
452default:default2
442default:default2
02default:defaultZ4-41
S
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42
ù
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:00:162default:default2
00:00:162default:default2
913.8712default:default2
41.4262default:defaultZ17-268
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
‡
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:00.342default:default2
00:00:00.352default:default2
913.8752default:default2
0.0002default:defaultZ17-268
þ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:092default:default2
00:00:062default:default2
913.8752default:default2
0.0042default:defaultZ17-268


End Record