
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
>Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: c382e5f7
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:49 ; elapsed = 00:00:38 . Memory (MB): peak = 1051.461 ; gain = 89.1292default:default
9
-Phase 1 Build RT Design | Checksum: d7511134
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:00:38 . Memory (MB): peak = 1051.461 ; gain = 89.1292default:default
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
8
,Phase 2.1 Create Timer | Checksum: d7511134
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:00:39 . Memory (MB): peak = 1051.465 ; gain = 89.1332default:default
i

Phase %s%s
101*constraints2
2.2 2default:default2#
Restore Routing2default:defaultZ18-101
;
/Phase 2.2 Restore Routing | Checksum: d7511134
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:00:39 . Memory (MB): peak = 1054.461 ; gain = 92.1292default:default
m

Phase %s%s
101*constraints2
2.3 2default:default2'
Special Net Routing2default:defaultZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: 5f011f25
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:51 ; elapsed = 00:00:40 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
q

Phase %s%s
101*constraints2
2.4 2default:default2+
Local Clock Net Routing2default:defaultZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: 5f011f25
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:51 ; elapsed = 00:00:40 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
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
2Phase 2.5.1.1 Hold Budgeting | Checksum: 5f011f25
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:01 ; elapsed = 00:00:46 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: 5f011f25
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:01 ; elapsed = 00:00:46 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
9
-Phase 2.5 Update Timing | Checksum: 5f011f25
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:01 ; elapsed = 00:00:46 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-3.37  | TNS=-53.1  | WHS=-0.298 | THS=-180   |
2default:defaultZ35-57
c

Phase %s%s
101*constraints2
2.6 2default:default2
	Budgeting2default:defaultZ18-101
5
)Phase 2.6 Budgeting | Checksum: 5f011f25
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:07 ; elapsed = 00:00:50 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
?
3Phase 2 Router Initialization | Checksum: 5f011f25
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:07 ; elapsed = 00:00:50 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
:
.Phase 3 Initial Routing | Checksum: 147cc92fd
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:10 ; elapsed = 00:00:52 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
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
>
2Phase 4.1.1 Remove Overlaps | Checksum: 189fd09de
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:18 ; elapsed = 00:00:56 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
i

Phase %s%s
101*constraints2
4.1.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.1.2 Update Timing | Checksum: 189fd09de
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:20 ; elapsed = 00:00:58 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-4.88  | TNS=-89.7  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.1.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
C
7Phase 4.1.3 collectNewHoldAndFix | Checksum: 17fc7e6aa
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:21 ; elapsed = 00:00:58 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
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
>
2Phase 4.1.4.1 Update Timing | Checksum: 17fc7e6aa
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:21 ; elapsed = 00:00:59 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
l

Phase %s%s
101*constraints2
4.1.4.2 2default:default2"
Fast Budgeting2default:defaultZ18-101
?
3Phase 4.1.4.2 Fast Budgeting | Checksum: 17fc7e6aa
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:22 ; elapsed = 00:00:59 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
@
4Phase 4.1.4 GlobIterForTiming | Checksum: 17fc7e6aa
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:22 ; elapsed = 00:00:59 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
?
3Phase 4.1 Global Iteration 0 | Checksum: 17fc7e6aa
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:22 ; elapsed = 00:00:59 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
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
2Phase 4.2.1 Remove Overlaps | Checksum: 1028ed62e
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:22 ; elapsed = 00:00:59 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
i

Phase %s%s
101*constraints2
4.2.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.2.2 Update Timing | Checksum: 1028ed62e
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:22 ; elapsed = 00:01:00 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-4.88  | TNS=-89.7  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.2.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
C
7Phase 4.2.3 collectNewHoldAndFix | Checksum: 1028ed62e
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:22 ; elapsed = 00:01:00 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
?
3Phase 4.2 Global Iteration 1 | Checksum: 1028ed62e
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:22 ; elapsed = 00:01:00 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
=
1Phase 4 Rip-up And Reroute | Checksum: 1028ed62e
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:22 ; elapsed = 00:01:00 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
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
.Phase 5.1 Update Timing | Checksum: 1028ed62e
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:25 ; elapsed = 00:01:01 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-4.88  | TNS=-89    | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
8
,Phase 5 Delay CleanUp | Checksum: 164fe130b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:26 ; elapsed = 00:01:02 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
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
0Phase 6.1.1 Update Timing | Checksum: 164fe130b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:30 ; elapsed = 00:01:05 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-4.88  | TNS=-79.8  | WHS=0.028  | THS=0      |
2default:defaultZ35-57
?
3Phase 6.1 Full Hold Analysis | Checksum: 164fe130b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:30 ; elapsed = 00:01:05 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
8
,Phase 6 Post Hold Fix | Checksum: 164fe130b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:30 ; elapsed = 00:01:05 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
m

Phase %s%s
101*constraints2
7 2default:default2)
Verifying routed nets2default:defaultZ18-101
@
4Phase 7 Verifying routed nets | Checksum: 164fe130b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:31 ; elapsed = 00:01:05 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
i

Phase %s%s
101*constraints2
8 2default:default2%
Depositing Routes2default:defaultZ18-101
;
/Phase 8 Depositing Routes | Checksum: 82edbbbe
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:32 ; elapsed = 00:01:07 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
j

Phase %s%s
101*constraints2
9 2default:default2&
Post Router Timing2default:defaultZ18-101

Post Routing Timing Summary %s
20*route2J
6| WNS=-4.881 | TNS=-79.703| WHS=0.029  | THS=0.000  |
2default:defaultZ35-20
z
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39
ô
ÜTNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253
<
0Phase 9 Post Router Timing | Checksum: 82edbbbe
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:42 ; elapsed = 00:01:12 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
4
Router Completed Successfully
16*routeZ35-16
3
'Ending Route Task | Checksum: 82edbbbe
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:42 ; elapsed = 00:01:12 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:42 ; elapsed = 00:01:12 . Memory (MB): peak = 1079.461 ; gain = 117.1292default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
À
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1592default:default2
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
00:01:432default:default2
00:01:132default:default2
1079.4612default:default2
117.1292default:defaultZ17-268
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
00:00:332default:default2
00:00:232default:default2
1087.4612default:default2
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
1087.4652default:default2
0.0002default:defaultZ17-268


End Record