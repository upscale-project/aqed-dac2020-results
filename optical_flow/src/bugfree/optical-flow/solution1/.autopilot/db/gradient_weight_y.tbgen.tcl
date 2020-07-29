set moduleName gradient_weight_y
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
set C_modelName {gradient_weight_y}
set C_modelType { void 0 }
set C_modelArgList {
	{ gradient_x_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ gradient_y_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ gradient_z_V int 32 regular {fifo 0 volatile } {global 0}  }
	{ y_filtered_x_V int 1 regular {fifo 1 volatile } {global 1}  }
	{ y_filtered_y_V int 1 regular {fifo 1 volatile } {global 1}  }
	{ y_filtered_z_V int 1 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gradient_x_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "gradient_y_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "gradient_z_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "y_filtered_x_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "y_filtered_y_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "y_filtered_z_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY", "extern" : 0} ]}
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
	{ gradient_x_V_dout sc_in sc_lv 32 signal 0 } 
	{ gradient_x_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ gradient_x_V_read sc_out sc_logic 1 signal 0 } 
	{ gradient_y_V_dout sc_in sc_lv 32 signal 1 } 
	{ gradient_y_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ gradient_y_V_read sc_out sc_logic 1 signal 1 } 
	{ gradient_z_V_dout sc_in sc_lv 32 signal 2 } 
	{ gradient_z_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ gradient_z_V_read sc_out sc_logic 1 signal 2 } 
	{ y_filtered_x_V_din sc_out sc_lv 1 signal 3 } 
	{ y_filtered_x_V_full_n sc_in sc_logic 1 signal 3 } 
	{ y_filtered_x_V_write sc_out sc_logic 1 signal 3 } 
	{ y_filtered_y_V_din sc_out sc_lv 1 signal 4 } 
	{ y_filtered_y_V_full_n sc_in sc_logic 1 signal 4 } 
	{ y_filtered_y_V_write sc_out sc_logic 1 signal 4 } 
	{ y_filtered_z_V_din sc_out sc_lv 1 signal 5 } 
	{ y_filtered_z_V_full_n sc_in sc_logic 1 signal 5 } 
	{ y_filtered_z_V_write sc_out sc_logic 1 signal 5 } 
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
 	{ "name": "gradient_x_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradient_x_V", "role": "dout" }} , 
 	{ "name": "gradient_x_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_x_V", "role": "empty_n" }} , 
 	{ "name": "gradient_x_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_x_V", "role": "read" }} , 
 	{ "name": "gradient_y_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradient_y_V", "role": "dout" }} , 
 	{ "name": "gradient_y_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_y_V", "role": "empty_n" }} , 
 	{ "name": "gradient_y_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_y_V", "role": "read" }} , 
 	{ "name": "gradient_z_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gradient_z_V", "role": "dout" }} , 
 	{ "name": "gradient_z_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_z_V", "role": "empty_n" }} , 
 	{ "name": "gradient_z_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gradient_z_V", "role": "read" }} , 
 	{ "name": "y_filtered_x_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_x_V", "role": "din" }} , 
 	{ "name": "y_filtered_x_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_x_V", "role": "full_n" }} , 
 	{ "name": "y_filtered_x_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_x_V", "role": "write" }} , 
 	{ "name": "y_filtered_y_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_y_V", "role": "din" }} , 
 	{ "name": "y_filtered_y_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_y_V", "role": "full_n" }} , 
 	{ "name": "y_filtered_y_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_y_V", "role": "write" }} , 
 	{ "name": "y_filtered_z_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_z_V", "role": "din" }} , 
 	{ "name": "y_filtered_z_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_z_V", "role": "full_n" }} , 
 	{ "name": "y_filtered_z_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_filtered_z_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
		"CDFG" : "gradient_weight_y",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "82", "EstimateLatencyMax" : "82",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "gradient_x_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "gradient_x_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gradient_y_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "gradient_y_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gradient_z_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "gradient_z_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_filtered_x_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_filtered_x_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_filtered_y_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_filtered_y_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_filtered_z_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "y_filtered_z_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_1_x_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_2_x_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_3_x_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_4_x_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_5_x_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_6_x_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_1_y_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_2_y_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_3_y_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_4_y_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_5_y_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_6_y_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_1_z_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_2_z_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_3_z_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_4_z_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_5_z_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf_val_6_z_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	gradient_weight_y {
		gradient_x_V {Type I LastRead 2 FirstWrite -1}
		gradient_y_V {Type I LastRead 2 FirstWrite -1}
		gradient_z_V {Type I LastRead 2 FirstWrite -1}
		y_filtered_x_V {Type O LastRead -1 FirstWrite 2}
		y_filtered_y_V {Type O LastRead -1 FirstWrite 2}
		y_filtered_z_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "82", "Max" : "82"}
	, {"Name" : "Interval", "Min" : "82", "Max" : "82"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	gradient_x_V { ap_fifo {  { gradient_x_V_dout fifo_data 0 32 }  { gradient_x_V_empty_n fifo_status 0 1 }  { gradient_x_V_read fifo_update 1 1 } } }
	gradient_y_V { ap_fifo {  { gradient_y_V_dout fifo_data 0 32 }  { gradient_y_V_empty_n fifo_status 0 1 }  { gradient_y_V_read fifo_update 1 1 } } }
	gradient_z_V { ap_fifo {  { gradient_z_V_dout fifo_data 0 32 }  { gradient_z_V_empty_n fifo_status 0 1 }  { gradient_z_V_read fifo_update 1 1 } } }
	y_filtered_x_V { ap_fifo {  { y_filtered_x_V_din fifo_data 1 1 }  { y_filtered_x_V_full_n fifo_status 0 1 }  { y_filtered_x_V_write fifo_update 1 1 } } }
	y_filtered_y_V { ap_fifo {  { y_filtered_y_V_din fifo_data 1 1 }  { y_filtered_y_V_full_n fifo_status 0 1 }  { y_filtered_y_V_write fifo_update 1 1 } } }
	y_filtered_z_V { ap_fifo {  { y_filtered_z_V_din fifo_data 1 1 }  { y_filtered_z_V_full_n fifo_status 0 1 }  { y_filtered_z_V_write fifo_update 1 1 } } }
}
