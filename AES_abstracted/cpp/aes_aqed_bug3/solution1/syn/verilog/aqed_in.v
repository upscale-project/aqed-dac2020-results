// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aqed_in (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        bmc_in_address0,
        bmc_in_ce0,
        bmc_in_q0,
        bmc_in_address1,
        bmc_in_ce1,
        bmc_in_q1,
        orig_V,
        dup_V,
        orig_idx_V,
        dup_idx_V,
        state_orig_issued_V_i,
        state_orig_issued_V_o,
        state_orig_issued_V_o_ap_vld,
        state_dup_issued_V_i,
        state_dup_issued_V_o,
        state_dup_issued_V_o_ap_vld,
        state_orig_in_V,
        state_orig_in_V_ap_vld,
        state_orig_idx_V,
        state_orig_idx_V_ap_vld,
        state_dup_in_V,
        state_dup_in_V_ap_vld,
        state_dup_idx_V,
        state_dup_idx_V_ap_vld,
        state_dup_val_V_0,
        state_dup_val_V_0_ap_vld,
        state_dup_val_V_1,
        state_dup_val_V_1_ap_vld
);

parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] bmc_in_address0;
output   bmc_in_ce0;
input  [7:0] bmc_in_q0;
output  [3:0] bmc_in_address1;
output   bmc_in_ce1;
input  [7:0] bmc_in_q1;
input  [0:0] orig_V;
input  [0:0] dup_V;
input  [1:0] orig_idx_V;
input  [1:0] dup_idx_V;
input  [0:0] state_orig_issued_V_i;
output  [0:0] state_orig_issued_V_o;
output   state_orig_issued_V_o_ap_vld;
input  [0:0] state_dup_issued_V_i;
output  [0:0] state_dup_issued_V_o;
output   state_dup_issued_V_o_ap_vld;
output  [15:0] state_orig_in_V;
output   state_orig_in_V_ap_vld;
output  [1:0] state_orig_idx_V;
output   state_orig_idx_V_ap_vld;
output  [15:0] state_dup_in_V;
output   state_dup_in_V_ap_vld;
output  [1:0] state_dup_idx_V;
output   state_dup_idx_V_ap_vld;
output  [7:0] state_dup_val_V_0;
output   state_dup_val_V_0_ap_vld;
output  [7:0] state_dup_val_V_1;
output   state_dup_val_V_1_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] bmc_in_address0;
reg bmc_in_ce0;
reg[3:0] bmc_in_address1;
reg bmc_in_ce1;
reg[0:0] state_orig_issued_V_o;
reg state_orig_issued_V_o_ap_vld;
reg[0:0] state_dup_issued_V_o;
reg state_dup_issued_V_o_ap_vld;
reg state_orig_in_V_ap_vld;
reg state_orig_idx_V_ap_vld;
reg state_dup_in_V_ap_vld;
reg state_dup_idx_V_ap_vld;
reg state_dup_val_V_0_ap_vld;
reg state_dup_val_V_1_ap_vld;

(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] state_orig_val_V_0;
reg   [7:0] state_orig_val_V_1;
reg   [15:0] state_in_count_V;
reg   [4:0] state_key_V_address0;
reg    state_key_V_ce0;
reg    state_key_V_we0;
wire   [0:0] state_key_V_q0;
reg   [4:0] state_key_V_address1;
reg    state_key_V_ce1;
reg    state_key_V_we1;
wire    ap_CS_fsm_state2;
reg   [7:0] bmc_in_load_reg_604;
reg   [7:0] bmc_in_load_4_reg_611;
wire   [0:0] val_assign_11_demorg_fu_293_p2;
reg   [0:0] val_assign_11_demorg_reg_628;
wire    ap_CS_fsm_state3;
wire   [0:0] issue_dup_V_fu_506_p2;
reg   [0:0] issue_dup_V_reg_632;
reg   [15:0] state_in_count_V_loa_reg_636;
wire   [63:0] op2_fu_232_p1;
wire   [63:0] p_0296_sum_cast_fu_243_p1;
wire   [63:0] op2_2_fu_256_p1;
wire   [63:0] p_0220_sum_cast_fu_267_p1;
wire   [15:0] tmp_3_fu_571_p2;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
wire   [2:0] r_V_fu_224_p3;
wire   [2:0] p_0296_sum_fu_237_p2;
wire   [2:0] r_V_2_fu_248_p3;
wire   [2:0] p_0220_sum_fu_261_p2;
wire   [0:0] tmp_s_fu_278_p2;
wire   [0:0] orig_V_not_fu_272_p2;
wire   [0:0] tmp_fu_287_p2;
wire   [0:0] tmp_8_fu_327_p2;
wire   [0:0] tmp_9_fu_332_p2;
wire   [0:0] or_cond_fu_338_p2;
wire   [0:0] tmp_6_fu_305_p2;
wire   [0:0] tmp39_demorgan_fu_366_p2;
wire   [0:0] tmp1_fu_360_p2;
wire   [0:0] tmp2_fu_372_p2;
wire   [0:0] sel_tmp_fu_378_p2;
wire   [0:0] issue_orig_V_fu_299_p2;
wire   [0:0] tmp_6_not_fu_390_p2;
wire   [0:0] tmp_7_fu_318_p2;
wire   [0:0] tmp4_fu_408_p2;
wire   [0:0] sel_tmp7_fu_396_p2;
wire   [0:0] tmp5_fu_414_p2;
wire   [0:0] tmp3_fu_402_p2;
wire   [0:0] brmerge_fu_344_p2;
wire   [0:0] sel_tmp1_fu_420_p2;
wire   [0:0] sel_tmp2_fu_426_p2;
wire   [0:0] sel_tmp4_fu_438_p2;
wire   [0:0] sel_tmp3_fu_432_p2;
wire   [0:0] sel_tmp6_fu_444_p2;
wire   [0:0] tmp6_fu_450_p2;
wire   [0:0] sel_tmp5_fu_384_p2;
wire   [0:0] tmp_1_fu_350_p2;
wire   [0:0] tmp_2_fu_355_p2;
wire   [0:0] tmp7_fu_462_p2;
wire   [0:0] sel_tmp8_fu_456_p2;
wire   [0:0] sel_tmp10_fu_474_p2;
wire   [0:0] sel_tmp9_fu_468_p2;
wire   [0:0] sel_tmp12_fu_488_p2;
wire   [0:0] sel_tmp13_fu_494_p2;
wire   [0:0] sel_tmp11_fu_480_p3;
wire   [0:0] not_sel_tmp_fu_500_p2;
reg   [17:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 18'd1;
#0 state_orig_val_V_0 = 8'd0;
#0 state_orig_val_V_1 = 8'd0;
#0 state_in_count_V = 16'd0;
end

aqed_in_state_key_V #(
    .DataWidth( 1 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
state_key_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(state_key_V_address0),
    .ce0(state_key_V_ce0),
    .we0(state_key_V_we0),
    .d0(1'd0),
    .q0(state_key_V_q0),
    .address1(state_key_V_address1),
    .ce1(state_key_V_ce1),
    .we1(state_key_V_we1),
    .d1(1'd0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bmc_in_load_4_reg_611 <= bmc_in_q1;
        bmc_in_load_reg_604 <= bmc_in_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        issue_dup_V_reg_632 <= issue_dup_V_fu_506_p2;
        state_in_count_V_loa_reg_636 <= state_in_count_V;
        val_assign_11_demorg_reg_628 <= val_assign_11_demorg_fu_293_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        state_in_count_V <= tmp_3_fu_571_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (val_assign_11_demorg_fu_293_p2 == 1'd0))) begin
        state_orig_val_V_0 <= bmc_in_q0;
        state_orig_val_V_1 <= bmc_in_q1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state18)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bmc_in_address0 = op2_2_fu_256_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bmc_in_address0 = op2_fu_232_p1;
    end else begin
        bmc_in_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bmc_in_address1 = p_0220_sum_cast_fu_267_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bmc_in_address1 = p_0296_sum_cast_fu_243_p1;
    end else begin
        bmc_in_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        bmc_in_ce0 = 1'b1;
    end else begin
        bmc_in_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        bmc_in_ce1 = 1'b1;
    end else begin
        bmc_in_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) & (issue_dup_V_reg_632 == 1'd1))) begin
        state_dup_idx_V_ap_vld = 1'b1;
    end else begin
        state_dup_idx_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) & (issue_dup_V_reg_632 == 1'd1))) begin
        state_dup_in_V_ap_vld = 1'b1;
    end else begin
        state_dup_in_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) & (issue_dup_V_reg_632 == 1'd1))) begin
        state_dup_issued_V_o = 1'd1;
    end else begin
        state_dup_issued_V_o = state_dup_issued_V_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) & (issue_dup_V_reg_632 == 1'd1))) begin
        state_dup_issued_V_o_ap_vld = 1'b1;
    end else begin
        state_dup_issued_V_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) & (issue_dup_V_reg_632 == 1'd1))) begin
        state_dup_val_V_0_ap_vld = 1'b1;
    end else begin
        state_dup_val_V_0_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) & (issue_dup_V_reg_632 == 1'd1))) begin
        state_dup_val_V_1_ap_vld = 1'b1;
    end else begin
        state_dup_val_V_1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        state_key_V_address0 = 5'd29;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        state_key_V_address0 = 5'd27;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_key_V_address0 = 5'd25;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_key_V_address0 = 5'd23;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_key_V_address0 = 5'd21;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_key_V_address0 = 5'd19;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_key_V_address0 = 5'd17;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_key_V_address0 = 5'd15;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_key_V_address0 = 5'd13;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_key_V_address0 = 5'd11;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_key_V_address0 = 5'd9;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_key_V_address0 = 5'd7;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        state_key_V_address0 = 5'd5;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_key_V_address0 = 5'd3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_key_V_address0 = 5'd0;
    end else if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state2))) begin
        state_key_V_address0 = 5'd31;
    end else begin
        state_key_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        state_key_V_address1 = 5'd30;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        state_key_V_address1 = 5'd28;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        state_key_V_address1 = 5'd26;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        state_key_V_address1 = 5'd24;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        state_key_V_address1 = 5'd22;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        state_key_V_address1 = 5'd20;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        state_key_V_address1 = 5'd18;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_key_V_address1 = 5'd16;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        state_key_V_address1 = 5'd14;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_key_V_address1 = 5'd12;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        state_key_V_address1 = 5'd10;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        state_key_V_address1 = 5'd8;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        state_key_V_address1 = 5'd6;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        state_key_V_address1 = 5'd4;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        state_key_V_address1 = 5'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_key_V_address1 = 5'd1;
    end else begin
        state_key_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        state_key_V_ce0 = 1'b1;
    end else begin
        state_key_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state3))) begin
        state_key_V_ce1 = 1'b1;
    end else begin
        state_key_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state18) & (val_assign_11_demorg_reg_628 == 1'd0)) | ((1'b1 == ap_CS_fsm_state3) & (val_assign_11_demorg_fu_293_p2 == 1'd0)))) begin
        state_key_V_we0 = 1'b1;
    end else begin
        state_key_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state18) & (val_assign_11_demorg_reg_628 == 1'd0)) | ((1'b1 == ap_CS_fsm_state3) & (val_assign_11_demorg_fu_293_p2 == 1'd0)))) begin
        state_key_V_we1 = 1'b1;
    end else begin
        state_key_V_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (val_assign_11_demorg_fu_293_p2 == 1'd0))) begin
        state_orig_idx_V_ap_vld = 1'b1;
    end else begin
        state_orig_idx_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (val_assign_11_demorg_fu_293_p2 == 1'd0))) begin
        state_orig_in_V_ap_vld = 1'b1;
    end else begin
        state_orig_in_V_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (val_assign_11_demorg_fu_293_p2 == 1'd0))) begin
        state_orig_issued_V_o = 1'd1;
    end else begin
        state_orig_issued_V_o = state_orig_issued_V_i;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (val_assign_11_demorg_fu_293_p2 == 1'd0))) begin
        state_orig_issued_V_o_ap_vld = 1'b1;
    end else begin
        state_orig_issued_V_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (val_assign_11_demorg_fu_293_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign brmerge_fu_344_p2 = (val_assign_11_demorg_fu_293_p2 | or_cond_fu_338_p2);

assign issue_dup_V_fu_506_p2 = (sel_tmp11_fu_480_p3 & not_sel_tmp_fu_500_p2);

assign issue_orig_V_fu_299_p2 = (val_assign_11_demorg_fu_293_p2 ^ 1'd1);

assign not_sel_tmp_fu_500_p2 = (sel_tmp13_fu_494_p2 ^ 1'd1);

assign op2_2_fu_256_p1 = r_V_2_fu_248_p3;

assign op2_fu_232_p1 = r_V_fu_224_p3;

assign or_cond_fu_338_p2 = (tmp_9_fu_332_p2 & tmp_8_fu_327_p2);

assign orig_V_not_fu_272_p2 = (orig_V ^ 1'd1);

assign p_0220_sum_cast_fu_267_p1 = p_0220_sum_fu_261_p2;

assign p_0220_sum_fu_261_p2 = (r_V_2_fu_248_p3 | 3'd1);

assign p_0296_sum_cast_fu_243_p1 = p_0296_sum_fu_237_p2;

assign p_0296_sum_fu_237_p2 = (r_V_fu_224_p3 | 3'd1);

assign r_V_2_fu_248_p3 = {{orig_idx_V}, {1'd0}};

assign r_V_fu_224_p3 = {{dup_idx_V}, {1'd0}};

assign sel_tmp10_fu_474_p2 = (sel_tmp1_fu_420_p2 & brmerge_fu_344_p2);

assign sel_tmp11_fu_480_p3 = ((sel_tmp10_fu_474_p2[0:0] === 1'b1) ? or_cond_fu_338_p2 : sel_tmp9_fu_468_p2);

assign sel_tmp12_fu_488_p2 = (sel_tmp_fu_378_p2 | sel_tmp4_fu_438_p2);

assign sel_tmp13_fu_494_p2 = (val_assign_11_demorg_fu_293_p2 & sel_tmp12_fu_488_p2);

assign sel_tmp1_fu_420_p2 = (tmp5_fu_414_p2 & tmp3_fu_402_p2);

assign sel_tmp2_fu_426_p2 = (brmerge_fu_344_p2 ^ 1'd1);

assign sel_tmp3_fu_432_p2 = (sel_tmp2_fu_426_p2 & sel_tmp1_fu_420_p2);

assign sel_tmp4_fu_438_p2 = (tmp_7_fu_318_p2 ^ 1'd1);

assign sel_tmp5_fu_384_p2 = (sel_tmp_fu_378_p2 & issue_orig_V_fu_299_p2);

assign sel_tmp6_fu_444_p2 = (sel_tmp4_fu_438_p2 & issue_orig_V_fu_299_p2);

assign sel_tmp7_fu_396_p2 = (state_dup_issued_V_i ^ 1'd1);

assign sel_tmp8_fu_456_p2 = (tmp6_fu_450_p2 | sel_tmp5_fu_384_p2);

assign sel_tmp9_fu_468_p2 = (tmp7_fu_462_p2 & sel_tmp8_fu_456_p2);

assign sel_tmp_fu_378_p2 = (tmp2_fu_372_p2 | tmp1_fu_360_p2);

assign state_dup_idx_V = dup_idx_V;

assign state_dup_in_V = state_in_count_V_loa_reg_636;

assign state_dup_val_V_0 = bmc_in_load_reg_604;

assign state_dup_val_V_1 = bmc_in_load_4_reg_611;

assign state_orig_idx_V = orig_idx_V;

assign state_orig_in_V = state_in_count_V;

assign tmp1_fu_360_p2 = (tmp_6_fu_305_p2 | state_dup_issued_V_i);

assign tmp2_fu_372_p2 = (tmp39_demorgan_fu_366_p2 ^ 1'd1);

assign tmp39_demorgan_fu_366_p2 = (state_orig_issued_V_i & dup_V);

assign tmp3_fu_402_p2 = (tmp_6_not_fu_390_p2 & state_orig_issued_V_i);

assign tmp4_fu_408_p2 = (tmp_7_fu_318_p2 & dup_V);

assign tmp5_fu_414_p2 = (tmp4_fu_408_p2 & sel_tmp7_fu_396_p2);

assign tmp6_fu_450_p2 = (sel_tmp6_fu_444_p2 | sel_tmp3_fu_432_p2);

assign tmp7_fu_462_p2 = (tmp_2_fu_355_p2 & tmp_1_fu_350_p2);

assign tmp_1_fu_350_p2 = ((bmc_in_q0 == bmc_in_load_reg_604) ? 1'b1 : 1'b0);

assign tmp_2_fu_355_p2 = ((bmc_in_q1 == bmc_in_load_4_reg_611) ? 1'b1 : 1'b0);

assign tmp_3_fu_571_p2 = (state_in_count_V_loa_reg_636 + 16'd1);

assign tmp_6_fu_305_p2 = ((dup_idx_V == 2'd3) ? 1'b1 : 1'b0);

assign tmp_6_not_fu_390_p2 = (tmp_6_fu_305_p2 ^ 1'd1);

assign tmp_7_fu_318_p2 = ((bmc_in_load_reg_604 == state_orig_val_V_0) ? 1'b1 : 1'b0);

assign tmp_8_fu_327_p2 = ((bmc_in_load_4_reg_611 == state_orig_val_V_1) ? 1'b1 : 1'b0);

assign tmp_9_fu_332_p2 = (state_key_V_q0 ^ 1'd1);

assign tmp_fu_287_p2 = (tmp_s_fu_278_p2 | orig_V_not_fu_272_p2);

assign tmp_s_fu_278_p2 = ((orig_idx_V == 2'd3) ? 1'b1 : 1'b0);

assign val_assign_11_demorg_fu_293_p2 = (tmp_fu_287_p2 | state_orig_issued_V_i);

endmodule //aqed_in
