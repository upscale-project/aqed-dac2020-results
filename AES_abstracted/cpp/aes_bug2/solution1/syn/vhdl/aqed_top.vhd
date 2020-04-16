-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity aqed_top is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    agg_result : OUT STD_LOGIC_VECTOR (19 downto 0);
    orig_V : IN STD_LOGIC_VECTOR (0 downto 0);
    dup_V : IN STD_LOGIC_VECTOR (0 downto 0);
    orig_idx_V : IN STD_LOGIC_VECTOR (1 downto 0);
    dup_idx_V : IN STD_LOGIC_VECTOR (1 downto 0);
    num_V : IN STD_LOGIC_VECTOR (2 downto 0) );
end;


architecture behav of aqed_top is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "aqed_top,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=100.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=9.254000,HLS_SYN_LAT=116,HLS_SYN_TPT=none,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=599,HLS_SYN_LUT=2261,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal state_orig_issued_V : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal state_dup_issued_V : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal state_orig_in_V : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111111";
    signal state_orig_idx_V : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal state_dup_in_V : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111111";
    signal state_dup_idx_V : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal state_dup_val_V_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal state_dup_val_V_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    signal bmc_in_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal bmc_in_ce0 : STD_LOGIC;
    signal bmc_in_we0 : STD_LOGIC;
    signal bmc_in_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal bmc_in_address1 : STD_LOGIC_VECTOR (3 downto 0);
    signal bmc_in_ce1 : STD_LOGIC;
    signal bmc_in_q1 : STD_LOGIC_VECTOR (7 downto 0);
    signal state_orig_done_V : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal o2_qed_done_V_reg_242 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal grp_aqed_out_fu_153_ap_idle : STD_LOGIC;
    signal grp_aqed_out_fu_153_ap_ready : STD_LOGIC;
    signal grp_aqed_out_fu_153_ap_done : STD_LOGIC;
    signal o2_qed_check_V_reg_247 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_workload_fu_109_ap_start : STD_LOGIC;
    signal grp_workload_fu_109_ap_done : STD_LOGIC;
    signal grp_workload_fu_109_ap_idle : STD_LOGIC;
    signal grp_workload_fu_109_ap_ready : STD_LOGIC;
    signal grp_workload_fu_109_data_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_workload_fu_109_data_ce0 : STD_LOGIC;
    signal grp_workload_fu_109_data_we0 : STD_LOGIC;
    signal grp_workload_fu_109_data_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_aqed_in_fu_117_ap_start : STD_LOGIC;
    signal grp_aqed_in_fu_117_ap_done : STD_LOGIC;
    signal grp_aqed_in_fu_117_ap_idle : STD_LOGIC;
    signal grp_aqed_in_fu_117_ap_ready : STD_LOGIC;
    signal grp_aqed_in_fu_117_bmc_in_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_aqed_in_fu_117_bmc_in_ce0 : STD_LOGIC;
    signal grp_aqed_in_fu_117_bmc_in_address1 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_aqed_in_fu_117_bmc_in_ce1 : STD_LOGIC;
    signal grp_aqed_in_fu_117_state_orig_issued_V_o : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_aqed_in_fu_117_state_orig_issued_V_o_ap_vld : STD_LOGIC;
    signal grp_aqed_in_fu_117_state_dup_issued_V_o : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_aqed_in_fu_117_state_dup_issued_V_o_ap_vld : STD_LOGIC;
    signal grp_aqed_in_fu_117_state_orig_in_V : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_aqed_in_fu_117_state_orig_in_V_ap_vld : STD_LOGIC;
    signal grp_aqed_in_fu_117_state_orig_idx_V : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_aqed_in_fu_117_state_orig_idx_V_ap_vld : STD_LOGIC;
    signal grp_aqed_in_fu_117_state_dup_in_V : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_aqed_in_fu_117_state_dup_in_V_ap_vld : STD_LOGIC;
    signal grp_aqed_in_fu_117_state_dup_idx_V : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_aqed_in_fu_117_state_dup_idx_V_ap_vld : STD_LOGIC;
    signal grp_aqed_in_fu_117_state_dup_val_V_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_aqed_in_fu_117_state_dup_val_V_0_ap_vld : STD_LOGIC;
    signal grp_aqed_in_fu_117_state_dup_val_V_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_aqed_in_fu_117_state_dup_val_V_1_ap_vld : STD_LOGIC;
    signal grp_aqed_out_fu_153_ap_start : STD_LOGIC;
    signal grp_aqed_out_fu_153_state_orig_done_V : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_aqed_out_fu_153_state_orig_done_V_ap_vld : STD_LOGIC;
    signal grp_aqed_out_fu_153_bmc_in_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_aqed_out_fu_153_bmc_in_ce0 : STD_LOGIC;
    signal grp_aqed_out_fu_153_bmc_in_address1 : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_aqed_out_fu_153_bmc_in_ce1 : STD_LOGIC;
    signal grp_aqed_out_fu_153_ap_return_0 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_aqed_out_fu_153_ap_return_1 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_workload_fu_109_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_aqed_in_fu_117_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_aqed_out_fu_153_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);

    component workload IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        data_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        data_ce0 : OUT STD_LOGIC;
        data_we0 : OUT STD_LOGIC;
        data_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        data_q0 : IN STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component aqed_in IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        bmc_in_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        bmc_in_ce0 : OUT STD_LOGIC;
        bmc_in_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        bmc_in_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
        bmc_in_ce1 : OUT STD_LOGIC;
        bmc_in_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
        orig_V : IN STD_LOGIC_VECTOR (0 downto 0);
        dup_V : IN STD_LOGIC_VECTOR (0 downto 0);
        orig_idx_V : IN STD_LOGIC_VECTOR (1 downto 0);
        dup_idx_V : IN STD_LOGIC_VECTOR (1 downto 0);
        state_orig_issued_V_i : IN STD_LOGIC_VECTOR (0 downto 0);
        state_orig_issued_V_o : OUT STD_LOGIC_VECTOR (0 downto 0);
        state_orig_issued_V_o_ap_vld : OUT STD_LOGIC;
        state_dup_issued_V_i : IN STD_LOGIC_VECTOR (0 downto 0);
        state_dup_issued_V_o : OUT STD_LOGIC_VECTOR (0 downto 0);
        state_dup_issued_V_o_ap_vld : OUT STD_LOGIC;
        state_orig_in_V : OUT STD_LOGIC_VECTOR (15 downto 0);
        state_orig_in_V_ap_vld : OUT STD_LOGIC;
        state_orig_idx_V : OUT STD_LOGIC_VECTOR (1 downto 0);
        state_orig_idx_V_ap_vld : OUT STD_LOGIC;
        state_dup_in_V : OUT STD_LOGIC_VECTOR (15 downto 0);
        state_dup_in_V_ap_vld : OUT STD_LOGIC;
        state_dup_idx_V : OUT STD_LOGIC_VECTOR (1 downto 0);
        state_dup_idx_V_ap_vld : OUT STD_LOGIC;
        state_dup_val_V_0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        state_dup_val_V_0_ap_vld : OUT STD_LOGIC;
        state_dup_val_V_1 : OUT STD_LOGIC_VECTOR (7 downto 0);
        state_dup_val_V_1_ap_vld : OUT STD_LOGIC );
    end component;


    component aqed_out IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        state_orig_issued_V : IN STD_LOGIC_VECTOR (0 downto 0);
        state_orig_in_V : IN STD_LOGIC_VECTOR (15 downto 0);
        state_orig_done_V : OUT STD_LOGIC_VECTOR (0 downto 0);
        state_orig_done_V_ap_vld : OUT STD_LOGIC;
        state_orig_idx_V : IN STD_LOGIC_VECTOR (1 downto 0);
        bmc_in_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        bmc_in_ce0 : OUT STD_LOGIC;
        bmc_in_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        bmc_in_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
        bmc_in_ce1 : OUT STD_LOGIC;
        bmc_in_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
        state_dup_in_V : IN STD_LOGIC_VECTOR (15 downto 0);
        state_dup_issued_V : IN STD_LOGIC_VECTOR (0 downto 0);
        state_dup_idx_V : IN STD_LOGIC_VECTOR (1 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (0 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component aqed_top_bmc_in IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (7 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        address1 : IN STD_LOGIC_VECTOR (3 downto 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    bmc_in_U : component aqed_top_bmc_in
    generic map (
        DataWidth => 8,
        AddressRange => 16,
        AddressWidth => 4)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => bmc_in_address0,
        ce0 => bmc_in_ce0,
        we0 => bmc_in_we0,
        d0 => grp_workload_fu_109_data_d0,
        q0 => bmc_in_q0,
        address1 => bmc_in_address1,
        ce1 => bmc_in_ce1,
        q1 => bmc_in_q1);

    grp_workload_fu_109 : component workload
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_workload_fu_109_ap_start,
        ap_done => grp_workload_fu_109_ap_done,
        ap_idle => grp_workload_fu_109_ap_idle,
        ap_ready => grp_workload_fu_109_ap_ready,
        data_address0 => grp_workload_fu_109_data_address0,
        data_ce0 => grp_workload_fu_109_data_ce0,
        data_we0 => grp_workload_fu_109_data_we0,
        data_d0 => grp_workload_fu_109_data_d0,
        data_q0 => bmc_in_q0);

    grp_aqed_in_fu_117 : component aqed_in
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_aqed_in_fu_117_ap_start,
        ap_done => grp_aqed_in_fu_117_ap_done,
        ap_idle => grp_aqed_in_fu_117_ap_idle,
        ap_ready => grp_aqed_in_fu_117_ap_ready,
        bmc_in_address0 => grp_aqed_in_fu_117_bmc_in_address0,
        bmc_in_ce0 => grp_aqed_in_fu_117_bmc_in_ce0,
        bmc_in_q0 => bmc_in_q0,
        bmc_in_address1 => grp_aqed_in_fu_117_bmc_in_address1,
        bmc_in_ce1 => grp_aqed_in_fu_117_bmc_in_ce1,
        bmc_in_q1 => bmc_in_q1,
        orig_V => orig_V,
        dup_V => dup_V,
        orig_idx_V => orig_idx_V,
        dup_idx_V => dup_idx_V,
        state_orig_issued_V_i => state_orig_issued_V,
        state_orig_issued_V_o => grp_aqed_in_fu_117_state_orig_issued_V_o,
        state_orig_issued_V_o_ap_vld => grp_aqed_in_fu_117_state_orig_issued_V_o_ap_vld,
        state_dup_issued_V_i => state_dup_issued_V,
        state_dup_issued_V_o => grp_aqed_in_fu_117_state_dup_issued_V_o,
        state_dup_issued_V_o_ap_vld => grp_aqed_in_fu_117_state_dup_issued_V_o_ap_vld,
        state_orig_in_V => grp_aqed_in_fu_117_state_orig_in_V,
        state_orig_in_V_ap_vld => grp_aqed_in_fu_117_state_orig_in_V_ap_vld,
        state_orig_idx_V => grp_aqed_in_fu_117_state_orig_idx_V,
        state_orig_idx_V_ap_vld => grp_aqed_in_fu_117_state_orig_idx_V_ap_vld,
        state_dup_in_V => grp_aqed_in_fu_117_state_dup_in_V,
        state_dup_in_V_ap_vld => grp_aqed_in_fu_117_state_dup_in_V_ap_vld,
        state_dup_idx_V => grp_aqed_in_fu_117_state_dup_idx_V,
        state_dup_idx_V_ap_vld => grp_aqed_in_fu_117_state_dup_idx_V_ap_vld,
        state_dup_val_V_0 => grp_aqed_in_fu_117_state_dup_val_V_0,
        state_dup_val_V_0_ap_vld => grp_aqed_in_fu_117_state_dup_val_V_0_ap_vld,
        state_dup_val_V_1 => grp_aqed_in_fu_117_state_dup_val_V_1,
        state_dup_val_V_1_ap_vld => grp_aqed_in_fu_117_state_dup_val_V_1_ap_vld);

    grp_aqed_out_fu_153 : component aqed_out
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_aqed_out_fu_153_ap_start,
        ap_done => grp_aqed_out_fu_153_ap_done,
        ap_idle => grp_aqed_out_fu_153_ap_idle,
        ap_ready => grp_aqed_out_fu_153_ap_ready,
        state_orig_issued_V => state_orig_issued_V,
        state_orig_in_V => state_orig_in_V,
        state_orig_done_V => grp_aqed_out_fu_153_state_orig_done_V,
        state_orig_done_V_ap_vld => grp_aqed_out_fu_153_state_orig_done_V_ap_vld,
        state_orig_idx_V => state_orig_idx_V,
        bmc_in_address0 => grp_aqed_out_fu_153_bmc_in_address0,
        bmc_in_ce0 => grp_aqed_out_fu_153_bmc_in_ce0,
        bmc_in_q0 => bmc_in_q0,
        bmc_in_address1 => grp_aqed_out_fu_153_bmc_in_address1,
        bmc_in_ce1 => grp_aqed_out_fu_153_bmc_in_ce1,
        bmc_in_q1 => bmc_in_q1,
        state_dup_in_V => state_dup_in_V,
        state_dup_issued_V => state_dup_issued_V,
        state_dup_idx_V => state_dup_idx_V,
        ap_return_0 => grp_aqed_out_fu_153_ap_return_0,
        ap_return_1 => grp_aqed_out_fu_153_ap_return_1);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_aqed_in_fu_117_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_aqed_in_fu_117_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    grp_aqed_in_fu_117_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_aqed_in_fu_117_ap_ready = ap_const_logic_1)) then 
                    grp_aqed_in_fu_117_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_aqed_out_fu_153_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_aqed_out_fu_153_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    grp_aqed_out_fu_153_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_aqed_out_fu_153_ap_ready = ap_const_logic_1)) then 
                    grp_aqed_out_fu_153_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_workload_fu_109_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_workload_fu_109_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                    grp_workload_fu_109_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_workload_fu_109_ap_ready = ap_const_logic_1)) then 
                    grp_workload_fu_109_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_aqed_out_fu_153_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                o2_qed_check_V_reg_247 <= grp_aqed_out_fu_153_ap_return_1;
                o2_qed_done_V_reg_242 <= grp_aqed_out_fu_153_ap_return_0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_aqed_in_fu_117_state_dup_idx_V_ap_vld = ap_const_logic_1))) then
                state_dup_idx_V <= grp_aqed_in_fu_117_state_dup_idx_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_aqed_in_fu_117_state_dup_in_V_ap_vld = ap_const_logic_1))) then
                state_dup_in_V <= grp_aqed_in_fu_117_state_dup_in_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_aqed_in_fu_117_state_dup_issued_V_o_ap_vld = ap_const_logic_1))) then
                state_dup_issued_V <= grp_aqed_in_fu_117_state_dup_issued_V_o;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_aqed_in_fu_117_state_dup_val_V_0_ap_vld = ap_const_logic_1))) then
                state_dup_val_V_0 <= grp_aqed_in_fu_117_state_dup_val_V_0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_aqed_in_fu_117_state_dup_val_V_1_ap_vld = ap_const_logic_1))) then
                state_dup_val_V_1 <= grp_aqed_in_fu_117_state_dup_val_V_1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (grp_aqed_out_fu_153_state_orig_done_V_ap_vld = ap_const_logic_1))) then
                state_orig_done_V <= grp_aqed_out_fu_153_state_orig_done_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_aqed_in_fu_117_state_orig_idx_V_ap_vld = ap_const_logic_1))) then
                state_orig_idx_V <= grp_aqed_in_fu_117_state_orig_idx_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_aqed_in_fu_117_state_orig_in_V_ap_vld = ap_const_logic_1))) then
                state_orig_in_V <= grp_aqed_in_fu_117_state_orig_in_V;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (grp_aqed_in_fu_117_state_orig_issued_V_o_ap_vld = ap_const_logic_1))) then
                state_orig_issued_V <= grp_aqed_in_fu_117_state_orig_issued_V_o;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state6, grp_aqed_out_fu_153_ap_done, grp_workload_fu_109_ap_done, grp_aqed_in_fu_117_ap_done, ap_CS_fsm_state4, ap_CS_fsm_state2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((grp_aqed_in_fu_117_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                if (((grp_workload_fu_109_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state4))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((grp_aqed_out_fu_153_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    agg_result <= (((((state_dup_val_V_1 & state_dup_val_V_0) & state_orig_done_V) & state_orig_issued_V) & o2_qed_check_V_reg_247) & o2_qed_done_V_reg_242);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_done_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    bmc_in_address0_assign_proc : process(ap_CS_fsm_state6, grp_workload_fu_109_data_address0, grp_aqed_in_fu_117_bmc_in_address0, grp_aqed_out_fu_153_bmc_in_address0, ap_CS_fsm_state4, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            bmc_in_address0 <= grp_aqed_out_fu_153_bmc_in_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            bmc_in_address0 <= grp_aqed_in_fu_117_bmc_in_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            bmc_in_address0 <= grp_workload_fu_109_data_address0;
        else 
            bmc_in_address0 <= "XXXX";
        end if; 
    end process;


    bmc_in_address1_assign_proc : process(ap_CS_fsm_state6, grp_aqed_in_fu_117_bmc_in_address1, grp_aqed_out_fu_153_bmc_in_address1, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            bmc_in_address1 <= grp_aqed_out_fu_153_bmc_in_address1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            bmc_in_address1 <= grp_aqed_in_fu_117_bmc_in_address1;
        else 
            bmc_in_address1 <= "XXXX";
        end if; 
    end process;


    bmc_in_ce0_assign_proc : process(ap_CS_fsm_state6, grp_workload_fu_109_data_ce0, grp_aqed_in_fu_117_bmc_in_ce0, grp_aqed_out_fu_153_bmc_in_ce0, ap_CS_fsm_state4, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            bmc_in_ce0 <= grp_aqed_out_fu_153_bmc_in_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            bmc_in_ce0 <= grp_aqed_in_fu_117_bmc_in_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            bmc_in_ce0 <= grp_workload_fu_109_data_ce0;
        else 
            bmc_in_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    bmc_in_ce1_assign_proc : process(ap_CS_fsm_state6, grp_aqed_in_fu_117_bmc_in_ce1, grp_aqed_out_fu_153_bmc_in_ce1, ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            bmc_in_ce1 <= grp_aqed_out_fu_153_bmc_in_ce1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            bmc_in_ce1 <= grp_aqed_in_fu_117_bmc_in_ce1;
        else 
            bmc_in_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    bmc_in_we0_assign_proc : process(grp_workload_fu_109_data_we0, ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            bmc_in_we0 <= grp_workload_fu_109_data_we0;
        else 
            bmc_in_we0 <= ap_const_logic_0;
        end if; 
    end process;

    grp_aqed_in_fu_117_ap_start <= grp_aqed_in_fu_117_ap_start_reg;
    grp_aqed_out_fu_153_ap_start <= grp_aqed_out_fu_153_ap_start_reg;
    grp_workload_fu_109_ap_start <= grp_workload_fu_109_ap_start_reg;
end behav;
