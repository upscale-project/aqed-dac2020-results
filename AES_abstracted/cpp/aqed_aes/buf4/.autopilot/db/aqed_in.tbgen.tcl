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
	{ bmc_in int 8 regular {array 16 { 1 1 } 1 1 }  }
	{ orig_V int 1 regular  }
	{ dup_V int 1 regular  }
	{ orig_idx_V int 2 regular  }
	{ dup_idx_V int 2 regular  }
	{ state_orig_issued_V int 1 regular {pointer 2} {global 2}  }
	{ state_dup_issued_V int 1 regular {pointer 2} {global 2}  }
	{ state_orig_in_V int 16 regular {pointer 1} {global 1}  }
	{ state_dup_in_V int 16 regular {pointer 1} {global 1}  }
	{ state_dup_idx_V int 2 regular {pointer 1} {global 1}  }
	{ state_dup_val_V_0 int 8 regular {pointer 1} {global 1}  }
	{ state_dup_val_V_1 int 8 regular {pointer 1} {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bmc_in", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "orig_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "dup_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "orig_idx_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "dup_idx_V", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "state_orig_issued_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "state.orig_issued.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "state_dup_issued_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "state.dup_issued.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "state_orig_in_V", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "state.orig_in.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "state_dup_in_V", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "state.dup_in.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "state_dup_idx_V", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "state.dup_idx.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "state_dup_val_V_0", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "state.dup_val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]}], "extern" : 0} , 
 	{ "Name" : "state_dup_val_V_1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "state.dup_val.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bmc_in_address0 sc_out sc_lv 4 signal 0 } 
	{ bmc_in_ce0 sc_out sc_logic 1 signal 0 } 
	{ bmc_in_q0 sc_in sc_lv 8 signal 0 } 
	{ bmc_in_address1 sc_out sc_lv 4 signal 0 } 
	{ bmc_in_ce1 sc_out sc_logic 1 signal 0 } 
	{ bmc_in_q1 sc_in sc_lv 8 signal 0 } 
	{ orig_V sc_in sc_lv 1 signal 1 } 
	{ dup_V sc_in sc_lv 1 signal 2 } 
	{ orig_idx_V sc_in sc_lv 2 signal 3 } 
	{ dup_idx_V sc_in sc_lv 2 signal 4 } 
	{ state_orig_issued_V_i sc_in sc_lv 1 signal 5 } 
	{ state_orig_issued_V_o sc_out sc_lv 1 signal 5 } 
	{ state_orig_issued_V_o_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ state_dup_issued_V_i sc_in sc_lv 1 signal 6 } 
	{ state_dup_issued_V_o sc_out sc_lv 1 signal 6 } 
	{ state_dup_issued_V_o_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ state_orig_in_V sc_out sc_lv 16 signal 7 } 
	{ state_orig_in_V_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ state_dup_in_V sc_out sc_lv 16 signal 8 } 
	{ state_dup_in_V_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ state_dup_idx_V sc_out sc_lv 2 signal 9 } 
	{ state_dup_idx_V_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ state_dup_val_V_0 sc_out sc_lv 8 signal 10 } 
	{ state_dup_val_V_0_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ state_dup_val_V_1 sc_out sc_lv 8 signal 11 } 
	{ state_dup_val_V_1_ap_vld sc_out sc_logic 1 outvld 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bmc_in_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bmc_in", "role": "address0" }} , 
 	{ "name": "bmc_in_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bmc_in", "role": "ce0" }} , 
 	{ "name": "bmc_in_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bmc_in", "role": "q0" }} , 
 	{ "name": "bmc_in_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "bmc_in", "role": "address1" }} , 
 	{ "name": "bmc_in_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bmc_in", "role": "ce1" }} , 
 	{ "name": "bmc_in_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "bmc_in", "role": "q1" }} , 
 	{ "name": "orig_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "orig_V", "role": "default" }} , 
 	{ "name": "dup_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dup_V", "role": "default" }} , 
 	{ "name": "orig_idx_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "orig_idx_V", "role": "default" }} , 
 	{ "name": "dup_idx_V", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "dup_idx_V", "role": "default" }} , 
 	{ "name": "state_orig_issued_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "state_orig_issued_V", "role": "i" }} , 
 	{ "name": "state_orig_issued_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "state_orig_issued_V", "role": "o" }} , 
 	{ "name": "state_orig_issued_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_orig_issued_V", "role": "o_ap_vld" }} , 
 	{ "name": "state_dup_issued_V_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "state_dup_issued_V", "role": "i" }} , 
 	{ "name": "state_dup_issued_V_o", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "state_dup_issued_V", "role": "o" }} , 
 	{ "name": "state_dup_issued_V_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_dup_issued_V", "role": "o_ap_vld" }} , 
 	{ "name": "state_orig_in_V", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "state_orig_in_V", "role": "default" }} , 
 	{ "name": "state_orig_in_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_orig_in_V", "role": "ap_vld" }} , 
 	{ "name": "state_dup_in_V", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "state_dup_in_V", "role": "default" }} , 
 	{ "name": "state_dup_in_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_dup_in_V", "role": "ap_vld" }} , 
 	{ "name": "state_dup_idx_V", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "state_dup_idx_V", "role": "default" }} , 
 	{ "name": "state_dup_idx_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_dup_idx_V", "role": "ap_vld" }} , 
 	{ "name": "state_dup_val_V_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_dup_val_V_0", "role": "default" }} , 
 	{ "name": "state_dup_val_V_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_dup_val_V_0", "role": "ap_vld" }} , 
 	{ "name": "state_dup_val_V_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state_dup_val_V_1", "role": "default" }} , 
 	{ "name": "state_dup_val_V_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "state_dup_val_V_1", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "aqed_in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bmc_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "orig_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "dup_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "orig_idx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "dup_idx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_orig_issued_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_dup_issued_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_val_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_val_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_in_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_in_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_dup_in_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_dup_idx_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_dup_val_V_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_dup_val_V_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_key_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.state_key_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	aqed_in {
		bmc_in {Type I LastRead 3 FirstWrite -1}
		orig_V {Type I LastRead 3 FirstWrite -1}
		dup_V {Type I LastRead 3 FirstWrite -1}
		orig_idx_V {Type I LastRead 1 FirstWrite -1}
		dup_idx_V {Type I LastRead 1 FirstWrite -1}
		state_orig_issued_V {Type IO LastRead 3 FirstWrite 3}
		state_dup_issued_V {Type IO LastRead 3 FirstWrite 18}
		state_orig_val_V_0 {Type IO LastRead -1 FirstWrite -1}
		state_orig_val_V_1 {Type IO LastRead -1 FirstWrite -1}
		state_in_count_V {Type IO LastRead -1 FirstWrite -1}
		state_orig_in_V {Type O LastRead -1 FirstWrite 3}
		state_dup_in_V {Type O LastRead -1 FirstWrite 18}
		state_dup_idx_V {Type O LastRead -1 FirstWrite 18}
		state_dup_val_V_0 {Type O LastRead -1 FirstWrite 18}
		state_dup_val_V_1 {Type O LastRead -1 FirstWrite 18}
		state_key_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bmc_in { ap_memory {  { bmc_in_address0 mem_address 1 4 }  { bmc_in_ce0 mem_ce 1 1 }  { bmc_in_q0 mem_dout 0 8 }  { bmc_in_address1 mem_address 1 4 }  { bmc_in_ce1 mem_ce 1 1 }  { bmc_in_q1 mem_dout 0 8 } } }
	orig_V { ap_none {  { orig_V in_data 0 1 } } }
	dup_V { ap_none {  { dup_V in_data 0 1 } } }
	orig_idx_V { ap_none {  { orig_idx_V in_data 0 2 } } }
	dup_idx_V { ap_none {  { dup_idx_V in_data 0 2 } } }
	state_orig_issued_V { ap_ovld {  { state_orig_issued_V_i in_data 0 1 }  { state_orig_issued_V_o out_data 1 1 }  { state_orig_issued_V_o_ap_vld out_vld 1 1 } } }
	state_dup_issued_V { ap_ovld {  { state_dup_issued_V_i in_data 0 1 }  { state_dup_issued_V_o out_data 1 1 }  { state_dup_issued_V_o_ap_vld out_vld 1 1 } } }
	state_orig_in_V { ap_vld {  { state_orig_in_V out_data 1 16 }  { state_orig_in_V_ap_vld out_vld 1 1 } } }
	state_dup_in_V { ap_vld {  { state_dup_in_V out_data 1 16 }  { state_dup_in_V_ap_vld out_vld 1 1 } } }
	state_dup_idx_V { ap_vld {  { state_dup_idx_V out_data 1 2 }  { state_dup_idx_V_ap_vld out_vld 1 1 } } }
	state_dup_val_V_0 { ap_vld {  { state_dup_val_V_0 out_data 1 8 }  { state_dup_val_V_0_ap_vld out_vld 1 1 } } }
	state_dup_val_V_1 { ap_vld {  { state_dup_val_V_1 out_data 1 8 }  { state_dup_val_V_1_ap_vld out_vld 1 1 } } }
}
