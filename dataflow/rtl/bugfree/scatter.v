// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.1
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module scatter (
        ap_clk,
        ap_rst,
        ap_start,
        start_full_n,
        ap_ready,
        ap_done,
        ap_continue,
        ap_idle,
        start_out,
        start_write,
        to0_V_din,
        to0_V_full_n,
        to0_V_write,
        to1_V_din,
        to1_V_full_n,
        to1_V_write,
        from_V_dout,
        from_V_empty_n,
        from_V_read,
        data_count_dout,
        data_count_empty_n,
        data_count_read,
        data_count_out_din,
        data_count_out_full_n,
        data_count_out_write,
        data_count_out1_din,
        data_count_out1_full_n,
        data_count_out1_write
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state4 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_ready;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   start_out;
output   start_write;
output  [63:0] to0_V_din;
input   to0_V_full_n;
output   to0_V_write;
output  [63:0] to1_V_din;
input   to1_V_full_n;
output   to1_V_write;
input  [63:0] from_V_dout;
input   from_V_empty_n;
output   from_V_read;
input  [31:0] data_count_dout;
input   data_count_empty_n;
output   data_count_read;
output  [31:0] data_count_out_din;
input   data_count_out_full_n;
output   data_count_out_write;
output  [31:0] data_count_out1_din;
input   data_count_out1_full_n;
output   data_count_out1_write;

reg ap_done;
reg ap_idle;
reg to0_V_write;
reg to1_V_write;
reg from_V_read;
reg data_count_read;
reg data_count_out_write;
reg data_count_out1_write;

reg    real_start;
reg    real_start_status_reg;
reg    internal_ap_ready;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    start_once_reg;
reg    start_control_reg;
reg    to0_V_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_i_reg_189;
reg    to1_V_blk_n;
reg    from_V_blk_n;
reg    data_count_blk_n;
reg    data_count_out_blk_n;
reg    data_count_out1_blk_n;
reg   [31:0] i_i_reg_162;
reg   [31:0] data_count_read_reg_184;
reg    ap_block_state1;
wire   [0:0] exitcond_i_fu_173_p2;
wire    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [31:0] i_fu_178_p2;
reg    ap_enable_reg_pp0_iter0;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_block_pp0_stage0_01001;
wire    ap_CS_fsm_state4;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 real_start_status_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 start_once_reg = 1'b0;
#0 start_control_reg = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
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
        ap_done_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_continue)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_subdone == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n) | (1'b0 == data_count_out1_full_n)))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((ap_block_pp0_stage0_subdone == 1'b0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter1 <= (ap_condition_pp0_exit_iter0_state2 ^ 1'b1);
        end else if ((ap_block_pp0_stage0_subdone == 1'b0)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n) | (1'b0 == data_count_out1_full_n)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        real_start_status_reg <= 1'b0;
    end else begin
        if ((start_full_n == 1'b1)) begin
            real_start_status_reg <= 1'b0;
        end else if (((1'b0 == start_full_n) & (1'b1 == internal_ap_ready))) begin
            real_start_status_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_control_reg <= 1'b0;
    end else begin
        if (((1'b1 == real_start) & ((1'b1 == internal_ap_ready) | (1'b0 == start_once_reg)))) begin
            start_control_reg <= 1'b1;
        end else if ((1'b1 == start_control_reg)) begin
            start_control_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if ((1'b1 == real_start)) begin
            start_once_reg <= 1'b1;
        end else if ((1'b0 == ap_start)) begin
            start_once_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0) & (1'b1 == ap_enable_reg_pp0_iter0) & (1'd0 == exitcond_i_fu_173_p2))) begin
        i_i_reg_162 <= i_fu_178_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n) | (1'b0 == data_count_out1_full_n)))) begin
        i_i_reg_162 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n) | (1'b0 == data_count_out1_full_n)))) begin
        data_count_read_reg_184 <= data_count_dout;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_block_pp0_stage0_11001 == 1'b0))) begin
        exitcond_i_reg_189 <= exitcond_i_fu_173_p2;
    end
end

always @ (*) begin
    if ((exitcond_i_fu_173_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b0 == real_start) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_enable_reg_pp0_iter0) & (1'b0 == ap_enable_reg_pp0_iter1))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1)))) begin
        data_count_blk_n = data_count_empty_n;
    end else begin
        data_count_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1)))) begin
        data_count_out1_blk_n = data_count_out1_full_n;
    end else begin
        data_count_out1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n) | (1'b0 == data_count_out1_full_n)))) begin
        data_count_out1_write = 1'b1;
    end else begin
        data_count_out1_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1)))) begin
        data_count_out_blk_n = data_count_out_full_n;
    end else begin
        data_count_out_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n) | (1'b0 == data_count_out1_full_n)))) begin
        data_count_out_write = 1'b1;
    end else begin
        data_count_out_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n) | (1'b0 == data_count_out1_full_n)))) begin
        data_count_read = 1'b1;
    end else begin
        data_count_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0 == 1'b0) & (exitcond_i_reg_189 == 1'd0))) begin
        from_V_blk_n = from_V_empty_n;
    end else begin
        from_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_reg_189 == 1'd0) & (ap_block_pp0_stage0_11001 == 1'b0))) begin
        from_V_read = 1'b1;
    end else begin
        from_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == real_start_status_reg)) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0 == 1'b0) & (exitcond_i_reg_189 == 1'd0))) begin
        to0_V_blk_n = to0_V_full_n;
    end else begin
        to0_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_reg_189 == 1'd0) & (ap_block_pp0_stage0_11001 == 1'b0))) begin
        to0_V_write = 1'b1;
    end else begin
        to0_V_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (ap_block_pp0_stage0 == 1'b0) & (exitcond_i_reg_189 == 1'd0))) begin
        to1_V_blk_n = to1_V_full_n;
    end else begin
        to1_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_enable_reg_pp0_iter1) & (exitcond_i_reg_189 == 1'd0) & (ap_block_pp0_stage0_11001 == 1'b0))) begin
        to1_V_write = 1'b1;
    end else begin
        to1_V_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & ~((1'b0 == real_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n) | (1'b0 == data_count_out1_full_n)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_subdone == 1'b0) & (exitcond_i_fu_173_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((1'b1 == ap_enable_reg_pp0_iter0) & (ap_block_pp0_stage0_subdone == 1'b0) & (exitcond_i_fu_173_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((1'b1 == ap_enable_reg_pp0_iter1) & (((exitcond_i_reg_189 == 1'd0) & (1'b0 == from_V_empty_n)) | ((exitcond_i_reg_189 == 1'd0) & (1'b0 == to0_V_full_n)) | ((exitcond_i_reg_189 == 1'd0) & (1'b0 == to1_V_full_n))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((1'b1 == ap_enable_reg_pp0_iter1) & (((exitcond_i_reg_189 == 1'd0) & (1'b0 == from_V_empty_n)) | ((exitcond_i_reg_189 == 1'd0) & (1'b0 == to0_V_full_n)) | ((exitcond_i_reg_189 == 1'd0) & (1'b0 == to1_V_full_n))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b1 == ap_enable_reg_pp0_iter1) & (((exitcond_i_reg_189 == 1'd0) & (1'b0 == from_V_empty_n)) | ((exitcond_i_reg_189 == 1'd0) & (1'b0 == to0_V_full_n)) | ((exitcond_i_reg_189 == 1'd0) & (1'b0 == to1_V_full_n))));
end

always @ (*) begin
    ap_block_state1 = ((1'b0 == real_start) | (ap_done_reg == 1'b1) | (1'b0 == data_count_empty_n) | (1'b0 == data_count_out_full_n) | (1'b0 == data_count_out1_full_n));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (((exitcond_i_reg_189 == 1'd0) & (1'b0 == from_V_empty_n)) | ((exitcond_i_reg_189 == 1'd0) & (1'b0 == to0_V_full_n)) | ((exitcond_i_reg_189 == 1'd0) & (1'b0 == to1_V_full_n)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_ready = internal_ap_ready;

assign data_count_out1_din = data_count_dout;

assign data_count_out_din = data_count_dout;

assign exitcond_i_fu_173_p2 = ((i_i_reg_162 == data_count_read_reg_184) ? 1'b1 : 1'b0);

assign i_fu_178_p2 = (i_i_reg_162 + 32'd1);

assign start_out = real_start;

assign start_write = start_control_reg;

assign to0_V_din = from_V_dout;

assign to1_V_din = from_V_dout;

endmodule //scatter
