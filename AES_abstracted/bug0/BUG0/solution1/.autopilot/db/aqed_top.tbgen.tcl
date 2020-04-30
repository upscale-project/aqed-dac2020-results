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
	{ agg_result int 20 regular {pointer 1}  }
	{ orig_V int 1 regular  }
	{ dup_V int 1 regular  }
	{ orig_idx uint 8 regular  }
	{ dup_idx uint 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "agg_result", "interface" : "wire", "bitwidth" : 20, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "agg.result.qed_done.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":1,"up":1,"cElement": [{"cName": "agg.result.qed_check.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":2,"up":2,"cElement": [{"cName": "agg.result.orig_issued.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":3,"up":3,"cElement": [{"cName": "agg.result.orig_done.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":4,"up":11,"cElement": [{"cName": "agg.result.dup.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 2}]}]},{"low":12,"up":19,"cElement": [{"cName": "agg.result.dup.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 1,"up" : 1,"step" : 2}]}]}]} , 
 	{ "Name" : "orig_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "orig.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dup_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dup.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "orig_idx", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "orig_idx","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dup_idx", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "dup_idx","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 11
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ agg_result sc_out sc_lv 20 signal 0 } 
	{ orig_V sc_in sc_lv 1 signal 1 } 
	{ dup_V sc_in sc_lv 1 signal 2 } 
	{ orig_idx sc_in sc_lv 8 signal 3 } 
	{ dup_idx sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "agg_result", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "agg_result", "role": "default" }} , 
 	{ "name": "orig_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "orig_V", "role": "default" }} , 
 	{ "name": "dup_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dup_V", "role": "default" }} , 
 	{ "name": "orig_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "orig_idx", "role": "default" }} , 
 	{ "name": "dup_idx", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dup_idx", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "13", "15"],
		"CDFG" : "aqed_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "121", "EstimateLatencyMax" : "135",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_workload_fu_121"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aqed_in_fu_134"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aqed_out_fu_173"}],
		"Port" : [
			{"Name" : "agg_result", "Type" : "None", "Direction" : "O"},
			{"Name" : "orig_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "dup_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "orig_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "dup_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx_ct_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_issued_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aqed_out_fu_173", "Port" : "state_orig_issued_V"},
					{"ID" : "13", "SubInstance" : "grp_aqed_in_fu_134", "Port" : "state_orig_issued_V"}]},
			{"Name" : "state_dup_issued_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aqed_out_fu_173", "Port" : "state_dup_issued_V"},
					{"ID" : "13", "SubInstance" : "grp_aqed_in_fu_134", "Port" : "state_dup_issued_V"}]},
			{"Name" : "state_orig_val_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_aqed_in_fu_134", "Port" : "state_orig_val_V_0"}]},
			{"Name" : "state_orig_val_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_aqed_in_fu_134", "Port" : "state_orig_val_V_1"}]},
			{"Name" : "state_in_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_aqed_in_fu_134", "Port" : "state_in_count_V"}]},
			{"Name" : "state_orig_in_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aqed_out_fu_173", "Port" : "state_orig_in_V"},
					{"ID" : "13", "SubInstance" : "grp_aqed_in_fu_134", "Port" : "state_orig_in_V"}]},
			{"Name" : "state_orig_idx_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aqed_out_fu_173", "Port" : "state_orig_idx_V"},
					{"ID" : "13", "SubInstance" : "grp_aqed_in_fu_134", "Port" : "state_orig_idx_V"}]},
			{"Name" : "state_dup_in_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aqed_out_fu_173", "Port" : "state_dup_in_V"},
					{"ID" : "13", "SubInstance" : "grp_aqed_in_fu_134", "Port" : "state_dup_in_V"}]},
			{"Name" : "state_dup_idx_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aqed_out_fu_173", "Port" : "state_dup_idx_V"},
					{"ID" : "13", "SubInstance" : "grp_aqed_in_fu_134", "Port" : "state_dup_idx_V"}]},
			{"Name" : "state_dup_val_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_aqed_in_fu_134", "Port" : "state_dup_val_V_0"}]},
			{"Name" : "state_dup_val_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_aqed_in_fu_134", "Port" : "state_dup_val_V_1"}]},
			{"Name" : "state_key_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_aqed_in_fu_134", "Port" : "state_key_V"}]},
			{"Name" : "bmc_in", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_workload_fu_121", "Port" : "data"},
					{"ID" : "15", "SubInstance" : "grp_aqed_out_fu_173", "Port" : "bmc_in"},
					{"ID" : "13", "SubInstance" : "grp_aqed_in_fu_134", "Port" : "bmc_in"}]},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_workload_fu_121", "Port" : "sbox"}]},
			{"Name" : "local_key_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_workload_fu_121", "Port" : "local_key_0"}]},
			{"Name" : "local_key_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_workload_fu_121", "Port" : "local_key_1"}]},
			{"Name" : "state_out_count_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aqed_out_fu_173", "Port" : "state_out_count_V"}]},
			{"Name" : "state_qed_done_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aqed_out_fu_173", "Port" : "state_qed_done_V"}]},
			{"Name" : "state_orig_done_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aqed_out_fu_173", "Port" : "state_orig_done_V"}]},
			{"Name" : "state_orig_out_V_0", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aqed_out_fu_173", "Port" : "state_orig_out_V_0"}]},
			{"Name" : "state_orig_out_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aqed_out_fu_173", "Port" : "state_orig_out_V_1"}]},
			{"Name" : "state_qed_check_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_aqed_out_fu_173", "Port" : "state_qed_check_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bmc_in_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_workload_fu_121", "Parent" : "0", "Child" : ["3", "4", "5", "9"],
		"CDFG" : "workload",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "109", "EstimateLatencyMax" : "109",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes256_encrypt_ecb_fu_351"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_aes256_encrypt_ecb_fu_363"}],
		"Port" : [
			{"Name" : "data", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_aes256_encrypt_ecb_fu_351", "Port" : "sbox"},
					{"ID" : "9", "SubInstance" : "grp_aes256_encrypt_ecb_fu_363", "Port" : "sbox"}]},
			{"Name" : "local_key_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_aes256_encrypt_ecb_fu_351", "Port" : "k"}]},
			{"Name" : "local_key_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_aes256_encrypt_ecb_fu_363", "Port" : "k"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_workload_fu_121.local_key_0_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_workload_fu_121.local_key_1_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_workload_fu_121.grp_aes256_encrypt_ecb_fu_351", "Parent" : "2", "Child" : ["6", "7", "8"],
		"CDFG" : "aes256_encrypt_ecb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46", "EstimateLatencyMax" : "46",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_workload_fu_121.grp_aes256_encrypt_ecb_fu_351.sbox_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_workload_fu_121.grp_aes256_encrypt_ecb_fu_351.ctx_body_key_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_workload_fu_121.grp_aes256_encrypt_ecb_fu_351.ctx_body_enckey_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_workload_fu_121.grp_aes256_encrypt_ecb_fu_363", "Parent" : "2", "Child" : ["10", "11", "12"],
		"CDFG" : "aes256_encrypt_ecb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46", "EstimateLatencyMax" : "46",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "k", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_workload_fu_121.grp_aes256_encrypt_ecb_fu_363.sbox_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_workload_fu_121.grp_aes256_encrypt_ecb_fu_363.ctx_body_key_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_workload_fu_121.grp_aes256_encrypt_ecb_fu_363.ctx_body_enckey_U", "Parent" : "9"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aqed_in_fu_134", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "aqed_in",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "bmc_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bmc_in_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "orig_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "dup_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "orig_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "dup_idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_orig_issued_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_dup_issued_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_val_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_val_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_in_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_in_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_orig_idx_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_dup_in_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_dup_idx_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_dup_val_V_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_dup_val_V_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_key_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_aqed_in_fu_134.state_key_V_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aqed_out_fu_173", "Parent" : "0",
		"CDFG" : "aqed_out",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "acc_out_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_orig_issued_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_out_count_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_qed_done_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_orig_done_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "state_orig_idx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "bmc_in", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state_orig_out_V_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_orig_out_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_dup_in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_dup_issued_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_dup_idx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_qed_check_V", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	aqed_top {
		agg_result {Type O LastRead -1 FirstWrite 6}
		orig_V {Type I LastRead 0 FirstWrite -1}
		dup_V {Type I LastRead 0 FirstWrite -1}
		orig_idx {Type I LastRead 0 FirstWrite -1}
		dup_idx {Type I LastRead 0 FirstWrite -1}
		idx_ct_V {Type IO LastRead -1 FirstWrite -1}
		state_orig_issued_V {Type IO LastRead -1 FirstWrite -1}
		state_dup_issued_V {Type IO LastRead -1 FirstWrite -1}
		state_orig_val_V_0 {Type IO LastRead -1 FirstWrite -1}
		state_orig_val_V_1 {Type IO LastRead -1 FirstWrite -1}
		state_in_count_V {Type IO LastRead -1 FirstWrite -1}
		state_orig_in_V {Type IO LastRead -1 FirstWrite -1}
		state_orig_idx_V {Type IO LastRead -1 FirstWrite -1}
		state_dup_in_V {Type IO LastRead -1 FirstWrite -1}
		state_dup_idx_V {Type IO LastRead -1 FirstWrite -1}
		state_dup_val_V_0 {Type IO LastRead -1 FirstWrite -1}
		state_dup_val_V_1 {Type IO LastRead -1 FirstWrite -1}
		state_key_V {Type IO LastRead -1 FirstWrite -1}
		bmc_in {Type IO LastRead -1 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		local_key_0 {Type I LastRead -1 FirstWrite -1}
		local_key_1 {Type I LastRead -1 FirstWrite -1}
		state_out_count_V {Type IO LastRead -1 FirstWrite -1}
		state_qed_done_V {Type IO LastRead -1 FirstWrite -1}
		state_orig_done_V {Type IO LastRead -1 FirstWrite -1}
		state_orig_out_V_0 {Type IO LastRead -1 FirstWrite -1}
		state_orig_out_V_1 {Type IO LastRead -1 FirstWrite -1}
		state_qed_check_V {Type IO LastRead -1 FirstWrite -1}}
	workload {
		data {Type IO LastRead 5 FirstWrite 7}
		data_offset {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}
		local_key_0 {Type I LastRead -1 FirstWrite -1}
		local_key_1 {Type I LastRead -1 FirstWrite -1}}
	aes256_encrypt_ecb {
		k {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aes256_encrypt_ecb {
		k {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	aqed_in {
		bmc_in {Type I LastRead 2 FirstWrite -1}
		bmc_in_offset {Type I LastRead 0 FirstWrite -1}
		orig_V {Type I LastRead 2 FirstWrite -1}
		dup_V {Type I LastRead 2 FirstWrite -1}
		orig_idx {Type I LastRead 1 FirstWrite -1}
		dup_idx {Type I LastRead 0 FirstWrite -1}
		state_orig_issued_V {Type IO LastRead 2 FirstWrite 2}
		state_dup_issued_V {Type IO LastRead 2 FirstWrite 17}
		state_orig_val_V_0 {Type IO LastRead -1 FirstWrite -1}
		state_orig_val_V_1 {Type IO LastRead -1 FirstWrite -1}
		state_in_count_V {Type IO LastRead -1 FirstWrite -1}
		state_orig_in_V {Type O LastRead -1 FirstWrite 2}
		state_orig_idx_V {Type O LastRead -1 FirstWrite 2}
		state_dup_in_V {Type O LastRead -1 FirstWrite 17}
		state_dup_idx_V {Type O LastRead -1 FirstWrite 17}
		state_dup_val_V_0 {Type O LastRead -1 FirstWrite 17}
		state_dup_val_V_1 {Type O LastRead -1 FirstWrite 17}
		state_key_V {Type IO LastRead -1 FirstWrite -1}}
	aqed_out {
		acc_out_offset {Type I LastRead 0 FirstWrite -1}
		state_orig_issued_V {Type I LastRead 0 FirstWrite -1}
		state_out_count_V {Type IO LastRead -1 FirstWrite -1}
		state_qed_done_V {Type IO LastRead -1 FirstWrite -1}
		state_orig_in_V {Type I LastRead 0 FirstWrite -1}
		state_orig_done_V {Type O LastRead -1 FirstWrite 0}
		state_orig_idx_V {Type I LastRead 0 FirstWrite -1}
		bmc_in {Type I LastRead 2 FirstWrite -1}
		state_orig_out_V_0 {Type IO LastRead -1 FirstWrite -1}
		state_orig_out_V_1 {Type IO LastRead -1 FirstWrite -1}
		state_dup_in_V {Type I LastRead 1 FirstWrite -1}
		state_dup_issued_V {Type I LastRead 1 FirstWrite -1}
		state_dup_idx_V {Type I LastRead 1 FirstWrite -1}
		state_qed_check_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "121", "Max" : "135"}
	, {"Name" : "Interval", "Min" : "122", "Max" : "136"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	agg_result { ap_none {  { agg_result out_data 1 20 } } }
	orig_V { ap_none {  { orig_V in_data 0 1 } } }
	dup_V { ap_none {  { dup_V in_data 0 1 } } }
	orig_idx { ap_none {  { orig_idx in_data 0 8 } } }
	dup_idx { ap_none {  { dup_idx in_data 0 8 } } }
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
