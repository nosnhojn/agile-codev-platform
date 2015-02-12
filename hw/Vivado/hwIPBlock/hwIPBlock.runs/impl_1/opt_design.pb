
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
`Time (s): cpu = 00:00:00.20 ; elapsed = 00:00:00.21 . Memory (MB): peak = 849.859 ; gain = 2.0002default:default
X

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103
4
(Logic Optimization | Checksum: 31c28a83
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
&Phase 1 Retarget | Checksum: 31c28a83
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.18 ; elapsed = 00:00:00.19 . Memory (MB): peak = 850.859 ; gain = 1.0002default:default
l

Phase %s%s
101*constraints2
2 2default:default2(
Constant Propagation2default:defaultZ18-101
C
Pushed %s inverter(s).
98*opt2
02default:defaultZ31-138
A
Eliminated %s cells.
10*opt2
162default:defaultZ31-10
>
2Phase 2 Constant Propagation | Checksum: 6e9ab318
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.24 ; elapsed = 00:00:00.25 . Memory (MB): peak = 850.859 ; gain = 1.0002default:default
]

Phase %s%s
101*constraints2
3 2default:default2
Sweep2default:defaultZ18-101
M
 Eliminated %s unconnected nets.
12*opt2
7262default:defaultZ31-12
N
!Eliminated %s unconnected cells.
11*opt2
2172default:defaultZ31-11
/
#Phase 3 Sweep | Checksum: bc6995b9
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.82 ; elapsed = 00:00:00.83 . Memory (MB): peak = 850.859 ; gain = 1.0002default:default
@
4Ending Logic Optimization Task | Checksum: bc6995b9
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.83 ; elapsed = 00:00:00.83 . Memory (MB): peak = 850.859 ; gain = 1.0002default:default
7
+Implement Debug Cores | Checksum: 31c28a83
*common
X

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103
@
4Ending Power Optimization Task | Checksum: bc6995b9
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.01 . Memory (MB): peak = 850.859 ; gain = 0.0002default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
½
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
262default:default2
12default:default2
02default:default2
02default:defaultZ4-41
S
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42
<
%Done setting XDC timing constraints.
35*timingZ38-35


End Record