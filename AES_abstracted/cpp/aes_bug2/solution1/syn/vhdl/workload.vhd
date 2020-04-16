-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity workload is
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
end;


architecture behav of workload is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal j_reg_120 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond2_fu_278_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond2_reg_438 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_2_fu_284_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal tmp_7_fu_290_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_7_reg_447 : STD_LOGIC_VECTOR (63 downto 0);
    signal j_4_fu_301_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal j_4_reg_472 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_1_fu_307_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_1_reg_477 : STD_LOGIC_VECTOR (1 downto 0);
    signal exitcond3_fu_295_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_2_fu_327_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal k_2_reg_495 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal exitcond5_fu_321_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_343_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_reg_505 : STD_LOGIC_VECTOR (0 downto 0);
    signal buf_1_1_2_fu_347_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal buf_1_1_3_fu_354_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal buf_0_0_3_reg_521 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal grp_aes256_encrypt_ecb_fu_258_ap_idle : STD_LOGIC;
    signal grp_aes256_encrypt_ecb_fu_258_ap_ready : STD_LOGIC;
    signal grp_aes256_encrypt_ecb_fu_258_ap_done : STD_LOGIC;
    signal grp_aes256_encrypt_ecb_fu_269_ap_idle : STD_LOGIC;
    signal grp_aes256_encrypt_ecb_fu_269_ap_ready : STD_LOGIC;
    signal grp_aes256_encrypt_ecb_fu_269_ap_done : STD_LOGIC;
    signal ap_block_state9_on_subcall_done : BOOLEAN;
    signal buf_0_1_3_reg_527 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_5_fu_393_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal j_5_reg_536 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal tmp_4_fu_399_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_4_reg_541 : STD_LOGIC_VECTOR (1 downto 0);
    signal exitcond6_fu_387_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_3_fu_411_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal local_key_0_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal local_key_0_ce0 : STD_LOGIC;
    signal local_key_0_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal local_key_1_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal local_key_1_ce0 : STD_LOGIC;
    signal local_key_1_we0 : STD_LOGIC;
    signal local_key_1_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_aes256_encrypt_ecb_fu_258_ap_start : STD_LOGIC;
    signal grp_aes256_encrypt_ecb_fu_258_k_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_aes256_encrypt_ecb_fu_258_k_ce0 : STD_LOGIC;
    signal grp_aes256_encrypt_ecb_fu_258_ap_return_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_aes256_encrypt_ecb_fu_258_ap_return_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_aes256_encrypt_ecb_fu_269_ap_start : STD_LOGIC;
    signal grp_aes256_encrypt_ecb_fu_269_k_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal grp_aes256_encrypt_ecb_fu_269_k_ce0 : STD_LOGIC;
    signal grp_aes256_encrypt_ecb_fu_269_ap_return_0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_aes256_encrypt_ecb_fu_269_ap_return_1 : STD_LOGIC_VECTOR (7 downto 0);
    signal buf_0_1_reg_131 : STD_LOGIC_VECTOR (7 downto 0);
    signal buf_0_0_reg_143 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_phi_mux_i_2_phi_fu_160_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_2_reg_155 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal buf_0_1_1_reg_168 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal buf_0_0_1_reg_179 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_1_reg_190 : STD_LOGIC_VECTOR (1 downto 0);
    signal buf_0_1_2_reg_201 : STD_LOGIC_VECTOR (7 downto 0);
    signal buf_0_0_2_reg_213 : STD_LOGIC_VECTOR (7 downto 0);
    signal k_reg_225 : STD_LOGIC_VECTOR (1 downto 0);
    signal j_3_reg_236 : STD_LOGIC_VECTOR (1 downto 0);
    signal exitcond_fu_405_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal k_1_reg_247 : STD_LOGIC_VECTOR (1 downto 0);
    signal grp_aes256_encrypt_ecb_fu_258_ap_start_reg : STD_LOGIC := '0';
    signal grp_aes256_encrypt_ecb_fu_269_ap_start_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal sum3_cast_fu_338_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sum5_cast_fu_433_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal buf_1_0_fu_66 : STD_LOGIC_VECTOR (7 downto 0);
    signal buf_1_1_fu_70 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp7_fu_333_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_6_fu_417_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp8_fu_428_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;

    component aes256_encrypt_ecb IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        k_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
        k_ce0 : OUT STD_LOGIC;
        k_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        p_read : IN STD_LOGIC_VECTOR (7 downto 0);
        p_read1 : IN STD_LOGIC_VECTOR (7 downto 0);
        ap_return_0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        ap_return_1 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component workload_local_keeOg IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (4 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component workload_local_kefYi IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (4 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (7 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    local_key_0_U : component workload_local_keeOg
    generic map (
        DataWidth => 8,
        AddressRange => 32,
        AddressWidth => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => local_key_0_address0,
        ce0 => local_key_0_ce0,
        q0 => local_key_0_q0);

    local_key_1_U : component workload_local_kefYi
    generic map (
        DataWidth => 8,
        AddressRange => 32,
        AddressWidth => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => local_key_1_address0,
        ce0 => local_key_1_ce0,
        we0 => local_key_1_we0,
        d0 => local_key_0_q0,
        q0 => local_key_1_q0);

    grp_aes256_encrypt_ecb_fu_258 : component aes256_encrypt_ecb
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_aes256_encrypt_ecb_fu_258_ap_start,
        ap_done => grp_aes256_encrypt_ecb_fu_258_ap_done,
        ap_idle => grp_aes256_encrypt_ecb_fu_258_ap_idle,
        ap_ready => grp_aes256_encrypt_ecb_fu_258_ap_ready,
        k_address0 => grp_aes256_encrypt_ecb_fu_258_k_address0,
        k_ce0 => grp_aes256_encrypt_ecb_fu_258_k_ce0,
        k_q0 => local_key_0_q0,
        p_read => buf_0_0_1_reg_179,
        p_read1 => buf_0_1_1_reg_168,
        ap_return_0 => grp_aes256_encrypt_ecb_fu_258_ap_return_0,
        ap_return_1 => grp_aes256_encrypt_ecb_fu_258_ap_return_1);

    grp_aes256_encrypt_ecb_fu_269 : component aes256_encrypt_ecb
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_aes256_encrypt_ecb_fu_269_ap_start,
        ap_done => grp_aes256_encrypt_ecb_fu_269_ap_done,
        ap_idle => grp_aes256_encrypt_ecb_fu_269_ap_idle,
        ap_ready => grp_aes256_encrypt_ecb_fu_269_ap_ready,
        k_address0 => grp_aes256_encrypt_ecb_fu_269_k_address0,
        k_ce0 => grp_aes256_encrypt_ecb_fu_269_k_ce0,
        k_q0 => local_key_1_q0,
        p_read => buf_1_0_fu_66,
        p_read1 => buf_1_1_fu_70,
        ap_return_0 => grp_aes256_encrypt_ecb_fu_269_ap_return_0,
        ap_return_1 => grp_aes256_encrypt_ecb_fu_269_ap_return_1);





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


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state2);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_aes256_encrypt_ecb_fu_258_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_aes256_encrypt_ecb_fu_258_ap_start_reg <= ap_const_logic_0;
            else
                if (((exitcond3_fu_295_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                    grp_aes256_encrypt_ecb_fu_258_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_aes256_encrypt_ecb_fu_258_ap_ready = ap_const_logic_1)) then 
                    grp_aes256_encrypt_ecb_fu_258_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_aes256_encrypt_ecb_fu_269_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_aes256_encrypt_ecb_fu_269_ap_start_reg <= ap_const_logic_0;
            else
                if (((exitcond3_fu_295_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                    grp_aes256_encrypt_ecb_fu_269_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_aes256_encrypt_ecb_fu_269_ap_ready = ap_const_logic_1)) then 
                    grp_aes256_encrypt_ecb_fu_269_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    buf_0_0_1_reg_179_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond5_fu_321_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                buf_0_0_1_reg_179 <= buf_0_0_2_reg_213;
            elsif (((ap_phi_mux_i_2_phi_fu_160_p4 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                buf_0_0_1_reg_179 <= buf_0_0_reg_143;
            end if; 
        end if;
    end process;

    buf_0_0_2_reg_213_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                buf_0_0_2_reg_213 <= buf_1_1_3_fu_354_p3;
            elsif (((exitcond3_fu_295_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                buf_0_0_2_reg_213 <= buf_0_0_1_reg_179;
            end if; 
        end if;
    end process;

    buf_0_1_1_reg_168_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond5_fu_321_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                buf_0_1_1_reg_168 <= buf_0_1_2_reg_201;
            elsif (((ap_phi_mux_i_2_phi_fu_160_p4 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                buf_0_1_1_reg_168 <= buf_0_1_reg_131;
            end if; 
        end if;
    end process;

    buf_0_1_2_reg_201_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                buf_0_1_2_reg_201 <= buf_1_1_2_fu_347_p3;
            elsif (((exitcond3_fu_295_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                buf_0_1_2_reg_201 <= buf_0_1_1_reg_168;
            end if; 
        end if;
    end process;

    i_2_reg_155_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                i_2_reg_155 <= ap_const_lv1_0;
            elsif (((exitcond6_fu_387_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
                i_2_reg_155 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    j_1_reg_190_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond5_fu_321_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                j_1_reg_190 <= j_4_reg_472;
            elsif (((ap_phi_mux_i_2_phi_fu_160_p4 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                j_1_reg_190 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    j_3_reg_236_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state9) and (ap_const_boolean_0 = ap_block_state9_on_subcall_done))) then 
                j_3_reg_236 <= ap_const_lv2_0;
            elsif (((exitcond_fu_405_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
                j_3_reg_236 <= j_5_reg_536;
            end if; 
        end if;
    end process;

    j_reg_120_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                j_reg_120 <= ap_const_lv6_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond2_fu_278_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                j_reg_120 <= j_2_fu_284_p2;
            end if; 
        end if;
    end process;

    k_1_reg_247_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond_fu_405_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
                k_1_reg_247 <= k_3_fu_411_p2;
            elsif (((exitcond6_fu_387_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
                k_1_reg_247 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    k_reg_225_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
                k_reg_225 <= k_2_reg_495;
            elsif (((exitcond3_fu_295_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                k_reg_225 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state9) and (ap_const_boolean_0 = ap_block_state9_on_subcall_done))) then
                buf_0_0_3_reg_521 <= grp_aes256_encrypt_ecb_fu_258_ap_return_0;
                buf_0_1_3_reg_527 <= grp_aes256_encrypt_ecb_fu_258_ap_return_1;
                buf_1_0_fu_66 <= grp_aes256_encrypt_ecb_fu_269_ap_return_0;
                buf_1_1_fu_70 <= grp_aes256_encrypt_ecb_fu_269_ap_return_1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond6_fu_387_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                buf_0_0_reg_143 <= buf_0_0_3_reg_521;
                buf_0_1_reg_131 <= buf_0_1_3_reg_527;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                exitcond2_reg_438 <= exitcond2_fu_278_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                j_4_reg_472 <= j_4_fu_301_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state10)) then
                j_5_reg_536 <= j_5_fu_393_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                k_2_reg_495 <= k_2_fu_327_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond3_fu_295_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    tmp_1_reg_477(1) <= tmp_1_fu_307_p2(1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond6_fu_387_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    tmp_4_reg_541(1) <= tmp_4_fu_399_p2(1);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((exitcond5_fu_321_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                tmp_5_reg_505 <= tmp_5_fu_343_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond2_fu_278_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    tmp_7_reg_447(5 downto 0) <= tmp_7_fu_290_p1(5 downto 0);
            end if;
        end if;
    end process;
    tmp_7_reg_447(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";
    tmp_1_reg_477(0) <= '0';
    tmp_4_reg_541(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, exitcond2_fu_278_p2, ap_enable_reg_pp0_iter0, ap_CS_fsm_state6, exitcond3_fu_295_p2, ap_CS_fsm_state7, exitcond5_fu_321_p2, ap_CS_fsm_state9, ap_block_state9_on_subcall_done, ap_CS_fsm_state10, exitcond6_fu_387_p2, ap_CS_fsm_state11, ap_block_pp0_stage0_subdone, ap_phi_mux_i_2_phi_fu_160_p4, ap_CS_fsm_state5, exitcond_fu_405_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((exitcond2_fu_278_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((exitcond2_fu_278_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((ap_phi_mux_i_2_phi_fu_160_p4 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                if (((exitcond3_fu_295_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state7 => 
                if (((exitcond5_fu_321_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state8 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state9 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state9) and (ap_const_boolean_0 = ap_block_state9_on_subcall_done))) then
                    ap_NS_fsm <= ap_ST_fsm_state10;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state10 => 
                if (((exitcond6_fu_387_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when ap_ST_fsm_state11 => 
                if (((exitcond_fu_405_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state11))) then
                    ap_NS_fsm <= ap_ST_fsm_state10;
                else
                    ap_NS_fsm <= ap_ST_fsm_state11;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(8);
    ap_CS_fsm_state11 <= ap_CS_fsm(9);
    ap_CS_fsm_state4 <= ap_CS_fsm(2);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
    ap_CS_fsm_state6 <= ap_CS_fsm(4);
    ap_CS_fsm_state7 <= ap_CS_fsm(5);
    ap_CS_fsm_state8 <= ap_CS_fsm(6);
    ap_CS_fsm_state9 <= ap_CS_fsm(7);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state9_on_subcall_done_assign_proc : process(grp_aes256_encrypt_ecb_fu_258_ap_done, grp_aes256_encrypt_ecb_fu_269_ap_done)
    begin
                ap_block_state9_on_subcall_done <= ((grp_aes256_encrypt_ecb_fu_269_ap_done = ap_const_logic_0) or (grp_aes256_encrypt_ecb_fu_258_ap_done = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter0_state2_assign_proc : process(exitcond2_fu_278_p2)
    begin
        if ((exitcond2_fu_278_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_phi_mux_i_2_phi_fu_160_p4, ap_CS_fsm_state5)
    begin
        if ((((ap_phi_mux_i_2_phi_fu_160_p4 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_phi_mux_i_2_phi_fu_160_p4 <= i_2_reg_155;

    ap_ready_assign_proc : process(ap_phi_mux_i_2_phi_fu_160_p4, ap_CS_fsm_state5)
    begin
        if (((ap_phi_mux_i_2_phi_fu_160_p4 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    buf_1_1_2_fu_347_p3 <= 
        data_q0 when (tmp_5_reg_505(0) = '1') else 
        buf_0_1_2_reg_201;
    buf_1_1_3_fu_354_p3 <= 
        buf_0_0_2_reg_213 when (tmp_5_reg_505(0) = '1') else 
        data_q0;

    data_address0_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state11, sum3_cast_fu_338_p1, sum5_cast_fu_433_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            data_address0 <= sum5_cast_fu_433_p1(4 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            data_address0 <= sum3_cast_fu_338_p1(4 - 1 downto 0);
        else 
            data_address0 <= "XXXX";
        end if; 
    end process;


    data_ce0_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state11)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            data_ce0 <= ap_const_logic_1;
        else 
            data_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    data_d0 <= 
        buf_0_1_3_reg_527 when (tmp_6_fu_417_p1(0) = '1') else 
        buf_0_0_3_reg_521;

    data_we0_assign_proc : process(ap_CS_fsm_state11, exitcond_fu_405_p2)
    begin
        if (((exitcond_fu_405_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state11))) then 
            data_we0 <= ap_const_logic_1;
        else 
            data_we0 <= ap_const_logic_0;
        end if; 
    end process;

    exitcond2_fu_278_p2 <= "1" when (j_reg_120 = ap_const_lv6_20) else "0";
    exitcond3_fu_295_p2 <= "1" when (j_1_reg_190 = ap_const_lv2_2) else "0";
    exitcond5_fu_321_p2 <= "1" when (k_reg_225 = ap_const_lv2_2) else "0";
    exitcond6_fu_387_p2 <= "1" when (j_3_reg_236 = ap_const_lv2_2) else "0";
    exitcond_fu_405_p2 <= "1" when (k_1_reg_247 = ap_const_lv2_2) else "0";
    grp_aes256_encrypt_ecb_fu_258_ap_start <= grp_aes256_encrypt_ecb_fu_258_ap_start_reg;
    grp_aes256_encrypt_ecb_fu_269_ap_start <= grp_aes256_encrypt_ecb_fu_269_ap_start_reg;
    j_2_fu_284_p2 <= std_logic_vector(unsigned(j_reg_120) + unsigned(ap_const_lv6_1));
    j_4_fu_301_p2 <= std_logic_vector(unsigned(j_1_reg_190) + unsigned(ap_const_lv2_1));
    j_5_fu_393_p2 <= std_logic_vector(unsigned(j_3_reg_236) + unsigned(ap_const_lv2_1));
    k_2_fu_327_p2 <= std_logic_vector(unsigned(k_reg_225) + unsigned(ap_const_lv2_1));
    k_3_fu_411_p2 <= std_logic_vector(unsigned(k_1_reg_247) + unsigned(ap_const_lv2_1));

    local_key_0_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, tmp_7_fu_290_p1, ap_CS_fsm_state9, grp_aes256_encrypt_ecb_fu_258_k_address0, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            local_key_0_address0 <= tmp_7_fu_290_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            local_key_0_address0 <= grp_aes256_encrypt_ecb_fu_258_k_address0;
        else 
            local_key_0_address0 <= "XXXXX";
        end if; 
    end process;


    local_key_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0, ap_CS_fsm_state9, grp_aes256_encrypt_ecb_fu_258_k_ce0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            local_key_0_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            local_key_0_ce0 <= grp_aes256_encrypt_ecb_fu_258_k_ce0;
        else 
            local_key_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    local_key_1_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, tmp_7_reg_447, ap_CS_fsm_state9, ap_enable_reg_pp0_iter1, grp_aes256_encrypt_ecb_fu_269_k_address0, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            local_key_1_address0 <= tmp_7_reg_447(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            local_key_1_address0 <= grp_aes256_encrypt_ecb_fu_269_k_address0;
        else 
            local_key_1_address0 <= "XXXXX";
        end if; 
    end process;


    local_key_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_CS_fsm_state9, ap_enable_reg_pp0_iter1, grp_aes256_encrypt_ecb_fu_269_k_ce0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            local_key_1_ce0 <= ap_const_logic_1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            local_key_1_ce0 <= grp_aes256_encrypt_ecb_fu_269_k_ce0;
        else 
            local_key_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    local_key_1_we0_assign_proc : process(exitcond2_reg_438, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (exitcond2_reg_438 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            local_key_1_we0 <= ap_const_logic_1;
        else 
            local_key_1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    sum3_cast_fu_338_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp7_fu_333_p2),64));
    sum5_cast_fu_433_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp8_fu_428_p2),64));
    tmp7_fu_333_p2 <= std_logic_vector(unsigned(k_reg_225) + unsigned(tmp_1_reg_477));
    tmp8_fu_428_p2 <= std_logic_vector(unsigned(k_1_reg_247) + unsigned(tmp_4_reg_541));
    tmp_1_fu_307_p2 <= std_logic_vector(shift_left(unsigned(j_1_reg_190),to_integer(unsigned('0' & ap_const_lv2_1(2-1 downto 0)))));
    tmp_4_fu_399_p2 <= std_logic_vector(shift_left(unsigned(j_3_reg_236),to_integer(unsigned('0' & ap_const_lv2_1(2-1 downto 0)))));
    tmp_5_fu_343_p1 <= k_reg_225(1 - 1 downto 0);
    tmp_6_fu_417_p1 <= k_1_reg_247(1 - 1 downto 0);
    tmp_7_fu_290_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_120),64));
end behav;