
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
K
?Phase 1.1 Build Netlist & NodeGraph (MT) | Checksum: 100b1c07c
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:49 ; elapsed = 00:00:37 . Memory (MB): peak = 1054.500 ; gain = 87.1292default:default
:
.Phase 1 Build RT Design | Checksum: 1020eae17
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:49 ; elapsed = 00:00:37 . Memory (MB): peak = 1054.500 ; gain = 87.1292default:default
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
-Phase 2.1 Create Timer | Checksum: 1020eae17
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:00:38 . Memory (MB): peak = 1054.504 ; gain = 87.1332default:default
i

Phase %s%s
101*constraints2
2.2 2default:default2#
Restore Routing2default:defaultZ18-101
<
0Phase 2.2 Restore Routing | Checksum: 1020eae17
*common
‡

%s
*constraints2p
\Time (s): cpu = 00:00:50 ; elapsed = 00:00:38 . Memory (MB): peak = 1057.500 ; gain = 90.1292default:default
m

Phase %s%s
101*constraints2
2.3 2default:default2'
Special Net Routing2default:defaultZ18-101
?
3Phase 2.3 Special Net Routing | Checksum: b57d0d38
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:51 ; elapsed = 00:00:39 . Memory (MB): peak = 1081.188 ; gain = 113.8162default:default
q

Phase %s%s
101*constraints2
2.4 2default:default2+
Local Clock Net Routing2default:defaultZ18-101
C
7Phase 2.4 Local Clock Net Routing | Checksum: b57d0d38
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:00:51 ; elapsed = 00:00:39 . Memory (MB): peak = 1081.188 ; gain = 113.8162default:default
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
2Phase 2.5.1.1 Hold Budgeting | Checksum: b57d0d38
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:46 . Memory (MB): peak = 1081.188 ; gain = 113.8162default:default
I
=Phase 2.5.1 Update timing with NCN CRPR | Checksum: b57d0d38
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:46 . Memory (MB): peak = 1081.188 ; gain = 113.8162default:default
9
-Phase 2.5 Update Timing | Checksum: b57d0d38
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:02 ; elapsed = 00:00:46 . Memory (MB): peak = 1081.188 ; gain = 113.8162default:default
€
Estimated Timing Summary %s
57*route2L
8| WNS=-7.44  | TNS=-1.52e+03| WHS=-0.849 | THS=-199   |
2default:defaultZ35-57
c

Phase %s%s
101*constraints2
2.6 2default:default2
	Budgeting2default:defaultZ18-101
5
)Phase 2.6 Budgeting | Checksum: b57d0d38
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:09 ; elapsed = 00:00:51 . Memory (MB): peak = 1081.188 ; gain = 113.8162default:default
?
3Phase 2 Router Initialization | Checksum: b57d0d38
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:01:09 ; elapsed = 00:00:51 . Memory (MB): peak = 1081.188 ; gain = 113.8162default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
9
-Phase 3 Initial Routing | Checksum: e9015f4d
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:02:54 ; elapsed = 00:01:46 . Memory (MB): peak = 1103.188 ; gain = 135.8162default:default
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
2Phase 4.1.1 Remove Overlaps | Checksum: 1367afc72
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:16:50 ; elapsed = 00:09:25 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
i

Phase %s%s
101*constraints2
4.1.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.1.2 Update Timing | Checksum: 1367afc72
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:16:53 ; elapsed = 00:09:26 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
€
Estimated Timing Summary %s
57*route2L
8| WNS=-9.24  | TNS=-1.96e+03| WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
p

Phase %s%s
101*constraints2
4.1.3 2default:default2(
collectNewHoldAndFix2default:defaultZ18-101
C
7Phase 4.1.3 collectNewHoldAndFix | Checksum: 10280a273
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:16:53 ; elapsed = 00:09:27 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
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
1Phase 4.1.4.1 Update Timing | Checksum: a766a9fa
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:16:56 ; elapsed = 00:09:29 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
l

Phase %s%s
101*constraints2
4.1.4.2 2default:default2"
Fast Budgeting2default:defaultZ18-101
>
2Phase 4.1.4.2 Fast Budgeting | Checksum: a766a9fa
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:16:56 ; elapsed = 00:09:29 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
@
4Phase 4.1.4 GlobIterForTiming | Checksum: 16db6a900
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:01 ; elapsed = 00:09:35 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
?
3Phase 4.1 Global Iteration 0 | Checksum: 16db6a900
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:01 ; elapsed = 00:09:35 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
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
2Phase 4.2.1 Remove Overlaps | Checksum: 136931dc9
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:08 ; elapsed = 00:09:42 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
i

Phase %s%s
101*constraints2
4.2.2 2default:default2!
Update Timing2default:defaultZ18-101
<
0Phase 4.2.2 Update Timing | Checksum: 136931dc9
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:09 ; elapsed = 00:09:42 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
~
Estimated Timing Summary %s
57*route2J
6| WNS=-9.79  | TNS=-2e+03 | WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
>
2Phase 4.2 Global Iteration 1 | Checksum: e40ee7c1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:09 ; elapsed = 00:09:42 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
<
0Phase 4 Rip-up And Reroute | Checksum: e40ee7c1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:09 ; elapsed = 00:09:42 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
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
9
-Phase 5.1 Update Timing | Checksum: e40ee7c1
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:11 ; elapsed = 00:09:44 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
€
Estimated Timing Summary %s
57*route2L
8| WNS=-9.24  | TNS=-1.96e+03| WHS=N/A    | THS=N/A    |
2default:defaultZ35-57
8
,Phase 5 Delay CleanUp | Checksum: 13b18a180
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:20 ; elapsed = 00:09:48 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
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
0Phase 6.1.1 Update Timing | Checksum: 13b18a180
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:25 ; elapsed = 00:09:51 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
€
Estimated Timing Summary %s
57*route2L
8| WNS=-9.22  | TNS=-1.93e+03| WHS=-0.854 | THS=-17.4  |
2default:defaultZ35-57
?
3Phase 6.1 Full Hold Analysis | Checksum: 13b18a180
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:25 ; elapsed = 00:09:51 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
7
+Phase 6 Post Hold Fix | Checksum: d9054215
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:29 ; elapsed = 00:09:53 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
m

Phase %s%s
101*constraints2
7 2default:default2)
Verifying routed nets2default:defaultZ18-101
?
3Phase 7 Verifying routed nets | Checksum: d9054215
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:29 ; elapsed = 00:09:54 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
i

Phase %s%s
101*constraints2
8 2default:default2%
Depositing Routes2default:defaultZ18-101
;
/Phase 8 Depositing Routes | Checksum: 7b79452b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:31 ; elapsed = 00:09:55 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
j

Phase %s%s
101*constraints2
9 2default:default2&
Post Router Timing2default:defaultZ18-101
ƒ
Post Routing Timing Summary %s
20*route2L
8| WNS=-9.216 | TNS=-1995.136| WHS=0.055  | THS=0.000  |
2default:defaultZ35-20
z
dThe design did not meet timing requirements. Please run report_timing_summary for detailed reports.
39*routeZ35-39
ô
ÜTNS is the sum of the worst slack violation on every endpoint in the design. Review the paths with the biggest WNS violations in the timing reports and modify your constraints or your design to improve both WNS and TNS.
96*routeZ35-253
<
0Phase 9 Post Router Timing | Checksum: 7b79452b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:41 ; elapsed = 00:10:01 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
4
Router Completed Successfully
16*routeZ35-16
3
'Ending Route Task | Checksum: 7b79452b
*common
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:41 ; elapsed = 00:10:01 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
ˆ

%s
*constraints2q
]Time (s): cpu = 00:17:41 ; elapsed = 00:10:01 . Memory (MB): peak = 1118.188 ; gain = 150.8162default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
Â
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1622default:default2
1052default:default2
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
00:17:422default:default2
00:10:022default:default2
1118.1882default:default2
150.8162default:defaultZ17-268
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
00:00:352default:default2
00:00:242default:default2
1126.1882default:default2
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
1126.1912default:default2
0.0002default:defaultZ17-268


End Record