set moduleName gradient_weight_x
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
set C_modelName {gradient_weight_x}
set C_modelType { void 0 }
set C_modelArgList {
	{ y_filtered_x_V int 1 regular {fifo 0 volatile } {global 0}  }
	{ y_filtered_y_V int 1 regular {fifo 0 volatile } {global 0}  }
	{ y_filtered_z_V int 1 regular {fifo 0 volatile } {global 0}  }
	{ filtered_gradient_x_s int 32 regular {fifo 1 volatile } {global 1}  }
	{ filtered_gradient_y_s int 32 regular {fifo 1 volatile } {global 1}  }
	{ filtered_gradient_z_s int 32 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "y_filtered_x_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "y_filtered_y_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "y_filtered_z_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "filtered_gradient_x_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "filtered_gradient_y_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "filtered_gradient_z_s", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 28
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
	{ y_filtered_x_V_dout sc_in sc_lv 1 signal 0 } 
	{ y_filtered_x_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ y_filtered_x_V_read sc_out sc_logic 1 signal 0 } 
	{ y_filtered_y_V_dout sc_in sc_lv 1 signal 1 } 
	{ y_filtered_y_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ y_filtered_y_V_read sc_out sc_logic 1 signal 1 } 
	{ y_filtered_z_V_dout sc_in sc_lv 1 signal 2 } 
	{ y_filtered_z_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ y_filtered_z_V_read sc_out sc_logic 1 signal 2 } 
	{ filtered_gradient_x_s_din sc_out sc_lv 32 signal 3 } 
	{ filtered_gradient_x_s_full_n sc_in sc_logic 1 signal 3 } 
	{ filtered_gradient_x_s_write sc_out sc_logic 1 signal 3 } 
	{ filtered_gradient_y_s_din sc_out sc_lv 32 signal 4 } 
	{ filtered_gradient_y_s_full_n sc_in sc_logic 1 signal 4 } 
	{ filtered_gradient_y_s_write sc_out sc_logic 1 signal 4 } 
	{ filtered_gradient_z_s_din sc_out sc_lv 32 signal 5 } 
	{ filtered_gradient_z_s_full_n sc_in sc_logic 1 signal 5 } 
	{ filtered_gradient_z_s_write sc_out sc_logic 1 signal 5 } 
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
 	{ "name": "y_filtered_x_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_x_V", "role": "dout" }} , 
 	{ "name": "y_filtered_x_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_x_V", "role": "empty_n" }} , 
 	{ "name": "y_filtered_x_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_x_V", "role": "read" }} , 
 	{ "name": "y_filtered_y_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_y_V", "role": "dout" }} , 
 	{ "name": "y_filtered_y_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_y_V", "role": "empty_n" }} , 
 	{ "name": "y_filtered_y_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_y_V", "role": "read" }} , 
 	{ "name": "y_filtered_z_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_z_V", "role": "dout" }} , 
 	{ "name": "y_filtered_z_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_z_V", "role": "empty_n" }} , 
 	{ "name": "y_filtered_z_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_z_V", "role": "read" }} , 
 	{ "name": "filtered_gradient_x_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filtered_gradient_x_s", "role": "din" }} , 
 	{ "name": "filtered_gradient_x_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtered_gradient_x_s", "role": "full_n" }} , 
 	{ "name": "filtered_gradient_x_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtered_gradient_x_s", "role": "write" }} , 
 	{ "name": "filtered_gradient_y_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filtered_gradient_y_s", "role": "din" }} , 
 	{ "name": "filtered_gradient_y_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtered_gradient_y_s", "role": "full_n" }} , 
 	{ "name": "filtered_gradient_y_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtered_gradient_y_s", "role": "write" }} , 
 	{ "name": "filtered_gradient_z_s_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "filtered_gradient_z_s", "role": "din" }} , 
 	{ "name": "filtered_gradient_z_s_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtered_gradient_z_s", "role": "full_n" }} , 
 	{ "name": "filtered_gradient_z_s_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filtered_gradient_z_s", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "gradient_weight_x",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "y_filtered_x_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_filtered_x_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_filtered_y_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_filtered_y_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_filtered_z_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_filtered_z_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "filtered_gradient_x_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "filtered_gradient_x_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "filtered_gradient_y_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "filtered_gradient_y_s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "filtered_gradient_z_s", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "filtered_gradient_z_s_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	gradient_weight_x {
		y_filtered_x_V {Type I LastRead 2 FirstWrite -1}
		y_filtered_y_V {Type I LastRead 2 FirstWrite -1}
		y_filtered_z_V {Type I LastRead 2 FirstWrite -1}
		filtered_gradient_x_s {Type O LastRead -1 FirstWrite 3}
		filtered_gradient_y_s {Type O LastRead -1 FirstWrite 3}
		filtered_gradient_z_s {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "68", "Max" : "68"}
	, {"Name" : "Interval", "Min" : "68", "Max" : "68"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	y_filtered_x_V { ap_fifo {  { y_filtered_x_V_dout fifo_data 0 1 }  { y_filtered_x_V_empty_n fifo_status 0 1 }  { y_filtered_x_V_read fifo_update 1 1 } } }
	y_filtered_y_V { ap_fifo {  { y_filtered_y_V_dout fifo_data 0 1 }  { y_filtered_y_V_empty_n fifo_status 0 1 }  { y_filtered_y_V_read fifo_update 1 1 } } }
	y_filtered_z_V { ap_fifo {  { y_filtered_z_V_dout fifo_data 0 1 }  { y_filtered_z_V_empty_n fifo_status 0 1 }  { y_filtered_z_V_read fifo_update 1 1 } } }
	filtered_gradient_x_s { ap_fifo {  { filtered_gradient_x_s_din fifo_data 1 32 }  { filtered_gradient_x_s_full_n fifo_status 0 1 }  { filtered_gradient_x_s_write fifo_update 1 1 } } }
	filtered_gradient_y_s { ap_fifo {  { filtered_gradient_y_s_din fifo_data 1 32 }  { filtered_gradient_y_s_full_n fifo_status 0 1 }  { filtered_gradient_y_s_write fifo_update 1 1 } } }
	filtered_gradient_z_s { ap_fifo {  { filtered_gradient_z_s_din fifo_data 1 32 }  { filtered_gradient_z_s_full_n fifo_status 0 1 }  { filtered_gradient_z_s_write fifo_update 1 1 } } }
}
