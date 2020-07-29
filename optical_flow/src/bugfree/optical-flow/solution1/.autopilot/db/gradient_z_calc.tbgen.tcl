set moduleName gradient_z_calc
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {gradient_z_calc}
set C_modelType { void 0 }
set C_modelArgList {
	{ frame1_a_V int 8 regular {fifo 0 volatile } {global 0}  }
	{ frame2_a_V int 8 regular {fifo 0 volatile } {global 0}  }
	{ frame3_b_V int 8 regular {fifo 0 volatile } {global 0}  }
	{ frame4_a_V int 8 regular {fifo 0 volatile } {global 0}  }
	{ frame5_a_V int 8 regular {fifo 0 volatile } {global 0}  }
	{ gradient_z_V int 32 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "frame1_a_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "frame2_a_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "frame3_b_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "frame4_a_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "frame5_a_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "gradient_z_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ frame1_a_V_dout sc_in sc_lv 8 signal 0 } 
	{ frame1_a_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ frame1_a_V_read sc_out sc_logic 1 signal 0 } 
	{ frame2_a_V_dout sc_in sc_lv 8 signal 1 } 
	{ frame2_a_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ frame2_a_V_read sc_out sc_logic 1 signal 1 } 
	{ frame3_b_V_dout sc_in sc_lv 8 signal 2 } 
	{ frame3_b_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ frame3_b_V_read sc_out sc_logic 1 signal 2 } 
	{ frame4_a_V_dout sc_in sc_lv 8 signal 3 } 
	{ frame4_a_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ frame4_a_V_read sc_out sc_logic 1 signal 3 } 
	{ frame5_a_V_dout sc_in sc_lv 8 signal 4 } 
	{ frame5_a_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ frame5_a_V_read sc_out sc_logic 1 signal 4 } 
	{ gradient_z_V_din sc_out sc_lv 32 signal 5 } 
	{ gradient_z_V_full_n sc_in sc_logic 1 signal 5 } 
	{ gradient_z_V_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "frame1_a_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame1_a_V", "role": "dout" }} , 
 	{ "name": "frame1_a_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame1_a_V", "role": "empty_n" }} , 
 	{ "name": "frame1_a_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame1_a_V", "role": "read" }} , 
 	{ "name": "frame2_a_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame2_a_V", "role": "dout" }} , 
 	{ "name": "frame2_a_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame2_a_V", "role": "empty_n" }} , 
 	{ "name": "frame2_a_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame2_a_V", "role": "read" }} , 
 	{ "name": "frame3_b_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame3_b_V", "role": "dout" }} , 
 	{ "name": "frame3_b_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame3_b_V", "role": "empty_n" }} , 
 	{ "name": "frame3_b_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame3_b_V", "role": "read" }} , 
 	{ "name": "frame4_a_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame4_a_V", "role": "dout" }} , 
 	{ "name": "frame4_a_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame4_a_V", "role": "empty_n" }} , 
 	{ "name": "frame4_a_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame4_a_V", "role": "read" }} , 
 	{ "name": "frame5_a_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame5_a_V", "role": "dout" }} , 
 	{ "name": "frame5_a_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame5_a_V", "role": "empty_n" }} , 
 	{ "name": "frame5_a_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame5_a_V", "role": "read" }} , 
 	{ "name": "gradient_z_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradient_z_V", "role": "din" }} , 
 	{ "name": "gradient_z_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_z_V", "role": "full_n" }} , 
 	{ "name": "gradient_z_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_z_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "gradient_z_calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "54",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "frame1_a_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "frame1_a_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "frame2_a_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "frame2_a_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "frame3_b_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "frame3_b_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "frame4_a_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "frame4_a_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "frame5_a_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "frame5_a_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gradient_z_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "gradient_z_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	gradient_z_calc {
		frame1_a_V {Type I LastRead 2 FirstWrite -1}
		frame2_a_V {Type I LastRead 2 FirstWrite -1}
		frame3_b_V {Type I LastRead 2 FirstWrite -1}
		frame4_a_V {Type I LastRead 2 FirstWrite -1}
		frame5_a_V {Type I LastRead 2 FirstWrite -1}
		gradient_z_V {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "54", "Max" : "54"}
	, {"Name" : "Interval", "Min" : "54", "Max" : "54"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	frame1_a_V { ap_fifo {  { frame1_a_V_dout fifo_data 0 8 }  { frame1_a_V_empty_n fifo_status 0 1 }  { frame1_a_V_read fifo_update 1 1 } } }
	frame2_a_V { ap_fifo {  { frame2_a_V_dout fifo_data 0 8 }  { frame2_a_V_empty_n fifo_status 0 1 }  { frame2_a_V_read fifo_update 1 1 } } }
	frame3_b_V { ap_fifo {  { frame3_b_V_dout fifo_data 0 8 }  { frame3_b_V_empty_n fifo_status 0 1 }  { frame3_b_V_read fifo_update 1 1 } } }
	frame4_a_V { ap_fifo {  { frame4_a_V_dout fifo_data 0 8 }  { frame4_a_V_empty_n fifo_status 0 1 }  { frame4_a_V_read fifo_update 1 1 } } }
	frame5_a_V { ap_fifo {  { frame5_a_V_dout fifo_data 0 8 }  { frame5_a_V_empty_n fifo_status 0 1 }  { frame5_a_V_read fifo_update 1 1 } } }
	gradient_z_V { ap_fifo {  { gradient_z_V_din fifo_data 1 32 }  { gradient_z_V_full_n fifo_status 0 1 }  { gradient_z_V_write fifo_update 1 1 } } }
}
