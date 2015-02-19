
H
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113
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
route_design2default:defaultZ4-22
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
M

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103
p
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
22default:defaultZ35-254
K

Starting %s Task
103*constraints2
Route2default:defaultZ18-103
g

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101
x

Phase %s%s
101*constraints2
1.1 2default:default22
Build Netlist & NodeGraph (MT)2default:defaultZ18-101
J
>Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 881c3b17
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:00:37 . Memory (MB): peak = 1050.121 ; gain = 86.1292default:default
:
.Phase 1 Build RT Design | Checksum: 13027c3de
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:00:38 . Memory (MB): peak = 1051.121 ; gain = 87.1292default:default
m

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101
f

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101
9
-Phase 2.1 Create Timer | Checksum: 13027c3de
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:00:38 . Memory (MB): peak = 1051.125 ; gain = 87.1332default:default
i

Phase %s%s
101*constraints2
2.2 2default:default2#
Restore Routing2default:defaultZ18-101
<
0Phase 2.2 Restore Routing | Checksum: 13027c3de
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:00:38 . Memory (MB): peak = 1054.121 ; gain = 90.1292default:default
m

Phase %s%s
101*constraints2
2.3 2default:default2'
Special Net Routing2default:defaultZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: 6ec525ef
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:52 ; elapsed = 00:00:40 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
q

Phase %s%s
101*constraints2
2.4 2default:default2+
Local Clock Net Routing2default:defaultZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: 6ec525ef
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:52 ; elapsed = 00:00:40 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
g

Phase %s%s
101*constraints2
2.5 2default:default2!
Update Timing2default:defaultZ18-101
w

Phase %s%s
101*constraints2
2.5.1 2default:default2/
Update timing with NCN CRPR2default:defaultZ18-101
l

Phase %s%s
101*constraints2
2.5.1.1 2default:default2"
Hold Budgeting2default:defaultZ18-101
>
2Phase 2.5.1.1 Hold Budgeting | Checksum: 6ec525ef
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:46 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: 6ec525ef
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:46 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
9
-Phase 2.5 Update Timing | Checksum: 6ec525ef
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:46 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-3.38  | TNS=-54    | WHS=-0.218 | THS=-173   |
2default:defaultZ35-57
c

Phase %s%s
101*constraints2
2.6 2default:default2
	Budgeting2default:defaultZ18-101
5
)Phase 2.6 Budgeting | Checksum: 6ec525ef
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:08 ; elapsed = 00:00:50 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
?
3Phase 2 Router Initialization | Checksum: 6ec525ef
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:08 ; elapsed = 00:00:50 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
:
.Phase 3 Initial Routing | Checksum: 14cf6174e
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:12 ; elapsed = 00:00:53 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
j

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101
l

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.1.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
=
1Phase 4.1.1 Remove Overlaps | Checksum: ac480688
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:20 ; elapsed = 00:00:57 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
i

Phase %s%s
101*constraints2
4.1.2 2default:default2!
Update Timing2default:defaultZ18-101
;
/Phase 4.1.2 Update Timing | Checksum: ac480688
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:23 ; elapsed = 00:00:59 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-4.88  | TNS=-93    | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.1.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
B
6Phase 4.1.3 collectNewHoldAndFix | Checksum: ec83a44b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:23 ; elapsed = 00:00:59 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
m

Phase %s%s
101*constraints2
4.1.4 2default:default2%
GlobIterForTiming2default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.1.4.1 2default:default2!
Update Timing2default:defaultZ18-101
=
1Phase 4.1.4.1 Update Timing | Checksum: ec83a44b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:24 ; elapsed = 00:01:00 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
l

Phase %s%s
101*constraints2
4.1.4.2 2default:default2"
Fast Budgeting2default:defaultZ18-101
>
2Phase 4.1.4.2 Fast Budgeting | Checksum: ec83a44b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:24 ; elapsed = 00:01:00 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
?
3Phase 4.1.4 GlobIterForTiming | Checksum: ec83a44b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:24 ; elapsed = 00:01:00 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
>
2Phase 4.1 Global Iteration 0 | Checksum: ec83a44b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:24 ; elapsed = 00:01:00 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
l

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.2.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
>
2Phase 4.2.1 Remove Overlaps | Checksum: 12351bcc9
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:00 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
i

Phase %s%s
101*constraints2
4.2.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.2.2 Update Timing | Checksum: 12351bcc9
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:01 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-4.88  | TNS=-93    | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.2.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
B
6Phase 4.2.3 collectNewHoldAndFix | Checksum: cb1f810b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:01 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
>
2Phase 4.2 Global Iteration 1 | Checksum: cb1f810b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:01 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
l

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.3.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
=
1Phase 4.3.1 Remove Overlaps | Checksum: 8bac8c05
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:01 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
i

Phase %s%s
101*constraints2
4.3.2 2default:default2!
Update Timing2default:defaultZ18-101
;
/Phase 4.3.2 Update Timing | Checksum: 8bac8c05
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:01 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-4.88  | TNS=-93    | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.3.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
B
6Phase 4.3.3 collectNewHoldAndFix | Checksum: cb1f810b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:01 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
>
2Phase 4.3 Global Iteration 2 | Checksum: cb1f810b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:01 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
l

Phase %s%s
101*constraints2
4.4 2default:default2&
Global Iteration 32default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.4.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
>
2Phase 4.4.1 Remove Overlaps | Checksum: 1172c5cf6
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:26 ; elapsed = 00:01:01 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
i

Phase %s%s
101*constraints2
4.4.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.4.2 Update Timing | Checksum: 1172c5cf6
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:26 ; elapsed = 00:01:02 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-4.88  | TNS=-93    | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.4.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
C
7Phase 4.4.3 collectNewHoldAndFix | Checksum: 1172c5cf6
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:26 ; elapsed = 00:01:02 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
?
3Phase 4.4 Global Iteration 3 | Checksum: 1172c5cf6
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:26 ; elapsed = 00:01:02 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
=
1Phase 4 Rip-up And Reroute | Checksum: 1172c5cf6
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:26 ; elapsed = 00:01:02 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
e

Phase %s%s
101*constraints2
5 2default:default2!
Delay CleanUp2default:defaultZ18-101
g

Phase %s%s
101*constraints2
5.1 2default:default2!
Update Timing2default:defaultZ18-101
:
.Phase 5.1 Update Timing | Checksum: 1172c5cf6
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:29 ; elapsed = 00:01:03 . Memory (MB): peak = 1078.121 ; gain = 114.1292default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-4.88  | TNS=-89.7  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
8
,Phase 5 Delay CleanUp | Checksum: 1270e41c8
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:31 ; elapsed = 00:01:05 . Memory (MB): peak = 1082.121 ; gain = 118.1292default:default
e

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101
l

Phase %s%s
101*constraints2
6.1 2default:default2&
Full Hold Analysis2default:defaultZ18-101
i

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 6.1.1 Update Timing | Checksum: 1270e41c8
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:35 ; elapsed = 00:01:07 . Memory (MB): peak = 1082.121 ; gain = 118.1292default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-4.88  | TNS=-82.8  | WHS=0.036  | THS=0      |
2default:defaultZ35-57
?
3Phase 6.1 Full Hold Analysis | Checksum: 1270e41c8
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:35 ; elapsed = 00:01:07 . Memory (MB): peak = 1082.121 ; gain = 118.1292default:default
8
,Phase 6 Post Hold Fix | Checksum: 1270e41c8
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:35 ; elapsed = 00:01:07 . Memory (MB): peak = 1082.121 ; gain = 118.1292default:default
m

Phase %s%s
101*constraints2
7 2default:default2)
Verifying routed nets2default:defaultZ18-101
@
4Phase 7 Verifying routed nets | Checksum: 1270e41c8
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:36 ; elapsed = 00:01:08 . Memory (MB): peak = 1082.121 ; gain = 118.1292default:default
i

Phase %s%s
101*constraints2
8 2default:default2%
Depositing Routes2default:defaultZ18-101
;
/Phase 8 Depositing Routes | Checksum: e429f605
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:37 ; elapsed = 00:01:09 . Memory (MB): peak = 1082.121 ; gain = 118.1292default:default
j

Phase %s%s
101*constraints2
9 2default:default2&
Post Router Timing2default:defaultZ18-101

Post Routing Timing Summary %s
20*route2J
6| WNS=-4.881 | TNS=-82.796| WHS=0.038  | THS=0.000  |
2default:defaultZ35-20
z
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39
ô
ÜTNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253
<
0Phase 9 Post Router Timing | Checksum: e429f605
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:47 ; elapsed = 00:01:15 . Memory (MB): peak = 1082.121 ; gain = 118.1292default:default
4
Router Completed Successfully
16*routeZ35-16
3
'Ending Route Task | Checksum: e429f605
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:47 ; elapsed = 00:01:15 . Memory (MB): peak = 1082.121 ; gain = 118.1292default:default
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:47 ; elapsed = 00:01:15 . Memory (MB): peak = 1082.121 ; gain = 118.1292default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
À
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1622default:default2
32default:default2
1032default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42
ý
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:01:482default:default2
00:01:162default:default2
1082.1212default:default2
118.1292default:defaultZ17-268
G
Running DRC with %s threads
24*drc2
22default:defaultZ23-27
á
#The results of DRC are in file %s.
168*coretcl2 
ƒ/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.runs/impl_1/FinalDesign_wrapper_drc_routed.rptƒ/home/agilehw/agile-codev-platform/hw/Vivado/FinalAgileHWProject/FinalAgileHWProject.runs/impl_1/FinalDesign_wrapper_drc_routed.rpt2default:default8Z2-168
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1
û
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:342default:default2
00:00:252default:default2
1086.1212default:default2
0.0002default:defaultZ17-268
€
UpdateTimingParams:%s.
91*timing2P
< Speed grade: -1, Delay Type: min_max, Constraints type: SDC2default:defaultZ38-91
s
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
‚
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:022default:default2
00:00:022default:default2
1086.1252default:default2
0.0002default:defaultZ17-268


End Record