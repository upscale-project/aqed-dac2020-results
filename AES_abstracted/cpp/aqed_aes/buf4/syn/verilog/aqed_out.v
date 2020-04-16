// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module aqed_out (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        state_orig_issued_V,
        state_orig_in_V,
        state_orig_done_V,
        state_orig_done_V_ap_vld,
        state_dup_in_V,
        state_dup_issued_V,
        state_dup_idx_V,
        bmc_in_address0,
        bmc_in_ce0,
        bmc_in_q0,
        bmc_in_address1,
        bmc_in_ce1,
        bmc_in_q1,
        ap_return_0,
        ap_return_1
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] state_orig_issued_V;
input  [15:0] state_orig_in_V;
output  [0:0] state_orig_done_V;
output   state_orig_done_V_ap_vld;
input  [15:0] state_dup_in_V;
input  [0:0] state_dup_issued_V;
input  [1:0] state_dup_idx_V;
output  [3:0] bmc_in_address0;
output   bmc_in_ce0;
input  [7:0] bmc_in_q0;
output  [3:0] bmc_in_address1;
output   bmc_in_ce1;
input  [7:0] bmc_in_q1;
output  [0:0] ap_return_0;
output  [0:0] ap_return_1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[0:0] state_orig_done_V;
reg state_orig_done_V_ap_vld;
reg[3:0] bmc_in_address0;
reg bmc_in_ce0;
reg[3:0] bmc_in_address1;
reg bmc_in_ce1;
reg[0:0] ap_return_0;
reg[0:0] ap_return_1;

(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [15:0] state_out_count_V;
reg   [0:0] state_qed_done_V;
reg   [7:0] state_orig_out_V_0;
reg   [7:0] state_orig_out_V_1;
reg   [0:0] state_qed_check_V;
wire   [0:0] state_orig_issued_V_s_load_fu_98_p1;
reg   [15:0] state_out_count_V_lo_reg_303;
reg   [0:0] state_qed_done_V_loa_reg_310;
wire   [0:0] brmerge_fu_144_p2;
reg   [0:0] brmerge_reg_317;
wire    ap_CS_fsm_state2;
wire   [0:0] brmerge1_fu_187_p2;
reg   [0:0] brmerge1_reg_326;
wire   [0:0] tmp_3_fu_252_p2;
reg   [0:0] tmp_3_reg_340;
wire    ap_CS_fsm_state3;
reg   [0:0] state_qed_done_V_fla_reg_69;
reg   [0:0] state_qed_done_V_loc_reg_85;
wire   [63:0] op2_fu_204_p1;
wire   [63:0] p_056_sum_cast_fu_215_p1;
wire   [15:0] tmp_4_fu_256_p2;
wire    ap_CS_fsm_state4;
wire   [0:0] p_state_qed_done_V_fl_fu_267_p2;
wire   [0:0] val_assign_5_fu_240_p2;
wire   [0:0] rev2_fu_126_p2;
wire   [0:0] ult_fu_120_p2;
wire   [0:0] tmp_not_fu_138_p2;
wire   [0:0] tmp_s_fu_170_p2;
wire   [0:0] or_cond_fu_175_p2;
wire   [0:0] or_cond_not_fu_181_p2;
wire   [2:0] r_V_fu_196_p3;
wire   [2:0] p_056_sum_fu_209_p2;
wire   [0:0] tmp_1_fu_224_p2;
wire   [0:0] tmp_2_fu_234_p2;
wire   [0:0] o2_qed_done_V_fu_272_p2;
reg   [0:0] ap_return_0_preg;
reg   [0:0] ap_return_1_preg;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 state_out_count_V = 16'd0;
#0 state_qed_done_V = 1'd0;
#0 state_orig_out_V_0 = 8'd0;
#0 state_orig_out_V_1 = 8'd0;
#0 state_qed_check_V = 1'd0;
#0 ap_return_0_preg = 1'd0;
#0 ap_return_1_preg = 1'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 1'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_return_0_preg <= o2_qed_done_V_fu_272_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 1'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_return_1_preg <= state_qed_check_V;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((((state_orig_issued_V_s_load_fu_98_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((brmerge1_fu_187_p2 == 1'd1) & (state_orig_issued_V_s_load_fu_98_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        state_qed_done_V_fla_reg_69 <= 1'd0;
    end else if (((state_orig_issued_V_s_load_fu_98_p1 == 1'd1) & (brmerge1_reg_326 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        state_qed_done_V_fla_reg_69 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if ((((state_orig_issued_V_s_load_fu_98_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((brmerge1_fu_187_p2 == 1'd1) & (state_orig_issued_V_s_load_fu_98_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        state_qed_done_V_loc_reg_85 <= state_qed_done_V_loa_reg_310;
    end else if (((state_orig_issued_V_s_load_fu_98_p1 == 1'd1) & (brmerge1_reg_326 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        state_qed_done_V_loc_reg_85 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((state_orig_issued_V_s_load_fu_98_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        brmerge1_reg_326 <= brmerge1_fu_187_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (state_orig_issued_V_s_load_fu_98_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        brmerge_reg_317 <= brmerge_fu_144_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((state_orig_issued_V_s_load_fu_98_p1 == 1'd1) & (brmerge_reg_317 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        state_orig_out_V_0 <= bmc_in_q0;
        state_orig_out_V_1 <= bmc_in_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        state_out_count_V <= tmp_4_fu_256_p2;
        tmp_3_reg_340 <= tmp_3_fu_252_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        state_out_count_V_lo_reg_303 <= state_out_count_V;
        state_qed_done_V_loa_reg_310 <= state_qed_done_V;
    end
end

always @ (posedge ap_clk) begin
    if (((state_orig_issued_V_s_load_fu_98_p1 == 1'd1) & (brmerge1_reg_326 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        state_qed_check_V <= val_assign_5_fu_240_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((p_state_qed_done_V_fl_fu_267_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        state_qed_done_V <= 1'd1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_return_0 = o2_qed_done_V_fu_272_p2;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_return_1 = state_qed_check_V;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bmc_in_address0 = op2_fu_204_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bmc_in_address0 = 4'd0;
    end else begin
        bmc_in_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        bmc_in_address1 = p_056_sum_cast_fu_215_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        bmc_in_address1 = 4'd1;
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
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((state_orig_issued_V_s_load_fu_98_p1 == 1'd1)) begin
            state_orig_done_V = rev2_fu_126_p2;
        end else if ((state_orig_issued_V_s_load_fu_98_p1 == 1'd0)) begin
            state_orig_done_V = 1'd0;
        end else begin
            state_orig_done_V = 'bx;
        end
    end else begin
        state_orig_done_V = 'bx;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b1) & (state_orig_issued_V_s_load_fu_98_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (state_orig_issued_V_s_load_fu_98_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1)))) begin
        state_orig_done_V_ap_vld = 1'b1;
    end else begin
        state_orig_done_V_ap_vld = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign brmerge1_fu_187_p2 = (state_qed_done_V_loa_reg_310 | or_cond_not_fu_181_p2);

assign brmerge_fu_144_p2 = (tmp_not_fu_138_p2 | state_qed_done_V);

assign o2_qed_done_V_fu_272_p2 = (tmp_3_reg_340 | state_qed_done_V_loc_reg_85);

assign op2_fu_204_p1 = r_V_fu_196_p3;

assign or_cond_fu_175_p2 = (tmp_s_fu_170_p2 & state_dup_issued_V);

assign or_cond_not_fu_181_p2 = (or_cond_fu_175_p2 ^ 1'd1);

assign p_056_sum_cast_fu_215_p1 = p_056_sum_fu_209_p2;

assign p_056_sum_fu_209_p2 = (r_V_fu_196_p3 | 3'd1);

assign p_state_qed_done_V_fl_fu_267_p2 = (tmp_3_reg_340 | state_qed_done_V_fla_reg_69);

assign r_V_fu_196_p3 = {{state_dup_idx_V}, {1'd0}};

assign rev2_fu_126_p2 = (ult_fu_120_p2 ^ 1'd1);

assign state_orig_issued_V_s_load_fu_98_p1 = state_orig_issued_V;

assign tmp_1_fu_224_p2 = ((bmc_in_q0 == state_orig_out_V_0) ? 1'b1 : 1'b0);

assign tmp_2_fu_234_p2 = ((bmc_in_q1 == state_orig_out_V_1) ? 1'b1 : 1'b0);

assign tmp_3_fu_252_p2 = ((state_out_count_V_lo_reg_303 > state_dup_in_V) ? 1'b1 : 1'b0);

assign tmp_4_fu_256_p2 = (state_out_count_V_lo_reg_303 + 16'd1);

assign tmp_not_fu_138_p2 = ((state_out_count_V != state_orig_in_V) ? 1'b1 : 1'b0);

assign tmp_s_fu_170_p2 = ((state_out_count_V_lo_reg_303 == state_dup_in_V) ? 1'b1 : 1'b0);

assign ult_fu_120_p2 = ((state_out_count_V < state_orig_in_V) ? 1'b1 : 1'b0);

assign val_assign_5_fu_240_p2 = (tmp_2_fu_234_p2 & tmp_1_fu_224_p2);

endmodule //aqed_out
