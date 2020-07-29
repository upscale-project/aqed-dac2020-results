set moduleName aqed_in
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
set C_modelName {aqed_in}
set C_modelType { void 0 }
set C_modelArgList {
	{ bmc_in int 16 regular {array 8 { 1 1 } 1 1 }  }
	{ bmc_in_offset int 3 regular  }
	{ orig int 1 regular  }
	{ dup int 1 regular  }
	{ state_orig_issued int 1 regular {pointer 2} {global 2}  }
	{ state_dup_issued int 1 regular {pointer 2} {global 2}  }
	{ state_orig_in int 16 regular {pointer 1} {global 1}  }
	{ state_dup_in int 16 regular {pointer 1} {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bmc_in", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bmc_in_offset", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "orig", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dup", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "state_orig_issued", "interface" : "wire", "bitwidth" : 1, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "state.orig_issued","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "state_dup_issued", "interface" : "wire", "bitwidth" : 1, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "state.dup_issued","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "state_orig_in", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "state.orig_in","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "state_dup_in", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "state.dup_in","cData": "unsigned short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bmc_in_address0 sc_out sc_lv 3 signal 0 } 
	{ bmc_in_ce0 sc_out sc_logic 1 signal 0 } 
	{ bmc_in_q0 sc_in sc_lv 16 signal 0 } 
	{ bmc_in_address1 sc_out sc_lv 3 signal 0 } 
	{ bmc_in_ce1 sc_out sc_logic 1 signal 0 } 
	{ bmc_in_q1 sc_in sc_lv 16 signal 0 } 
	{ bmc_in_offset sc_in sc_lv 3 signal 1 } 
	{ orig sc_in sc_logic 1 signal 2 } 
	{ dup sc_in sc_logic 1 signal 3 } 
	{ state_orig_issued_i sc_in sc_lv 1 signal 4 } 
	{ state_orig_issued_o sc_out sc_lv 1 signal 4 } 
	{ state_orig_issued_o_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ state_dup_issued_i sc_in sc_lv 1 signal 5 } 
	{ state_dup_issued_o sc_out sc_lv 1 signal 5 } 
	{ state_dup_issued_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ state_orig_in sc_out sc_lv 16 signal 6 } 
	{ state_orig_in_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ state_dup_in sc_out sc_lv 16 signal 7 } 
	{ state_dup_in_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bmc_in_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bmc_in", "role": "address0" }} , 
 	{ "name": "bmc_in_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bmc_in", "role": "ce0" }} , 
 	{ "name": "bmc_in_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bmc_in", "role": "q0" }} , 
 	{ "name": "bmc_in_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bmc_in", "role": "address1" }} , 
 	{ "name": "bmc_in_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bmc_in", "role": "ce1" }} , 
 	{ "name": "bmc_in_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bmc_in", "role": "q1" }} , 
 	{ "name": "bmc_in_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bmc_in_offset", "role": "default" }} , 
 	{ "name": "orig", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "orig", "role": "default" }} , 
 	{ "name": "dup", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dup", "role": "default" }} , 
 	{ "name": "state_orig_issued_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "state_orig_issued", "role": "i" }} , 
 	{ "name": "state_orig_issued_o", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "state_orig_issued", "role": "o" }} , 
 	{ "name": "state_orig_issued_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_orig_issued", "role": "o_ap_vld" }} , 
 	{ "name": "state_dup_issued_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "state_dup_issued", "role": "i" }} , 
 	{ "name": "state_dup_issued_o", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "state_dup_issued", "role": "o" }} , 
 	{ "name": "state_dup_issued_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_dup_issued", "role": "o_ap_vld" }} , 
 	{ "name": "state_orig_in", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "state_orig_in", "role": "default" }} , 
 	{ "name": "state_orig_in_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_orig_in", "role": "ap_vld" }} , 
 	{ "name": "state_dup_in", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "state_dup_in", "role": "default" }} , 
 	{ "name": "state_dup_in_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_dup_in", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "aqed_in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bmc_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bmc_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "orig", "Type" : "None", "Direction" : "I"},
			{"Name" : "dup", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_orig_issued", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_dup_issued", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_in_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_in", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_orig_val_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_val_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_val_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_val_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_dup_in", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	aqed_in {
		bmc_in {Type I LastRead 4 FirstWrite -1}
		bmc_in_offset {Type I LastRead 0 FirstWrite -1}
		orig {Type I LastRead 0 FirstWrite -1}
		dup {Type I LastRead 0 FirstWrite -1}
		state_orig_issued {Type IO LastRead 0 FirstWrite 0}
		state_dup_issued {Type IO LastRead 0 FirstWrite 4}
		state_in_count {Type IO LastRead -1 FirstWrite -1}
		state_orig_in {Type O LastRead -1 FirstWrite 0}
		state_orig_val_0 {Type IO LastRead -1 FirstWrite -1}
		state_orig_val_1 {Type IO LastRead -1 FirstWrite -1}
		state_orig_val_2 {Type IO LastRead -1 FirstWrite -1}
		state_orig_val_3 {Type IO LastRead -1 FirstWrite -1}
		state_dup_in {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bmc_in { ap_memory {  { bmc_in_address0 mem_address 1 3 }  { bmc_in_ce0 mem_ce 1 1 }  { bmc_in_q0 mem_dout 0 16 }  { bmc_in_address1 mem_address 1 3 }  { bmc_in_ce1 mem_ce 1 1 }  { bmc_in_q1 mem_dout 0 16 } } }
	bmc_in_offset { ap_none {  { bmc_in_offset in_data 0 3 } } }
	orig { ap_none {  { orig in_data 0 1 } } }
	dup { ap_none {  { dup in_data 0 1 } } }
	state_orig_issued { ap_ovld {  { state_orig_issued_i in_data 0 1 }  { state_orig_issued_o out_data 1 1 }  { state_orig_issued_o_ap_vld out_vld 1 1 } } }
	state_dup_issued { ap_ovld {  { state_dup_issued_i in_data 0 1 }  { state_dup_issued_o out_data 1 1 }  { state_dup_issued_o_ap_vld out_vld 1 1 } } }
	state_orig_in { ap_vld {  { state_orig_in out_data 1 16 }  { state_orig_in_ap_vld out_vld 1 1 } } }
	state_dup_in { ap_vld {  { state_dup_in out_data 1 16 }  { state_dup_in_ap_vld out_vld 1 1 } } }
}
