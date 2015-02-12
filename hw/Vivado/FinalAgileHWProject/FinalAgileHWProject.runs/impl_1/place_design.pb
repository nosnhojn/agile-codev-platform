
H
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113
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
g
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22
G
Running DRC with %s threads
24*drc2
22default:defaultZ23-27
M
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
L

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103
t
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
22default:defaultZ30-611
m

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101
Œ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
913.8672default:default2
0.0002default:defaultZ17-268
v

Phase %s%s
101*constraints2
1.1 2default:default20
Mandatory Logic Optimization2default:defaultZ18-101
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
Œ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
913.8672default:default2
0.0002default:defaultZ17-268
H
<Phase 1.1 Mandatory Logic Optimization | Checksum: daa8fce7
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.60 ; elapsed = 00:00:00.67 . Memory (MB): peak = 913.867 ; gain = 0.0002default:default


Phase %s%s
101*constraints2
1.2 2default:default2;
'Build Super Logic Region (SLR) Database2default:defaultZ18-101
S
GPhase 1.2 Build Super Logic Region (SLR) Database | Checksum: daa8fce7
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.62 ; elapsed = 00:00:00.69 . Memory (MB): peak = 913.867 ; gain = 0.0002default:default
i

Phase %s%s
101*constraints2
1.3 2default:default2#
Add Constraints2default:defaultZ18-101
;
/Phase 1.3 Add Constraints | Checksum: daa8fce7
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.62 ; elapsed = 00:00:00.69 . Memory (MB): peak = 913.867 ; gain = 0.0002default:default
f

Phase %s%s
101*constraints2
1.4 2default:default2 
Build Macros2default:defaultZ18-101
8
,Phase 1.4 Build Macros | Checksum: fd8e4946
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 913.867 ; gain = 0.0002default:default
v

Phase %s%s
101*constraints2
1.5 2default:default20
Routing Based Site Exclusion2default:defaultZ18-101
H
<Phase 1.5 Routing Based Site Exclusion | Checksum: fd8e4946
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 913.867 ; gain = 0.0002default:default
z

Phase %s%s
101*constraints2
1.6 2default:default24
 Implementation Feasibility check2default:defaultZ18-101
L
@Phase 1.6 Implementation Feasibility check | Checksum: fd8e4946
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 913.867 ; gain = 0.0002default:default
i

Phase %s%s
101*constraints2
1.7 2default:default2#
Pre-Place Cells2default:defaultZ18-101
;
/Phase 1.7 Pre-Place Cells | Checksum: fd8e4946
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 913.867 ; gain = 0.0002default:default
Œ

Phase %s%s
101*constraints2
1.8 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101
^
RPhase 1.8 IO Placement/ Clock Placement/ Build Placer Device | Checksum: fd8e4946
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 921.867 ; gain = 8.0002default:default
t

Phase %s%s
101*constraints2
1.9 2default:default2.
Build Placer Netlist Model2default:defaultZ18-101
m

Phase %s%s
101*constraints2
1.9.1 2default:default2%
Place Init Design2default:defaultZ18-101
n

Phase %s%s
101*constraints2
1.9.1.1 2default:default2$
Build Clock Data2default:defaultZ18-101
@
4Phase 1.9.1.1 Build Clock Data | Checksum: e58481f4
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:16 ; elapsed = 00:00:13 . Memory (MB): peak = 921.867 ; gain = 8.0002default:default
@
4Phase 1.9.1 Place Init Design | Checksum: 16246eb6b
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:16 ; elapsed = 00:00:13 . Memory (MB): peak = 921.867 ; gain = 8.0002default:default
G
;Phase 1.9 Build Placer Netlist Model | Checksum: 16246eb6b
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:16 ; elapsed = 00:00:13 . Memory (MB): peak = 921.867 ; gain = 8.0002default:default
r

Phase %s%s
101*constraints2
1.10 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101
}

Phase %s%s
101*constraints2
1.10.1 2default:default24
 Constrain Global/Regional Clocks2default:defaultZ18-101
P
DPhase 1.10.1 Constrain Global/Regional Clocks | Checksum: 1539b4a89
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:16 ; elapsed = 00:00:13 . Memory (MB): peak = 921.867 ; gain = 8.0002default:default
E
9Phase 1.10 Constrain Clocks/Macros | Checksum: 1539b4a89
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:16 ; elapsed = 00:00:13 . Memory (MB): peak = 921.867 ; gain = 8.0002default:default
@
4Phase 1 Placer Initialization | Checksum: 1539b4a89
*common
…

%s
*constraints2n
ZTime (s): cpu = 00:00:16 ; elapsed = 00:00:13 . Memory (MB): peak = 921.867 ; gain = 8.0002default:default
h

Phase %s%s
101*constraints2
2 2default:default2$
Global Placement2default:defaultZ18-101
:
.Phase 2 Global Placement | Checksum: d4bf09b7
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:21 ; elapsed = 00:00:52 . Memory (MB): peak = 935.492 ; gain = 21.6252default:default
h

Phase %s%s
101*constraints2
3 2default:default2$
Detail Placement2default:defaultZ18-101
t

Phase %s%s
101*constraints2
3.1 2default:default2.
Commit Multi Column Macros2default:defaultZ18-101
F
:Phase 3.1 Commit Multi Column Macros | Checksum: d4bf09b7
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:21 ; elapsed = 00:00:52 . Memory (MB): peak = 935.492 ; gain = 21.6252default:default
v

Phase %s%s
101*constraints2
3.2 2default:default20
Commit Most Macros & LUTRAMs2default:defaultZ18-101
H
<Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 23e31c80
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:27 ; elapsed = 00:00:56 . Memory (MB): peak = 938.906 ; gain = 25.0392default:default
p

Phase %s%s
101*constraints2
3.3 2default:default2*
Area Swap Optimization2default:defaultZ18-101
B
6Phase 3.3 Area Swap Optimization | Checksum: 82ca1403
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:27 ; elapsed = 00:00:56 . Memory (MB): peak = 938.906 ; gain = 25.0392default:default
o

Phase %s%s
101*constraints2
3.4 2default:default2)
Timing Path Optimizer2default:defaultZ18-101
A
5Phase 3.4 Timing Path Optimizer | Checksum: 5d057ca9
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:30 ; elapsed = 00:00:58 . Memory (MB): peak = 940.312 ; gain = 26.4452default:default
z

Phase %s%s
101*constraints2
3.5 2default:default24
 Commit Small Macros & Core Logic2default:defaultZ18-101
L
@Phase 3.5 Commit Small Macros & Core Logic | Checksum: 78b996fb
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:35 ; elapsed = 00:01:03 . Memory (MB): peak = 948.316 ; gain = 34.4492default:default
l

Phase %s%s
101*constraints2
3.6 2default:default2&
Re-assign LUT pins2default:defaultZ18-101
>
2Phase 3.6 Re-assign LUT pins | Checksum: 78b996fb
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:36 ; elapsed = 00:01:04 . Memory (MB): peak = 948.316 ; gain = 34.4492default:default
:
.Phase 3 Detail Placement | Checksum: 78b996fb
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:36 ; elapsed = 00:01:04 . Memory (MB): peak = 948.316 ; gain = 34.4492default:default
€

Phase %s%s
101*constraints2
4 2default:default2<
(Post Placement Optimization and Clean-Up2default:defaultZ18-101
|

Phase %s%s
101*constraints2
4.1 2default:default26
"Post Placement Timing Optimization2default:defaultZ18-101
r

Phase %s%s
101*constraints2
4.1.1 2default:default2*
Restore Best Placement2default:defaultZ18-101
E
9Phase 4.1.1 Restore Best Placement | Checksum: 1e91a17ce
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:58 ; elapsed = 00:01:24 . Memory (MB): peak = 952.723 ; gain = 38.8552default:default
O
CPhase 4.1 Post Placement Timing Optimization | Checksum: 1e91a17ce
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:58 ; elapsed = 00:01:24 . Memory (MB): peak = 952.723 ; gain = 38.8552default:default
p

Phase %s%s
101*constraints2
4.2 2default:default2*
Post Placement Cleanup2default:defaultZ18-101
C
7Phase 4.2 Post Placement Cleanup | Checksum: 1e91a17ce
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:58 ; elapsed = 00:01:24 . Memory (MB): peak = 952.723 ; gain = 38.8552default:default
j

Phase %s%s
101*constraints2
4.3 2default:default2$
Placer Reporting2default:defaultZ18-101
p

Phase %s%s
101*constraints2
4.3.1 2default:default2(
Congestion Reporting2default:defaultZ18-101
C
7Phase 4.3.1 Congestion Reporting | Checksum: 1e91a17ce
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:58 ; elapsed = 00:01:24 . Memory (MB): peak = 952.723 ; gain = 38.8552default:default
p

Phase %s%s
101*constraints2
4.3.2 2default:default2(
Dump Critical Paths 2default:defaultZ18-101
C
7Phase 4.3.2 Dump Critical Paths  | Checksum: 1e91a17ce
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:58 ; elapsed = 00:01:24 . Memory (MB): peak = 952.723 ; gain = 38.8552default:default
g

Phase %s%s
101*constraints2
4.3.3 2default:default2
Restore STA2default:defaultZ18-101
:
.Phase 4.3.3 Restore STA | Checksum: 1e91a17ce
*common
†

%s
*constraints2o
[Time (s): cpu = 00:01:58 ; elapsed = 00:01:24 . Memory (MB): peak = 952.723 ; gain = 38.8552default:default
k

Phase %s%s
101*constraints2
4.3.4 2default:default2#
Print Final WNS2default:defaultZ18-101
m
!Post Placement Timing Summary %s
2*	placeflow20
| WNS=-2.380 | TNS=-36.721|
2default:defaultZ30-100
>
2Phase 4.3.4 Print Final WNS | Checksum: 1e91a17ce
*common
†

%s
*constraints2o
[Time (s): cpu = 00:02:09 ; elapsed = 00:01:30 . Memory (MB): peak = 957.723 ; gain = 43.8552default:default
=
1Phase 4.3 Placer Reporting | Checksum: 1ef953052
*common
†

%s
*constraints2o
[Time (s): cpu = 00:02:09 ; elapsed = 00:01:30 . Memory (MB): peak = 957.723 ; gain = 43.8552default:default
q

Phase %s%s
101*constraints2
4.4 2default:default2+
Final Placement Cleanup2default:defaultZ18-101
D
8Phase 4.4 Final Placement Cleanup | Checksum: 24b3fe16a
*common
†

%s
*constraints2o
[Time (s): cpu = 00:02:09 ; elapsed = 00:01:30 . Memory (MB): peak = 957.723 ; gain = 43.8552default:default
S
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 24b3fe16a
*common
†

%s
*constraints2o
[Time (s): cpu = 00:02:09 ; elapsed = 00:01:30 . Memory (MB): peak = 957.723 ; gain = 43.8552default:default
5
)Ending Placer Task | Checksum: 1e1da1b99
*common
†

%s
*constraints2o
[Time (s): cpu = 00:02:09 ; elapsed = 00:01:30 . Memory (MB): peak = 957.723 ; gain = 43.8552default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
À
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1422default:default2
32default:default2
1022default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42
û
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
place_design: 2default:default2
00:02:102default:default2
00:01:312default:default2
957.7232default:default2
43.8552default:defaultZ17-268
a

DEBUG : %s144*timing2<
(Generate clock report | CPU: 0.67 secs 
2default:defaultZ38-163

ureport_utilization: Time (s): cpu = 00:00:00.35 ; elapsed = 00:00:00.40 . Memory (MB): peak = 959.723 ; gain = 0.000
*common
m

DEBUG : %s134*designutils2C
/Generate Control Sets report | CPU: 0.21 secs 
2default:defaultZ20-134
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210

I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2
00:00:022default:default2
962.1292default:default2
0.0002default:defaultZ17-268
þ
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:072default:default2
00:00:052default:default2
962.1332default:default2
2.4102default:defaultZ17-268


End Record