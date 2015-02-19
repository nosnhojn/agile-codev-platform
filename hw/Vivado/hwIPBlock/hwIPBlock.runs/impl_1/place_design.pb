
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
†
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
853.8592default:default2
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
†
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
853.8592default:default2
0.0002default:defaultZ17-268
H
<Phase 1.1 Mandatory Logic Optimization | Checksum: 6fd3516e
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.04 ; elapsed = 00:00:00.07 . Memory (MB): peak = 853.859 ; gain = 0.0042default:default


Phase %s%s
101*constraints2
1.2 2default:default2;
'Build Super Logic Region (SLR) Database2default:defaultZ18-101
S
GPhase 1.2 Build Super Logic Region (SLR) Database | Checksum: 6fd3516e
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.09 . Memory (MB): peak = 853.859 ; gain = 0.0042default:default
i

Phase %s%s
101*constraints2
1.3 2default:default2#
Add Constraints2default:defaultZ18-101
;
/Phase 1.3 Add Constraints | Checksum: 6fd3516e
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.06 ; elapsed = 00:00:00.09 . Memory (MB): peak = 853.859 ; gain = 0.0042default:default
f

Phase %s%s
101*constraints2
1.4 2default:default2 
Build Macros2default:defaultZ18-101
8
,Phase 1.4 Build Macros | Checksum: 3ec20ade
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.07 ; elapsed = 00:00:00.11 . Memory (MB): peak = 853.859 ; gain = 0.0042default:default
v

Phase %s%s
101*constraints2
1.5 2default:default20
Routing Based Site Exclusion2default:defaultZ18-101
H
<Phase 1.5 Routing Based Site Exclusion | Checksum: 3ec20ade
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.08 ; elapsed = 00:00:00.11 . Memory (MB): peak = 853.859 ; gain = 0.0042default:default
z

Phase %s%s
101*constraints2
1.6 2default:default24
 Implementation Feasibility check2default:defaultZ18-101
L
@Phase 1.6 Implementation Feasibility check | Checksum: 3ec20ade
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.10 ; elapsed = 00:00:00.18 . Memory (MB): peak = 853.859 ; gain = 0.0042default:default
i

Phase %s%s
101*constraints2
1.7 2default:default2#
Pre-Place Cells2default:defaultZ18-101
;
/Phase 1.7 Pre-Place Cells | Checksum: 3ec20ade
*common
‹

%s
*constraints2t
`Time (s): cpu = 00:00:00.11 ; elapsed = 00:00:00.21 . Memory (MB): peak = 853.859 ; gain = 0.0042default:default
Œ

Phase %s%s
101*constraints2
1.8 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101
^
RPhase 1.8 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 3ec20ade
*common
Œ

%s
*constraints2u
aTime (s): cpu = 00:00:00.71 ; elapsed = 00:00:00.82 . Memory (MB): peak = 863.859 ; gain = 10.0042default:default
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
?
3Phase 1.9.1 Place Init Design | Checksum: 9a890d5e
*common
Œ

%s
*constraints2u
aTime (s): cpu = 00:00:00.74 ; elapsed = 00:00:00.85 . Memory (MB): peak = 864.859 ; gain = 11.0042default:default
F
:Phase 1.9 Build Placer Netlist Model | Checksum: 9a890d5e
*common
Œ

%s
*constraints2u
aTime (s): cpu = 00:00:00.74 ; elapsed = 00:00:00.85 . Memory (MB): peak = 864.859 ; gain = 11.0042default:default
r

Phase %s%s
101*constraints2
1.10 2default:default2+
Constrain Clocks/Macros2default:defaultZ18-101
D
8Phase 1.10 Constrain Clocks/Macros | Checksum: 9a890d5e
*common
Œ

%s
*constraints2u
aTime (s): cpu = 00:00:00.75 ; elapsed = 00:00:00.99 . Memory (MB): peak = 864.859 ; gain = 11.0042default:default
?
3Phase 1 Placer Initialization | Checksum: 9a890d5e
*common
Œ

%s
*constraints2u
aTime (s): cpu = 00:00:00.75 ; elapsed = 00:00:00.99 . Memory (MB): peak = 864.859 ; gain = 11.0042default:default
o

Phase %s%s
101*constraints2
2 2default:default2+
Final Placement Cleanup2default:defaultZ18-101
A
5Phase 2 Final Placement Cleanup | Checksum: 9a890d5e
*common
‰

%s
*constraints2r
^Time (s): cpu = 00:00:00.75 ; elapsed = 00:00:01 . Memory (MB): peak = 864.859 ; gain = 11.0042default:default
{
aNo place-able instance is found; design doesn't contain any instance or all instances are placed
5*	placeflowZ30-281
4
(Ending Placer Task | Checksum: 671ed41a
*common
‰

%s
*constraints2r
^Time (s): cpu = 00:00:00.76 ; elapsed = 00:00:01 . Memory (MB): peak = 864.859 ; gain = 11.0042default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
½
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
382default:default2
12default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
place_design2default:defaultZ4-42
`

DEBUG : %s144*timing2;
'Generate clock report | CPU: 0.3 secs 
2default:defaultZ38-163

ureport_utilization: Time (s): cpu = 00:00:00.15 ; elapsed = 00:00:00.18 . Memory (MB): peak = 869.859 ; gain = 0.000
*common
m

DEBUG : %s134*designutils2C
/Generate Control Sets report | CPU: 0.15 secs 
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
‡
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:00.312default:default2
00:00:00.392default:default2
869.8632default:default2
0.0002default:defaultZ17-268


End Record