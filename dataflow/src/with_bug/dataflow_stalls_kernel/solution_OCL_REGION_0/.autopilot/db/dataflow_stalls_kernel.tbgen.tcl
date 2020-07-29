set C_TypeInfoList {{ 
"dataflow_stalls_kernel" : [[], { "return": [[], "void"]} , [{"ExternC" : 1}], [ {"output_ddr0": [[],{ "pointer": "0"}] }, {"input_ddr0": [[],{ "pointer": "0"}] }, {"data_count": [[],"1"] }],[],""], 
"1": [ "uint32_t", {"typedef": [[[], {"scalar": "unsigned int"}],""]}], 
"0": [ "Data", {"typedef": [[[],"2"],""]}], 
"2": [ "uint64_t", {"typedef": [[[], {"scalar": "long unsigned int"}],""]}]
}}
set moduleName dataflow_stalls_kernel
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {dataflow_stalls_kernel}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmemo int 64 regular {axi_master 1}  }
	{ gmemi int 64 regular {axi_master 0}  }
	{ output_ddr0 int 64 regular {axi_slave 0}  }
	{ input_ddr0 int 64 regular {axi_slave 0}  }
	{ data_count int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmemo", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "output_ddr0","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"offset": { "type": "dynamic","port_name": "output_ddr0","bundle": "control"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 65535,"step" : 1}]}]}]} , 
 	{ "Name" : "gmemi", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "input_ddr0","cData": "long unsigned int","bit_use": { "low": 0,"up": 63},"offset": { "type": "dynamic","port_name": "input_ddr0","bundle": "control"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 65535,"step" : 1}]}]}]} , 
 	{ "Name" : "output_ddr0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "input_ddr0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "data_count", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "data_count","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmemo_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmemo_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmemo_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmemo_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmemo_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmemo_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmemo_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmemo_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmemo_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmemo_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmemo_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmemo_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmemo_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmemo_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmemo_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmemo_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmemo_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmemo_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmemo_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmemo_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmemo_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmemo_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmemo_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmemo_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmemo_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmemo_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmemo_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmemo_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmemo_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmemo_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmemo_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmemo_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmemo_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmemo_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmemo_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmemo_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_gmemo_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmemo_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmemo_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmemo_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmemo_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmemo_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmemo_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmemo_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmemo_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmemi_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmemi_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmemi_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmemi_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmemi_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmemi_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmemi_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmemi_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmemi_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmemi_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmemi_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmemi_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmemi_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmemi_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmemi_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmemi_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmemi_WSTRB sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmemi_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmemi_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmemi_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmemi_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmemi_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmemi_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmemi_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmemi_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmemi_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmemi_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmemi_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmemi_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmemi_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmemi_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmemi_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmemi_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmemi_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmemi_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmemi_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_gmemi_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmemi_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmemi_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmemi_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmemi_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmemi_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmemi_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmemi_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmemi_BUSER sc_in sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"dataflow_stalls_kernel","role":"start","value":"0","valid_bit":"0"},{"name":"dataflow_stalls_kernel","role":"continue","value":"0","valid_bit":"4"},{"name":"dataflow_stalls_kernel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"output_ddr0","role":"data","value":"16"},{"name":"input_ddr0","role":"data","value":"28"},{"name":"data_count","role":"data","value":"40"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"dataflow_stalls_kernel","role":"start","value":"0","valid_bit":"0"},{"name":"dataflow_stalls_kernel","role":"done","value":"0","valid_bit":"1"},{"name":"dataflow_stalls_kernel","role":"idle","value":"0","valid_bit":"2"},{"name":"dataflow_stalls_kernel","role":"ready","value":"0","valid_bit":"3"},{"name":"dataflow_stalls_kernel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmemo_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmemo_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmemo_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmemo", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmemo_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "AWID" }} , 
 	{ "name": "m_axi_gmemo_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmemo", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmemo_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmemo", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmemo_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemo", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmemo_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemo", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmemo_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemo", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmemo_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmemo", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmemo_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemo", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmemo_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemo", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmemo_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmemo_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmemo_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmemo_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmemo", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmemo_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmemo", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmemo_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmemo_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "WID" }} , 
 	{ "name": "m_axi_gmemo_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmemo_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmemo_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmemo_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmemo", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmemo_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "ARID" }} , 
 	{ "name": "m_axi_gmemo_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmemo", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmemo_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmemo", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmemo_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemo", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmemo_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemo", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmemo_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemo", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmemo_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmemo", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmemo_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemo", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmemo_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemo", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmemo_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmemo_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmemo_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmemo_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmemo", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmemo_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmemo_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "RID" }} , 
 	{ "name": "m_axi_gmemo_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmemo_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemo", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmemo_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmemo_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmemo_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemo", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmemo_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "BID" }} , 
 	{ "name": "m_axi_gmemo_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemo", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmemi_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmemi_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmemi_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmemi", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmemi_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "AWID" }} , 
 	{ "name": "m_axi_gmemi_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmemi", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmemi_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmemi", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmemi_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemi", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmemi_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemi", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmemi_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemi", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmemi_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmemi", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmemi_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemi", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmemi_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemi", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmemi_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmemi_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmemi_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmemi_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmemi", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmemi_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmemi", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmemi_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmemi_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "WID" }} , 
 	{ "name": "m_axi_gmemi_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmemi_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmemi_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmemi_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmemi", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmemi_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "ARID" }} , 
 	{ "name": "m_axi_gmemi_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmemi", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmemi_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmemi", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmemi_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemi", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmemi_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemi", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmemi_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemi", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmemi_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmemi", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmemi_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemi", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmemi_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmemi", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmemi_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmemi_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmemi_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmemi_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmemi", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmemi_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmemi_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "RID" }} , 
 	{ "name": "m_axi_gmemi_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmemi_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemi", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmemi_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmemi_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmemi_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmemi", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmemi_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "BID" }} , 
 	{ "name": "m_axi_gmemi_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmemi", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27"],
		"CDFG" : "dataflow_stalls_kernel",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "4", "Name" : "load5_U0"}],
		"OutputProcess" : [
			{"ID" : "10", "Name" : "store_U0"}],
		"Port" : [
			{"Name" : "gmemo", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "store_U0", "Port" : "to_r"}]},
			{"Name" : "gmemi", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "load5_U0", "Port" : "from"}]},
			{"Name" : "output_ddr0", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_ddr0", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_count", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_stalls_kernel_control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_stalls_kernel_gmemo_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_stalls_kernel_gmemi_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.load5_U0", "Parent" : "0",
		"CDFG" : "load5",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "to_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "to_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "from", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "from_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "from_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "from_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_count", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_count_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "data_count_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_ddr0", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_ddr0_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "output_ddr0_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scatter_U0", "Parent" : "0",
		"CDFG" : "scatter",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "4",
		"StartFifo" : "start_for_scatter_U0_U",
		"Port" : [
			{"Name" : "to0_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "to0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "to1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "to1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "from_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "11",
				"BlockSignal" : [
					{"Name" : "from_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_count", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "12",
				"BlockSignal" : [
					{"Name" : "data_count_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_count_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "data_count_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_count_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "data_count_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute1_U0", "Parent" : "0",
		"CDFG" : "compute1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "5",
		"StartFifo" : "start_for_compute1_U0_U",
		"Port" : [
			{"Name" : "to_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "to_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "from_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "14",
				"BlockSignal" : [
					{"Name" : "from_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_count", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "16",
				"BlockSignal" : [
					{"Name" : "data_count_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_count_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "data_count_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute2_U0", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "compute2",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "5",
		"StartFifo" : "start_for_compute2_U0_U",
		"Port" : [
			{"Name" : "to_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "9", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "to_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "from_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "15",
				"BlockSignal" : [
					{"Name" : "from_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_count", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "17",
				"BlockSignal" : [
					{"Name" : "data_count_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.compute2_U0.dataflow_stalls_kernel_mul_64s_64s_64_6_U18", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gather_U0", "Parent" : "0",
		"CDFG" : "gather",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "6",
		"StartFifo" : "start_for_gather_U0_U",
		"Port" : [
			{"Name" : "to_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "to_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "from0_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "18",
				"BlockSignal" : [
					{"Name" : "from0_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "from1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "20",
				"BlockSignal" : [
					{"Name" : "from1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_count", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "19",
				"BlockSignal" : [
					{"Name" : "data_count_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_count_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "10", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "data_count_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.store_U0", "Parent" : "0",
		"CDFG" : "store",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "4",
		"StartFifo" : "start_for_store_U0_U",
		"Port" : [
			{"Name" : "to_r", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_r_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "to_r_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "to_r_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "to_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "13",
				"BlockSignal" : [
					{"Name" : "to_offset_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "from_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "21",
				"BlockSignal" : [
					{"Name" : "from_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_count", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "9", "DependentChan" : "22",
				"BlockSignal" : [
					{"Name" : "data_count_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_stage0_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_count_c_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_ddr0_c_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_stage1_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_stage2_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_count_c7_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_count_c8_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_stage3_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_count_c9_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_stage4_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_stage5_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_count_c10_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_scatter_U0_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_store_U0_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_compute1_U0_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_compute2_U0_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_gather_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_stalls_kernel {
		gmemo {Type O LastRead 3 FirstWrite 4}
		gmemi {Type I LastRead 8 FirstWrite -1}
		output_ddr0 {Type I LastRead 0 FirstWrite -1}
		input_ddr0 {Type I LastRead 0 FirstWrite -1}
		data_count {Type I LastRead 0 FirstWrite -1}}
	load5 {
		to_V {Type O LastRead -1 FirstWrite 9}
		from {Type I LastRead 8 FirstWrite -1}
		from_offset {Type I LastRead 0 FirstWrite -1}
		data_count {Type I LastRead 0 FirstWrite -1}
		data_count_out {Type O LastRead -1 FirstWrite 6}
		output_ddr0 {Type I LastRead 6 FirstWrite -1}
		output_ddr0_out {Type O LastRead -1 FirstWrite 6}}
	scatter {
		to0_V {Type O LastRead -1 FirstWrite 2}
		to1_V {Type O LastRead -1 FirstWrite 2}
		from_V {Type I LastRead 2 FirstWrite -1}
		data_count {Type I LastRead 0 FirstWrite -1}
		data_count_out {Type O LastRead -1 FirstWrite 0}
		data_count_out1 {Type O LastRead -1 FirstWrite 0}}
	compute1 {
		to_V {Type O LastRead -1 FirstWrite 2}
		from_V {Type I LastRead 2 FirstWrite -1}
		data_count {Type I LastRead 0 FirstWrite -1}
		data_count_out {Type O LastRead -1 FirstWrite 0}}
	compute2 {
		to_V {Type O LastRead -1 FirstWrite 9}
		from_V {Type I LastRead 2 FirstWrite -1}
		data_count {Type I LastRead 0 FirstWrite -1}}
	gather {
		to_V {Type O LastRead -1 FirstWrite 3}
		from0_V {Type I LastRead 2 FirstWrite -1}
		from1_V {Type I LastRead 2 FirstWrite -1}
		data_count {Type I LastRead 0 FirstWrite -1}
		data_count_out {Type O LastRead -1 FirstWrite 0}}
	store {
		to_r {Type O LastRead 3 FirstWrite 4}
		to_offset {Type I LastRead 0 FirstWrite -1}
		from_V {Type I LastRead 3 FirstWrite -1}
		data_count {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "4294967295", "Max" : "4294967295"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmemo { m_axi {  { m_axi_gmemo_AWVALID VALID 1 1 }  { m_axi_gmemo_AWREADY READY 0 1 }  { m_axi_gmemo_AWADDR ADDR 1 64 }  { m_axi_gmemo_AWID ID 1 1 }  { m_axi_gmemo_AWLEN LEN 1 8 }  { m_axi_gmemo_AWSIZE SIZE 1 3 }  { m_axi_gmemo_AWBURST BURST 1 2 }  { m_axi_gmemo_AWLOCK LOCK 1 2 }  { m_axi_gmemo_AWCACHE CACHE 1 4 }  { m_axi_gmemo_AWPROT PROT 1 3 }  { m_axi_gmemo_AWQOS QOS 1 4 }  { m_axi_gmemo_AWREGION REGION 1 4 }  { m_axi_gmemo_AWUSER USER 1 1 }  { m_axi_gmemo_WVALID VALID 1 1 }  { m_axi_gmemo_WREADY READY 0 1 }  { m_axi_gmemo_WDATA DATA 1 64 }  { m_axi_gmemo_WSTRB STRB 1 8 }  { m_axi_gmemo_WLAST LAST 1 1 }  { m_axi_gmemo_WID ID 1 1 }  { m_axi_gmemo_WUSER USER 1 1 }  { m_axi_gmemo_ARVALID VALID 1 1 }  { m_axi_gmemo_ARREADY READY 0 1 }  { m_axi_gmemo_ARADDR ADDR 1 64 }  { m_axi_gmemo_ARID ID 1 1 }  { m_axi_gmemo_ARLEN LEN 1 8 }  { m_axi_gmemo_ARSIZE SIZE 1 3 }  { m_axi_gmemo_ARBURST BURST 1 2 }  { m_axi_gmemo_ARLOCK LOCK 1 2 }  { m_axi_gmemo_ARCACHE CACHE 1 4 }  { m_axi_gmemo_ARPROT PROT 1 3 }  { m_axi_gmemo_ARQOS QOS 1 4 }  { m_axi_gmemo_ARREGION REGION 1 4 }  { m_axi_gmemo_ARUSER USER 1 1 }  { m_axi_gmemo_RVALID VALID 0 1 }  { m_axi_gmemo_RREADY READY 1 1 }  { m_axi_gmemo_RDATA DATA 0 64 }  { m_axi_gmemo_RLAST LAST 0 1 }  { m_axi_gmemo_RID ID 0 1 }  { m_axi_gmemo_RUSER USER 0 1 }  { m_axi_gmemo_RRESP RESP 0 2 }  { m_axi_gmemo_BVALID VALID 0 1 }  { m_axi_gmemo_BREADY READY 1 1 }  { m_axi_gmemo_BRESP RESP 0 2 }  { m_axi_gmemo_BID ID 0 1 }  { m_axi_gmemo_BUSER USER 0 1 } } }
	gmemi { m_axi {  { m_axi_gmemi_AWVALID VALID 1 1 }  { m_axi_gmemi_AWREADY READY 0 1 }  { m_axi_gmemi_AWADDR ADDR 1 64 }  { m_axi_gmemi_AWID ID 1 1 }  { m_axi_gmemi_AWLEN LEN 1 8 }  { m_axi_gmemi_AWSIZE SIZE 1 3 }  { m_axi_gmemi_AWBURST BURST 1 2 }  { m_axi_gmemi_AWLOCK LOCK 1 2 }  { m_axi_gmemi_AWCACHE CACHE 1 4 }  { m_axi_gmemi_AWPROT PROT 1 3 }  { m_axi_gmemi_AWQOS QOS 1 4 }  { m_axi_gmemi_AWREGION REGION 1 4 }  { m_axi_gmemi_AWUSER USER 1 1 }  { m_axi_gmemi_WVALID VALID 1 1 }  { m_axi_gmemi_WREADY READY 0 1 }  { m_axi_gmemi_WDATA DATA 1 64 }  { m_axi_gmemi_WSTRB STRB 1 8 }  { m_axi_gmemi_WLAST LAST 1 1 }  { m_axi_gmemi_WID ID 1 1 }  { m_axi_gmemi_WUSER USER 1 1 }  { m_axi_gmemi_ARVALID VALID 1 1 }  { m_axi_gmemi_ARREADY READY 0 1 }  { m_axi_gmemi_ARADDR ADDR 1 64 }  { m_axi_gmemi_ARID ID 1 1 }  { m_axi_gmemi_ARLEN LEN 1 8 }  { m_axi_gmemi_ARSIZE SIZE 1 3 }  { m_axi_gmemi_ARBURST BURST 1 2 }  { m_axi_gmemi_ARLOCK LOCK 1 2 }  { m_axi_gmemi_ARCACHE CACHE 1 4 }  { m_axi_gmemi_ARPROT PROT 1 3 }  { m_axi_gmemi_ARQOS QOS 1 4 }  { m_axi_gmemi_ARREGION REGION 1 4 }  { m_axi_gmemi_ARUSER USER 1 1 }  { m_axi_gmemi_RVALID VALID 0 1 }  { m_axi_gmemi_RREADY READY 1 1 }  { m_axi_gmemi_RDATA DATA 0 64 }  { m_axi_gmemi_RLAST LAST 0 1 }  { m_axi_gmemi_RID ID 0 1 }  { m_axi_gmemi_RUSER USER 0 1 }  { m_axi_gmemi_RRESP RESP 0 2 }  { m_axi_gmemi_BVALID VALID 0 1 }  { m_axi_gmemi_BREADY READY 1 1 }  { m_axi_gmemi_BRESP RESP 0 2 }  { m_axi_gmemi_BID ID 0 1 }  { m_axi_gmemi_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ gmemo { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ gmemi { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmemo 1 }
	{ gmemi 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmemo 1 }
	{ gmemi 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
