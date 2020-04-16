// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module workload (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_address0,
        data_ce0,
        data_we0,
        data_d0,
        data_q0
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
output  [3:0] data_address0;
output   data_ce0;
output   data_we0;
output  [7:0] data_d0;
input  [7:0] data_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] data_address0;
reg data_ce0;
reg data_we0;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] local_key_0_q0;
wire   [2:0] k_2_fu_214_p2;
reg   [2:0] k_2_reg_302;
wire    ap_CS_fsm_state3;
wire   [1:0] tmp_1_fu_220_p1;
reg   [1:0] tmp_1_reg_307;
wire   [0:0] exitcond5_fu_208_p2;
wire    ap_CS_fsm_state4;
reg   [7:0] buf_0_0_2_reg_322;
wire    ap_CS_fsm_state6;
wire    grp_aes256_encrypt_ecb_fu_196_ap_idle;
wire    grp_aes256_encrypt_ecb_fu_196_ap_ready;
wire    grp_aes256_encrypt_ecb_fu_196_ap_done;
reg   [7:0] buf_0_1_2_reg_328;
wire   [2:0] k_3_fu_253_p2;
wire    ap_CS_fsm_state7;
wire    grp_aes256_encrypt_ecb_fu_196_ap_start;
wire   [4:0] grp_aes256_encrypt_ecb_fu_196_k_address0;
wire    grp_aes256_encrypt_ecb_fu_196_k_ce0;
wire   [7:0] grp_aes256_encrypt_ecb_fu_196_ap_return_0;
wire   [7:0] grp_aes256_encrypt_ecb_fu_196_ap_return_1;
reg   [7:0] buf_0_1_reg_79;
wire   [0:0] exitcond1_fu_247_p2;
reg   [7:0] buf_0_0_reg_91;
wire   [0:0] ap_phi_mux_i_2_phi_fu_108_p4;
reg   [0:0] i_2_reg_103;
reg   [7:0] buf_0_1_1_reg_116;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state5;
reg   [7:0] buf_0_0_1_reg_127;
reg   [2:0] k_reg_138;
reg   [7:0] buf_0_1_1_be_reg_149;
reg   [7:0] buf_0_0_1_be_reg_167;
reg   [2:0] k_1_reg_185;
reg    grp_aes256_encrypt_ecb_fu_196_ap_start_reg;
wire   [63:0] sum_cast_fu_224_p1;
wire   [63:0] sum2_cast_fu_282_p1;
reg   [7:0] buf_0_3_fu_50;
reg   [7:0] buf_0_3_1_fu_54;
wire   [7:0] tmp_fu_269_p6;
wire   [1:0] tmp_4_fu_265_p1;
reg   [6:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_aes256_encrypt_ecb_fu_196_ap_start_reg = 1'b0;
end

workload_local_keeOg #(
    .DataWidth( 1 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
local_key_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_aes256_encrypt_ecb_fu_196_k_address0),
    .ce0(grp_aes256_encrypt_ecb_fu_196_k_ce0),
    .q0(local_key_0_q0)
);

aes256_encrypt_ecb grp_aes256_encrypt_ecb_fu_196(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes256_encrypt_ecb_fu_196_ap_start),
    .ap_done(grp_aes256_encrypt_ecb_fu_196_ap_done),
    .ap_idle(grp_aes256_encrypt_ecb_fu_196_ap_idle),
    .ap_ready(grp_aes256_encrypt_ecb_fu_196_ap_ready),
    .k_address0(grp_aes256_encrypt_ecb_fu_196_k_address0),
    .k_ce0(grp_aes256_encrypt_ecb_fu_196_k_ce0),
    .k_q0(local_key_0_q0),
    .p_read(buf_0_0_1_reg_127),
    .p_read1(buf_0_1_1_reg_116),
    .ap_return_0(grp_aes256_encrypt_ecb_fu_196_ap_return_0),
    .ap_return_1(grp_aes256_encrypt_ecb_fu_196_ap_return_1)
);

aqed_top_mux_42_8fYi #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 2 ),
    .dout_WIDTH( 8 ))
aqed_top_mux_42_8fYi_U21(
    .din0(buf_0_0_2_reg_322),
    .din1(buf_0_1_2_reg_328),
    .din2(buf_0_3_fu_50),
    .din3(buf_0_3_1_fu_54),
    .din4(tmp_4_fu_265_p1),
    .dout(tmp_fu_269_p6)
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
        grp_aes256_encrypt_ecb_fu_196_ap_start_reg <= 1'b0;
    end else begin
        if (((exitcond5_fu_208_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_aes256_encrypt_ecb_fu_196_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_fu_196_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_fu_196_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_1_reg_307 == 2'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        buf_0_0_1_be_reg_167 <= data_q0;
    end else if ((((tmp_1_reg_307 == 2'd1) & (1'b1 == ap_CS_fsm_state4)) | ((tmp_1_reg_307 == 2'd2) & (1'b1 == ap_CS_fsm_state4)) | ((tmp_1_reg_307 == 2'd3) & (1'b1 == ap_CS_fsm_state4)))) begin
        buf_0_0_1_be_reg_167 <= buf_0_0_1_reg_127;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_0_0_1_reg_127 <= buf_0_0_1_be_reg_167;
    end else if (((ap_phi_mux_i_2_phi_fu_108_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        buf_0_0_1_reg_127 <= buf_0_0_reg_91;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_1_reg_307 == 2'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        buf_0_1_1_be_reg_149 <= data_q0;
    end else if ((((tmp_1_reg_307 == 2'd0) & (1'b1 == ap_CS_fsm_state4)) | ((tmp_1_reg_307 == 2'd2) & (1'b1 == ap_CS_fsm_state4)) | ((tmp_1_reg_307 == 2'd3) & (1'b1 == ap_CS_fsm_state4)))) begin
        buf_0_1_1_be_reg_149 <= buf_0_1_1_reg_116;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        buf_0_1_1_reg_116 <= buf_0_1_1_be_reg_149;
    end else if (((ap_phi_mux_i_2_phi_fu_108_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        buf_0_1_1_reg_116 <= buf_0_1_reg_79;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_247_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        i_2_reg_103 <= 1'd1;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_2_reg_103 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_247_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        k_1_reg_185 <= k_3_fu_253_p2;
    end else if (((grp_aes256_encrypt_ecb_fu_196_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        k_1_reg_185 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        k_reg_138 <= k_2_reg_302;
    end else if (((ap_phi_mux_i_2_phi_fu_108_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        k_reg_138 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_aes256_encrypt_ecb_fu_196_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        buf_0_0_2_reg_322 <= grp_aes256_encrypt_ecb_fu_196_ap_return_0;
        buf_0_1_2_reg_328 <= grp_aes256_encrypt_ecb_fu_196_ap_return_1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_247_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        buf_0_0_reg_91 <= buf_0_0_2_reg_322;
        buf_0_1_reg_79 <= buf_0_1_2_reg_328;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_1_reg_307 == 2'd3) & (1'b1 == ap_CS_fsm_state4))) begin
        buf_0_3_1_fu_54 <= data_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_1_reg_307 == 2'd2) & (1'b1 == ap_CS_fsm_state4))) begin
        buf_0_3_fu_50 <= data_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        k_2_reg_302 <= k_2_fu_214_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_208_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        tmp_1_reg_307 <= tmp_1_fu_220_p1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_phi_mux_i_2_phi_fu_108_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((ap_phi_mux_i_2_phi_fu_108_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        data_address0 = sum2_cast_fu_282_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        data_address0 = sum_cast_fu_224_p1;
    end else begin
        data_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3))) begin
        data_ce0 = 1'b1;
    end else begin
        data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond1_fu_247_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        data_we0 = 1'b1;
    end else begin
        data_we0 = 1'b0;
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
            if (((ap_phi_mux_i_2_phi_fu_108_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond5_fu_208_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_aes256_encrypt_ecb_fu_196_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            if (((exitcond1_fu_247_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
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

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_phi_mux_i_2_phi_fu_108_p4 = i_2_reg_103;

assign data_d0 = tmp_fu_269_p6;

assign exitcond1_fu_247_p2 = ((k_1_reg_185 == 3'd4) ? 1'b1 : 1'b0);

assign exitcond5_fu_208_p2 = ((k_reg_138 == 3'd4) ? 1'b1 : 1'b0);

assign grp_aes256_encrypt_ecb_fu_196_ap_start = grp_aes256_encrypt_ecb_fu_196_ap_start_reg;

assign k_2_fu_214_p2 = (k_reg_138 + 3'd1);

assign k_3_fu_253_p2 = (k_1_reg_185 + 3'd1);

assign sum2_cast_fu_282_p1 = tmp_4_fu_265_p1;

assign sum_cast_fu_224_p1 = tmp_1_fu_220_p1;

assign tmp_1_fu_220_p1 = k_reg_138[1:0];

assign tmp_4_fu_265_p1 = k_1_reg_185[1:0];

endmodule //workload
