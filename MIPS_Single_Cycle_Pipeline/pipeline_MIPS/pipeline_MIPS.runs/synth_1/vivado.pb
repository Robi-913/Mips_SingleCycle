
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:042

00:00:082	
473.7032	
178.270Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/utils_1/imports/synth_1/test_env.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2s
qC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/utils_1/imports/synth_1/test_env.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
d
Command: %s
53*	vivadotcl23
1synth_design -top test_env -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
12140Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:13 . Memory (MB): peak = 1328.715 ; gain = 441.434
h px� 
�
synthesizing module '%s'638*oasys2

test_env2x
tC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/test_env.vhd2
228@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MPG2q
oC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/MPG.vhd2
142
	monopulse2
MPG2x
tC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/test_env.vhd2
1418@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
MPG2s
oC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/MPG.vhd2
208@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MPG2
02
12s
oC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/MPG.vhd2
208@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
IFetch2t
rC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/IFetch.vhd2
142
inst_IFetch2
IFetch2x
tC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/test_env.vhd2
1448@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
IFetch2v
rC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/IFetch.vhd2
268@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
IFetch2
02
12v
rC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/IFetch.vhd2
268@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ID2p
nC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/ID.vhd2
142	
inst_ID2
ID2x
tC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/test_env.vhd2
1458@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ID2r
nC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/ID.vhd2
318@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ID2
02
12r
nC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/ID.vhd2
318@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
UC2p
nC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/UC.vhd2
132	
inst_UC2
UC2x
tC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/test_env.vhd2
1468@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
UC2r
nC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/UC.vhd2
268@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
UC2
02
12r
nC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/UC.vhd2
268@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
EX2p
nC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/EX.vhd2
162	
inst_EX2
EX2x
tC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/test_env.vhd2
1478@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
EX2r
nC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/EX.vhd2
348@Z8-638h px� 
�
default block is never used226*oasys2r
nC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/EX.vhd2
728@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
EX2
02
12r
nC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/EX.vhd2
348@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MEM2q
oC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/MEM.vhd2
142

inst_MEM2
MEM2x
tC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/test_env.vhd2
1488@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
MEM2s
oC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/MEM.vhd2
248@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MEM2
02
12s
oC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/MEM.vhd2
248@Z8-256h px� 
�
default block is never used226*oasys2x
tC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/test_env.vhd2
2298@Z8-226h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
SSD2q
oC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/SSD.vhd2
142	
display2
SSD2x
tC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/test_env.vhd2
2408@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
SSD2s
oC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/SSD.vhd2
218@Z8-638h px� 
�
default block is never used226*oasys2s
oC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/SSD.vhd2
408@Z8-226h px� 
�
default block is never used226*oasys2s
oC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/SSD.vhd2
558@Z8-226h px� 
�
default block is never used226*oasys2s
oC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/SSD.vhd2
688@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
SSD2
02
12s
oC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/SSD.vhd2
218@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

test_env2
02
12x
tC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/test_env.vhd2
228@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
MemWrite_ID_EX_reg2x
tC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/test_env.vhd2
1718@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
MemWrite_EX_MEM_reg2x
tC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/sources_1/imports/test_env/test_env.vhd2
1938@Z8-6014h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[15]2

test_envZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[14]2

test_envZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[13]2

test_envZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[12]2

test_envZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[11]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[4]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[3]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[2]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[0]2

test_envZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:18 . Memory (MB): peak = 1437.535 ; gain = 550.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:18 . Memory (MB): peak = 1437.535 ; gain = 550.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:18 . Memory (MB): peak = 1437.535 ; gain = 550.254
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0282

1437.5352
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2�
|C:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/constrs_1/imports/test_env/NexysA7_test_env.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
|C:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/constrs_1/imports/test_env/NexysA7_test_env.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2~
|C:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.srcs/constrs_1/imports/test_env/NexysA7_test_env.xdc2
.Xil/test_env_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1531.8282
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0072

1531.8282
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:18 ; elapsed = 00:00:33 . Memory (MB): peak = 1531.828 ; gain = 644.547
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:18 ; elapsed = 00:00:33 . Memory (MB): peak = 1531.828 ; gain = 644.547
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:33 . Memory (MB): peak = 1531.828 ; gain = 644.547
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:18 ; elapsed = 00:00:34 . Memory (MB): peak = 1531.828 ; gain = 644.547
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     32 Bit         XORs := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 12    
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 14    
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
W
%s
*synth2?
=	               2K Bit	(64 X 32 bit)          RAMs := 1     
h p
x
� 
W
%s
*synth2?
=	             1024 Bit	(32 X 32 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	  33 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   9 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  14 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   9 Input    1 Bit        Muxes := 8     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[15]2

test_envZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[14]2

test_envZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[13]2

test_envZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[12]2

test_envZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[11]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[4]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[3]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
btn[2]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2

test_envZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2

test_envZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[0]2

test_envZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:45 . Memory (MB): peak = 1531.828 ; gain = 644.547
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
t
%s*synth2\
Z+------------+----------------------+-----------+----------------------+----------------+
h px� 
u
%s*synth2]
[|Module Name | RTL Object           | Inference | Size (Depth x Width) | Primitives     | 
h px� 
t
%s*synth2\
Z+------------+----------------------+-----------+----------------------+----------------+
h px� 
u
%s*synth2]
[|test_env    | inst_MEM/MEM_reg     | Implied   | 64 x 32              | RAM64X1S x 32  | 
h px� 
u
%s*synth2]
[|test_env    | inst_ID/reg_file_reg | Implied   | 32 x 32              | RAM32M x 12    | 
h px� 
u
%s*synth2]
[+------------+----------------------+-----------+----------------------+----------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:29 ; elapsed = 00:00:55 . Memory (MB): peak = 1531.828 ; gain = 644.547
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:37 ; elapsed = 00:01:11 . Memory (MB): peak = 1577.012 ; gain = 689.730
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
t
%s
*synth2\
Z+------------+----------------------+-----------+----------------------+----------------+
h p
x
� 
u
%s
*synth2]
[|Module Name | RTL Object           | Inference | Size (Depth x Width) | Primitives     | 
h p
x
� 
t
%s
*synth2\
Z+------------+----------------------+-----------+----------------------+----------------+
h p
x
� 
u
%s
*synth2]
[|test_env    | inst_MEM/MEM_reg     | Implied   | 64 x 32              | RAM64X1S x 32  | 
h p
x
� 
u
%s
*synth2]
[|test_env    | inst_ID/reg_file_reg | Implied   | 32 x 32              | RAM32M x 12    | 
h p
x
� 
u
%s
*synth2]
[+------------+----------------------+-----------+----------------------+----------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:38 ; elapsed = 00:01:12 . Memory (MB): peak = 1580.449 ; gain = 693.168
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:42 ; elapsed = 00:01:21 . Memory (MB): peak = 1580.449 ; gain = 693.168
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:42 ; elapsed = 00:01:21 . Memory (MB): peak = 1580.449 ; gain = 693.168
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:42 ; elapsed = 00:01:21 . Memory (MB): peak = 1580.449 ; gain = 693.168
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:42 ; elapsed = 00:01:21 . Memory (MB): peak = 1580.449 ; gain = 693.168
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:42 ; elapsed = 00:01:21 . Memory (MB): peak = 1580.449 ; gain = 693.168
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:42 ; elapsed = 00:01:21 . Memory (MB): peak = 1580.449 ; gain = 693.168
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!

Static Shift Register Report:
h p
x
� 
�
%s
*synth2�
�+------------+---------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Module Name | RTL Name            | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2�
�+------------+---------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|test_env    | RegWrite_MEM_WB_reg | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|test_env    | MemtoReg_MEM_WB_reg | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�+------------+---------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |BUFG     |     1|
h px� 
4
%s*synth2
|2     |CARRY4   |    46|
h px� 
4
%s*synth2
|3     |LUT1     |     4|
h px� 
4
%s*synth2
|4     |LUT2     |    12|
h px� 
4
%s*synth2
|5     |LUT3     |   113|
h px� 
4
%s*synth2
|6     |LUT4     |    36|
h px� 
4
%s*synth2
|7     |LUT5     |    79|
h px� 
4
%s*synth2
|8     |LUT6     |   186|
h px� 
4
%s*synth2
|9     |MUXF7    |    32|
h px� 
4
%s*synth2
|10    |RAM32M   |    10|
h px� 
4
%s*synth2
|11    |RAM32X1D |     4|
h px� 
4
%s*synth2
|12    |RAM64X1S |    32|
h px� 
4
%s*synth2
|13    |SRL16E   |     2|
h px� 
4
%s*synth2
|14    |FDCE     |    31|
h px� 
4
%s*synth2
|15    |FDRE     |   379|
h px� 
4
%s*synth2
|16    |IBUF     |     6|
h px� 
4
%s*synth2
|17    |OBUF     |    26|
h px� 
4
%s*synth2
|18    |OBUFT    |     5|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:42 ; elapsed = 00:01:21 . Memory (MB): peak = 1580.449 ; gain = 693.168
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 22 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:31 ; elapsed = 00:01:17 . Memory (MB): peak = 1580.449 ; gain = 598.875
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:42 ; elapsed = 00:01:21 . Memory (MB): peak = 1580.449 ; gain = 693.168
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0272

1583.2812
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
124Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
R
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
12
14Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1586.9692
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 46 instances were transformed.
  RAM32M => RAM32M (inverted pins: WCLK) (RAMD32(x6), RAMS32(x2)): 10 instances
  RAM32X1D => RAM32X1D (inverted pins: WCLK) (RAMD32(x2)): 4 instances
  RAM64X1S => RAM64X1S (RAMS64E): 32 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

17d4853fZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
492
452
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:472

00:01:342

1586.9692

1108.348Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0062

1586.9692
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2c
aC:/Users/Robert/Documents/facultate/anu2/ac/pipeline_MIPS/pipeline_MIPS.runs/synth_1/test_env.dcpZ17-1381h px� 
�
%s4*runtcl2h
fExecuting : report_utilization -file test_env_utilization_synth.rpt -pb test_env_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Fri May 17 22:36:05 2024Z17-206h px� 


End Record