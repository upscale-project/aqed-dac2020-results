set moduleName gradient_xy_calc
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
set C_modelName {gradient_xy_calc}
set C_modelType { void 0 }
set C_modelArgList {
	{ frame3_a_V int 8 regular {fifo 0 volatile } {global 0}  }
	{ gradient_x_V int 32 regular {fifo 1 volatile } {global 1}  }
	{ gradient_y_V int 32 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "frame3_a_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "gradient_x_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "gradient_y_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ frame3_a_V_dout sc_in sc_lv 8 signal 0 } 
	{ frame3_a_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ frame3_a_V_read sc_out sc_logic 1 signal 0 } 
	{ gradient_x_V_din sc_out sc_lv 32 signal 1 } 
	{ gradient_x_V_full_n sc_in sc_logic 1 signal 1 } 
	{ gradient_x_V_write sc_out sc_logic 1 signal 1 } 
	{ gradient_y_V_din sc_out sc_lv 32 signal 2 } 
	{ gradient_y_V_full_n sc_in sc_logic 1 signal 2 } 
	{ gradient_y_V_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "frame3_a_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "frame3_a_V", "role": "dout" }} , 
 	{ "name": "frame3_a_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame3_a_V", "role": "empty_n" }} , 
 	{ "name": "frame3_a_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "frame3_a_V", "role": "read" }} , 
 	{ "name": "gradient_x_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradient_x_V", "role": "din" }} , 
 	{ "name": "gradient_x_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_x_V", "role": "full_n" }} , 
 	{ "name": "gradient_x_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_x_V", "role": "write" }} , 
 	{ "name": "gradient_y_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradient_y_V", "role": "din" }} , 
 	{ "name": "gradient_y_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_y_V", "role": "full_n" }} , 
 	{ "name": "gradient_y_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_y_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "gradient_xy_calc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "89", "EstimateLatencyMax" : "89",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "frame3_a_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "frame3_a_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "buf_V_1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_1_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_1_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buf_V_1_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gradient_x_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "gradient_x_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gradient_y_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "gradient_y_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_1_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_1_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_1_3_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_V_1_4_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gradient_xy_calc {
		frame3_a_V {Type I LastRead 2 FirstWrite -1}
		buf_V_1_1 {Type IO LastRead -1 FirstWrite -1}
		buf_V_1_2 {Type IO LastRead -1 FirstWrite -1}
		buf_V_1_3 {Type IO LastRead -1 FirstWrite -1}
		buf_V_1_4 {Type IO LastRead -1 FirstWrite -1}
		gradient_x_V {Type O LastRead -1 FirstWrite 5}
		gradient_y_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "89", "Max" : "89"}
	, {"Name" : "Interval", "Min" : "89", "Max" : "89"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	frame3_a_V { ap_fifo {  { frame3_a_V_dout fifo_data 0 8 }  { frame3_a_V_empty_n fifo_status 0 1 }  { frame3_a_V_read fifo_update 1 1 } } }
	gradient_x_V { ap_fifo {  { gradient_x_V_din fifo_data 1 32 }  { gradient_x_V_full_n fifo_status 0 1 }  { gradient_x_V_write fifo_update 1 1 } } }
	gradient_y_V { ap_fifo {  { gradient_y_V_din fifo_data 1 32 }  { gradient_y_V_full_n fifo_status 0 1 }  { gradient_y_V_write fifo_update 1 1 } } }
}
