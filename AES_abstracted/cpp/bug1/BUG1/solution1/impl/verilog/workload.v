// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
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
        data_q0,
        data_offset
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

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
input  [3:0] data_offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] data_address0;
reg data_ce0;
reg data_we0;

(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] local_key_0_q0;
wire   [7:0] local_key_1_q0;
wire   [5:0] j_2_fu_389_p2;
wire    ap_CS_fsm_state2;
wire   [4:0] tmp7_cast_fu_395_p1;
reg   [4:0] tmp7_cast_reg_593;
wire    ap_CS_fsm_state3;
wire   [1:0] j_4_fu_404_p2;
reg   [1:0] j_4_reg_602;
wire    ap_CS_fsm_state5;
wire   [0:0] tmp_1_fu_410_p1;
reg   [0:0] tmp_1_reg_607;
wire   [0:0] exitcond3_fu_398_p2;
wire   [2:0] tmp_2_fu_414_p3;
reg   [2:0] tmp_2_reg_611;
wire   [2:0] k_2_fu_428_p2;
reg   [2:0] k_2_reg_619;
wire    ap_CS_fsm_state6;
wire   [0:0] exitcond5_fu_422_p2;
wire   [0:0] tmp_7_fu_453_p1;
reg   [0:0] tmp_7_reg_629;
wire   [7:0] buf_1_1_7_fu_457_p3;
wire    ap_CS_fsm_state7;
wire   [7:0] buf_1_1_8_fu_464_p3;
wire   [7:0] buf_1_1_4_fu_471_p3;
wire   [7:0] buf_1_1_6_fu_478_p3;
reg   [7:0] buf_0_0_3_reg_657;
wire    ap_CS_fsm_state9;
wire    grp_aes256_encrypt_ecb_fu_359_ap_ready;
wire    grp_aes256_encrypt_ecb_fu_359_ap_done;
wire    grp_aes256_encrypt_ecb_fu_371_ap_ready;
wire    grp_aes256_encrypt_ecb_fu_371_ap_done;
reg    ap_block_state9_on_subcall_done;
reg   [7:0] buf_0_1_3_reg_663;
reg   [7:0] buf_1_0_3_reg_669;
reg   [7:0] buf_1_1_3_reg_675;
wire   [1:0] j_5_fu_507_p2;
reg   [1:0] j_5_reg_684;
wire    ap_CS_fsm_state10;
wire   [0:0] tmp_3_fu_513_p1;
reg   [0:0] tmp_3_reg_689;
wire   [0:0] exitcond6_fu_501_p2;
wire   [2:0] tmp_9_fu_517_p3;
reg   [2:0] tmp_9_reg_694;
wire   [2:0] k_3_fu_531_p2;
wire    ap_CS_fsm_state11;
wire    grp_aes256_encrypt_ecb_fu_359_ap_start;
wire    grp_aes256_encrypt_ecb_fu_359_ap_idle;
wire   [4:0] grp_aes256_encrypt_ecb_fu_359_k_address0;
wire    grp_aes256_encrypt_ecb_fu_359_k_ce0;
wire   [7:0] grp_aes256_encrypt_ecb_fu_359_ap_return_0;
wire   [7:0] grp_aes256_encrypt_ecb_fu_359_ap_return_1;
wire    grp_aes256_encrypt_ecb_fu_371_ap_start;
wire    grp_aes256_encrypt_ecb_fu_371_ap_idle;
wire   [4:0] grp_aes256_encrypt_ecb_fu_371_k_address0;
wire    grp_aes256_encrypt_ecb_fu_371_k_ce0;
wire   [7:0] grp_aes256_encrypt_ecb_fu_371_ap_return_0;
wire   [7:0] grp_aes256_encrypt_ecb_fu_371_ap_return_1;
reg   [5:0] j_reg_103;
wire   [0:0] exitcond2_fu_383_p2;
reg   [7:0] buf_1_1_reg_114;
reg   [7:0] buf_1_0_reg_126;
reg   [7:0] buf_0_1_reg_138;
reg   [7:0] buf_0_0_reg_150;
wire   [0:0] ap_phi_mux_i_2_phi_fu_167_p4;
reg   [0:0] i_2_reg_162;
reg   [7:0] buf_1_1_1_reg_175;
wire    ap_CS_fsm_state4;
reg   [7:0] buf_1_0_1_reg_186;
reg   [7:0] buf_0_1_1_reg_197;
reg   [7:0] buf_0_0_1_reg_208;
reg   [1:0] j_1_reg_219;
reg   [7:0] buf_1_1_2_reg_230;
wire    ap_CS_fsm_state8;
reg   [7:0] buf_1_0_2_reg_242;
reg   [7:0] buf_0_1_2_reg_254;
reg   [7:0] buf_0_0_2_reg_266;
reg   [2:0] k_reg_278;
reg   [7:0] buf_1_1_2_be_reg_289;
reg   [7:0] buf_1_0_2_be_reg_301;
reg   [7:0] buf_0_1_2_be_reg_313;
reg   [7:0] buf_0_0_2_be_reg_325;
reg   [1:0] j_3_reg_337;
wire   [0:0] exitcond_fu_525_p2;
reg   [2:0] k_1_reg_348;
reg    grp_aes256_encrypt_ecb_fu_359_ap_start_reg;
reg    grp_aes256_encrypt_ecb_fu_371_ap_start_reg;
wire   [63:0] sum_cast_fu_448_p1;
wire   [63:0] sum2_cast_fu_575_p1;
wire   [2:0] tmp8_fu_434_p2;
wire   [4:0] tmp8_cast_fu_439_p1;
wire   [4:0] sum_fu_443_p2;
wire   [0:0] tmp_8_fu_537_p1;
wire   [7:0] buf_1_load_phi_fu_541_p3;
wire   [7:0] buf_0_load_phi_fu_547_p3;
wire   [2:0] tmp1_fu_561_p2;
wire   [4:0] tmp10_cast_fu_566_p1;
wire   [4:0] sum2_fu_570_p2;
reg   [10:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_aes256_encrypt_ecb_fu_359_ap_start_reg = 1'b0;
#0 grp_aes256_encrypt_ecb_fu_371_ap_start_reg = 1'b0;
end

workload_local_key_0 #(
    .DataWidth( 8 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
local_key_0_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_aes256_encrypt_ecb_fu_359_k_address0),
    .ce0(grp_aes256_encrypt_ecb_fu_359_k_ce0),
    .q0(local_key_0_q0)
);

workload_local_key_0 #(
    .DataWidth( 8 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
local_key_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_aes256_encrypt_ecb_fu_371_k_address0),
    .ce0(grp_aes256_encrypt_ecb_fu_371_k_ce0),
    .q0(local_key_1_q0)
);

aes256_encrypt_ecb grp_aes256_encrypt_ecb_fu_359(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes256_encrypt_ecb_fu_359_ap_start),
    .ap_done(grp_aes256_encrypt_ecb_fu_359_ap_done),
    .ap_idle(grp_aes256_encrypt_ecb_fu_359_ap_idle),
    .ap_ready(grp_aes256_encrypt_ecb_fu_359_ap_ready),
    .k_address0(grp_aes256_encrypt_ecb_fu_359_k_address0),
    .k_ce0(grp_aes256_encrypt_ecb_fu_359_k_ce0),
    .k_q0(local_key_0_q0),
    .p_read(buf_0_0_1_reg_208),
    .p_read1(buf_0_1_1_reg_197),
    .ap_return_0(grp_aes256_encrypt_ecb_fu_359_ap_return_0),
    .ap_return_1(grp_aes256_encrypt_ecb_fu_359_ap_return_1)
);

aes256_encrypt_ecb grp_aes256_encrypt_ecb_fu_371(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_aes256_encrypt_ecb_fu_371_ap_start),
    .ap_done(grp_aes256_encrypt_ecb_fu_371_ap_done),
    .ap_idle(grp_aes256_encrypt_ecb_fu_371_ap_idle),
    .ap_ready(grp_aes256_encrypt_ecb_fu_371_ap_ready),
    .k_address0(grp_aes256_encrypt_ecb_fu_371_k_address0),
    .k_ce0(grp_aes256_encrypt_ecb_fu_371_k_ce0),
    .k_q0(local_key_1_q0),
    .p_read(buf_1_0_1_reg_186),
    .p_read1(buf_1_1_1_reg_175),
    .ap_return_0(grp_aes256_encrypt_ecb_fu_371_ap_return_0),
    .ap_return_1(grp_aes256_encrypt_ecb_fu_371_ap_return_1)
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
        grp_aes256_encrypt_ecb_fu_359_ap_start_reg <= 1'b0;
    end else begin
        if (((exitcond3_fu_398_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_aes256_encrypt_ecb_fu_359_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_fu_359_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_fu_359_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_aes256_encrypt_ecb_fu_371_ap_start_reg <= 1'b0;
    end else begin
        if (((exitcond3_fu_398_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
            grp_aes256_encrypt_ecb_fu_371_ap_start_reg <= 1'b1;
        end else if ((grp_aes256_encrypt_ecb_fu_371_ap_ready == 1'b1)) begin
            grp_aes256_encrypt_ecb_fu_371_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_422_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        buf_0_0_1_reg_208 <= buf_0_0_2_reg_266;
    end else if (((ap_phi_mux_i_2_phi_fu_167_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        buf_0_0_1_reg_208 <= buf_0_0_reg_150;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        if ((tmp_1_reg_607 == 1'd0)) begin
            buf_0_0_2_be_reg_325 <= buf_1_1_8_fu_464_p3;
        end else if ((tmp_1_reg_607 == 1'd1)) begin
            buf_0_0_2_be_reg_325 <= buf_0_0_2_reg_266;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_0_0_2_reg_266 <= buf_0_0_2_be_reg_325;
    end else if (((exitcond3_fu_398_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        buf_0_0_2_reg_266 <= buf_0_0_1_reg_208;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_422_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        buf_0_1_1_reg_197 <= buf_0_1_2_reg_254;
    end else if (((ap_phi_mux_i_2_phi_fu_167_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        buf_0_1_1_reg_197 <= buf_0_1_reg_138;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        if ((tmp_1_reg_607 == 1'd0)) begin
            buf_0_1_2_be_reg_313 <= buf_1_1_7_fu_457_p3;
        end else if ((tmp_1_reg_607 == 1'd1)) begin
            buf_0_1_2_be_reg_313 <= buf_0_1_2_reg_254;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_0_1_2_reg_254 <= buf_0_1_2_be_reg_313;
    end else if (((exitcond3_fu_398_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        buf_0_1_2_reg_254 <= buf_0_1_1_reg_197;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_422_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        buf_1_0_1_reg_186 <= buf_1_0_2_reg_242;
    end else if (((ap_phi_mux_i_2_phi_fu_167_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        buf_1_0_1_reg_186 <= buf_1_0_reg_126;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        if ((tmp_1_reg_607 == 1'd0)) begin
            buf_1_0_2_be_reg_301 <= buf_1_0_2_reg_242;
        end else if ((tmp_1_reg_607 == 1'd1)) begin
            buf_1_0_2_be_reg_301 <= buf_1_1_6_fu_478_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_1_0_2_reg_242 <= buf_1_0_2_be_reg_301;
    end else if (((exitcond3_fu_398_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        buf_1_0_2_reg_242 <= buf_1_0_1_reg_186;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_422_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        buf_1_1_1_reg_175 <= buf_1_1_2_reg_230;
    end else if (((ap_phi_mux_i_2_phi_fu_167_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        buf_1_1_1_reg_175 <= buf_1_1_reg_114;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        if ((tmp_1_reg_607 == 1'd0)) begin
            buf_1_1_2_be_reg_289 <= buf_1_1_2_reg_230;
        end else if ((tmp_1_reg_607 == 1'd1)) begin
            buf_1_1_2_be_reg_289 <= buf_1_1_4_fu_471_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        buf_1_1_2_reg_230 <= buf_1_1_2_be_reg_289;
    end else if (((exitcond3_fu_398_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        buf_1_1_2_reg_230 <= buf_1_1_1_reg_175;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_2_reg_162 <= 1'd0;
    end else if (((1'b1 == ap_CS_fsm_state10) & (exitcond6_fu_501_p2 == 1'd1))) begin
        i_2_reg_162 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_422_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        j_1_reg_219 <= j_4_reg_602;
    end else if (((ap_phi_mux_i_2_phi_fu_167_p4 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        j_1_reg_219 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (1'b0 == ap_block_state9_on_subcall_done))) begin
        j_3_reg_337 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state11) & (exitcond_fu_525_p2 == 1'd1))) begin
        j_3_reg_337 <= j_5_reg_684;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        j_reg_103 <= 6'd0;
    end else if (((exitcond2_fu_383_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_103 <= j_2_fu_389_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_fu_525_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        k_1_reg_348 <= k_3_fu_531_p2;
    end else if (((exitcond6_fu_501_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        k_1_reg_348 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        k_reg_278 <= k_2_reg_619;
    end else if (((exitcond3_fu_398_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        k_reg_278 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (1'b0 == ap_block_state9_on_subcall_done))) begin
        buf_0_0_3_reg_657 <= grp_aes256_encrypt_ecb_fu_359_ap_return_0;
        buf_0_1_3_reg_663 <= grp_aes256_encrypt_ecb_fu_359_ap_return_1;
        buf_1_0_3_reg_669 <= grp_aes256_encrypt_ecb_fu_371_ap_return_0;
        buf_1_1_3_reg_675 <= grp_aes256_encrypt_ecb_fu_371_ap_return_1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (exitcond6_fu_501_p2 == 1'd1))) begin
        buf_0_0_reg_150 <= buf_0_0_3_reg_657;
        buf_0_1_reg_138 <= buf_0_1_3_reg_663;
        buf_1_0_reg_126 <= buf_1_0_3_reg_669;
        buf_1_1_reg_114 <= buf_1_1_3_reg_675;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j_4_reg_602 <= j_4_fu_404_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        j_5_reg_684 <= j_5_fu_507_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        k_2_reg_619 <= k_2_fu_428_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp7_cast_reg_593[3 : 0] <= tmp7_cast_fu_395_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond3_fu_398_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        tmp_1_reg_607 <= tmp_1_fu_410_p1;
        tmp_2_reg_611[2] <= tmp_2_fu_414_p3[2];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond6_fu_501_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
        tmp_3_reg_689 <= tmp_3_fu_513_p1;
        tmp_9_reg_694[2] <= tmp_9_fu_517_p3[2];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_422_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        tmp_7_reg_629 <= tmp_7_fu_453_p1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (ap_phi_mux_i_2_phi_fu_167_p4 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (ap_phi_mux_i_2_phi_fu_167_p4 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        data_address0 = sum2_cast_fu_575_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        data_address0 = sum_cast_fu_448_p1;
    end else begin
        data_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state11))) begin
        data_ce0 = 1'b1;
    end else begin
        data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_525_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
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
            if (((exitcond2_fu_383_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (ap_phi_mux_i_2_phi_fu_167_p4 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((exitcond3_fu_398_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state6 : begin
            if (((exitcond5_fu_422_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (1'b0 == ap_block_state9_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (exitcond6_fu_501_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((1'b1 == ap_CS_fsm_state11) & (exitcond_fu_525_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state9_on_subcall_done = ((grp_aes256_encrypt_ecb_fu_371_ap_done == 1'b0) | (grp_aes256_encrypt_ecb_fu_359_ap_done == 1'b0));
end

assign ap_phi_mux_i_2_phi_fu_167_p4 = i_2_reg_162;

assign buf_0_load_phi_fu_547_p3 = ((tmp_8_fu_537_p1[0:0] === 1'b1) ? buf_0_1_3_reg_663 : buf_0_0_3_reg_657);

assign buf_1_1_4_fu_471_p3 = ((tmp_7_reg_629[0:0] === 1'b1) ? data_q0 : buf_1_1_2_reg_230);

assign buf_1_1_6_fu_478_p3 = ((tmp_7_reg_629[0:0] === 1'b1) ? buf_1_0_2_reg_242 : data_q0);

assign buf_1_1_7_fu_457_p3 = ((tmp_7_reg_629[0:0] === 1'b1) ? data_q0 : buf_0_1_2_reg_254);

assign buf_1_1_8_fu_464_p3 = ((tmp_7_reg_629[0:0] === 1'b1) ? buf_0_0_2_reg_266 : data_q0);

assign buf_1_load_phi_fu_541_p3 = ((tmp_8_fu_537_p1[0:0] === 1'b1) ? buf_1_1_3_reg_675 : buf_1_0_3_reg_669);

assign data_d0 = ((tmp_3_reg_689[0:0] === 1'b1) ? buf_1_load_phi_fu_541_p3 : buf_0_load_phi_fu_547_p3);

assign exitcond2_fu_383_p2 = ((j_reg_103 == 6'd32) ? 1'b1 : 1'b0);

assign exitcond3_fu_398_p2 = ((j_1_reg_219 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond5_fu_422_p2 = ((k_reg_278 == 3'd4) ? 1'b1 : 1'b0);

assign exitcond6_fu_501_p2 = ((j_3_reg_337 == 2'd2) ? 1'b1 : 1'b0);

assign exitcond_fu_525_p2 = ((k_1_reg_348 == 3'd4) ? 1'b1 : 1'b0);

assign grp_aes256_encrypt_ecb_fu_359_ap_start = grp_aes256_encrypt_ecb_fu_359_ap_start_reg;

assign grp_aes256_encrypt_ecb_fu_371_ap_start = grp_aes256_encrypt_ecb_fu_371_ap_start_reg;

assign j_2_fu_389_p2 = (j_reg_103 + 6'd1);

assign j_4_fu_404_p2 = (j_1_reg_219 + 2'd1);

assign j_5_fu_507_p2 = (j_3_reg_337 + 2'd1);

assign k_2_fu_428_p2 = (k_reg_278 + 3'd1);

assign k_3_fu_531_p2 = (k_1_reg_348 + 3'd1);

assign sum2_cast_fu_575_p1 = sum2_fu_570_p2;

assign sum2_fu_570_p2 = (tmp10_cast_fu_566_p1 + tmp7_cast_reg_593);

assign sum_cast_fu_448_p1 = sum_fu_443_p2;

assign sum_fu_443_p2 = (tmp8_cast_fu_439_p1 + tmp7_cast_reg_593);

assign tmp10_cast_fu_566_p1 = tmp1_fu_561_p2;

assign tmp1_fu_561_p2 = (tmp_9_reg_694 + k_1_reg_348);

assign tmp7_cast_fu_395_p1 = data_offset;

assign tmp8_cast_fu_439_p1 = tmp8_fu_434_p2;

assign tmp8_fu_434_p2 = (tmp_2_reg_611 + k_reg_278);

assign tmp_1_fu_410_p1 = j_1_reg_219[0:0];

assign tmp_2_fu_414_p3 = {{tmp_1_fu_410_p1}, {2'd0}};

assign tmp_3_fu_513_p1 = j_3_reg_337[0:0];

assign tmp_7_fu_453_p1 = k_reg_278[0:0];

assign tmp_8_fu_537_p1 = k_1_reg_348[0:0];

assign tmp_9_fu_517_p3 = {{tmp_3_fu_513_p1}, {2'd0}};

always @ (posedge ap_clk) begin
    tmp7_cast_reg_593[4] <= 1'b0;
    tmp_2_reg_611[1:0] <= 2'b00;
    tmp_9_reg_694[1:0] <= 2'b00;
end

endmodule //workload
