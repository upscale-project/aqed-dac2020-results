// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="aqed_top,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=50.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.254000,HLS_SYN_LAT=145,HLS_SYN_TPT=none,HLS_SYN_MEM=5,HLS_SYN_DSP=0,HLS_SYN_FF=755,HLS_SYN_LUT=2557,HLS_VERSION=2018_3}" *)

module aqed_top (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        agg_result,
        orig_V,
        dup_V,
        orig_idx_V,
        dup_idx_V,
        num_V
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [19:0] agg_result;
input  [0:0] orig_V;
input  [0:0] dup_V;
input  [1:0] orig_idx_V;
input  [1:0] dup_idx_V;
input  [2:0] num_V;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [0:0] state_orig_issued_V;
reg   [0:0] state_dup_issued_V;
reg   [15:0] state_orig_in_V;
reg   [15:0] state_dup_in_V;
reg   [1:0] state_dup_idx_V;
reg   [7:0] state_dup_val_V_0;
reg   [7:0] state_dup_val_V_1;
reg   [3:0] bmc_in_address0;
reg    bmc_in_ce0;
reg    bmc_in_we0;
wire   [7:0] bmc_in_q0;
reg   [3:0] bmc_in_address1;
reg    bmc_in_ce1;
wire   [7:0] bmc_in_q1;
reg   [0:0] state_orig_done_V;
reg   [0:0] o2_qed_done_V_reg_248;
wire    ap_CS_fsm_state6;
wire    grp_aqed_out_fu_161_ap_ready;
wire    grp_aqed_out_fu_161_ap_done;
reg   [0:0] o2_qed_check_V_reg_253;
wire    grp_workload_fu_113_ap_start;
wire    grp_workload_fu_113_ap_done;
wire    grp_workload_fu_113_ap_idle;
wire    grp_workload_fu_113_ap_ready;
wire   [3:0] grp_workload_fu_113_data_address0;
wire    grp_workload_fu_113_data_ce0;
wire    grp_workload_fu_113_data_we0;
wire   [7:0] grp_workload_fu_113_data_d0;
wire    grp_aqed_in_fu_125_ap_start;
wire    grp_aqed_in_fu_125_ap_done;
wire    grp_aqed_in_fu_125_ap_idle;
wire    grp_aqed_in_fu_125_ap_ready;
wire   [3:0] grp_aqed_in_fu_125_bmc_in_address0;
wire    grp_aqed_in_fu_125_bmc_in_ce0;
wire   [3:0] grp_aqed_in_fu_125_bmc_in_address1;
wire    grp_aqed_in_fu_125_bmc_in_ce1;
wire   [0:0] grp_aqed_in_fu_125_state_orig_issued_V_o;
wire    grp_aqed_in_fu_125_state_orig_issued_V_o_ap_vld;
wire   [0:0] grp_aqed_in_fu_125_state_dup_issued_V_o;
wire    grp_aqed_in_fu_125_state_dup_issued_V_o_ap_vld;
wire   [15:0] grp_aqed_in_fu_125_state_orig_in_V;
wire    grp_aqed_in_fu_125_state_orig_in_V_ap_vld;
wire   [15:0] grp_aqed_in_fu_125_state_dup_in_V;
wire    grp_aqed_in_fu_125_state_dup_in_V_ap_vld;
wire   [1:0] grp_aqed_in_fu_125_state_dup_idx_V;
wire    grp_aqed_in_fu_125_state_dup_idx_V_ap_vld;
wire   [7:0] grp_aqed_in_fu_125_state_dup_val_V_0;
wire    grp_aqed_in_fu_125_state_dup_val_V_0_ap_vld;
wire   [7:0] grp_aqed_in_fu_125_state_dup_val_V_1;
wire    grp_aqed_in_fu_125_state_dup_val_V_1_ap_vld;
wire    grp_aqed_out_fu_161_ap_start;
wire    grp_aqed_out_fu_161_ap_idle;
wire   [0:0] grp_aqed_out_fu_161_state_orig_done_V;
wire    grp_aqed_out_fu_161_state_orig_done_V_ap_vld;
wire   [3:0] grp_aqed_out_fu_161_bmc_in_address0;
wire    grp_aqed_out_fu_161_bmc_in_ce0;
wire   [3:0] grp_aqed_out_fu_161_bmc_in_address1;
wire    grp_aqed_out_fu_161_bmc_in_ce1;
wire   [0:0] grp_aqed_out_fu_161_ap_return_0;
wire   [0:0] grp_aqed_out_fu_161_ap_return_1;
reg    grp_workload_fu_113_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_aqed_in_fu_125_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    grp_aqed_out_fu_161_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state7;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 state_orig_issued_V = 1'd0;
#0 state_dup_issued_V = 1'd0;
#0 state_orig_in_V = 16'd65535;
#0 state_dup_in_V = 16'd65535;
#0 state_dup_idx_V = 2'd0;
#0 state_dup_val_V_0 = 8'd0;
#0 state_dup_val_V_1 = 8'd0;
#0 state_orig_done_V = 1'd0;
#0 grp_workload_fu_113_ap_start_reg = 1'b0;
#0 grp_aqed_in_fu_125_ap_start_reg = 1'b0;
#0 grp_aqed_out_fu_161_ap_start_reg = 1'b0;
end

aqed_top_bmc_in #(
    .DataWidth( 8 ),
    .AddressRange( 16 ),
    .AddressWidth( 4 ))
bmc_in_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(bmc_in_address0),
    .ce0(bmc_in_ce0),
    .we0(bmc_in_we0),
    .d0(grp_workload_fu_113_data_d0),
    .q0(bmc_in_q0),
    .address1(bmc_in_address1),
    .ce1(bmc_in_ce1),
    .q1(bmc_in_q1)
);

workload grp_workload_fu_113(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_workload_fu_113_ap_start),
    .ap_done(grp_workload_fu_113_ap_done),
    .ap_idle(grp_workload_fu_113_ap_idle),
    .ap_ready(grp_workload_fu_113_ap_ready),
    .data_address0(grp_workload_fu_113_data_address0),
    .data_ce0(grp_workload_fu_113_data_ce0),
    .data_we0(grp_workload_fu_113_data_we0),
    .data_d0(grp_workload_fu_113_data_d0),
    .data_q0(bmc_in_q0)
);

aqed_in grp_aqed_in_fu_125(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aqed_in_fu_125_ap_start),
    .ap_done(grp_aqed_in_fu_125_ap_done),
    .ap_idle(grp_aqed_in_fu_125_ap_idle),
    .ap_ready(grp_aqed_in_fu_125_ap_ready),
    .bmc_in_address0(grp_aqed_in_fu_125_bmc_in_address0),
    .bmc_in_ce0(grp_aqed_in_fu_125_bmc_in_ce0),
    .bmc_in_q0(bmc_in_q0),
    .bmc_in_address1(grp_aqed_in_fu_125_bmc_in_address1),
    .bmc_in_ce1(grp_aqed_in_fu_125_bmc_in_ce1),
    .bmc_in_q1(bmc_in_q1),
    .orig_V(orig_V),
    .dup_V(dup_V),
    .orig_idx_V(orig_idx_V),
    .dup_idx_V(dup_idx_V),
    .state_orig_issued_V_i(state_orig_issued_V),
    .state_orig_issued_V_o(grp_aqed_in_fu_125_state_orig_issued_V_o),
    .state_orig_issued_V_o_ap_vld(grp_aqed_in_fu_125_state_orig_issued_V_o_ap_vld),
    .state_dup_issued_V_i(state_dup_issued_V),
    .state_dup_issued_V_o(grp_aqed_in_fu_125_state_dup_issued_V_o),
    .state_dup_issued_V_o_ap_vld(grp_aqed_in_fu_125_state_dup_issued_V_o_ap_vld),
    .state_orig_in_V(grp_aqed_in_fu_125_state_orig_in_V),
    .state_orig_in_V_ap_vld(grp_aqed_in_fu_125_state_orig_in_V_ap_vld),
    .state_dup_in_V(grp_aqed_in_fu_125_state_dup_in_V),
    .state_dup_in_V_ap_vld(grp_aqed_in_fu_125_state_dup_in_V_ap_vld),
    .state_dup_idx_V(grp_aqed_in_fu_125_state_dup_idx_V),
    .state_dup_idx_V_ap_vld(grp_aqed_in_fu_125_state_dup_idx_V_ap_vld),
    .state_dup_val_V_0(grp_aqed_in_fu_125_state_dup_val_V_0),
    .state_dup_val_V_0_ap_vld(grp_aqed_in_fu_125_state_dup_val_V_0_ap_vld),
    .state_dup_val_V_1(grp_aqed_in_fu_125_state_dup_val_V_1),
    .state_dup_val_V_1_ap_vld(grp_aqed_in_fu_125_state_dup_val_V_1_ap_vld)
);

aqed_out grp_aqed_out_fu_161(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aqed_out_fu_161_ap_start),
    .ap_done(grp_aqed_out_fu_161_ap_done),
    .ap_idle(grp_aqed_out_fu_161_ap_idle),
    .ap_ready(grp_aqed_out_fu_161_ap_ready),
    .state_orig_issued_V(state_orig_issued_V),
    .state_orig_in_V(state_orig_in_V),
    .state_orig_done_V(grp_aqed_out_fu_161_state_orig_done_V),
    .state_orig_done_V_ap_vld(grp_aqed_out_fu_161_state_orig_done_V_ap_vld),
    .state_dup_in_V(state_dup_in_V),
    .state_dup_issued_V(state_dup_issued_V),
    .state_dup_idx_V(state_dup_idx_V),
    .bmc_in_address0(grp_aqed_out_fu_161_bmc_in_address0),
    .bmc_in_ce0(grp_aqed_out_fu_161_bmc_in_ce0),
    .bmc_in_q0(bmc_in_q0),
    .bmc_in_address1(grp_aqed_out_fu_161_bmc_in_address1),
    .bmc_in_ce1(grp_aqed_out_fu_161_bmc_in_ce1),
    .bmc_in_q1(bmc_in_q1),
    .ap_return_0(grp_aqed_out_fu_161_ap_return_0),
    .ap_return_1(grp_aqed_out_fu_161_ap_return_1)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aqed_in_fu_125_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            grp_aqed_in_fu_125_ap_start_reg <= 1'b1;
        end else if ((grp_aqed_in_fu_125_ap_ready == 1'b1)) begin
            grp_aqed_in_fu_125_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aqed_out_fu_161_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_aqed_out_fu_161_ap_start_reg <= 1'b1;
        end else if ((grp_aqed_out_fu_161_ap_ready == 1'b1)) begin
            grp_aqed_out_fu_161_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_workload_fu_113_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_workload_fu_113_ap_start_reg <= 1'b1;
        end else if ((grp_workload_fu_113_ap_ready == 1'b1)) begin
            grp_workload_fu_113_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if(ap_rst) begin
	o2_qed_check_V_reg_253 <= 0;
	o2_qed_done_V_reg_248 <= 0;
    end else    if (((grp_aqed_out_fu_161_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        o2_qed_check_V_reg_253 <= grp_aqed_out_fu_161_ap_return_1;
        o2_qed_done_V_reg_248 <= grp_aqed_out_fu_161_ap_return_0;
    end
end

always @ (posedge ap_clk) begin
    if(ap_rst) begin
	state_dup_idx_V	<= 0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (grp_aqed_in_fu_125_state_dup_idx_V_ap_vld == 1'b1))) begin
        state_dup_idx_V <= grp_aqed_in_fu_125_state_dup_idx_V;
    end
end

always @ (posedge ap_clk) begin
    if(ap_rst) begin
	state_dup_in_V	<= 'hFFFF;
    end else    if (((1'b1 == ap_CS_fsm_state2) & (grp_aqed_in_fu_125_state_dup_in_V_ap_vld == 1'b1))) begin
        state_dup_in_V <= grp_aqed_in_fu_125_state_dup_in_V;
    end
end

always @ (posedge ap_clk) begin
    if(ap_rst) begin
	state_dup_issued_V	<= 0;
    end else    if (((1'b1 == ap_CS_fsm_state2) & (grp_aqed_in_fu_125_state_dup_issued_V_o_ap_vld == 1'b1))) begin
        state_dup_issued_V <= grp_aqed_in_fu_125_state_dup_issued_V_o;
    end
end

always @ (posedge ap_clk) begin
    if(ap_rst) begin
	state_dup_val_V_0	<= 0;
    end else    if (((1'b1 == ap_CS_fsm_state2) & (grp_aqed_in_fu_125_state_dup_val_V_0_ap_vld == 1'b1))) begin
        state_dup_val_V_0 <= grp_aqed_in_fu_125_state_dup_val_V_0;
    end
end

always @ (posedge ap_clk) begin
    if(ap_rst) begin
	state_dup_val_V_1	<= 0;
    end else    if (((1'b1 == ap_CS_fsm_state2) & (grp_aqed_in_fu_125_state_dup_val_V_1_ap_vld == 1'b1))) begin
        state_dup_val_V_1 <= grp_aqed_in_fu_125_state_dup_val_V_1;
    end
end

always @ (posedge ap_clk) begin
    if(ap_rst) begin
	state_orig_done_V	<= 0;
    end else    if (((1'b1 == ap_CS_fsm_state6) & (grp_aqed_out_fu_161_state_orig_done_V_ap_vld == 1'b1))) begin
        state_orig_done_V <= grp_aqed_out_fu_161_state_orig_done_V;
    end
end

always @ (posedge ap_clk) begin
    if(ap_rst) begin
	state_orig_in_V	<= 'hFFFF;
    end else    if (((1'b1 == ap_CS_fsm_state2) & (grp_aqed_in_fu_125_state_orig_in_V_ap_vld == 1'b1))) begin
        state_orig_in_V <= grp_aqed_in_fu_125_state_orig_in_V;
    end
end

always @ (posedge ap_clk) begin
    if(ap_rst) begin
	state_orig_issued_V	<= 0;
    end else    if (((1'b1 == ap_CS_fsm_state2) & (grp_aqed_in_fu_125_state_orig_issued_V_o_ap_vld == 1'b1))) begin
        state_orig_issued_V <= grp_aqed_in_fu_125_state_orig_issued_V_o;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        bmc_in_address0 = grp_aqed_out_fu_161_bmc_in_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bmc_in_address0 = grp_aqed_in_fu_125_bmc_in_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bmc_in_address0 = grp_workload_fu_113_data_address0;
    end else begin
        bmc_in_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        bmc_in_address1 = grp_aqed_out_fu_161_bmc_in_address1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bmc_in_address1 = grp_aqed_in_fu_125_bmc_in_address1;
    end else begin
        bmc_in_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        bmc_in_ce0 = grp_aqed_out_fu_161_bmc_in_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bmc_in_ce0 = grp_aqed_in_fu_125_bmc_in_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        bmc_in_ce0 = grp_workload_fu_113_data_ce0;
    end else begin
        bmc_in_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        bmc_in_ce1 = grp_aqed_out_fu_161_bmc_in_ce1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        bmc_in_ce1 = grp_aqed_in_fu_125_bmc_in_ce1;
    end else begin
        bmc_in_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        bmc_in_we0 = grp_workload_fu_113_data_we0;
    end else begin
        bmc_in_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((grp_aqed_in_fu_125_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_workload_fu_113_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_aqed_out_fu_161_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign agg_result = {{{{{{state_dup_val_V_1}, {state_dup_val_V_0}}, {state_orig_done_V}}, {state_orig_issued_V}}, {o2_qed_check_V_reg_253}}, {o2_qed_done_V_reg_248}};

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign grp_aqed_in_fu_125_ap_start = grp_aqed_in_fu_125_ap_start_reg;

assign grp_aqed_out_fu_161_ap_start = grp_aqed_out_fu_161_ap_start_reg;

assign grp_workload_fu_113_ap_start = grp_workload_fu_113_ap_start_reg;

   assert_qed_match : assert property (
       @(posedge ap_clk)
         (o2_qed_done_V_reg_248) |-> (o2_qed_check_V_reg_253));

  assume_stable_orig_idx : assume property
    (@(posedge ap_clk) ap_rst == 0 |=> $stable(orig_idx_V));

  assume_stable_dup_idx : assume property
    (@(posedge ap_clk) ap_rst == 0 |=> $stable(dup_idx_V));

  assume_orig_idx_max : assume property
    (@(posedge ap_clk) (orig_idx_V < 2'b10));

  assume_dup_idx_max : assume property
    (@(posedge ap_clk) (dup_idx_V < 2'b10));

generate
  for (genvar i=0; i < 32; i++) begin
  assume_consistent_key3 : assume property
    (@(posedge ap_clk) (
                       (grp_workload_fu_113.local_key_0_U.workload_local_key_0_rom_U.ram[i] == grp_workload_fu_113.local_key_1_U.workload_local_key_0_rom_U.ram[i]) /*&& (grp_workload_fu_111.grp_aes256_encrypt_ecb_fu_337.ctx_body_key_U.aes256_encrypt_ecb_ctx_body_key_ram_U.ram[i] == grp_workload_fu_111.grp_aes256_encrypt_ecb_fu_347.ctx_body_key_U.aes256_encrypt_ecb_ctx_body_key_ram_U.ram[i]) && (grp_workload_fu_111.grp_aes256_encrypt_ecb_fu_337.ctx_body_enckey_U.aes256_encrypt_ecb_ctx_body_enkey_ram_U.ram[i] == grp_workload_fu_111.grp_aes256_encrypt_ecb_fu_347.ctx_body_enckey_U.aes256_encrypt_ecb_ctx_body_enkey_ram_U.ram[i])*/));
   end
endgenerate

generate
  for (genvar i=0; i < 256; i++) begin
  assume_consistent_sbox : assume property
    (@(posedge ap_clk) (
   grp_workload_fu_113.grp_aes256_encrypt_ecb_fu_439.sbox_U.aes256_encrypt_ecb_sbox_rom_U.ram[0]==grp_workload_fu_113.grp_aes256_encrypt_ecb_fu_451.sbox_U.aes256_encrypt_ecb_sbox_rom_U.ram[0] ));
   end
endgenerate

endmodule //aqed_top
