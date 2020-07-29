set moduleName load5
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {load5}
set C_modelType { void 0 }
set C_modelArgList {
	{ to_V int 64 regular {fifo 1 volatile }  }
	{ from int 64 regular {axi_master 0}  }
	{ from_offset int 64 regular  }
	{ data_count int 32 regular  }
	{ data_count_out int 32 regular {fifo 1}  }
	{ output_ddr0 int 64 regular  }
	{ output_ddr0_out int 64 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "to_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "from", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "from_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "data_count", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_count_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_ddr0", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "output_ddr0_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 67
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
	{ m_axi_from_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_from_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_from_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_from_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_from_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_from_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_from_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_from_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_from_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_from_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_from_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_from_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_from_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_from_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_from_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_from_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_from_WSTRB sc_out sc_lv 8 signal 1 } 
	{ m_axi_from_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_from_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_from_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_from_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_from_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_from_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_from_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_from_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_from_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_from_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_from_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_from_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_from_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_from_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_from_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_from_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_from_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_from_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_from_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_from_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_from_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_from_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_from_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_from_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_from_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_from_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_from_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_from_BUSER sc_in sc_lv 1 signal 1 } 
	{ from_offset sc_in sc_lv 64 signal 2 } 
	{ data_count sc_in sc_lv 32 signal 3 } 
	{ data_count_out_din sc_out sc_lv 32 signal 4 } 
	{ data_count_out_full_n sc_in sc_logic 1 signal 4 } 
	{ data_count_out_write sc_out sc_logic 1 signal 4 } 
	{ output_ddr0 sc_in sc_lv 64 signal 5 } 
	{ output_ddr0_out_din sc_out sc_lv 64 signal 6 } 
	{ output_ddr0_out_full_n sc_in sc_logic 1 signal 6 } 
	{ output_ddr0_out_write sc_out sc_logic 1 signal 6 } 
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
 	{ "name": "m_axi_from_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "AWVALID" }} , 
 	{ "name": "m_axi_from_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "AWREADY" }} , 
 	{ "name": "m_axi_from_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "from", "role": "AWADDR" }} , 
 	{ "name": "m_axi_from_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "AWID" }} , 
 	{ "name": "m_axi_from_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "from", "role": "AWLEN" }} , 
 	{ "name": "m_axi_from_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "from", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_from_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "from", "role": "AWBURST" }} , 
 	{ "name": "m_axi_from_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "from", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_from_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "from", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_from_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "from", "role": "AWPROT" }} , 
 	{ "name": "m_axi_from_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "from", "role": "AWQOS" }} , 
 	{ "name": "m_axi_from_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "from", "role": "AWREGION" }} , 
 	{ "name": "m_axi_from_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "AWUSER" }} , 
 	{ "name": "m_axi_from_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "WVALID" }} , 
 	{ "name": "m_axi_from_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "WREADY" }} , 
 	{ "name": "m_axi_from_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "from", "role": "WDATA" }} , 
 	{ "name": "m_axi_from_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "from", "role": "WSTRB" }} , 
 	{ "name": "m_axi_from_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "WLAST" }} , 
 	{ "name": "m_axi_from_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "WID" }} , 
 	{ "name": "m_axi_from_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "WUSER" }} , 
 	{ "name": "m_axi_from_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "ARVALID" }} , 
 	{ "name": "m_axi_from_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "ARREADY" }} , 
 	{ "name": "m_axi_from_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "from", "role": "ARADDR" }} , 
 	{ "name": "m_axi_from_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "ARID" }} , 
 	{ "name": "m_axi_from_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "from", "role": "ARLEN" }} , 
 	{ "name": "m_axi_from_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "from", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_from_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "from", "role": "ARBURST" }} , 
 	{ "name": "m_axi_from_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "from", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_from_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "from", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_from_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "from", "role": "ARPROT" }} , 
 	{ "name": "m_axi_from_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "from", "role": "ARQOS" }} , 
 	{ "name": "m_axi_from_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "from", "role": "ARREGION" }} , 
 	{ "name": "m_axi_from_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "ARUSER" }} , 
 	{ "name": "m_axi_from_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "RVALID" }} , 
 	{ "name": "m_axi_from_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "RREADY" }} , 
 	{ "name": "m_axi_from_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "from", "role": "RDATA" }} , 
 	{ "name": "m_axi_from_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "RLAST" }} , 
 	{ "name": "m_axi_from_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "RID" }} , 
 	{ "name": "m_axi_from_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "RUSER" }} , 
 	{ "name": "m_axi_from_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "from", "role": "RRESP" }} , 
 	{ "name": "m_axi_from_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "BVALID" }} , 
 	{ "name": "m_axi_from_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "BREADY" }} , 
 	{ "name": "m_axi_from_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "from", "role": "BRESP" }} , 
 	{ "name": "m_axi_from_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "BID" }} , 
 	{ "name": "m_axi_from_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "from", "role": "BUSER" }} , 
 	{ "name": "from_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "from_offset", "role": "default" }} , 
 	{ "name": "data_count", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_count", "role": "default" }} , 
 	{ "name": "data_count_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_count_out", "role": "din" }} , 
 	{ "name": "data_count_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_count_out", "role": "full_n" }} , 
 	{ "name": "data_count_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_count_out", "role": "write" }} , 
 	{ "name": "output_ddr0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_ddr0", "role": "default" }} , 
 	{ "name": "output_ddr0_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_ddr0_out", "role": "din" }} , 
 	{ "name": "output_ddr0_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_ddr0_out", "role": "full_n" }} , 
 	{ "name": "output_ddr0_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_ddr0_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "load5",
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
			{"Name" : "from", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "from_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "from_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "from_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_count_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "data_count_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_ddr0", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_ddr0_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "output_ddr0_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	load5 {
		to_V {Type O LastRead -1 FirstWrite 9}
		from {Type I LastRead 8 FirstWrite -1}
		from_offset {Type I LastRead 0 FirstWrite -1}
		data_count {Type I LastRead 0 FirstWrite -1}
		data_count_out {Type O LastRead -1 FirstWrite 6}
		output_ddr0 {Type I LastRead 6 FirstWrite -1}
		output_ddr0_out {Type O LastRead -1 FirstWrite 6}}}

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
	from { m_axi {  { m_axi_from_AWVALID VALID 1 1 }  { m_axi_from_AWREADY READY 0 1 }  { m_axi_from_AWADDR ADDR 1 64 }  { m_axi_from_AWID ID 1 1 }  { m_axi_from_AWLEN LEN 1 32 }  { m_axi_from_AWSIZE SIZE 1 3 }  { m_axi_from_AWBURST BURST 1 2 }  { m_axi_from_AWLOCK LOCK 1 2 }  { m_axi_from_AWCACHE CACHE 1 4 }  { m_axi_from_AWPROT PROT 1 3 }  { m_axi_from_AWQOS QOS 1 4 }  { m_axi_from_AWREGION REGION 1 4 }  { m_axi_from_AWUSER USER 1 1 }  { m_axi_from_WVALID VALID 1 1 }  { m_axi_from_WREADY READY 0 1 }  { m_axi_from_WDATA DATA 1 64 }  { m_axi_from_WSTRB STRB 1 8 }  { m_axi_from_WLAST LAST 1 1 }  { m_axi_from_WID ID 1 1 }  { m_axi_from_WUSER USER 1 1 }  { m_axi_from_ARVALID VALID 1 1 }  { m_axi_from_ARREADY READY 0 1 }  { m_axi_from_ARADDR ADDR 1 64 }  { m_axi_from_ARID ID 1 1 }  { m_axi_from_ARLEN LEN 1 32 }  { m_axi_from_ARSIZE SIZE 1 3 }  { m_axi_from_ARBURST BURST 1 2 }  { m_axi_from_ARLOCK LOCK 1 2 }  { m_axi_from_ARCACHE CACHE 1 4 }  { m_axi_from_ARPROT PROT 1 3 }  { m_axi_from_ARQOS QOS 1 4 }  { m_axi_from_ARREGION REGION 1 4 }  { m_axi_from_ARUSER USER 1 1 }  { m_axi_from_RVALID VALID 0 1 }  { m_axi_from_RREADY READY 1 1 }  { m_axi_from_RDATA DATA 0 64 }  { m_axi_from_RLAST LAST 0 1 }  { m_axi_from_RID ID 0 1 }  { m_axi_from_RUSER USER 0 1 }  { m_axi_from_RRESP RESP 0 2 }  { m_axi_from_BVALID VALID 0 1 }  { m_axi_from_BREADY READY 1 1 }  { m_axi_from_BRESP RESP 0 2 }  { m_axi_from_BID ID 0 1 }  { m_axi_from_BUSER USER 0 1 } } }
	from_offset { ap_none {  { from_offset in_data 0 64 } } }
	data_count { ap_none {  { data_count in_data 0 32 } } }
	data_count_out { ap_fifo {  { data_count_out_din fifo_data 1 32 }  { data_count_out_full_n fifo_status 0 1 }  { data_count_out_write fifo_update 1 1 } } }
	output_ddr0 { ap_none {  { output_ddr0 in_data 0 64 } } }
	output_ddr0_out { ap_fifo {  { output_ddr0_out_din fifo_data 1 64 }  { output_ddr0_out_full_n fifo_status 0 1 }  { output_ddr0_out_write fifo_update 1 1 } } }
}
