
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:032default:default2
00:00:052default:default2
431.6372default:default2
94.4342default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/utils_1/imports/synth_1/DHT11_Top.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2y
eD:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/utils_1/imports/synth_1/DHT11_Top.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
v
Command: %s
53*	vivadotcl2E
1synth_design -top DHT11_Top -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
23722default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2`
JC:/Prog/xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 1237.840 ; gain = 408.980
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
	DHT11_Top2default:default2r
\D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/dht_sensor.vhd2default:default2
252default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
DHT11_Reader2default:default2r
^D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/DHT11_Reader.vhd2default:default2
62default:default2%
DHT11_reader_inst2default:default2 
DHT11_Reader2default:default2r
\D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/dht_sensor.vhd2default:default2
732default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
DHT11_Reader2default:default2t
^D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/DHT11_Reader.vhd2default:default2
192default:default8@Z8-638h px� 
f
%s
*synth2N
:	Parameter c_clkfreq bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter WAIT_TIME bound to: 2000000 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
DHT11_Reader2default:default2
02default:default2
12default:default2t
^D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/DHT11_Reader.vhd2default:default2
192default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
UART_TX2default:default2m
YD:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/UART_TX.vhd2default:default2
42default:default2 
UART_TX_inst2default:default2
UART_TX2default:default2r
\D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/dht_sensor.vhd2default:default2
812default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
UART_TX2default:default2o
YD:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/UART_TX.vhd2default:default2
192default:default8@Z8-638h px� 
f
%s
*synth2N
:	Parameter c_clkfreq bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter c_baudrate bound to: 115200 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter c_stopbit bound to: 2 - type: integer 
2default:defaulth p
x
� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
UART_TX2default:default2
02default:default2
12default:default2o
YD:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/UART_TX.vhd2default:default2
192default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2)
Seven_Segment_Display2default:default2{
gD:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/Seven_Segment_Display.vhd2default:default2
52default:default2.
Seven_Segment_Display_inst2default:default2)
Seven_Segment_Display2default:default2r
\D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/dht_sensor.vhd2default:default2
902default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2)
Seven_Segment_Display2default:default2}
gD:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/Seven_Segment_Display.vhd2default:default2
142default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2)
Seven_Segment_Display2default:default2
02default:default2
12default:default2}
gD:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/Seven_Segment_Display.vhd2default:default2
142default:default8@Z8-256h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
sw_sel2default:default2r
\D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/dht_sensor.vhd2default:default2
982default:default8@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2(
data_buffer_internal2default:default2r
\D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/dht_sensor.vhd2default:default2
982default:default8@Z8-614h px� 
�
null assignment ignored3449*oasys2r
\D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/dht_sensor.vhd2default:default2
1242default:default8@Z8-3919h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	DHT11_Top2default:default2
02default:default2
12default:default2r
\D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/dht_sensor.vhd2default:default2
252default:default8@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2$
buffer_index_reg2default:default2t
^D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/DHT11_Reader.vhd2default:default2
772default:default8@Z8-6014h px� 
z
+Unused sequential element %s was removed. 
4326*oasys2+
buffer_internal_low_reg2default:defaultZ8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2"
low_time_r_reg2default:default2t
^D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/DHT11_Reader.vhd2default:default2
1002default:default8@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2'
bit_counter_low_reg2default:default2t
^D:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/sources_1/new/DHT11_Reader.vhd2default:default2
1002default:default8@Z8-6014h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
leds[4]2default:default2
	DHT11_Top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
leds[3]2default:default2
	DHT11_Top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
leds[2]2default:default2
	DHT11_Top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
leds[1]2default:default2
	DHT11_Top2default:defaultZ8-7129h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 1332.809 ; gain = 503.949
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 1332.809 ; gain = 503.949
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 1332.809 ; gain = 503.949
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0082default:default2
1332.8092default:default2
0.0002default:defaultZ17-268h px� 
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
lD:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/constrs_1/imports/Document/Basys3_Master.xdc2default:default8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
leds[5]2default:default2�
lD:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/constrs_1/imports/Document/Basys3_Master.xdc2default:default2
572default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2�
lD:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/constrs_1/imports/Document/Basys3_Master.xdc2default:default2
572default:default8@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2�
lD:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/constrs_1/imports/Document/Basys3_Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
lD:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.srcs/constrs_1/imports/Document/Basys3_Master.xdc2default:default2/
.Xil/DHT11_Top_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1394.4922default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
1394.4922default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2`
JC:/Prog/xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:12 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:12 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:12 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2!
state_dht_reg2default:default2 
DHT11_Reader2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2 
byte_sel_reg2default:default2
UART_TX2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                   start |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_              leave_high |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_               low_delay |                              010 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                    data |                              011 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_     wait_before_restart |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
state_dht_reg2default:default2

sequential2default:default2 
DHT11_Reader2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE1 |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE2 |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE3 |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE4 |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE5 |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE0 |                              101 |                              101
2default:defaulth p
x
� 
.
%s
*synth2
*
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                              110 |                              110
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2 
byte_sel_reg2default:default2

sequential2default:default2
UART_TX2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:13 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   26 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   17 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               40 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
h
%s
*synth2P
<	              320 Bit	(40 X 8 bit)          RAMs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   40 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input   40 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   7 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    8 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    7 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  11 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   7 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 10    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
leds[4]2default:default2
	DHT11_Top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
leds[3]2default:default2
	DHT11_Top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
leds[2]2default:default2
	DHT11_Top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
leds[1]2default:default2
	DHT11_Top2default:defaultZ8-7129h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:17 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping Report (see note below)
2default:defaulth px� 
�
%s*synth2�
m+------------+--------------------------------------------+-----------+----------------------+-------------+
2default:defaulth px� 
�
%s*synth2�
n|Module Name | RTL Object                                 | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth px� 
�
%s*synth2�
m+------------+--------------------------------------------+-----------+----------------------+-------------+
2default:defaulth px� 
�
%s*synth2�
n|DHT11_Top   | DHT11_reader_inst/buffer_internal_high_reg | Implied   | 64 x 8               | RAM64M x 3  | 
2default:defaulth px� 
�
%s*synth2�
n+------------+--------------------------------------------+-----------+----------------------+-------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:22 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:22 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
S
%s
*synth2;
'
Distributed RAM: Final Mapping Report
2default:defaulth p
x
� 
�
%s
*synth2�
m+------------+--------------------------------------------+-----------+----------------------+-------------+
2default:defaulth p
x
� 
�
%s
*synth2�
n|Module Name | RTL Object                                 | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth p
x
� 
�
%s
*synth2�
m+------------+--------------------------------------------+-----------+----------------------+-------------+
2default:defaulth p
x
� 
�
%s
*synth2�
n|DHT11_Top   | DHT11_reader_inst/buffer_internal_high_reg | Implied   | 64 x 8               | RAM64M x 3  | 
2default:defaulth p
x
� 
�
%s
*synth2�
n+------------+--------------------------------------------+-----------+----------------------+-------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:15 ; elapsed = 00:00:22 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:18 ; elapsed = 00:00:26 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:18 ; elapsed = 00:00:26 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:18 ; elapsed = 00:00:26 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:18 ; elapsed = 00:00:26 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:18 ; elapsed = 00:00:26 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:18 ; elapsed = 00:00:26 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |    45|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |    12|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |   105|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |    42|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |    28|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |    37|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |   123|
2default:defaulth px� 
D
%s*synth2,
|9     |RAM64M |     3|
2default:defaulth px� 
D
%s*synth2,
|10    |FDRE   |   217|
2default:defaulth px� 
D
%s*synth2,
|11    |IBUF   |     2|
2default:defaulth px� 
D
%s*synth2,
|12    |IOBUF  |     1|
2default:defaulth px� 
D
%s*synth2,
|13    |OBUF   |    13|
2default:defaulth px� 
D
%s*synth2,
|14    |OBUFT  |     4|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:18 ; elapsed = 00:00:26 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 5 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:13 ; elapsed = 00:00:24 . Memory (MB): peak = 1394.492 ; gain = 503.949
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:18 ; elapsed = 00:00:26 . Memory (MB): peak = 1394.492 ; gain = 565.633
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1394.4922default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
492default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1394.4922default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 4 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 1 instance 
  RAM64M => RAM64M (RAMD64E(x4)): 3 instances
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
bc982bd92default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
382default:default2
172default:default2
12default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:202default:default2
00:00:312default:default2
1394.4922default:default2
938.0082default:defaultZ17-268h px� 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2i
UD:/Data/Projects/Embedded/Xilinx/G_DHT_Sensor/G_DHT_Sensor.runs/synth_1/DHT11_Top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2|
hExecuting : report_utilization -file DHT11_Top_utilization_synth.rpt -pb DHT11_Top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Mar 11 14:44:34 20252default:defaultZ17-206h px� 


End Record