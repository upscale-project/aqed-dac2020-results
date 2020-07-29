set C_TypeInfoList {{ 
"aqed_top" : [[], {"return": [[],"0"] }, [{"ExternC" : 0}], [ {"orig": [[], {"scalar": "bool"}] }, {"dup": [[], {"scalar": "bool"}] }],["1","2","3"],""],
 "1": [ "state", [[],"4"],""],
 "2": [ "bmc_in", [[], {"array": ["5", [8]]}],""],
 "3": [ "LARc_out", [[], {"array": ["5", [16]]}],""], 
"0": [ "out3", {"struct": [[{"pack": 0}],[],[{ "qed_done": [[],  {"scalar": "bool"}]},{ "qed_check": [[],  {"scalar": "bool"}]},{ "orig_issued": [[],  {"scalar": "bool"}]},{ "orig_done": [[],  {"scalar": "bool"}]},{ "check1": [[8], "6"]},{ "check2": [[8], "6"]},{ "bmc_in": [[],  {"array": ["5", [8]]}]},{ "LARc_out": [[],  {"array": ["5", [16]]}]}],""]}], 
"4": [ "st", {"struct": [[{"pack": 0}],[],[{ "orig_val": [[],  {"array": ["5", [4]]}]},{ "acc_out1": [[], { "pointer": "5"}]},{ "orig_out1": [[],  {"array": ["5", [4]]}]},{ "orig_out2": [[],  {"array": ["7", [8]]}]},{ "dup_out1": [[],  {"array": ["5", [4]]}]},{ "dup_out2": [[],  {"array": ["5", [8]]}]},{ "orig_in": [[16], "8"]},{ "orig_out": [[],  {"array": ["5", [4]]}]},{ "orig_issued": [[],  {"scalar": "bool"}]},{ "dup_issued": [[],  {"scalar": "bool"}]},{ "dup_in": [[16], "8"]},{ "in_count": [[16], "8"]},{ "out_count": [[16], "8"]},{ "orig_done": [[],  {"scalar": "bool"}]},{ "dup_done": [[],  {"scalar": "bool"}]},{ "qed_done": [[],  {"scalar": "bool"}]},{ "qed_check": [[],  {"scalar": "bool"}]},{ "index": [[],  {"scalar": "bool"}]}],""]}], 
"6": [ "uint8_t", {"typedef": [[[], {"scalar": "unsigned char"}],""]}], 
"5": [ "word", {"typedef": [[[], {"scalar": "short"}],""]}], 
"7": [ "longword", {"typedef": [[[], {"scalar": "long int"}],""]}], 
"8": [ "uint16_t", {"typedef": [[[], {"scalar": "unsigned short"}],""]}]
}}
set moduleName aqed_top
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
set C_modelName {aqed_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ agg_result int 404 regular {pointer 2}  }
	{ orig uint 1 regular  }
	{ dup uint 1 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "agg_result", "interface" : "wire", "bitwidth" : 404, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "agg.result.qed_done","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":1,"up":1,"cElement": [{"cName": "agg.result.qed_check","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":2,"up":2,"cElement": [{"cName": "agg.result.orig_issued","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":3,"up":3,"cElement": [{"cName": "agg.result.orig_done","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":4,"up":11,"cElement": [{"cName": "agg.result.check1","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":12,"up":19,"cElement": [{"cName": "agg.result.check2","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":20,"up":35,"cElement": [{"cName": "agg.result.bmc_in","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]},{"low":36,"up":51,"cElement": [{"cName": "agg.result.bmc_in","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]},{"low":52,"up":67,"cElement": [{"cName": "agg.result.bmc_in","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]},{"low":68,"up":83,"cElement": [{"cName": "agg.result.bmc_in","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]},{"low":84,"up":99,"cElement": [{"cName": "agg.result.bmc_in","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]},{"low":100,"up":115,"cElement": [{"cName": "agg.result.bmc_in","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]},{"low":116,"up":131,"cElement": [{"cName": "agg.result.bmc_in","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]},{"low":132,"up":147,"cElement": [{"cName": "agg.result.bmc_in","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]},{"low":148,"up":163,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]},{"low":164,"up":179,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]},{"low":180,"up":195,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 2,"up" : 2,"step" : 2}]}]},{"low":196,"up":211,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 3,"up" : 3,"step" : 2}]}]},{"low":212,"up":227,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 4,"up" : 4,"step" : 2}]}]},{"low":228,"up":243,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 5,"up" : 5,"step" : 2}]}]},{"low":244,"up":259,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 6,"up" : 6,"step" : 2}]}]},{"low":260,"up":275,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 7,"up" : 7,"step" : 2}]}]},{"low":276,"up":291,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 8,"up" : 8,"step" : 2}]}]},{"low":292,"up":307,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 9,"up" : 9,"step" : 2}]}]},{"low":308,"up":323,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 10,"up" : 10,"step" : 2}]}]},{"low":324,"up":339,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 11,"up" : 11,"step" : 2}]}]},{"low":340,"up":355,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 12,"up" : 12,"step" : 2}]}]},{"low":356,"up":371,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 13,"up" : 13,"step" : 2}]}]},{"low":372,"up":387,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 14,"up" : 14,"step" : 2}]}]},{"low":388,"up":403,"cElement": [{"cName": "agg.result.LARc_out","cData": "short","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 15,"up" : 15,"step" : 2}]}]}]} , 
 	{ "Name" : "orig", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "orig","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dup", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dup","cData": "bool","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ agg_result_i sc_in sc_lv 404 signal 0 } 
	{ agg_result_o sc_out sc_lv 404 signal 0 } 
	{ agg_result_o_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ orig sc_in sc_logic 1 signal 1 } 
	{ dup sc_in sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "agg_result_i", "direction": "in", "datatype": "sc_lv", "bitwidth":404, "type": "signal", "bundle":{"name": "agg_result", "role": "i" }} , 
 	{ "name": "agg_result_o", "direction": "out", "datatype": "sc_lv", "bitwidth":404, "type": "signal", "bundle":{"name": "agg_result", "role": "o" }} , 
 	{ "name": "agg_result_o_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "agg_result", "role": "o_ap_vld" }} , 
 	{ "name": "orig", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "orig", "role": "default" }} , 
 	{ "name": "dup", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dup", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "11", "17", "18"],
		"CDFG" : "aqed_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "32",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Quantization_and_cod_fu_107"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Autocorrelation_fu_114"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aqed_out_fu_123"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aqed_in_fu_148"}],
		"Port" : [
			{"Name" : "agg_result", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "orig", "Type" : "None", "Direction" : "I"},
			{"Name" : "dup", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_index", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_issued", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aqed_in_fu_148", "Port" : "state_orig_issued"},
					{"ID" : "17", "SubInstance" : "grp_aqed_out_fu_123", "Port" : "state_orig_issued"}]},
			{"Name" : "state_dup_issued", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aqed_in_fu_148", "Port" : "state_dup_issued"},
					{"ID" : "17", "SubInstance" : "grp_aqed_out_fu_123", "Port" : "state_dup_issued"}]},
			{"Name" : "state_in_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aqed_in_fu_148", "Port" : "state_in_count"}]},
			{"Name" : "state_orig_in", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aqed_in_fu_148", "Port" : "state_orig_in"},
					{"ID" : "17", "SubInstance" : "grp_aqed_out_fu_123", "Port" : "state_orig_in"}]},
			{"Name" : "state_orig_val_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aqed_in_fu_148", "Port" : "state_orig_val_0"}]},
			{"Name" : "state_orig_val_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aqed_in_fu_148", "Port" : "state_orig_val_1"}]},
			{"Name" : "state_orig_val_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aqed_in_fu_148", "Port" : "state_orig_val_2"}]},
			{"Name" : "state_orig_val_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aqed_in_fu_148", "Port" : "state_orig_val_3"}]},
			{"Name" : "state_dup_in", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_aqed_in_fu_148", "Port" : "state_dup_in"},
					{"ID" : "17", "SubInstance" : "grp_aqed_out_fu_123", "Port" : "state_dup_in"}]},
			{"Name" : "bmc_in", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_Autocorrelation_fu_114", "Port" : "s"},
					{"ID" : "18", "SubInstance" : "grp_aqed_in_fu_148", "Port" : "bmc_in"},
					{"ID" : "17", "SubInstance" : "grp_aqed_out_fu_123", "Port" : "bmc_in"}]},
			{"Name" : "bitoff", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_Autocorrelation_fu_114", "Port" : "bitoff"}]},
			{"Name" : "LARc_out", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_Quantization_and_cod_fu_107", "Port" : "LARc_out"}]},
			{"Name" : "state_out_count", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_aqed_out_fu_123", "Port" : "state_out_count"}]},
			{"Name" : "state_orig_done", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_aqed_out_fu_123", "Port" : "state_orig_done"}]},
			{"Name" : "state_acc_out1_index", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_aqed_out_fu_123", "Port" : "state_acc_out1_index"}]},
			{"Name" : "state_qed_done", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_aqed_out_fu_123", "Port" : "state_qed_done"}]},
			{"Name" : "state_qed_check", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_aqed_out_fu_123", "Port" : "state_qed_check"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bmc_in_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Quantization_and_cod_fu_107", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "Quantization_and_cod",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "LAR_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "LARc_out", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Quantization_and_cod_fu_107.LARc_out_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Quantization_and_cod_fu_107.grp_gsm_add_fu_197", "Parent" : "2",
		"CDFG" : "gsm_add",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Quantization_and_cod_fu_107.grp_gsm_add_fu_204", "Parent" : "2",
		"CDFG" : "gsm_add",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Quantization_and_cod_fu_107.grp_gsm_add_fu_212", "Parent" : "2",
		"CDFG" : "gsm_add",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Quantization_and_cod_fu_107.grp_gsm_add_fu_219", "Parent" : "2",
		"CDFG" : "gsm_add",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Quantization_and_cod_fu_107.aqed_top_mul_mul_eOg_U19", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Quantization_and_cod_fu_107.aqed_top_mul_mul_eOg_U20", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Quantization_and_cod_fu_107.aqed_top_mul_mul_eOg_U21", "Parent" : "2"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Autocorrelation_fu_114", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16"],
		"CDFG" : "Autocorrelation",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "s", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitoff", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Autocorrelation_fu_114.bitoff_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Autocorrelation_fu_114.aqed_top_mac_mulacud_U9", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Autocorrelation_fu_114.aqed_top_mac_mulacud_U10", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Autocorrelation_fu_114.aqed_top_mac_mulacud_U11", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Autocorrelation_fu_114.aqed_top_mac_mulacud_U12", "Parent" : "11"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aqed_out_fu_123", "Parent" : "0",
		"CDFG" : "aqed_out",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "acc_out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_orig_issued", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_out_count", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_orig_done", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_acc_out1_index", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_dup_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_qed_done", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_dup_issued", "Type" : "None", "Direction" : "I"},
			{"Name" : "bmc_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state_qed_check", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aqed_in_fu_148", "Parent" : "0",
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
	aqed_top {
		agg_result {Type IO LastRead 6 FirstWrite 6}
		orig {Type I LastRead 0 FirstWrite -1}
		dup {Type I LastRead 0 FirstWrite -1}
		state_index {Type IO LastRead -1 FirstWrite -1}
		state_orig_issued {Type IO LastRead -1 FirstWrite -1}
		state_dup_issued {Type IO LastRead -1 FirstWrite -1}
		state_in_count {Type IO LastRead -1 FirstWrite -1}
		state_orig_in {Type IO LastRead -1 FirstWrite -1}
		state_orig_val_0 {Type IO LastRead -1 FirstWrite -1}
		state_orig_val_1 {Type IO LastRead -1 FirstWrite -1}
		state_orig_val_2 {Type IO LastRead -1 FirstWrite -1}
		state_orig_val_3 {Type IO LastRead -1 FirstWrite -1}
		state_dup_in {Type IO LastRead -1 FirstWrite -1}
		bmc_in {Type IO LastRead -1 FirstWrite -1}
		bitoff {Type I LastRead -1 FirstWrite -1}
		LARc_out {Type IO LastRead -1 FirstWrite -1}
		state_out_count {Type IO LastRead -1 FirstWrite -1}
		state_orig_done {Type IO LastRead -1 FirstWrite -1}
		state_acc_out1_index {Type IO LastRead -1 FirstWrite -1}
		state_qed_done {Type IO LastRead -1 FirstWrite -1}
		state_qed_check {Type IO LastRead -1 FirstWrite -1}}
	Quantization_and_cod {
		LAR_offset {Type I LastRead 0 FirstWrite -1}
		LARc_out {Type IO LastRead -1 FirstWrite -1}}
	gsm_add {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	gsm_add {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	gsm_add {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	gsm_add {
		a {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}}
	Autocorrelation {
		s {Type IO LastRead 9 FirstWrite 5}
		s_offset {Type I LastRead 0 FirstWrite -1}
		bitoff {Type I LastRead -1 FirstWrite -1}}
	aqed_out {
		acc_out_offset {Type I LastRead 0 FirstWrite -1}
		state_orig_issued {Type I LastRead 0 FirstWrite -1}
		state_out_count {Type IO LastRead -1 FirstWrite -1}
		state_orig_in {Type I LastRead 0 FirstWrite -1}
		state_orig_done {Type O LastRead -1 FirstWrite 0}
		state_acc_out1_index {Type IO LastRead -1 FirstWrite -1}
		state_dup_in {Type I LastRead 0 FirstWrite -1}
		state_qed_done {Type IO LastRead -1 FirstWrite -1}
		state_dup_issued {Type I LastRead 0 FirstWrite -1}
		bmc_in {Type I LastRead 4 FirstWrite -1}
		state_qed_check {Type IO LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "24", "Max" : "32"}
	, {"Name" : "Interval", "Min" : "25", "Max" : "33"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	agg_result { ap_ovld {  { agg_result_i in_data 0 404 }  { agg_result_o out_data 1 404 }  { agg_result_o_ap_vld out_vld 1 1 } } }
	orig { ap_none {  { orig in_data 0 1 } } }
	dup { ap_none {  { dup in_data 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
