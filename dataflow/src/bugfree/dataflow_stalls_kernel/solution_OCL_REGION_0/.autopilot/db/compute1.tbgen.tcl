set moduleName compute1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {compute1}
set C_modelType { void 0 }
set C_modelArgList {
	{ to_V int 64 regular {fifo 1 volatile }  }
	{ from_V int 64 regular {fifo 0 volatile }  }
	{ data_count int 32 regular {fifo 0}  }
	{ data_count_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "to_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "from_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "data_count", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_count_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ to_V_din sc_out sc_lv 64 signal 0 } 
	{ to_V_full_n sc_in sc_logic 1 signal 0 } 
	{ to_V_write sc_out sc_logic 1 signal 0 } 
	{ from_V_dout sc_in sc_lv 64 signal 1 } 
	{ from_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ from_V_read sc_out sc_logic 1 signal 1 } 
	{ data_count_dout sc_in sc_lv 32 signal 2 } 
	{ data_count_empty_n sc_in sc_logic 1 signal 2 } 
	{ data_count_read sc_out sc_logic 1 signal 2 } 
	{ data_count_out_din sc_out sc_lv 32 signal 3 } 
	{ data_count_out_full_n sc_in sc_logic 1 signal 3 } 
	{ data_count_out_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "to_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "to_V", "role": "din" }} , 
 	{ "name": "to_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_V", "role": "full_n" }} , 
 	{ "name": "to_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_V", "role": "write" }} , 
 	{ "name": "from_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "from_V", "role": "dout" }} , 
 	{ "name": "from_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_V", "role": "empty_n" }} , 
 	{ "name": "from_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_V", "role": "read" }} , 
 	{ "name": "data_count_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_count", "role": "dout" }} , 
 	{ "name": "data_count_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_count", "role": "empty_n" }} , 
 	{ "name": "data_count_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_count", "role": "read" }} , 
 	{ "name": "data_count_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_count_out", "role": "din" }} , 
 	{ "name": "data_count_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_count_out", "role": "full_n" }} , 
 	{ "name": "data_count_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_count_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "compute1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "to_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "to_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "from_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "from_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_count", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_count_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_count_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_count_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	compute1 {
		to_V {Type O LastRead -1 FirstWrite 2}
		from_V {Type I LastRead 1 FirstWrite -1}
		data_count {Type I LastRead 0 FirstWrite -1}
		data_count_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "4294967295", "Max" : "4294967295"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	to_V { ap_fifo {  { to_V_din fifo_data 1 64 }  { to_V_full_n fifo_status 0 1 }  { to_V_write fifo_update 1 1 } } }
	from_V { ap_fifo {  { from_V_dout fifo_data 0 64 }  { from_V_empty_n fifo_status 0 1 }  { from_V_read fifo_update 1 1 } } }
	data_count { ap_fifo {  { data_count_dout fifo_data 0 32 }  { data_count_empty_n fifo_status 0 1 }  { data_count_read fifo_update 1 1 } } }
	data_count_out { ap_fifo {  { data_count_out_din fifo_data 1 32 }  { data_count_out_full_n fifo_status 0 1 }  { data_count_out_write fifo_update 1 1 } } }
}
