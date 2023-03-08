-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "02/15/2023 23:34:03"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ledMatrix IS
    PORT (
	clock_50 : IN std_logic;
	global_AR : IN std_logic;
	matrix_clock : BUFFER std_logic;
	matrix_LE : BUFFER std_logic;
	matrix_OE : BUFFER std_logic;
	matrix_CBA : BUFFER std_logic_vector(2 DOWNTO 0);
	matrix_R1 : BUFFER std_logic;
	matrix_V1 : BUFFER std_logic;
	matrix_B1 : BUFFER std_logic;
	matrix_R2 : BUFFER std_logic;
	matrix_V2 : BUFFER std_logic;
	matrix_B2 : BUFFER std_logic
	);
END ledMatrix;

-- Design Ports Information
-- matrix_clock	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- matrix_LE	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- matrix_OE	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- matrix_CBA[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- matrix_CBA[1]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- matrix_CBA[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- matrix_R1	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- matrix_V1	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- matrix_B1	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- matrix_R2	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- matrix_V2	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- matrix_B2	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- global_AR	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ledMatrix IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_global_AR : std_logic;
SIGNAL ww_matrix_clock : std_logic;
SIGNAL ww_matrix_LE : std_logic;
SIGNAL ww_matrix_OE : std_logic;
SIGNAL ww_matrix_CBA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_matrix_R1 : std_logic;
SIGNAL ww_matrix_V1 : std_logic;
SIGNAL ww_matrix_B1 : std_logic;
SIGNAL ww_matrix_R2 : std_logic;
SIGNAL ww_matrix_V2 : std_logic;
SIGNAL ww_matrix_B2 : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ar~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector11~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hlsm_inst|lines_next[0]~8clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \global_AR~input_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector4~0_combout\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \ar~0_combout\ : std_logic;
SIGNAL \ar~0clkctrl_outclk\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector3~2_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Add0~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector2~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|state.st2~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|state.st2~q\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector5~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector5~1_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Add1~1\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Add1~2_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|pixel_next_process~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector9~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Add1~3\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Add1~4_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector8~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Add1~5\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Add1~6_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector7~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Add1~7\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Add1~8_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector6~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|pixel_next_process~1_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|pixel_next_process~2_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Add1~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector10~1_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|LessThan2~1_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector0~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|state.st1~q\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector11~1_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector11~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|mx_LE~combout\ : std_logic;
SIGNAL \hlsm_inst|cnt[0]~8_combout\ : std_logic;
SIGNAL \hlsm_inst|lines_next_process~0_combout\ : std_logic;
SIGNAL \hlsm_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \hlsm_inst|LessThan2~1_combout\ : std_logic;
SIGNAL \hlsm_inst|sys_init[1]~5_combout\ : std_logic;
SIGNAL \hlsm_inst|sys_init[0]~6_combout\ : std_logic;
SIGNAL \hlsm_inst|sys_init[2]~4_combout\ : std_logic;
SIGNAL \hlsm_inst|Equal0~0_combout\ : std_logic;
SIGNAL \hlsm_inst|cnt[7]~18_combout\ : std_logic;
SIGNAL \hlsm_inst|cnt[0]~9\ : std_logic;
SIGNAL \hlsm_inst|cnt[1]~10_combout\ : std_logic;
SIGNAL \hlsm_inst|cnt[1]~11\ : std_logic;
SIGNAL \hlsm_inst|cnt[2]~12_combout\ : std_logic;
SIGNAL \hlsm_inst|cnt[2]~13\ : std_logic;
SIGNAL \hlsm_inst|cnt[3]~14_combout\ : std_logic;
SIGNAL \hlsm_inst|cnt[3]~15\ : std_logic;
SIGNAL \hlsm_inst|cnt[4]~16_combout\ : std_logic;
SIGNAL \hlsm_inst|cnt[4]~17\ : std_logic;
SIGNAL \hlsm_inst|cnt[5]~19_combout\ : std_logic;
SIGNAL \hlsm_inst|cnt[5]~20\ : std_logic;
SIGNAL \hlsm_inst|cnt[6]~21_combout\ : std_logic;
SIGNAL \hlsm_inst|cnt[6]~22\ : std_logic;
SIGNAL \hlsm_inst|cnt[7]~23_combout\ : std_logic;
SIGNAL \hlsm_inst|lines_next[0]~4_combout\ : std_logic;
SIGNAL \hlsm_inst|lines_next[0]~8_combout\ : std_logic;
SIGNAL \hlsm_inst|lines_next[0]~8clkctrl_outclk\ : std_logic;
SIGNAL \hlsm_inst|lines_next[1]~5_combout\ : std_logic;
SIGNAL \hlsm_inst|lines_next[2]~6_combout\ : std_logic;
SIGNAL \hlsm_inst|lines_next[2]~7_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|Selector11~0clkctrl_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~0_combout\ : std_logic;
SIGNAL \hlsm_inst|Add3~0_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~1\ : std_logic;
SIGNAL \hlsm_inst|Add4~3_combout\ : std_logic;
SIGNAL \hlsm_inst|Add3~1\ : std_logic;
SIGNAL \hlsm_inst|Add3~2_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~5_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\ : std_logic;
SIGNAL \hlsm_inst|Add3~3\ : std_logic;
SIGNAL \hlsm_inst|Add3~4_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~4\ : std_logic;
SIGNAL \hlsm_inst|Add4~6_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~8_combout\ : std_logic;
SIGNAL \hlsm_inst|Add3~5\ : std_logic;
SIGNAL \hlsm_inst|Add3~6_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~7\ : std_logic;
SIGNAL \hlsm_inst|Add4~9_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~11_combout\ : std_logic;
SIGNAL \hlsm_inst|LessThan3~1_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~10\ : std_logic;
SIGNAL \hlsm_inst|Add4~12_combout\ : std_logic;
SIGNAL \hlsm_inst|Add3~7\ : std_logic;
SIGNAL \hlsm_inst|Add3~8_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~14_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~13\ : std_logic;
SIGNAL \hlsm_inst|Add4~15_combout\ : std_logic;
SIGNAL \hlsm_inst|Add3~9\ : std_logic;
SIGNAL \hlsm_inst|Add3~10_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~17_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~16\ : std_logic;
SIGNAL \hlsm_inst|Add4~18_combout\ : std_logic;
SIGNAL \hlsm_inst|Add3~11\ : std_logic;
SIGNAL \hlsm_inst|Add3~12_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~20_combout\ : std_logic;
SIGNAL \hlsm_inst|Add3~13\ : std_logic;
SIGNAL \hlsm_inst|Add3~14_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~19\ : std_logic;
SIGNAL \hlsm_inst|Add4~21_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~23_combout\ : std_logic;
SIGNAL \hlsm_inst|LessThan3~0_combout\ : std_logic;
SIGNAL \hlsm_inst|ROMadd_next[0]~0_combout\ : std_logic;
SIGNAL \hlsm_inst|Add4~2_combout\ : std_logic;
SIGNAL \red2_pwm_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl_outclk\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[0]~8_combout\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[0]~9\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[1]~10_combout\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[1]~11\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[2]~12_combout\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[2]~13\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[3]~14_combout\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[3]~15\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[4]~16_combout\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[4]~17\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[5]~18_combout\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[5]~19\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[6]~20_combout\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[6]~21\ : std_logic;
SIGNAL \blue1_pwm_inst|cnt[7]~22_combout\ : std_logic;
SIGNAL \red2_pwm_inst|LessThan1~1_cout\ : std_logic;
SIGNAL \red2_pwm_inst|LessThan1~3_cout\ : std_logic;
SIGNAL \red2_pwm_inst|LessThan1~5_cout\ : std_logic;
SIGNAL \red2_pwm_inst|LessThan1~7_cout\ : std_logic;
SIGNAL \red2_pwm_inst|LessThan1~9_cout\ : std_logic;
SIGNAL \red2_pwm_inst|LessThan1~11_cout\ : std_logic;
SIGNAL \red2_pwm_inst|LessThan1~13_cout\ : std_logic;
SIGNAL \red2_pwm_inst|LessThan1~14_combout\ : std_logic;
SIGNAL \red2_pwm_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \red2_pwm_inst|pwm_config_process~0_combout\ : std_logic;
SIGNAL \red1_pwm_inst|state.st1~feeder_combout\ : std_logic;
SIGNAL \red1_pwm_inst|state.st1~q\ : std_logic;
SIGNAL \green2_pwm_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \green2_pwm_inst|LessThan1~1_cout\ : std_logic;
SIGNAL \green2_pwm_inst|LessThan1~3_cout\ : std_logic;
SIGNAL \green2_pwm_inst|LessThan1~5_cout\ : std_logic;
SIGNAL \green2_pwm_inst|LessThan1~7_cout\ : std_logic;
SIGNAL \green2_pwm_inst|LessThan1~9_cout\ : std_logic;
SIGNAL \green2_pwm_inst|LessThan1~11_cout\ : std_logic;
SIGNAL \green2_pwm_inst|LessThan1~13_cout\ : std_logic;
SIGNAL \green2_pwm_inst|LessThan1~14_combout\ : std_logic;
SIGNAL \green2_pwm_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \green2_pwm_inst|pwm_config_process~0_combout\ : std_logic;
SIGNAL \green1_pwm_inst|state.st1~feeder_combout\ : std_logic;
SIGNAL \green1_pwm_inst|state.st1~q\ : std_logic;
SIGNAL \blue2_pwm_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \blue2_pwm_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \blue2_pwm_inst|LessThan1~1_cout\ : std_logic;
SIGNAL \blue2_pwm_inst|LessThan1~3_cout\ : std_logic;
SIGNAL \blue2_pwm_inst|LessThan1~5_cout\ : std_logic;
SIGNAL \blue2_pwm_inst|LessThan1~7_cout\ : std_logic;
SIGNAL \blue2_pwm_inst|LessThan1~9_cout\ : std_logic;
SIGNAL \blue2_pwm_inst|LessThan1~11_cout\ : std_logic;
SIGNAL \blue2_pwm_inst|LessThan1~13_cout\ : std_logic;
SIGNAL \blue2_pwm_inst|LessThan1~14_combout\ : std_logic;
SIGNAL \blue2_pwm_inst|pwm_config_process~0_combout\ : std_logic;
SIGNAL \blue1_pwm_inst|state.st1~feeder_combout\ : std_logic;
SIGNAL \blue1_pwm_inst|state.st1~q\ : std_logic;
SIGNAL \red2_pwm_inst|state.st1~feeder_combout\ : std_logic;
SIGNAL \red2_pwm_inst|state.st1~q\ : std_logic;
SIGNAL \green2_pwm_inst|state.st1~feeder_combout\ : std_logic;
SIGNAL \green2_pwm_inst|state.st1~q\ : std_logic;
SIGNAL \blue2_pwm_inst|state.st1~feeder_combout\ : std_logic;
SIGNAL \blue2_pwm_inst|state.st1~q\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \blue1_pwm_inst|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \blueROM_inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \hlsm_inst|lines\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \hlsm_inst|hlsm_helper_inst|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \redROM_inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \greenROM_inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \hlsm_inst|hlsm_helper_inst|pixel\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \hlsm_inst|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \hlsm_inst|sys_init\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \hlsm_inst|ROMadd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \hlsm_inst|lines_next\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \hlsm_inst|ROMadd_next\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_ar~0clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_global_AR~input_o\ : std_logic;
SIGNAL \hlsm_inst|hlsm_helper_inst|ALT_INV_state.st1~q\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
ww_global_AR <= global_AR;
matrix_clock <= ww_matrix_clock;
matrix_LE <= ww_matrix_LE;
matrix_OE <= ww_matrix_OE;
matrix_CBA <= ww_matrix_CBA;
matrix_R1 <= ww_matrix_R1;
matrix_V1 <= ww_matrix_V1;
matrix_B1 <= ww_matrix_B1;
matrix_R2 <= ww_matrix_R2;
matrix_V2 <= ww_matrix_V2;
matrix_B2 <= ww_matrix_B2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clock_50~input_o\);

\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\~GND~combout\ & \hlsm_inst|ROMadd\(7) & \hlsm_inst|ROMadd\(6) & \hlsm_inst|ROMadd\(5) & \hlsm_inst|ROMadd\(4) & \hlsm_inst|ROMadd\(3) & \hlsm_inst|ROMadd\(2) & 
\hlsm_inst|ROMadd\(1) & \hlsm_inst|ROMadd\(0));

\blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (vcc & \hlsm_inst|ROMadd\(7) & \hlsm_inst|ROMadd\(6) & \hlsm_inst|ROMadd\(5) & \hlsm_inst|ROMadd\(4) & \hlsm_inst|ROMadd\(3) & \hlsm_inst|ROMadd\(2) & 
\hlsm_inst|ROMadd\(1) & \hlsm_inst|ROMadd\(0));

\blueROM_inst|altsyncram_component|auto_generated|q_a\(2) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\blueROM_inst|altsyncram_component|auto_generated|q_a\(3) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);
\greenROM_inst|altsyncram_component|auto_generated|q_a\(0) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(2);
\greenROM_inst|altsyncram_component|auto_generated|q_a\(1) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(3);
\greenROM_inst|altsyncram_component|auto_generated|q_a\(2) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(4);
\greenROM_inst|altsyncram_component|auto_generated|q_a\(3) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(5);
\greenROM_inst|altsyncram_component|auto_generated|q_a\(4) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(6);
\greenROM_inst|altsyncram_component|auto_generated|q_a\(5) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(7);
\greenROM_inst|altsyncram_component|auto_generated|q_a\(6) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(8);
\greenROM_inst|altsyncram_component|auto_generated|q_a\(7) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(9);
\redROM_inst|altsyncram_component|auto_generated|q_a\(0) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(10);
\redROM_inst|altsyncram_component|auto_generated|q_a\(1) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(11);
\redROM_inst|altsyncram_component|auto_generated|q_a\(2) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(12);
\redROM_inst|altsyncram_component|auto_generated|q_a\(3) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(13);
\redROM_inst|altsyncram_component|auto_generated|q_a\(4) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(14);
\redROM_inst|altsyncram_component|auto_generated|q_a\(5) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(15);
\redROM_inst|altsyncram_component|auto_generated|q_a\(6) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(16);
\redROM_inst|altsyncram_component|auto_generated|q_a\(7) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(17);

\blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
);

\blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
);

\blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \hlsm_inst|ROMadd\(7) & \hlsm_inst|ROMadd\(6) & \hlsm_inst|ROMadd\(5) & \hlsm_inst|ROMadd\(4) & \hlsm_inst|ROMadd\(3) & \hlsm_inst|ROMadd\(2) & 
\hlsm_inst|ROMadd\(1) & \hlsm_inst|ROMadd\(0));

\blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (vcc & \hlsm_inst|ROMadd\(7) & \hlsm_inst|ROMadd\(6) & \hlsm_inst|ROMadd\(5) & \hlsm_inst|ROMadd\(4) & \hlsm_inst|ROMadd\(3) & \hlsm_inst|ROMadd\(2) & 
\hlsm_inst|ROMadd\(1) & \hlsm_inst|ROMadd\(0));

\blueROM_inst|altsyncram_component|auto_generated|q_a\(0) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\blueROM_inst|altsyncram_component|auto_generated|q_a\(1) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\blueROM_inst|altsyncram_component|auto_generated|q_a\(4) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\blueROM_inst|altsyncram_component|auto_generated|q_a\(5) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\blueROM_inst|altsyncram_component|auto_generated|q_a\(6) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\blueROM_inst|altsyncram_component|auto_generated|q_a\(7) <= \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\ar~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ar~0_combout\);

\hlsm_inst|hlsm_helper_inst|Selector11~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \hlsm_inst|hlsm_helper_inst|Selector11~0_combout\);

\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \hlsm_inst|hlsm_helper_inst|state.st2~q\);

\hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \hlsm_inst|hlsm_helper_inst|mx_LE~combout\);

\hlsm_inst|lines_next[0]~8clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \hlsm_inst|lines_next[0]~8_combout\);

\pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll_inst|altpll_component|auto_generated|wire_pll1_clk\(0));
\ALT_INV_ar~0clkctrl_outclk\ <= NOT \ar~0clkctrl_outclk\;
\ALT_INV_global_AR~input_o\ <= NOT \global_AR~input_o\;
\hlsm_inst|hlsm_helper_inst|ALT_INV_state.st1~q\ <= NOT \hlsm_inst|hlsm_helper_inst|state.st1~q\;

-- Location: IOOBUF_X46_Y0_N2
\matrix_clock~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hlsm_inst|hlsm_helper_inst|Selector11~0_combout\,
	devoe => ww_devoe,
	o => ww_matrix_clock);

-- Location: IOOBUF_X40_Y0_N16
\matrix_LE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hlsm_inst|hlsm_helper_inst|mx_LE~combout\,
	devoe => ww_devoe,
	o => ww_matrix_LE);

-- Location: IOOBUF_X36_Y0_N2
\matrix_OE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hlsm_inst|hlsm_helper_inst|ALT_INV_state.st1~q\,
	devoe => ww_devoe,
	o => ww_matrix_OE);

-- Location: IOOBUF_X40_Y0_N23
\matrix_CBA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hlsm_inst|lines\(0),
	devoe => ww_devoe,
	o => ww_matrix_CBA(0));

-- Location: IOOBUF_X46_Y0_N9
\matrix_CBA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hlsm_inst|lines\(1),
	devoe => ww_devoe,
	o => ww_matrix_CBA(1));

-- Location: IOOBUF_X51_Y0_N23
\matrix_CBA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hlsm_inst|lines\(2),
	devoe => ww_devoe,
	o => ww_matrix_CBA(2));

-- Location: IOOBUF_X56_Y54_N23
\matrix_R1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red1_pwm_inst|state.st1~q\,
	devoe => ww_devoe,
	o => ww_matrix_R1);

-- Location: IOOBUF_X51_Y54_N23
\matrix_V1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green1_pwm_inst|state.st1~q\,
	devoe => ww_devoe,
	o => ww_matrix_V1);

-- Location: IOOBUF_X54_Y54_N2
\matrix_B1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blue1_pwm_inst|state.st1~q\,
	devoe => ww_devoe,
	o => ww_matrix_B1);

-- Location: IOOBUF_X56_Y54_N30
\matrix_R2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \red2_pwm_inst|state.st1~q\,
	devoe => ww_devoe,
	o => ww_matrix_R2);

-- Location: IOOBUF_X51_Y54_N2
\matrix_V2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \green2_pwm_inst|state.st1~q\,
	devoe => ww_devoe,
	o => ww_matrix_V2);

-- Location: IOOBUF_X54_Y54_N23
\matrix_B2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blue2_pwm_inst|state.st1~q\,
	devoe => ww_devoe,
	o => ww_matrix_B2);

-- Location: IOIBUF_X51_Y54_N29
\global_AR~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_global_AR,
	o => \global_AR~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\clock_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: PLL_1
\pll_inst|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 75,
	c0_initial => 1,
	c0_low => 75,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 25,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \global_AR~input_o\,
	fbin => \pll_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \pll_inst|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \pll_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y49_N16
\hlsm_inst|hlsm_helper_inst|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector4~0_combout\ = (\hlsm_inst|hlsm_helper_inst|Selector5~0_combout\ & (\hlsm_inst|hlsm_helper_inst|cnt\(0) $ ((\hlsm_inst|hlsm_helper_inst|cnt\(1))))) # (!\hlsm_inst|hlsm_helper_inst|Selector5~0_combout\ & 
-- (\hlsm_inst|hlsm_helper_inst|Selector11~1_combout\ & (\hlsm_inst|hlsm_helper_inst|cnt\(0) $ (\hlsm_inst|hlsm_helper_inst|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|Selector5~0_combout\,
	datab => \hlsm_inst|hlsm_helper_inst|cnt\(0),
	datac => \hlsm_inst|hlsm_helper_inst|cnt\(1),
	datad => \hlsm_inst|hlsm_helper_inst|Selector11~1_combout\,
	combout => \hlsm_inst|hlsm_helper_inst|Selector4~0_combout\);

-- Location: LCCOMB_X44_Y50_N28
\pll_inst|altpll_component|auto_generated|pll_lock_sync~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pll_inst|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \pll_inst|altpll_component|auto_generated|pll_lock_sync~feeder_combout\);

-- Location: FF_X44_Y50_N29
\pll_inst|altpll_component|auto_generated|pll_lock_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_locked\,
	d => \pll_inst|altpll_component|auto_generated|pll_lock_sync~feeder_combout\,
	clrn => \ALT_INV_global_AR~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pll_inst|altpll_component|auto_generated|pll_lock_sync~q\);

-- Location: LCCOMB_X44_Y50_N2
\ar~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ar~0_combout\ = ((\global_AR~input_o\) # (!\pll_inst|altpll_component|auto_generated|wire_pll1_locked\)) # (!\pll_inst|altpll_component|auto_generated|pll_lock_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pll_inst|altpll_component|auto_generated|pll_lock_sync~q\,
	datac => \pll_inst|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \global_AR~input_o\,
	combout => \ar~0_combout\);

-- Location: CLKCTRL_G14
\ar~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ar~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ar~0clkctrl_outclk\);

-- Location: FF_X44_Y49_N17
\hlsm_inst|hlsm_helper_inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|hlsm_helper_inst|Selector4~0_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|hlsm_helper_inst|cnt\(1));

-- Location: LCCOMB_X44_Y49_N30
\hlsm_inst|hlsm_helper_inst|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector3~2_combout\ = (\hlsm_inst|hlsm_helper_inst|Selector5~0_combout\ & (\hlsm_inst|hlsm_helper_inst|cnt\(2) $ (((\hlsm_inst|hlsm_helper_inst|cnt\(1) & \hlsm_inst|hlsm_helper_inst|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|Selector5~0_combout\,
	datab => \hlsm_inst|hlsm_helper_inst|cnt\(1),
	datac => \hlsm_inst|hlsm_helper_inst|cnt\(2),
	datad => \hlsm_inst|hlsm_helper_inst|cnt\(0),
	combout => \hlsm_inst|hlsm_helper_inst|Selector3~2_combout\);

-- Location: FF_X44_Y49_N31
\hlsm_inst|hlsm_helper_inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|hlsm_helper_inst|Selector3~2_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|hlsm_helper_inst|cnt\(2));

-- Location: LCCOMB_X44_Y49_N24
\hlsm_inst|hlsm_helper_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Add0~0_combout\ = (\hlsm_inst|hlsm_helper_inst|cnt\(0) & \hlsm_inst|hlsm_helper_inst|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|cnt\(0),
	datab => \hlsm_inst|hlsm_helper_inst|cnt\(1),
	combout => \hlsm_inst|hlsm_helper_inst|Add0~0_combout\);

-- Location: LCCOMB_X44_Y49_N20
\hlsm_inst|hlsm_helper_inst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector2~0_combout\ = (\hlsm_inst|hlsm_helper_inst|Selector5~0_combout\ & (\hlsm_inst|hlsm_helper_inst|cnt\(3) $ (((\hlsm_inst|hlsm_helper_inst|Add0~0_combout\ & \hlsm_inst|hlsm_helper_inst|cnt\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|Add0~0_combout\,
	datab => \hlsm_inst|hlsm_helper_inst|Selector5~0_combout\,
	datac => \hlsm_inst|hlsm_helper_inst|cnt\(3),
	datad => \hlsm_inst|hlsm_helper_inst|cnt\(2),
	combout => \hlsm_inst|hlsm_helper_inst|Selector2~0_combout\);

-- Location: FF_X44_Y49_N21
\hlsm_inst|hlsm_helper_inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|hlsm_helper_inst|Selector2~0_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|hlsm_helper_inst|cnt\(3));

-- Location: LCCOMB_X44_Y49_N8
\hlsm_inst|hlsm_helper_inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|LessThan0~0_combout\ = (\hlsm_inst|hlsm_helper_inst|cnt\(2) & \hlsm_inst|hlsm_helper_inst|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hlsm_inst|hlsm_helper_inst|cnt\(2),
	datad => \hlsm_inst|hlsm_helper_inst|cnt\(3),
	combout => \hlsm_inst|hlsm_helper_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X44_Y49_N18
\hlsm_inst|hlsm_helper_inst|state.st2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|state.st2~0_combout\ = !\hlsm_inst|hlsm_helper_inst|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hlsm_inst|hlsm_helper_inst|Selector0~0_combout\,
	combout => \hlsm_inst|hlsm_helper_inst|state.st2~0_combout\);

-- Location: FF_X44_Y49_N19
\hlsm_inst|hlsm_helper_inst|state.st2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|hlsm_helper_inst|state.st2~0_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|hlsm_helper_inst|state.st2~q\);

-- Location: LCCOMB_X44_Y49_N0
\hlsm_inst|hlsm_helper_inst|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector5~0_combout\ = (\hlsm_inst|hlsm_helper_inst|state.st2~q\ & (((!\hlsm_inst|hlsm_helper_inst|cnt\(0) & !\hlsm_inst|hlsm_helper_inst|cnt\(1))) # (!\hlsm_inst|hlsm_helper_inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|cnt\(0),
	datab => \hlsm_inst|hlsm_helper_inst|cnt\(1),
	datac => \hlsm_inst|hlsm_helper_inst|LessThan0~0_combout\,
	datad => \hlsm_inst|hlsm_helper_inst|state.st2~q\,
	combout => \hlsm_inst|hlsm_helper_inst|Selector5~0_combout\);

-- Location: LCCOMB_X44_Y49_N28
\hlsm_inst|hlsm_helper_inst|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector5~1_combout\ = (!\hlsm_inst|hlsm_helper_inst|cnt\(0) & ((\hlsm_inst|hlsm_helper_inst|Selector5~0_combout\) # (\hlsm_inst|hlsm_helper_inst|Selector11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|Selector5~0_combout\,
	datac => \hlsm_inst|hlsm_helper_inst|cnt\(0),
	datad => \hlsm_inst|hlsm_helper_inst|Selector11~1_combout\,
	combout => \hlsm_inst|hlsm_helper_inst|Selector5~1_combout\);

-- Location: FF_X44_Y49_N29
\hlsm_inst|hlsm_helper_inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|hlsm_helper_inst|Selector5~1_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|hlsm_helper_inst|cnt\(0));

-- Location: LCCOMB_X46_Y49_N2
\hlsm_inst|hlsm_helper_inst|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Add1~0_combout\ = (\hlsm_inst|hlsm_helper_inst|pixel\(0) & (\hlsm_inst|hlsm_helper_inst|pixel_next_process~2_combout\ $ (VCC))) # (!\hlsm_inst|hlsm_helper_inst|pixel\(0) & 
-- (\hlsm_inst|hlsm_helper_inst|pixel_next_process~2_combout\ & VCC))
-- \hlsm_inst|hlsm_helper_inst|Add1~1\ = CARRY((\hlsm_inst|hlsm_helper_inst|pixel\(0) & \hlsm_inst|hlsm_helper_inst|pixel_next_process~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|pixel\(0),
	datab => \hlsm_inst|hlsm_helper_inst|pixel_next_process~2_combout\,
	datad => VCC,
	combout => \hlsm_inst|hlsm_helper_inst|Add1~0_combout\,
	cout => \hlsm_inst|hlsm_helper_inst|Add1~1\);

-- Location: LCCOMB_X46_Y49_N4
\hlsm_inst|hlsm_helper_inst|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Add1~2_combout\ = (\hlsm_inst|hlsm_helper_inst|pixel\(1) & (!\hlsm_inst|hlsm_helper_inst|Add1~1\)) # (!\hlsm_inst|hlsm_helper_inst|pixel\(1) & ((\hlsm_inst|hlsm_helper_inst|Add1~1\) # (GND)))
-- \hlsm_inst|hlsm_helper_inst|Add1~3\ = CARRY((!\hlsm_inst|hlsm_helper_inst|Add1~1\) # (!\hlsm_inst|hlsm_helper_inst|pixel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|hlsm_helper_inst|pixel\(1),
	datad => VCC,
	cin => \hlsm_inst|hlsm_helper_inst|Add1~1\,
	combout => \hlsm_inst|hlsm_helper_inst|Add1~2_combout\,
	cout => \hlsm_inst|hlsm_helper_inst|Add1~3\);

-- Location: LCCOMB_X44_Y49_N4
\hlsm_inst|hlsm_helper_inst|pixel_next_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|pixel_next_process~0_combout\ = (!\hlsm_inst|hlsm_helper_inst|cnt\(3) & (!\hlsm_inst|hlsm_helper_inst|cnt\(2) & \hlsm_inst|hlsm_helper_inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|hlsm_helper_inst|cnt\(3),
	datac => \hlsm_inst|hlsm_helper_inst|cnt\(2),
	datad => \hlsm_inst|hlsm_helper_inst|cnt\(1),
	combout => \hlsm_inst|hlsm_helper_inst|pixel_next_process~0_combout\);

-- Location: LCCOMB_X46_Y49_N18
\hlsm_inst|hlsm_helper_inst|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\ = (\hlsm_inst|hlsm_helper_inst|state.st2~q\ & ((\hlsm_inst|hlsm_helper_inst|cnt\(0)) # (!\hlsm_inst|hlsm_helper_inst|pixel_next_process~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|hlsm_helper_inst|pixel_next_process~0_combout\,
	datac => \hlsm_inst|hlsm_helper_inst|cnt\(0),
	datad => \hlsm_inst|hlsm_helper_inst|state.st2~q\,
	combout => \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\);

-- Location: LCCOMB_X46_Y49_N30
\hlsm_inst|hlsm_helper_inst|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector9~0_combout\ = (\hlsm_inst|hlsm_helper_inst|state.st1~q\ & ((\hlsm_inst|hlsm_helper_inst|Add1~2_combout\) # ((\hlsm_inst|hlsm_helper_inst|pixel\(1) & \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\)))) # 
-- (!\hlsm_inst|hlsm_helper_inst|state.st1~q\ & (((\hlsm_inst|hlsm_helper_inst|pixel\(1) & \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|state.st1~q\,
	datab => \hlsm_inst|hlsm_helper_inst|Add1~2_combout\,
	datac => \hlsm_inst|hlsm_helper_inst|pixel\(1),
	datad => \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\,
	combout => \hlsm_inst|hlsm_helper_inst|Selector9~0_combout\);

-- Location: FF_X46_Y49_N31
\hlsm_inst|hlsm_helper_inst|pixel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|hlsm_helper_inst|Selector9~0_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|hlsm_helper_inst|pixel\(1));

-- Location: LCCOMB_X46_Y49_N6
\hlsm_inst|hlsm_helper_inst|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Add1~4_combout\ = (\hlsm_inst|hlsm_helper_inst|pixel\(2) & (\hlsm_inst|hlsm_helper_inst|Add1~3\ $ (GND))) # (!\hlsm_inst|hlsm_helper_inst|pixel\(2) & (!\hlsm_inst|hlsm_helper_inst|Add1~3\ & VCC))
-- \hlsm_inst|hlsm_helper_inst|Add1~5\ = CARRY((\hlsm_inst|hlsm_helper_inst|pixel\(2) & !\hlsm_inst|hlsm_helper_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|pixel\(2),
	datad => VCC,
	cin => \hlsm_inst|hlsm_helper_inst|Add1~3\,
	combout => \hlsm_inst|hlsm_helper_inst|Add1~4_combout\,
	cout => \hlsm_inst|hlsm_helper_inst|Add1~5\);

-- Location: LCCOMB_X46_Y49_N24
\hlsm_inst|hlsm_helper_inst|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector8~0_combout\ = (\hlsm_inst|hlsm_helper_inst|Add1~4_combout\ & ((\hlsm_inst|hlsm_helper_inst|state.st1~q\) # ((\hlsm_inst|hlsm_helper_inst|pixel\(2) & \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\)))) # 
-- (!\hlsm_inst|hlsm_helper_inst|Add1~4_combout\ & (((\hlsm_inst|hlsm_helper_inst|pixel\(2) & \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|Add1~4_combout\,
	datab => \hlsm_inst|hlsm_helper_inst|state.st1~q\,
	datac => \hlsm_inst|hlsm_helper_inst|pixel\(2),
	datad => \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\,
	combout => \hlsm_inst|hlsm_helper_inst|Selector8~0_combout\);

-- Location: FF_X46_Y49_N25
\hlsm_inst|hlsm_helper_inst|pixel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|hlsm_helper_inst|Selector8~0_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|hlsm_helper_inst|pixel\(2));

-- Location: LCCOMB_X46_Y49_N8
\hlsm_inst|hlsm_helper_inst|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Add1~6_combout\ = (\hlsm_inst|hlsm_helper_inst|pixel\(3) & (!\hlsm_inst|hlsm_helper_inst|Add1~5\)) # (!\hlsm_inst|hlsm_helper_inst|pixel\(3) & ((\hlsm_inst|hlsm_helper_inst|Add1~5\) # (GND)))
-- \hlsm_inst|hlsm_helper_inst|Add1~7\ = CARRY((!\hlsm_inst|hlsm_helper_inst|Add1~5\) # (!\hlsm_inst|hlsm_helper_inst|pixel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|pixel\(3),
	datad => VCC,
	cin => \hlsm_inst|hlsm_helper_inst|Add1~5\,
	combout => \hlsm_inst|hlsm_helper_inst|Add1~6_combout\,
	cout => \hlsm_inst|hlsm_helper_inst|Add1~7\);

-- Location: LCCOMB_X46_Y49_N22
\hlsm_inst|hlsm_helper_inst|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector7~0_combout\ = (\hlsm_inst|hlsm_helper_inst|state.st1~q\ & ((\hlsm_inst|hlsm_helper_inst|Add1~6_combout\) # ((\hlsm_inst|hlsm_helper_inst|pixel\(3) & \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\)))) # 
-- (!\hlsm_inst|hlsm_helper_inst|state.st1~q\ & (((\hlsm_inst|hlsm_helper_inst|pixel\(3) & \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|state.st1~q\,
	datab => \hlsm_inst|hlsm_helper_inst|Add1~6_combout\,
	datac => \hlsm_inst|hlsm_helper_inst|pixel\(3),
	datad => \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\,
	combout => \hlsm_inst|hlsm_helper_inst|Selector7~0_combout\);

-- Location: FF_X46_Y49_N23
\hlsm_inst|hlsm_helper_inst|pixel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|hlsm_helper_inst|Selector7~0_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|hlsm_helper_inst|pixel\(3));

-- Location: LCCOMB_X46_Y49_N10
\hlsm_inst|hlsm_helper_inst|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Add1~8_combout\ = \hlsm_inst|hlsm_helper_inst|Add1~7\ $ (!\hlsm_inst|hlsm_helper_inst|pixel\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \hlsm_inst|hlsm_helper_inst|pixel\(4),
	cin => \hlsm_inst|hlsm_helper_inst|Add1~7\,
	combout => \hlsm_inst|hlsm_helper_inst|Add1~8_combout\);

-- Location: LCCOMB_X46_Y49_N28
\hlsm_inst|hlsm_helper_inst|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector6~0_combout\ = (\hlsm_inst|hlsm_helper_inst|Add1~8_combout\ & ((\hlsm_inst|hlsm_helper_inst|state.st1~q\) # ((\hlsm_inst|hlsm_helper_inst|pixel\(4) & \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\)))) # 
-- (!\hlsm_inst|hlsm_helper_inst|Add1~8_combout\ & (((\hlsm_inst|hlsm_helper_inst|pixel\(4) & \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|Add1~8_combout\,
	datab => \hlsm_inst|hlsm_helper_inst|state.st1~q\,
	datac => \hlsm_inst|hlsm_helper_inst|pixel\(4),
	datad => \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\,
	combout => \hlsm_inst|hlsm_helper_inst|Selector6~0_combout\);

-- Location: FF_X46_Y49_N29
\hlsm_inst|hlsm_helper_inst|pixel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|hlsm_helper_inst|Selector6~0_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|hlsm_helper_inst|pixel\(4));

-- Location: LCCOMB_X46_Y49_N26
\hlsm_inst|hlsm_helper_inst|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|LessThan2~0_combout\ = (\hlsm_inst|hlsm_helper_inst|pixel\(3) & (\hlsm_inst|hlsm_helper_inst|pixel\(4) & (\hlsm_inst|hlsm_helper_inst|pixel\(1) & \hlsm_inst|hlsm_helper_inst|pixel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|pixel\(3),
	datab => \hlsm_inst|hlsm_helper_inst|pixel\(4),
	datac => \hlsm_inst|hlsm_helper_inst|pixel\(1),
	datad => \hlsm_inst|hlsm_helper_inst|pixel\(2),
	combout => \hlsm_inst|hlsm_helper_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X44_Y49_N26
\hlsm_inst|hlsm_helper_inst|pixel_next_process~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|pixel_next_process~1_combout\ = (!\hlsm_inst|hlsm_helper_inst|cnt\(3) & ((!\hlsm_inst|hlsm_helper_inst|pixel\(0)) # (!\hlsm_inst|hlsm_helper_inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|hlsm_helper_inst|cnt\(3),
	datac => \hlsm_inst|hlsm_helper_inst|LessThan2~0_combout\,
	datad => \hlsm_inst|hlsm_helper_inst|pixel\(0),
	combout => \hlsm_inst|hlsm_helper_inst|pixel_next_process~1_combout\);

-- Location: LCCOMB_X44_Y49_N14
\hlsm_inst|hlsm_helper_inst|pixel_next_process~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|pixel_next_process~2_combout\ = (\hlsm_inst|hlsm_helper_inst|cnt\(0) & (\hlsm_inst|hlsm_helper_inst|cnt\(1) & (!\hlsm_inst|hlsm_helper_inst|cnt\(2) & \hlsm_inst|hlsm_helper_inst|pixel_next_process~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|cnt\(0),
	datab => \hlsm_inst|hlsm_helper_inst|cnt\(1),
	datac => \hlsm_inst|hlsm_helper_inst|cnt\(2),
	datad => \hlsm_inst|hlsm_helper_inst|pixel_next_process~1_combout\,
	combout => \hlsm_inst|hlsm_helper_inst|pixel_next_process~2_combout\);

-- Location: LCCOMB_X46_Y49_N20
\hlsm_inst|hlsm_helper_inst|Selector10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector10~1_combout\ = (\hlsm_inst|hlsm_helper_inst|state.st1~q\ & ((\hlsm_inst|hlsm_helper_inst|Add1~0_combout\) # ((\hlsm_inst|hlsm_helper_inst|pixel\(0) & \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\)))) # 
-- (!\hlsm_inst|hlsm_helper_inst|state.st1~q\ & (((\hlsm_inst|hlsm_helper_inst|pixel\(0) & \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|state.st1~q\,
	datab => \hlsm_inst|hlsm_helper_inst|Add1~0_combout\,
	datac => \hlsm_inst|hlsm_helper_inst|pixel\(0),
	datad => \hlsm_inst|hlsm_helper_inst|Selector10~0_combout\,
	combout => \hlsm_inst|hlsm_helper_inst|Selector10~1_combout\);

-- Location: FF_X46_Y49_N21
\hlsm_inst|hlsm_helper_inst|pixel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|hlsm_helper_inst|Selector10~1_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|hlsm_helper_inst|pixel\(0));

-- Location: LCCOMB_X45_Y49_N2
\hlsm_inst|hlsm_helper_inst|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|LessThan2~1_combout\ = (\hlsm_inst|hlsm_helper_inst|pixel\(0) & \hlsm_inst|hlsm_helper_inst|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hlsm_inst|hlsm_helper_inst|pixel\(0),
	datad => \hlsm_inst|hlsm_helper_inst|LessThan2~0_combout\,
	combout => \hlsm_inst|hlsm_helper_inst|LessThan2~1_combout\);

-- Location: LCCOMB_X44_Y49_N22
\hlsm_inst|hlsm_helper_inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector0~0_combout\ = (!\hlsm_inst|hlsm_helper_inst|Selector5~0_combout\ & (((!\hlsm_inst|hlsm_helper_inst|Add0~0_combout\) # (!\hlsm_inst|hlsm_helper_inst|LessThan2~1_combout\)) # 
-- (!\hlsm_inst|hlsm_helper_inst|Selector11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|Selector11~1_combout\,
	datab => \hlsm_inst|hlsm_helper_inst|LessThan2~1_combout\,
	datac => \hlsm_inst|hlsm_helper_inst|Add0~0_combout\,
	datad => \hlsm_inst|hlsm_helper_inst|Selector5~0_combout\,
	combout => \hlsm_inst|hlsm_helper_inst|Selector0~0_combout\);

-- Location: FF_X44_Y49_N25
\hlsm_inst|hlsm_helper_inst|state.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \hlsm_inst|hlsm_helper_inst|Selector0~0_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|hlsm_helper_inst|state.st1~q\);

-- Location: LCCOMB_X44_Y49_N10
\hlsm_inst|hlsm_helper_inst|Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector11~1_combout\ = (\hlsm_inst|hlsm_helper_inst|state.st1~q\ & (!\hlsm_inst|hlsm_helper_inst|cnt\(2) & !\hlsm_inst|hlsm_helper_inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|hlsm_helper_inst|state.st1~q\,
	datac => \hlsm_inst|hlsm_helper_inst|cnt\(2),
	datad => \hlsm_inst|hlsm_helper_inst|cnt\(3),
	combout => \hlsm_inst|hlsm_helper_inst|Selector11~1_combout\);

-- Location: LCCOMB_X44_Y49_N12
\hlsm_inst|hlsm_helper_inst|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|Selector11~0_combout\ = LCELL((\hlsm_inst|hlsm_helper_inst|state.st2~q\ & (((!\hlsm_inst|hlsm_helper_inst|cnt\(1)) # (!\hlsm_inst|hlsm_helper_inst|LessThan0~0_combout\)))) # (!\hlsm_inst|hlsm_helper_inst|state.st2~q\ & 
-- (\hlsm_inst|hlsm_helper_inst|Selector11~1_combout\ & ((!\hlsm_inst|hlsm_helper_inst|cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|Selector11~1_combout\,
	datab => \hlsm_inst|hlsm_helper_inst|state.st2~q\,
	datac => \hlsm_inst|hlsm_helper_inst|LessThan0~0_combout\,
	datad => \hlsm_inst|hlsm_helper_inst|cnt\(1),
	combout => \hlsm_inst|hlsm_helper_inst|Selector11~0_combout\);

-- Location: LCCOMB_X44_Y49_N2
\hlsm_inst|hlsm_helper_inst|mx_LE\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|hlsm_helper_inst|mx_LE~combout\ = LCELL((\hlsm_inst|hlsm_helper_inst|state.st2~q\ & (\hlsm_inst|hlsm_helper_inst|cnt\(2) & !\hlsm_inst|hlsm_helper_inst|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|hlsm_helper_inst|state.st2~q\,
	datac => \hlsm_inst|hlsm_helper_inst|cnt\(2),
	datad => \hlsm_inst|hlsm_helper_inst|cnt\(3),
	combout => \hlsm_inst|hlsm_helper_inst|mx_LE~combout\);

-- Location: LCCOMB_X45_Y49_N8
\hlsm_inst|cnt[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|cnt[0]~8_combout\ = \hlsm_inst|cnt\(0) $ (VCC)
-- \hlsm_inst|cnt[0]~9\ = CARRY(\hlsm_inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|cnt\(0),
	datad => VCC,
	combout => \hlsm_inst|cnt[0]~8_combout\,
	cout => \hlsm_inst|cnt[0]~9\);

-- Location: LCCOMB_X45_Y49_N28
\hlsm_inst|lines_next_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|lines_next_process~0_combout\ = (\hlsm_inst|cnt\(2) & (\hlsm_inst|cnt\(3) & (\hlsm_inst|cnt\(0) & \hlsm_inst|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|cnt\(2),
	datab => \hlsm_inst|cnt\(3),
	datac => \hlsm_inst|cnt\(0),
	datad => \hlsm_inst|cnt\(1),
	combout => \hlsm_inst|lines_next_process~0_combout\);

-- Location: LCCOMB_X45_Y49_N4
\hlsm_inst|LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|LessThan2~0_combout\ = ((!\hlsm_inst|cnt\(5)) # (!\hlsm_inst|cnt\(6))) # (!\hlsm_inst|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|cnt\(4),
	datac => \hlsm_inst|cnt\(6),
	datad => \hlsm_inst|cnt\(5),
	combout => \hlsm_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X45_Y49_N6
\hlsm_inst|LessThan2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|LessThan2~1_combout\ = (\hlsm_inst|cnt\(7) & (\hlsm_inst|lines_next_process~0_combout\ & !\hlsm_inst|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|cnt\(7),
	datac => \hlsm_inst|lines_next_process~0_combout\,
	datad => \hlsm_inst|LessThan2~0_combout\,
	combout => \hlsm_inst|LessThan2~1_combout\);

-- Location: LCCOMB_X45_Y50_N24
\hlsm_inst|sys_init[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|sys_init[1]~5_combout\ = \hlsm_inst|sys_init\(1) $ (((!\ar~0_combout\ & \hlsm_inst|sys_init\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ar~0_combout\,
	datab => \hlsm_inst|sys_init\(0),
	datac => \hlsm_inst|sys_init\(1),
	combout => \hlsm_inst|sys_init[1]~5_combout\);

-- Location: FF_X45_Y50_N25
\hlsm_inst|sys_init[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|sys_init[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|sys_init\(1));

-- Location: LCCOMB_X45_Y50_N6
\hlsm_inst|sys_init[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|sys_init[0]~6_combout\ = (\ar~0_combout\ & (((\hlsm_inst|sys_init\(0))))) # (!\ar~0_combout\ & (!\hlsm_inst|sys_init\(0) & ((\hlsm_inst|sys_init\(1)) # (!\hlsm_inst|sys_init\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ar~0_combout\,
	datab => \hlsm_inst|sys_init\(1),
	datac => \hlsm_inst|sys_init\(0),
	datad => \hlsm_inst|sys_init\(2),
	combout => \hlsm_inst|sys_init[0]~6_combout\);

-- Location: FF_X45_Y50_N7
\hlsm_inst|sys_init[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|sys_init[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|sys_init\(0));

-- Location: LCCOMB_X45_Y50_N10
\hlsm_inst|sys_init[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|sys_init[2]~4_combout\ = \hlsm_inst|sys_init\(2) $ (((!\ar~0_combout\ & (\hlsm_inst|sys_init\(0) & \hlsm_inst|sys_init\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ar~0_combout\,
	datab => \hlsm_inst|sys_init\(0),
	datac => \hlsm_inst|sys_init\(2),
	datad => \hlsm_inst|sys_init\(1),
	combout => \hlsm_inst|sys_init[2]~4_combout\);

-- Location: FF_X45_Y50_N11
\hlsm_inst|sys_init[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|sys_init[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|sys_init\(2));

-- Location: LCCOMB_X46_Y50_N16
\hlsm_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Equal0~0_combout\ = (\hlsm_inst|sys_init\(2) & (!\hlsm_inst|sys_init\(0) & !\hlsm_inst|sys_init\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|sys_init\(2),
	datab => \hlsm_inst|sys_init\(0),
	datad => \hlsm_inst|sys_init\(1),
	combout => \hlsm_inst|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y49_N6
\hlsm_inst|cnt[7]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|cnt[7]~18_combout\ = (\hlsm_inst|hlsm_helper_inst|pixel\(0) & (\hlsm_inst|Equal0~0_combout\ & (\hlsm_inst|hlsm_helper_inst|LessThan2~0_combout\ & !\hlsm_inst|hlsm_helper_inst|state.st2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|hlsm_helper_inst|pixel\(0),
	datab => \hlsm_inst|Equal0~0_combout\,
	datac => \hlsm_inst|hlsm_helper_inst|LessThan2~0_combout\,
	datad => \hlsm_inst|hlsm_helper_inst|state.st2~q\,
	combout => \hlsm_inst|cnt[7]~18_combout\);

-- Location: FF_X45_Y49_N9
\hlsm_inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|cnt[0]~8_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	sclr => \hlsm_inst|LessThan2~1_combout\,
	ena => \hlsm_inst|cnt[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|cnt\(0));

-- Location: LCCOMB_X45_Y49_N10
\hlsm_inst|cnt[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|cnt[1]~10_combout\ = (\hlsm_inst|cnt\(1) & (!\hlsm_inst|cnt[0]~9\)) # (!\hlsm_inst|cnt\(1) & ((\hlsm_inst|cnt[0]~9\) # (GND)))
-- \hlsm_inst|cnt[1]~11\ = CARRY((!\hlsm_inst|cnt[0]~9\) # (!\hlsm_inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|cnt\(1),
	datad => VCC,
	cin => \hlsm_inst|cnt[0]~9\,
	combout => \hlsm_inst|cnt[1]~10_combout\,
	cout => \hlsm_inst|cnt[1]~11\);

-- Location: FF_X45_Y49_N11
\hlsm_inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|cnt[1]~10_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	sclr => \hlsm_inst|LessThan2~1_combout\,
	ena => \hlsm_inst|cnt[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|cnt\(1));

-- Location: LCCOMB_X45_Y49_N12
\hlsm_inst|cnt[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|cnt[2]~12_combout\ = (\hlsm_inst|cnt\(2) & (\hlsm_inst|cnt[1]~11\ $ (GND))) # (!\hlsm_inst|cnt\(2) & (!\hlsm_inst|cnt[1]~11\ & VCC))
-- \hlsm_inst|cnt[2]~13\ = CARRY((\hlsm_inst|cnt\(2) & !\hlsm_inst|cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|cnt\(2),
	datad => VCC,
	cin => \hlsm_inst|cnt[1]~11\,
	combout => \hlsm_inst|cnt[2]~12_combout\,
	cout => \hlsm_inst|cnt[2]~13\);

-- Location: FF_X45_Y49_N13
\hlsm_inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|cnt[2]~12_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	sclr => \hlsm_inst|LessThan2~1_combout\,
	ena => \hlsm_inst|cnt[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|cnt\(2));

-- Location: LCCOMB_X45_Y49_N14
\hlsm_inst|cnt[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|cnt[3]~14_combout\ = (\hlsm_inst|cnt\(3) & (!\hlsm_inst|cnt[2]~13\)) # (!\hlsm_inst|cnt\(3) & ((\hlsm_inst|cnt[2]~13\) # (GND)))
-- \hlsm_inst|cnt[3]~15\ = CARRY((!\hlsm_inst|cnt[2]~13\) # (!\hlsm_inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|cnt\(3),
	datad => VCC,
	cin => \hlsm_inst|cnt[2]~13\,
	combout => \hlsm_inst|cnt[3]~14_combout\,
	cout => \hlsm_inst|cnt[3]~15\);

-- Location: FF_X45_Y49_N15
\hlsm_inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|cnt[3]~14_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	sclr => \hlsm_inst|LessThan2~1_combout\,
	ena => \hlsm_inst|cnt[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|cnt\(3));

-- Location: LCCOMB_X45_Y49_N16
\hlsm_inst|cnt[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|cnt[4]~16_combout\ = (\hlsm_inst|cnt\(4) & (\hlsm_inst|cnt[3]~15\ $ (GND))) # (!\hlsm_inst|cnt\(4) & (!\hlsm_inst|cnt[3]~15\ & VCC))
-- \hlsm_inst|cnt[4]~17\ = CARRY((\hlsm_inst|cnt\(4) & !\hlsm_inst|cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|cnt\(4),
	datad => VCC,
	cin => \hlsm_inst|cnt[3]~15\,
	combout => \hlsm_inst|cnt[4]~16_combout\,
	cout => \hlsm_inst|cnt[4]~17\);

-- Location: FF_X45_Y49_N17
\hlsm_inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|cnt[4]~16_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	sclr => \hlsm_inst|LessThan2~1_combout\,
	ena => \hlsm_inst|cnt[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|cnt\(4));

-- Location: LCCOMB_X45_Y49_N18
\hlsm_inst|cnt[5]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|cnt[5]~19_combout\ = (\hlsm_inst|cnt\(5) & (!\hlsm_inst|cnt[4]~17\)) # (!\hlsm_inst|cnt\(5) & ((\hlsm_inst|cnt[4]~17\) # (GND)))
-- \hlsm_inst|cnt[5]~20\ = CARRY((!\hlsm_inst|cnt[4]~17\) # (!\hlsm_inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|cnt\(5),
	datad => VCC,
	cin => \hlsm_inst|cnt[4]~17\,
	combout => \hlsm_inst|cnt[5]~19_combout\,
	cout => \hlsm_inst|cnt[5]~20\);

-- Location: FF_X45_Y49_N19
\hlsm_inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|cnt[5]~19_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	sclr => \hlsm_inst|LessThan2~1_combout\,
	ena => \hlsm_inst|cnt[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|cnt\(5));

-- Location: LCCOMB_X45_Y49_N20
\hlsm_inst|cnt[6]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|cnt[6]~21_combout\ = (\hlsm_inst|cnt\(6) & (\hlsm_inst|cnt[5]~20\ $ (GND))) # (!\hlsm_inst|cnt\(6) & (!\hlsm_inst|cnt[5]~20\ & VCC))
-- \hlsm_inst|cnt[6]~22\ = CARRY((\hlsm_inst|cnt\(6) & !\hlsm_inst|cnt[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|cnt\(6),
	datad => VCC,
	cin => \hlsm_inst|cnt[5]~20\,
	combout => \hlsm_inst|cnt[6]~21_combout\,
	cout => \hlsm_inst|cnt[6]~22\);

-- Location: FF_X45_Y49_N21
\hlsm_inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|cnt[6]~21_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	sclr => \hlsm_inst|LessThan2~1_combout\,
	ena => \hlsm_inst|cnt[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|cnt\(6));

-- Location: LCCOMB_X45_Y49_N22
\hlsm_inst|cnt[7]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|cnt[7]~23_combout\ = \hlsm_inst|cnt\(7) $ (\hlsm_inst|cnt[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|cnt\(7),
	cin => \hlsm_inst|cnt[6]~22\,
	combout => \hlsm_inst|cnt[7]~23_combout\);

-- Location: FF_X45_Y49_N23
\hlsm_inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|cnt[7]~23_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	sclr => \hlsm_inst|LessThan2~1_combout\,
	ena => \hlsm_inst|cnt[7]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|cnt\(7));

-- Location: LCCOMB_X45_Y50_N28
\hlsm_inst|lines_next[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|lines_next[0]~4_combout\ = \hlsm_inst|lines\(0) $ (((\hlsm_inst|cnt\(7) & (!\hlsm_inst|LessThan2~0_combout\ & \hlsm_inst|lines_next_process~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|cnt\(7),
	datab => \hlsm_inst|LessThan2~0_combout\,
	datac => \hlsm_inst|lines\(0),
	datad => \hlsm_inst|lines_next_process~0_combout\,
	combout => \hlsm_inst|lines_next[0]~4_combout\);

-- Location: LCCOMB_X45_Y49_N0
\hlsm_inst|lines_next[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|lines_next[0]~8_combout\ = ((\hlsm_inst|hlsm_helper_inst|LessThan2~1_combout\) # ((\hlsm_inst|LessThan2~0_combout\) # (!\hlsm_inst|lines_next_process~0_combout\))) # (!\hlsm_inst|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|cnt\(7),
	datab => \hlsm_inst|hlsm_helper_inst|LessThan2~1_combout\,
	datac => \hlsm_inst|LessThan2~0_combout\,
	datad => \hlsm_inst|lines_next_process~0_combout\,
	combout => \hlsm_inst|lines_next[0]~8_combout\);

-- Location: CLKCTRL_G11
\hlsm_inst|lines_next[0]~8clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \hlsm_inst|lines_next[0]~8clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \hlsm_inst|lines_next[0]~8clkctrl_outclk\);

-- Location: LCCOMB_X45_Y50_N16
\hlsm_inst|lines_next[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|lines_next\(0) = (GLOBAL(\hlsm_inst|lines_next[0]~8clkctrl_outclk\) & ((\hlsm_inst|lines_next[0]~4_combout\))) # (!GLOBAL(\hlsm_inst|lines_next[0]~8clkctrl_outclk\) & (\hlsm_inst|lines_next\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|lines_next\(0),
	datac => \hlsm_inst|lines_next[0]~4_combout\,
	datad => \hlsm_inst|lines_next[0]~8clkctrl_outclk\,
	combout => \hlsm_inst|lines_next\(0));

-- Location: FF_X45_Y50_N17
\hlsm_inst|lines[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|lines_next\(0),
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	ena => \hlsm_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|lines\(0));

-- Location: LCCOMB_X45_Y50_N26
\hlsm_inst|lines_next[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|lines_next[1]~5_combout\ = \hlsm_inst|lines\(1) $ (((\hlsm_inst|LessThan2~1_combout\ & \hlsm_inst|lines\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|lines\(1),
	datab => \hlsm_inst|LessThan2~1_combout\,
	datad => \hlsm_inst|lines\(0),
	combout => \hlsm_inst|lines_next[1]~5_combout\);

-- Location: LCCOMB_X45_Y50_N22
\hlsm_inst|lines_next[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|lines_next\(1) = (GLOBAL(\hlsm_inst|lines_next[0]~8clkctrl_outclk\) & ((\hlsm_inst|lines_next[1]~5_combout\))) # (!GLOBAL(\hlsm_inst|lines_next[0]~8clkctrl_outclk\) & (\hlsm_inst|lines_next\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|lines_next\(1),
	datac => \hlsm_inst|lines_next[1]~5_combout\,
	datad => \hlsm_inst|lines_next[0]~8clkctrl_outclk\,
	combout => \hlsm_inst|lines_next\(1));

-- Location: FF_X45_Y50_N23
\hlsm_inst|lines[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|lines_next\(1),
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	ena => \hlsm_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|lines\(1));

-- Location: LCCOMB_X45_Y50_N0
\hlsm_inst|lines_next[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|lines_next[2]~6_combout\ = ((!\hlsm_inst|lines\(0)) # (!\hlsm_inst|lines\(1))) # (!\hlsm_inst|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|cnt\(7),
	datac => \hlsm_inst|lines\(1),
	datad => \hlsm_inst|lines\(0),
	combout => \hlsm_inst|lines_next[2]~6_combout\);

-- Location: LCCOMB_X45_Y50_N30
\hlsm_inst|lines_next[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|lines_next[2]~7_combout\ = \hlsm_inst|lines\(2) $ (((!\hlsm_inst|LessThan2~0_combout\ & (!\hlsm_inst|lines_next[2]~6_combout\ & \hlsm_inst|lines_next_process~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|LessThan2~0_combout\,
	datab => \hlsm_inst|lines_next[2]~6_combout\,
	datac => \hlsm_inst|lines_next_process~0_combout\,
	datad => \hlsm_inst|lines\(2),
	combout => \hlsm_inst|lines_next[2]~7_combout\);

-- Location: LCCOMB_X45_Y50_N12
\hlsm_inst|lines_next[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|lines_next\(2) = (GLOBAL(\hlsm_inst|lines_next[0]~8clkctrl_outclk\) & ((\hlsm_inst|lines_next[2]~7_combout\))) # (!GLOBAL(\hlsm_inst|lines_next[0]~8clkctrl_outclk\) & (\hlsm_inst|lines_next\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|lines_next\(2),
	datac => \hlsm_inst|lines_next[2]~7_combout\,
	datad => \hlsm_inst|lines_next[0]~8clkctrl_outclk\,
	combout => \hlsm_inst|lines_next\(2));

-- Location: FF_X45_Y50_N13
\hlsm_inst|lines[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|lines_next\(2),
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	ena => \hlsm_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|lines\(2));

-- Location: CLKCTRL_G12
\hlsm_inst|hlsm_helper_inst|Selector11~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \hlsm_inst|hlsm_helper_inst|Selector11~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \hlsm_inst|hlsm_helper_inst|Selector11~0clkctrl_outclk\);

-- Location: LCCOMB_X49_Y53_N16
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X45_Y48_N6
\hlsm_inst|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~0_combout\ = \hlsm_inst|ROMadd\(0) $ (VCC)
-- \hlsm_inst|Add4~1\ = CARRY(\hlsm_inst|ROMadd\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|ROMadd\(0),
	datad => VCC,
	combout => \hlsm_inst|Add4~0_combout\,
	cout => \hlsm_inst|Add4~1\);

-- Location: LCCOMB_X46_Y48_N12
\hlsm_inst|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add3~0_combout\ = \hlsm_inst|ROMadd\(0) $ (VCC)
-- \hlsm_inst|Add3~1\ = CARRY(\hlsm_inst|ROMadd\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd\(0),
	datad => VCC,
	combout => \hlsm_inst|Add3~0_combout\,
	cout => \hlsm_inst|Add3~1\);

-- Location: LCCOMB_X45_Y48_N8
\hlsm_inst|Add4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~3_combout\ = (\hlsm_inst|ROMadd\(1) & (!\hlsm_inst|Add4~1\)) # (!\hlsm_inst|ROMadd\(1) & ((\hlsm_inst|Add4~1\) # (GND)))
-- \hlsm_inst|Add4~4\ = CARRY((!\hlsm_inst|Add4~1\) # (!\hlsm_inst|ROMadd\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|ROMadd\(1),
	datad => VCC,
	cin => \hlsm_inst|Add4~1\,
	combout => \hlsm_inst|Add4~3_combout\,
	cout => \hlsm_inst|Add4~4\);

-- Location: LCCOMB_X46_Y48_N14
\hlsm_inst|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add3~2_combout\ = (\hlsm_inst|ROMadd\(1) & (!\hlsm_inst|Add3~1\)) # (!\hlsm_inst|ROMadd\(1) & ((\hlsm_inst|Add3~1\) # (GND)))
-- \hlsm_inst|Add3~3\ = CARRY((!\hlsm_inst|Add3~1\) # (!\hlsm_inst|ROMadd\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|ROMadd\(1),
	datad => VCC,
	cin => \hlsm_inst|Add3~1\,
	combout => \hlsm_inst|Add3~2_combout\,
	cout => \hlsm_inst|Add3~3\);

-- Location: LCCOMB_X46_Y48_N0
\hlsm_inst|Add4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~5_combout\ = (\hlsm_inst|ROMadd_next[0]~0_combout\ & (((\hlsm_inst|Add4~3_combout\)))) # (!\hlsm_inst|ROMadd_next[0]~0_combout\ & (!\hlsm_inst|LessThan2~1_combout\ & ((\hlsm_inst|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd_next[0]~0_combout\,
	datab => \hlsm_inst|LessThan2~1_combout\,
	datac => \hlsm_inst|Add4~3_combout\,
	datad => \hlsm_inst|Add3~2_combout\,
	combout => \hlsm_inst|Add4~5_combout\);

-- Location: CLKCTRL_G13
\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y48_N8
\hlsm_inst|ROMadd_next[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|ROMadd_next\(1) = (GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & ((\hlsm_inst|ROMadd_next\(1)))) # (!GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & (\hlsm_inst|Add4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|Add4~5_combout\,
	datac => \hlsm_inst|ROMadd_next\(1),
	datad => \hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\,
	combout => \hlsm_inst|ROMadd_next\(1));

-- Location: FF_X46_Y48_N9
\hlsm_inst|ROMadd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|ROMadd_next\(1),
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	ena => \hlsm_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|ROMadd\(1));

-- Location: LCCOMB_X46_Y48_N16
\hlsm_inst|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add3~4_combout\ = (\hlsm_inst|ROMadd\(2) & (\hlsm_inst|Add3~3\ $ (GND))) # (!\hlsm_inst|ROMadd\(2) & (!\hlsm_inst|Add3~3\ & VCC))
-- \hlsm_inst|Add3~5\ = CARRY((\hlsm_inst|ROMadd\(2) & !\hlsm_inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd\(2),
	datad => VCC,
	cin => \hlsm_inst|Add3~3\,
	combout => \hlsm_inst|Add3~4_combout\,
	cout => \hlsm_inst|Add3~5\);

-- Location: LCCOMB_X45_Y48_N10
\hlsm_inst|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~6_combout\ = (\hlsm_inst|ROMadd\(2) & (\hlsm_inst|Add4~4\ $ (GND))) # (!\hlsm_inst|ROMadd\(2) & (!\hlsm_inst|Add4~4\ & VCC))
-- \hlsm_inst|Add4~7\ = CARRY((\hlsm_inst|ROMadd\(2) & !\hlsm_inst|Add4~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|ROMadd\(2),
	datad => VCC,
	cin => \hlsm_inst|Add4~4\,
	combout => \hlsm_inst|Add4~6_combout\,
	cout => \hlsm_inst|Add4~7\);

-- Location: LCCOMB_X46_Y48_N6
\hlsm_inst|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~8_combout\ = (\hlsm_inst|ROMadd_next[0]~0_combout\ & (((\hlsm_inst|Add4~6_combout\)))) # (!\hlsm_inst|ROMadd_next[0]~0_combout\ & (!\hlsm_inst|LessThan2~1_combout\ & (\hlsm_inst|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd_next[0]~0_combout\,
	datab => \hlsm_inst|LessThan2~1_combout\,
	datac => \hlsm_inst|Add3~4_combout\,
	datad => \hlsm_inst|Add4~6_combout\,
	combout => \hlsm_inst|Add4~8_combout\);

-- Location: LCCOMB_X46_Y48_N30
\hlsm_inst|ROMadd_next[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|ROMadd_next\(2) = (GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & ((\hlsm_inst|ROMadd_next\(2)))) # (!GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & (\hlsm_inst|Add4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|Add4~8_combout\,
	datac => \hlsm_inst|ROMadd_next\(2),
	datad => \hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\,
	combout => \hlsm_inst|ROMadd_next\(2));

-- Location: FF_X46_Y48_N31
\hlsm_inst|ROMadd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|ROMadd_next\(2),
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	ena => \hlsm_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|ROMadd\(2));

-- Location: LCCOMB_X46_Y48_N18
\hlsm_inst|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add3~6_combout\ = (\hlsm_inst|ROMadd\(3) & (!\hlsm_inst|Add3~5\)) # (!\hlsm_inst|ROMadd\(3) & ((\hlsm_inst|Add3~5\) # (GND)))
-- \hlsm_inst|Add3~7\ = CARRY((!\hlsm_inst|Add3~5\) # (!\hlsm_inst|ROMadd\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd\(3),
	datad => VCC,
	cin => \hlsm_inst|Add3~5\,
	combout => \hlsm_inst|Add3~6_combout\,
	cout => \hlsm_inst|Add3~7\);

-- Location: LCCOMB_X45_Y48_N12
\hlsm_inst|Add4~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~9_combout\ = (\hlsm_inst|ROMadd\(3) & (!\hlsm_inst|Add4~7\)) # (!\hlsm_inst|ROMadd\(3) & ((\hlsm_inst|Add4~7\) # (GND)))
-- \hlsm_inst|Add4~10\ = CARRY((!\hlsm_inst|Add4~7\) # (!\hlsm_inst|ROMadd\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|ROMadd\(3),
	datad => VCC,
	cin => \hlsm_inst|Add4~7\,
	combout => \hlsm_inst|Add4~9_combout\,
	cout => \hlsm_inst|Add4~10\);

-- Location: LCCOMB_X46_Y48_N28
\hlsm_inst|Add4~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~11_combout\ = (\hlsm_inst|ROMadd_next[0]~0_combout\ & (((\hlsm_inst|Add4~9_combout\)))) # (!\hlsm_inst|ROMadd_next[0]~0_combout\ & (!\hlsm_inst|LessThan2~1_combout\ & (\hlsm_inst|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd_next[0]~0_combout\,
	datab => \hlsm_inst|LessThan2~1_combout\,
	datac => \hlsm_inst|Add3~6_combout\,
	datad => \hlsm_inst|Add4~9_combout\,
	combout => \hlsm_inst|Add4~11_combout\);

-- Location: LCCOMB_X46_Y48_N4
\hlsm_inst|ROMadd_next[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|ROMadd_next\(3) = (GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & ((\hlsm_inst|ROMadd_next\(3)))) # (!GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & (\hlsm_inst|Add4~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|Add4~11_combout\,
	datac => \hlsm_inst|ROMadd_next\(3),
	datad => \hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\,
	combout => \hlsm_inst|ROMadd_next\(3));

-- Location: FF_X46_Y48_N5
\hlsm_inst|ROMadd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|ROMadd_next\(3),
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	ena => \hlsm_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|ROMadd\(3));

-- Location: LCCOMB_X45_Y49_N26
\hlsm_inst|LessThan3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|LessThan3~1_combout\ = (((!\hlsm_inst|ROMadd\(0)) # (!\hlsm_inst|ROMadd\(1))) # (!\hlsm_inst|ROMadd\(2))) # (!\hlsm_inst|ROMadd\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd\(3),
	datab => \hlsm_inst|ROMadd\(2),
	datac => \hlsm_inst|ROMadd\(1),
	datad => \hlsm_inst|ROMadd\(0),
	combout => \hlsm_inst|LessThan3~1_combout\);

-- Location: LCCOMB_X45_Y48_N14
\hlsm_inst|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~12_combout\ = (\hlsm_inst|ROMadd\(4) & (\hlsm_inst|Add4~10\ $ (GND))) # (!\hlsm_inst|ROMadd\(4) & (!\hlsm_inst|Add4~10\ & VCC))
-- \hlsm_inst|Add4~13\ = CARRY((\hlsm_inst|ROMadd\(4) & !\hlsm_inst|Add4~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|ROMadd\(4),
	datad => VCC,
	cin => \hlsm_inst|Add4~10\,
	combout => \hlsm_inst|Add4~12_combout\,
	cout => \hlsm_inst|Add4~13\);

-- Location: LCCOMB_X46_Y48_N20
\hlsm_inst|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add3~8_combout\ = (\hlsm_inst|ROMadd\(4) & (\hlsm_inst|Add3~7\ $ (GND))) # (!\hlsm_inst|ROMadd\(4) & (!\hlsm_inst|Add3~7\ & VCC))
-- \hlsm_inst|Add3~9\ = CARRY((\hlsm_inst|ROMadd\(4) & !\hlsm_inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd\(4),
	datad => VCC,
	cin => \hlsm_inst|Add3~7\,
	combout => \hlsm_inst|Add3~8_combout\,
	cout => \hlsm_inst|Add3~9\);

-- Location: LCCOMB_X45_Y48_N2
\hlsm_inst|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~14_combout\ = (\hlsm_inst|ROMadd_next[0]~0_combout\ & (\hlsm_inst|Add4~12_combout\)) # (!\hlsm_inst|ROMadd_next[0]~0_combout\ & (((!\hlsm_inst|LessThan2~1_combout\ & \hlsm_inst|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd_next[0]~0_combout\,
	datab => \hlsm_inst|Add4~12_combout\,
	datac => \hlsm_inst|LessThan2~1_combout\,
	datad => \hlsm_inst|Add3~8_combout\,
	combout => \hlsm_inst|Add4~14_combout\);

-- Location: LCCOMB_X45_Y48_N30
\hlsm_inst|ROMadd_next[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|ROMadd_next\(4) = (GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & ((\hlsm_inst|ROMadd_next\(4)))) # (!GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & (\hlsm_inst|Add4~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|Add4~14_combout\,
	datac => \hlsm_inst|ROMadd_next\(4),
	datad => \hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\,
	combout => \hlsm_inst|ROMadd_next\(4));

-- Location: FF_X45_Y48_N31
\hlsm_inst|ROMadd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|ROMadd_next\(4),
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	ena => \hlsm_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|ROMadd\(4));

-- Location: LCCOMB_X45_Y48_N16
\hlsm_inst|Add4~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~15_combout\ = (\hlsm_inst|ROMadd\(5) & (!\hlsm_inst|Add4~13\)) # (!\hlsm_inst|ROMadd\(5) & ((\hlsm_inst|Add4~13\) # (GND)))
-- \hlsm_inst|Add4~16\ = CARRY((!\hlsm_inst|Add4~13\) # (!\hlsm_inst|ROMadd\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd\(5),
	datad => VCC,
	cin => \hlsm_inst|Add4~13\,
	combout => \hlsm_inst|Add4~15_combout\,
	cout => \hlsm_inst|Add4~16\);

-- Location: LCCOMB_X46_Y48_N22
\hlsm_inst|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add3~10_combout\ = (\hlsm_inst|ROMadd\(5) & (\hlsm_inst|Add3~9\ & VCC)) # (!\hlsm_inst|ROMadd\(5) & (!\hlsm_inst|Add3~9\))
-- \hlsm_inst|Add3~11\ = CARRY((!\hlsm_inst|ROMadd\(5) & !\hlsm_inst|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd\(5),
	datad => VCC,
	cin => \hlsm_inst|Add3~9\,
	combout => \hlsm_inst|Add3~10_combout\,
	cout => \hlsm_inst|Add3~11\);

-- Location: LCCOMB_X46_Y48_N2
\hlsm_inst|Add4~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~17_combout\ = (\hlsm_inst|ROMadd_next[0]~0_combout\ & (((\hlsm_inst|Add4~15_combout\)))) # (!\hlsm_inst|ROMadd_next[0]~0_combout\ & (!\hlsm_inst|LessThan2~1_combout\ & ((\hlsm_inst|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd_next[0]~0_combout\,
	datab => \hlsm_inst|LessThan2~1_combout\,
	datac => \hlsm_inst|Add4~15_combout\,
	datad => \hlsm_inst|Add3~10_combout\,
	combout => \hlsm_inst|Add4~17_combout\);

-- Location: LCCOMB_X46_Y48_N10
\hlsm_inst|ROMadd_next[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|ROMadd_next\(5) = (GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & (\hlsm_inst|ROMadd_next\(5))) # (!GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & ((\hlsm_inst|Add4~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd_next\(5),
	datab => \hlsm_inst|Add4~17_combout\,
	datad => \hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\,
	combout => \hlsm_inst|ROMadd_next\(5));

-- Location: FF_X46_Y48_N11
\hlsm_inst|ROMadd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|ROMadd_next\(5),
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	ena => \hlsm_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|ROMadd\(5));

-- Location: LCCOMB_X45_Y48_N18
\hlsm_inst|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~18_combout\ = (\hlsm_inst|ROMadd\(6) & (\hlsm_inst|Add4~16\ $ (GND))) # (!\hlsm_inst|ROMadd\(6) & (!\hlsm_inst|Add4~16\ & VCC))
-- \hlsm_inst|Add4~19\ = CARRY((\hlsm_inst|ROMadd\(6) & !\hlsm_inst|Add4~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd\(6),
	datad => VCC,
	cin => \hlsm_inst|Add4~16\,
	combout => \hlsm_inst|Add4~18_combout\,
	cout => \hlsm_inst|Add4~19\);

-- Location: LCCOMB_X46_Y48_N24
\hlsm_inst|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add3~12_combout\ = (\hlsm_inst|ROMadd\(6) & ((GND) # (!\hlsm_inst|Add3~11\))) # (!\hlsm_inst|ROMadd\(6) & (\hlsm_inst|Add3~11\ $ (GND)))
-- \hlsm_inst|Add3~13\ = CARRY((\hlsm_inst|ROMadd\(6)) # (!\hlsm_inst|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd\(6),
	datad => VCC,
	cin => \hlsm_inst|Add3~11\,
	combout => \hlsm_inst|Add3~12_combout\,
	cout => \hlsm_inst|Add3~13\);

-- Location: LCCOMB_X45_Y48_N24
\hlsm_inst|Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~20_combout\ = (\hlsm_inst|ROMadd_next[0]~0_combout\ & (\hlsm_inst|Add4~18_combout\)) # (!\hlsm_inst|ROMadd_next[0]~0_combout\ & (((!\hlsm_inst|LessThan2~1_combout\ & \hlsm_inst|Add3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|Add4~18_combout\,
	datab => \hlsm_inst|ROMadd_next[0]~0_combout\,
	datac => \hlsm_inst|LessThan2~1_combout\,
	datad => \hlsm_inst|Add3~12_combout\,
	combout => \hlsm_inst|Add4~20_combout\);

-- Location: LCCOMB_X45_Y48_N0
\hlsm_inst|ROMadd_next[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|ROMadd_next\(6) = (GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & ((\hlsm_inst|ROMadd_next\(6)))) # (!GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & (\hlsm_inst|Add4~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|Add4~20_combout\,
	datab => \hlsm_inst|ROMadd_next\(6),
	datad => \hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\,
	combout => \hlsm_inst|ROMadd_next\(6));

-- Location: FF_X45_Y48_N1
\hlsm_inst|ROMadd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|ROMadd_next\(6),
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	ena => \hlsm_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|ROMadd\(6));

-- Location: LCCOMB_X46_Y48_N26
\hlsm_inst|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add3~14_combout\ = \hlsm_inst|ROMadd\(7) $ (!\hlsm_inst|Add3~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd\(7),
	cin => \hlsm_inst|Add3~13\,
	combout => \hlsm_inst|Add3~14_combout\);

-- Location: LCCOMB_X45_Y48_N20
\hlsm_inst|Add4~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~21_combout\ = \hlsm_inst|Add4~19\ $ (\hlsm_inst|ROMadd\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \hlsm_inst|ROMadd\(7),
	cin => \hlsm_inst|Add4~19\,
	combout => \hlsm_inst|Add4~21_combout\);

-- Location: LCCOMB_X45_Y48_N22
\hlsm_inst|Add4~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~23_combout\ = (\hlsm_inst|ROMadd_next[0]~0_combout\ & (((\hlsm_inst|Add4~21_combout\)))) # (!\hlsm_inst|ROMadd_next[0]~0_combout\ & (\hlsm_inst|Add3~14_combout\ & (!\hlsm_inst|LessThan2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd_next[0]~0_combout\,
	datab => \hlsm_inst|Add3~14_combout\,
	datac => \hlsm_inst|LessThan2~1_combout\,
	datad => \hlsm_inst|Add4~21_combout\,
	combout => \hlsm_inst|Add4~23_combout\);

-- Location: LCCOMB_X45_Y48_N26
\hlsm_inst|ROMadd_next[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|ROMadd_next\(7) = (GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & ((\hlsm_inst|ROMadd_next\(7)))) # (!GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & (\hlsm_inst|Add4~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hlsm_inst|Add4~23_combout\,
	datac => \hlsm_inst|ROMadd_next\(7),
	datad => \hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\,
	combout => \hlsm_inst|ROMadd_next\(7));

-- Location: FF_X45_Y48_N27
\hlsm_inst|ROMadd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|ROMadd_next\(7),
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	ena => \hlsm_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|ROMadd\(7));

-- Location: LCCOMB_X45_Y49_N30
\hlsm_inst|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|LessThan3~0_combout\ = (((!\hlsm_inst|ROMadd\(6)) # (!\hlsm_inst|ROMadd\(7))) # (!\hlsm_inst|ROMadd\(5))) # (!\hlsm_inst|ROMadd\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|ROMadd\(4),
	datab => \hlsm_inst|ROMadd\(5),
	datac => \hlsm_inst|ROMadd\(7),
	datad => \hlsm_inst|ROMadd\(6),
	combout => \hlsm_inst|LessThan3~0_combout\);

-- Location: LCCOMB_X45_Y49_N24
\hlsm_inst|ROMadd_next[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|ROMadd_next[0]~0_combout\ = ((\hlsm_inst|LessThan2~1_combout\ & ((\hlsm_inst|LessThan3~1_combout\) # (\hlsm_inst|LessThan3~0_combout\)))) # (!\hlsm_inst|hlsm_helper_inst|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|LessThan3~1_combout\,
	datab => \hlsm_inst|LessThan2~1_combout\,
	datac => \hlsm_inst|hlsm_helper_inst|LessThan2~1_combout\,
	datad => \hlsm_inst|LessThan3~0_combout\,
	combout => \hlsm_inst|ROMadd_next[0]~0_combout\);

-- Location: LCCOMB_X45_Y48_N28
\hlsm_inst|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|Add4~2_combout\ = (\hlsm_inst|ROMadd_next[0]~0_combout\ & (((\hlsm_inst|Add4~0_combout\)))) # (!\hlsm_inst|ROMadd_next[0]~0_combout\ & (!\hlsm_inst|LessThan2~1_combout\ & ((\hlsm_inst|Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|LessThan2~1_combout\,
	datab => \hlsm_inst|Add4~0_combout\,
	datac => \hlsm_inst|Add3~0_combout\,
	datad => \hlsm_inst|ROMadd_next[0]~0_combout\,
	combout => \hlsm_inst|Add4~2_combout\);

-- Location: LCCOMB_X45_Y48_N4
\hlsm_inst|ROMadd_next[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hlsm_inst|ROMadd_next\(0) = (GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & ((\hlsm_inst|ROMadd_next\(0)))) # (!GLOBAL(\hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\) & (\hlsm_inst|Add4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hlsm_inst|Add4~2_combout\,
	datac => \hlsm_inst|ROMadd_next\(0),
	datad => \hlsm_inst|hlsm_helper_inst|state.st2~clkctrl_outclk\,
	combout => \hlsm_inst|ROMadd_next\(0));

-- Location: FF_X45_Y48_N5
\hlsm_inst|ROMadd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \hlsm_inst|ROMadd_next\(0),
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	ena => \hlsm_inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \hlsm_inst|ROMadd\(0));

-- Location: M9K_X53_Y53_N0
\blueROM_inst|altsyncram_component|auto_generated|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"C1DEA5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9F077A4DA5146906CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAF",
	mem_init3 => X"DB2BF6CAFDB2BF6CAFDB2BF51A4136944DA52AB27E3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AAAC9D36944DA52AB27E3E2B8F8AE0DD326E6CCBF78B82E3E2B636C7EA3A1EA4DFE078F8ADBDC23A9293A837F7DE3E2B6F6B8180A0E0EDDDCF8F8ADCDF60AE781B9F737DE3E2B8F8AAAC9D36944DA52AB27E3E2B8F8ABFA9326D4C1A9B22DCE3E295E29609413A27729CF8F8A71909C246678AE026AE3E2985845959D4D4E696938F8A65AB15AA956AA596ACE3E2B8F8AAAC9D36944DA52AB27E3E2B8F8AB99D39F7CDCCFF06ADE3E28E1E1BED",
	mem_init2 => X"1E7EFB538838F8A567AB073AB0C05961BE3E290909B4B4AA6A6494978F8A469F6BF57AFD5D1A7DE3E2B8F8AAAC9D36944DA52AB27E3E2B8F8AD5CA2CA52B49776749E3E2AA2F81C67891B0B9C838F8AB4C04ED9F3F6A2F71CE3E2ABAB41E1E88487B4B338F8AB1CC87E371F8DEC332E3E2B8F8AAAC9D36944DA52AB27E3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AAAC9D36944DA52AB27E3E2B8F8ADBDF612E691BF38786E3E2B8F6DDD843763EE2DFB8F8AE3E2B8F8AE3E2B8F8AE3E2B8F75DD887762DE2DEB8F8AE0DFA524F9493F837EE3",
	mem_init1 => X"E2B8F8AAAC9D36944DA52AB27E3E2B8F8A56A5166AE44A0DEED5E3E2B6969E15877921DC7638F8AE3E2B8F8AE3E2B8F8AE3E2B7190DF513792EDC6DB8F8A77775858461611DDDDE3E2B8F8AAAC9D36944DA52AB27E3E2B8F8A339731B829FCD15A98E3E2B64D9F0C13B291DA50F8F8AE3E2B8F8AE3E2B8F8AE3E2B6D07F0B8BBABBDB4AB8F8A57566EAEABABA95D59E3E2B8F8AAAC9D36944DA52AB27E3E2B8F8AA0C6856241F8D6DF41E3E2B8287D6177587BE0B3F8F8AE3E2B8F8AE3E2B8F8AE3E2B82A4D619B5C72DFAEB8F8AB2B1CC8C831312CAC7E3E2B8F8AAAC9D36944DA52AB27E3E2B8F8AE3E2B8B86E3E2B8F8AE3E2B8F8AE3E1B8F8AE3E2B8F8AE",
	mem_init0 => X"3E2B8F8AE3E2B8F8AE3E2B8F8AE3E1B8F8AE3E2B8F8AE3E2B8F8AE2E1B8F8AE3E2B8F8AAAC9D36944DA52AB27E3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AE3E2B8F8AAAC9D36944DA5146906CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF6CAFDB2BF51A413694C1DEA5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9E5B2796C9ECF60",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "blueROM.hex",
	init_file_layout => "port_a",
	logical_ram_name => "blueROM:blueROM_inst|altsyncram:altsyncram_component|altsyncram_9jp3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 9,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portbdatain => \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\,
	portaaddr => \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \blueROM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X56_Y53_N0
\red2_pwm_inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red2_pwm_inst|LessThan0~0_combout\ = (\redROM_inst|altsyncram_component|auto_generated|q_a\(0)) # ((\redROM_inst|altsyncram_component|auto_generated|q_a\(1)) # ((\redROM_inst|altsyncram_component|auto_generated|q_a\(3)) # 
-- (\redROM_inst|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redROM_inst|altsyncram_component|auto_generated|q_a\(0),
	datab => \redROM_inst|altsyncram_component|auto_generated|q_a\(1),
	datac => \redROM_inst|altsyncram_component|auto_generated|q_a\(3),
	datad => \redROM_inst|altsyncram_component|auto_generated|q_a\(2),
	combout => \red2_pwm_inst|LessThan0~0_combout\);

-- Location: CLKCTRL_G10
\hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl_outclk\);

-- Location: LCCOMB_X55_Y53_N12
\blue1_pwm_inst|cnt[0]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue1_pwm_inst|cnt[0]~8_combout\ = \blue1_pwm_inst|cnt\(0) $ (VCC)
-- \blue1_pwm_inst|cnt[0]~9\ = CARRY(\blue1_pwm_inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(0),
	datad => VCC,
	combout => \blue1_pwm_inst|cnt[0]~8_combout\,
	cout => \blue1_pwm_inst|cnt[0]~9\);

-- Location: FF_X55_Y53_N13
\blue1_pwm_inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl_outclk\,
	d => \blue1_pwm_inst|cnt[0]~8_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue1_pwm_inst|cnt\(0));

-- Location: LCCOMB_X55_Y53_N14
\blue1_pwm_inst|cnt[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue1_pwm_inst|cnt[1]~10_combout\ = (\blue1_pwm_inst|cnt\(1) & (!\blue1_pwm_inst|cnt[0]~9\)) # (!\blue1_pwm_inst|cnt\(1) & ((\blue1_pwm_inst|cnt[0]~9\) # (GND)))
-- \blue1_pwm_inst|cnt[1]~11\ = CARRY((!\blue1_pwm_inst|cnt[0]~9\) # (!\blue1_pwm_inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blue1_pwm_inst|cnt\(1),
	datad => VCC,
	cin => \blue1_pwm_inst|cnt[0]~9\,
	combout => \blue1_pwm_inst|cnt[1]~10_combout\,
	cout => \blue1_pwm_inst|cnt[1]~11\);

-- Location: FF_X55_Y53_N15
\blue1_pwm_inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl_outclk\,
	d => \blue1_pwm_inst|cnt[1]~10_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue1_pwm_inst|cnt\(1));

-- Location: LCCOMB_X55_Y53_N16
\blue1_pwm_inst|cnt[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue1_pwm_inst|cnt[2]~12_combout\ = (\blue1_pwm_inst|cnt\(2) & (\blue1_pwm_inst|cnt[1]~11\ $ (GND))) # (!\blue1_pwm_inst|cnt\(2) & (!\blue1_pwm_inst|cnt[1]~11\ & VCC))
-- \blue1_pwm_inst|cnt[2]~13\ = CARRY((\blue1_pwm_inst|cnt\(2) & !\blue1_pwm_inst|cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blue1_pwm_inst|cnt\(2),
	datad => VCC,
	cin => \blue1_pwm_inst|cnt[1]~11\,
	combout => \blue1_pwm_inst|cnt[2]~12_combout\,
	cout => \blue1_pwm_inst|cnt[2]~13\);

-- Location: FF_X55_Y53_N17
\blue1_pwm_inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl_outclk\,
	d => \blue1_pwm_inst|cnt[2]~12_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue1_pwm_inst|cnt\(2));

-- Location: LCCOMB_X55_Y53_N18
\blue1_pwm_inst|cnt[3]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue1_pwm_inst|cnt[3]~14_combout\ = (\blue1_pwm_inst|cnt\(3) & (!\blue1_pwm_inst|cnt[2]~13\)) # (!\blue1_pwm_inst|cnt\(3) & ((\blue1_pwm_inst|cnt[2]~13\) # (GND)))
-- \blue1_pwm_inst|cnt[3]~15\ = CARRY((!\blue1_pwm_inst|cnt[2]~13\) # (!\blue1_pwm_inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blue1_pwm_inst|cnt\(3),
	datad => VCC,
	cin => \blue1_pwm_inst|cnt[2]~13\,
	combout => \blue1_pwm_inst|cnt[3]~14_combout\,
	cout => \blue1_pwm_inst|cnt[3]~15\);

-- Location: FF_X55_Y53_N19
\blue1_pwm_inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl_outclk\,
	d => \blue1_pwm_inst|cnt[3]~14_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue1_pwm_inst|cnt\(3));

-- Location: LCCOMB_X55_Y53_N20
\blue1_pwm_inst|cnt[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue1_pwm_inst|cnt[4]~16_combout\ = (\blue1_pwm_inst|cnt\(4) & (\blue1_pwm_inst|cnt[3]~15\ $ (GND))) # (!\blue1_pwm_inst|cnt\(4) & (!\blue1_pwm_inst|cnt[3]~15\ & VCC))
-- \blue1_pwm_inst|cnt[4]~17\ = CARRY((\blue1_pwm_inst|cnt\(4) & !\blue1_pwm_inst|cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blue1_pwm_inst|cnt\(4),
	datad => VCC,
	cin => \blue1_pwm_inst|cnt[3]~15\,
	combout => \blue1_pwm_inst|cnt[4]~16_combout\,
	cout => \blue1_pwm_inst|cnt[4]~17\);

-- Location: FF_X55_Y53_N21
\blue1_pwm_inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl_outclk\,
	d => \blue1_pwm_inst|cnt[4]~16_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue1_pwm_inst|cnt\(4));

-- Location: LCCOMB_X55_Y53_N22
\blue1_pwm_inst|cnt[5]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue1_pwm_inst|cnt[5]~18_combout\ = (\blue1_pwm_inst|cnt\(5) & (!\blue1_pwm_inst|cnt[4]~17\)) # (!\blue1_pwm_inst|cnt\(5) & ((\blue1_pwm_inst|cnt[4]~17\) # (GND)))
-- \blue1_pwm_inst|cnt[5]~19\ = CARRY((!\blue1_pwm_inst|cnt[4]~17\) # (!\blue1_pwm_inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(5),
	datad => VCC,
	cin => \blue1_pwm_inst|cnt[4]~17\,
	combout => \blue1_pwm_inst|cnt[5]~18_combout\,
	cout => \blue1_pwm_inst|cnt[5]~19\);

-- Location: FF_X55_Y53_N23
\blue1_pwm_inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl_outclk\,
	d => \blue1_pwm_inst|cnt[5]~18_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue1_pwm_inst|cnt\(5));

-- Location: LCCOMB_X55_Y53_N24
\blue1_pwm_inst|cnt[6]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue1_pwm_inst|cnt[6]~20_combout\ = (\blue1_pwm_inst|cnt\(6) & (\blue1_pwm_inst|cnt[5]~19\ $ (GND))) # (!\blue1_pwm_inst|cnt\(6) & (!\blue1_pwm_inst|cnt[5]~19\ & VCC))
-- \blue1_pwm_inst|cnt[6]~21\ = CARRY((\blue1_pwm_inst|cnt\(6) & !\blue1_pwm_inst|cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blue1_pwm_inst|cnt\(6),
	datad => VCC,
	cin => \blue1_pwm_inst|cnt[5]~19\,
	combout => \blue1_pwm_inst|cnt[6]~20_combout\,
	cout => \blue1_pwm_inst|cnt[6]~21\);

-- Location: FF_X55_Y53_N25
\blue1_pwm_inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl_outclk\,
	d => \blue1_pwm_inst|cnt[6]~20_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue1_pwm_inst|cnt\(6));

-- Location: LCCOMB_X55_Y53_N26
\blue1_pwm_inst|cnt[7]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue1_pwm_inst|cnt[7]~22_combout\ = \blue1_pwm_inst|cnt\(7) $ (\blue1_pwm_inst|cnt[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(7),
	cin => \blue1_pwm_inst|cnt[6]~21\,
	combout => \blue1_pwm_inst|cnt[7]~22_combout\);

-- Location: FF_X55_Y53_N27
\blue1_pwm_inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|mx_LE~clkctrl_outclk\,
	d => \blue1_pwm_inst|cnt[7]~22_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue1_pwm_inst|cnt\(7));

-- Location: LCCOMB_X56_Y53_N6
\red2_pwm_inst|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red2_pwm_inst|LessThan1~1_cout\ = CARRY((\blue1_pwm_inst|cnt\(0) & !\redROM_inst|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(0),
	datab => \redROM_inst|altsyncram_component|auto_generated|q_a\(0),
	datad => VCC,
	cout => \red2_pwm_inst|LessThan1~1_cout\);

-- Location: LCCOMB_X56_Y53_N8
\red2_pwm_inst|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red2_pwm_inst|LessThan1~3_cout\ = CARRY((\blue1_pwm_inst|cnt\(1) & (\redROM_inst|altsyncram_component|auto_generated|q_a\(1) & !\red2_pwm_inst|LessThan1~1_cout\)) # (!\blue1_pwm_inst|cnt\(1) & ((\redROM_inst|altsyncram_component|auto_generated|q_a\(1)) # 
-- (!\red2_pwm_inst|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(1),
	datab => \redROM_inst|altsyncram_component|auto_generated|q_a\(1),
	datad => VCC,
	cin => \red2_pwm_inst|LessThan1~1_cout\,
	cout => \red2_pwm_inst|LessThan1~3_cout\);

-- Location: LCCOMB_X56_Y53_N10
\red2_pwm_inst|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red2_pwm_inst|LessThan1~5_cout\ = CARRY((\blue1_pwm_inst|cnt\(2) & ((!\red2_pwm_inst|LessThan1~3_cout\) # (!\redROM_inst|altsyncram_component|auto_generated|q_a\(2)))) # (!\blue1_pwm_inst|cnt\(2) & 
-- (!\redROM_inst|altsyncram_component|auto_generated|q_a\(2) & !\red2_pwm_inst|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(2),
	datab => \redROM_inst|altsyncram_component|auto_generated|q_a\(2),
	datad => VCC,
	cin => \red2_pwm_inst|LessThan1~3_cout\,
	cout => \red2_pwm_inst|LessThan1~5_cout\);

-- Location: LCCOMB_X56_Y53_N12
\red2_pwm_inst|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red2_pwm_inst|LessThan1~7_cout\ = CARRY((\redROM_inst|altsyncram_component|auto_generated|q_a\(3) & ((!\red2_pwm_inst|LessThan1~5_cout\) # (!\blue1_pwm_inst|cnt\(3)))) # (!\redROM_inst|altsyncram_component|auto_generated|q_a\(3) & 
-- (!\blue1_pwm_inst|cnt\(3) & !\red2_pwm_inst|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \redROM_inst|altsyncram_component|auto_generated|q_a\(3),
	datab => \blue1_pwm_inst|cnt\(3),
	datad => VCC,
	cin => \red2_pwm_inst|LessThan1~5_cout\,
	cout => \red2_pwm_inst|LessThan1~7_cout\);

-- Location: LCCOMB_X56_Y53_N14
\red2_pwm_inst|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red2_pwm_inst|LessThan1~9_cout\ = CARRY((\redROM_inst|altsyncram_component|auto_generated|q_a\(4) & (\blue1_pwm_inst|cnt\(4) & !\red2_pwm_inst|LessThan1~7_cout\)) # (!\redROM_inst|altsyncram_component|auto_generated|q_a\(4) & ((\blue1_pwm_inst|cnt\(4)) # 
-- (!\red2_pwm_inst|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \redROM_inst|altsyncram_component|auto_generated|q_a\(4),
	datab => \blue1_pwm_inst|cnt\(4),
	datad => VCC,
	cin => \red2_pwm_inst|LessThan1~7_cout\,
	cout => \red2_pwm_inst|LessThan1~9_cout\);

-- Location: LCCOMB_X56_Y53_N16
\red2_pwm_inst|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red2_pwm_inst|LessThan1~11_cout\ = CARRY((\redROM_inst|altsyncram_component|auto_generated|q_a\(5) & ((!\red2_pwm_inst|LessThan1~9_cout\) # (!\blue1_pwm_inst|cnt\(5)))) # (!\redROM_inst|altsyncram_component|auto_generated|q_a\(5) & 
-- (!\blue1_pwm_inst|cnt\(5) & !\red2_pwm_inst|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \redROM_inst|altsyncram_component|auto_generated|q_a\(5),
	datab => \blue1_pwm_inst|cnt\(5),
	datad => VCC,
	cin => \red2_pwm_inst|LessThan1~9_cout\,
	cout => \red2_pwm_inst|LessThan1~11_cout\);

-- Location: LCCOMB_X56_Y53_N18
\red2_pwm_inst|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red2_pwm_inst|LessThan1~13_cout\ = CARRY((\blue1_pwm_inst|cnt\(6) & ((!\red2_pwm_inst|LessThan1~11_cout\) # (!\redROM_inst|altsyncram_component|auto_generated|q_a\(6)))) # (!\blue1_pwm_inst|cnt\(6) & 
-- (!\redROM_inst|altsyncram_component|auto_generated|q_a\(6) & !\red2_pwm_inst|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(6),
	datab => \redROM_inst|altsyncram_component|auto_generated|q_a\(6),
	datad => VCC,
	cin => \red2_pwm_inst|LessThan1~11_cout\,
	cout => \red2_pwm_inst|LessThan1~13_cout\);

-- Location: LCCOMB_X56_Y53_N20
\red2_pwm_inst|LessThan1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red2_pwm_inst|LessThan1~14_combout\ = (\blue1_pwm_inst|cnt\(7) & ((\red2_pwm_inst|LessThan1~13_cout\) # (!\redROM_inst|altsyncram_component|auto_generated|q_a\(7)))) # (!\blue1_pwm_inst|cnt\(7) & (!\redROM_inst|altsyncram_component|auto_generated|q_a\(7) 
-- & \red2_pwm_inst|LessThan1~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(7),
	datab => \redROM_inst|altsyncram_component|auto_generated|q_a\(7),
	cin => \red2_pwm_inst|LessThan1~13_cout\,
	combout => \red2_pwm_inst|LessThan1~14_combout\);

-- Location: LCCOMB_X56_Y53_N26
\red2_pwm_inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red2_pwm_inst|LessThan0~1_combout\ = (\redROM_inst|altsyncram_component|auto_generated|q_a\(5)) # ((\redROM_inst|altsyncram_component|auto_generated|q_a\(6)) # ((\redROM_inst|altsyncram_component|auto_generated|q_a\(4)) # 
-- (\redROM_inst|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \redROM_inst|altsyncram_component|auto_generated|q_a\(5),
	datab => \redROM_inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \redROM_inst|altsyncram_component|auto_generated|q_a\(4),
	datad => \redROM_inst|altsyncram_component|auto_generated|q_a\(7),
	combout => \red2_pwm_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X56_Y53_N4
\red2_pwm_inst|pwm_config_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red2_pwm_inst|pwm_config_process~0_combout\ = (!\red2_pwm_inst|LessThan1~14_combout\ & ((\red2_pwm_inst|LessThan0~0_combout\) # (\red2_pwm_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red2_pwm_inst|LessThan0~0_combout\,
	datab => \red2_pwm_inst|LessThan1~14_combout\,
	datac => \red2_pwm_inst|LessThan0~1_combout\,
	combout => \red2_pwm_inst|pwm_config_process~0_combout\);

-- Location: LCCOMB_X56_Y53_N24
\red1_pwm_inst|state.st1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red1_pwm_inst|state.st1~feeder_combout\ = \red2_pwm_inst|pwm_config_process~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red2_pwm_inst|pwm_config_process~0_combout\,
	combout => \red1_pwm_inst|state.st1~feeder_combout\);

-- Location: FF_X56_Y53_N25
\red1_pwm_inst|state.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|Selector11~0clkctrl_outclk\,
	d => \red1_pwm_inst|state.st1~feeder_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \red1_pwm_inst|state.st1~q\);

-- Location: LCCOMB_X52_Y53_N0
\green2_pwm_inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green2_pwm_inst|LessThan0~0_combout\ = (\greenROM_inst|altsyncram_component|auto_generated|q_a\(3)) # ((\greenROM_inst|altsyncram_component|auto_generated|q_a\(1)) # ((\greenROM_inst|altsyncram_component|auto_generated|q_a\(0)) # 
-- (\greenROM_inst|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \greenROM_inst|altsyncram_component|auto_generated|q_a\(3),
	datab => \greenROM_inst|altsyncram_component|auto_generated|q_a\(1),
	datac => \greenROM_inst|altsyncram_component|auto_generated|q_a\(0),
	datad => \greenROM_inst|altsyncram_component|auto_generated|q_a\(2),
	combout => \green2_pwm_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X52_Y53_N12
\green2_pwm_inst|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green2_pwm_inst|LessThan1~1_cout\ = CARRY((\blue1_pwm_inst|cnt\(0) & !\greenROM_inst|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(0),
	datab => \greenROM_inst|altsyncram_component|auto_generated|q_a\(0),
	datad => VCC,
	cout => \green2_pwm_inst|LessThan1~1_cout\);

-- Location: LCCOMB_X52_Y53_N14
\green2_pwm_inst|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green2_pwm_inst|LessThan1~3_cout\ = CARRY((\greenROM_inst|altsyncram_component|auto_generated|q_a\(1) & ((!\green2_pwm_inst|LessThan1~1_cout\) # (!\blue1_pwm_inst|cnt\(1)))) # (!\greenROM_inst|altsyncram_component|auto_generated|q_a\(1) & 
-- (!\blue1_pwm_inst|cnt\(1) & !\green2_pwm_inst|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \greenROM_inst|altsyncram_component|auto_generated|q_a\(1),
	datab => \blue1_pwm_inst|cnt\(1),
	datad => VCC,
	cin => \green2_pwm_inst|LessThan1~1_cout\,
	cout => \green2_pwm_inst|LessThan1~3_cout\);

-- Location: LCCOMB_X52_Y53_N16
\green2_pwm_inst|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green2_pwm_inst|LessThan1~5_cout\ = CARRY((\greenROM_inst|altsyncram_component|auto_generated|q_a\(2) & (\blue1_pwm_inst|cnt\(2) & !\green2_pwm_inst|LessThan1~3_cout\)) # (!\greenROM_inst|altsyncram_component|auto_generated|q_a\(2) & 
-- ((\blue1_pwm_inst|cnt\(2)) # (!\green2_pwm_inst|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \greenROM_inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \blue1_pwm_inst|cnt\(2),
	datad => VCC,
	cin => \green2_pwm_inst|LessThan1~3_cout\,
	cout => \green2_pwm_inst|LessThan1~5_cout\);

-- Location: LCCOMB_X52_Y53_N18
\green2_pwm_inst|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green2_pwm_inst|LessThan1~7_cout\ = CARRY((\blue1_pwm_inst|cnt\(3) & (\greenROM_inst|altsyncram_component|auto_generated|q_a\(3) & !\green2_pwm_inst|LessThan1~5_cout\)) # (!\blue1_pwm_inst|cnt\(3) & 
-- ((\greenROM_inst|altsyncram_component|auto_generated|q_a\(3)) # (!\green2_pwm_inst|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(3),
	datab => \greenROM_inst|altsyncram_component|auto_generated|q_a\(3),
	datad => VCC,
	cin => \green2_pwm_inst|LessThan1~5_cout\,
	cout => \green2_pwm_inst|LessThan1~7_cout\);

-- Location: LCCOMB_X52_Y53_N20
\green2_pwm_inst|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green2_pwm_inst|LessThan1~9_cout\ = CARRY((\greenROM_inst|altsyncram_component|auto_generated|q_a\(4) & (\blue1_pwm_inst|cnt\(4) & !\green2_pwm_inst|LessThan1~7_cout\)) # (!\greenROM_inst|altsyncram_component|auto_generated|q_a\(4) & 
-- ((\blue1_pwm_inst|cnt\(4)) # (!\green2_pwm_inst|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \greenROM_inst|altsyncram_component|auto_generated|q_a\(4),
	datab => \blue1_pwm_inst|cnt\(4),
	datad => VCC,
	cin => \green2_pwm_inst|LessThan1~7_cout\,
	cout => \green2_pwm_inst|LessThan1~9_cout\);

-- Location: LCCOMB_X52_Y53_N22
\green2_pwm_inst|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green2_pwm_inst|LessThan1~11_cout\ = CARRY((\blue1_pwm_inst|cnt\(5) & (\greenROM_inst|altsyncram_component|auto_generated|q_a\(5) & !\green2_pwm_inst|LessThan1~9_cout\)) # (!\blue1_pwm_inst|cnt\(5) & 
-- ((\greenROM_inst|altsyncram_component|auto_generated|q_a\(5)) # (!\green2_pwm_inst|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(5),
	datab => \greenROM_inst|altsyncram_component|auto_generated|q_a\(5),
	datad => VCC,
	cin => \green2_pwm_inst|LessThan1~9_cout\,
	cout => \green2_pwm_inst|LessThan1~11_cout\);

-- Location: LCCOMB_X52_Y53_N24
\green2_pwm_inst|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green2_pwm_inst|LessThan1~13_cout\ = CARRY((\blue1_pwm_inst|cnt\(6) & ((!\green2_pwm_inst|LessThan1~11_cout\) # (!\greenROM_inst|altsyncram_component|auto_generated|q_a\(6)))) # (!\blue1_pwm_inst|cnt\(6) & 
-- (!\greenROM_inst|altsyncram_component|auto_generated|q_a\(6) & !\green2_pwm_inst|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(6),
	datab => \greenROM_inst|altsyncram_component|auto_generated|q_a\(6),
	datad => VCC,
	cin => \green2_pwm_inst|LessThan1~11_cout\,
	cout => \green2_pwm_inst|LessThan1~13_cout\);

-- Location: LCCOMB_X52_Y53_N26
\green2_pwm_inst|LessThan1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green2_pwm_inst|LessThan1~14_combout\ = (\greenROM_inst|altsyncram_component|auto_generated|q_a\(7) & (\green2_pwm_inst|LessThan1~13_cout\ & \blue1_pwm_inst|cnt\(7))) # (!\greenROM_inst|altsyncram_component|auto_generated|q_a\(7) & 
-- ((\green2_pwm_inst|LessThan1~13_cout\) # (\blue1_pwm_inst|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \greenROM_inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \blue1_pwm_inst|cnt\(7),
	cin => \green2_pwm_inst|LessThan1~13_cout\,
	combout => \green2_pwm_inst|LessThan1~14_combout\);

-- Location: LCCOMB_X52_Y53_N2
\green2_pwm_inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green2_pwm_inst|LessThan0~1_combout\ = (\greenROM_inst|altsyncram_component|auto_generated|q_a\(4)) # ((\greenROM_inst|altsyncram_component|auto_generated|q_a\(6)) # ((\greenROM_inst|altsyncram_component|auto_generated|q_a\(7)) # 
-- (\greenROM_inst|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \greenROM_inst|altsyncram_component|auto_generated|q_a\(4),
	datab => \greenROM_inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \greenROM_inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \greenROM_inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \green2_pwm_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X52_Y53_N28
\green2_pwm_inst|pwm_config_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green2_pwm_inst|pwm_config_process~0_combout\ = (!\green2_pwm_inst|LessThan1~14_combout\ & ((\green2_pwm_inst|LessThan0~0_combout\) # (\green2_pwm_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \green2_pwm_inst|LessThan0~0_combout\,
	datab => \green2_pwm_inst|LessThan1~14_combout\,
	datac => \green2_pwm_inst|LessThan0~1_combout\,
	combout => \green2_pwm_inst|pwm_config_process~0_combout\);

-- Location: LCCOMB_X52_Y53_N8
\green1_pwm_inst|state.st1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green1_pwm_inst|state.st1~feeder_combout\ = \green2_pwm_inst|pwm_config_process~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \green2_pwm_inst|pwm_config_process~0_combout\,
	combout => \green1_pwm_inst|state.st1~feeder_combout\);

-- Location: FF_X52_Y53_N9
\green1_pwm_inst|state.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|Selector11~0clkctrl_outclk\,
	d => \green1_pwm_inst|state.st1~feeder_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \green1_pwm_inst|state.st1~q\);

-- Location: M9K_X53_Y52_N0
\blueROM_inst|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000D0002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC00340009C00240009800260009800260009800260009800260009800260009800260009800260009800260009800260009800260009800260009",
	mem_init3 => X"800260009800260009800260009000270009C002E000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000B800270009C002E000DC0037000D0001C000800034000DC0035000780022000DC0037000D8001E000800036000DC0034000EC003B000D00037000D0001E000740034000DC0037000B800270009C002E000DC003700054001B00044001E000DC00140006000110006800370005800170004C001A000DC003D000F0003F000F0003700068001600058001A000DC0037000B800270009C002E000DC0037000380031000900014000DC000F000",
	mem_init2 => X"B800270005000370003C002D000A00010000DC003F000FC003F000F4003700040002B000AC0010000DC0037000B800270009C002E000DC0037000A0000600020002D000DC002A0001C000B000BC0037000A8000400024002C000DC003B000FC003C000E80037000AC000600018002A000DC0037000B800270009C002E000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000B800270009C002E000DC0037000DC002A000B40036000DC0034000800022000D00037000DC0037000DC0037000DC0036000800023000D00037000D000230008C003400",
	mem_init1 => X"0DC0037000B800270009C002E000DC003700098002700080002B000DC00170005C0013000780037000DC0037000DC0037000DC001A00050001200068003700070001800060001C000DC0037000B800270009C002E000DC0037000840037000CC0027000DC000D000C40028000480037000DC0037000DC0037000DC000F000B0002A00040003700054002E000B80015000DC0037000B800270009C002E000DC0037000B4001D000780031000DC00240001C0005000A40037000DC0037000DC0037000DC002B000140007000A00037000A0000D000300028000DC0037000B800270009C002E000DC0037000DC0036000DC0037000DC0037000D80037000DC00370",
	mem_init0 => X"00DC0037000DC0037000DC0037000D80037000DC0037000DC0037000D80037000DC0037000B800270009C002E000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000DC0037000B800270009C0024000980026000980026000980026000980026000980026000980026000980026000980026000980026000980026000980026000980026000980026000980026000900027000D0002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC002F000BC0034",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "blueROM.hex",
	init_file_layout => "port_a",
	logical_ram_name => "blueROM:blueROM_inst|altsyncram:altsyncram_component|altsyncram_9jp3:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 9,
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 18,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	port_b_write_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	portbwe => GND,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portadatain => \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \blueROM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y53_N24
\blue2_pwm_inst|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue2_pwm_inst|LessThan0~0_combout\ = (\blueROM_inst|altsyncram_component|auto_generated|q_a\(2)) # ((\blueROM_inst|altsyncram_component|auto_generated|q_a\(0)) # ((\blueROM_inst|altsyncram_component|auto_generated|q_a\(3)) # 
-- (\blueROM_inst|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blueROM_inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \blueROM_inst|altsyncram_component|auto_generated|q_a\(0),
	datac => \blueROM_inst|altsyncram_component|auto_generated|q_a\(3),
	datad => \blueROM_inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \blue2_pwm_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X54_Y53_N30
\blue2_pwm_inst|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue2_pwm_inst|LessThan0~1_combout\ = (\blueROM_inst|altsyncram_component|auto_generated|q_a\(4)) # ((\blueROM_inst|altsyncram_component|auto_generated|q_a\(6)) # ((\blueROM_inst|altsyncram_component|auto_generated|q_a\(7)) # 
-- (\blueROM_inst|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blueROM_inst|altsyncram_component|auto_generated|q_a\(4),
	datab => \blueROM_inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \blueROM_inst|altsyncram_component|auto_generated|q_a\(7),
	datad => \blueROM_inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \blue2_pwm_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X54_Y53_N8
\blue2_pwm_inst|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue2_pwm_inst|LessThan1~1_cout\ = CARRY((\blue1_pwm_inst|cnt\(0) & !\blueROM_inst|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(0),
	datab => \blueROM_inst|altsyncram_component|auto_generated|q_a\(0),
	datad => VCC,
	cout => \blue2_pwm_inst|LessThan1~1_cout\);

-- Location: LCCOMB_X54_Y53_N10
\blue2_pwm_inst|LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue2_pwm_inst|LessThan1~3_cout\ = CARRY((\blue1_pwm_inst|cnt\(1) & (\blueROM_inst|altsyncram_component|auto_generated|q_a\(1) & !\blue2_pwm_inst|LessThan1~1_cout\)) # (!\blue1_pwm_inst|cnt\(1) & 
-- ((\blueROM_inst|altsyncram_component|auto_generated|q_a\(1)) # (!\blue2_pwm_inst|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(1),
	datab => \blueROM_inst|altsyncram_component|auto_generated|q_a\(1),
	datad => VCC,
	cin => \blue2_pwm_inst|LessThan1~1_cout\,
	cout => \blue2_pwm_inst|LessThan1~3_cout\);

-- Location: LCCOMB_X54_Y53_N12
\blue2_pwm_inst|LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue2_pwm_inst|LessThan1~5_cout\ = CARRY((\blueROM_inst|altsyncram_component|auto_generated|q_a\(2) & (\blue1_pwm_inst|cnt\(2) & !\blue2_pwm_inst|LessThan1~3_cout\)) # (!\blueROM_inst|altsyncram_component|auto_generated|q_a\(2) & 
-- ((\blue1_pwm_inst|cnt\(2)) # (!\blue2_pwm_inst|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blueROM_inst|altsyncram_component|auto_generated|q_a\(2),
	datab => \blue1_pwm_inst|cnt\(2),
	datad => VCC,
	cin => \blue2_pwm_inst|LessThan1~3_cout\,
	cout => \blue2_pwm_inst|LessThan1~5_cout\);

-- Location: LCCOMB_X54_Y53_N14
\blue2_pwm_inst|LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue2_pwm_inst|LessThan1~7_cout\ = CARRY((\blueROM_inst|altsyncram_component|auto_generated|q_a\(3) & ((!\blue2_pwm_inst|LessThan1~5_cout\) # (!\blue1_pwm_inst|cnt\(3)))) # (!\blueROM_inst|altsyncram_component|auto_generated|q_a\(3) & 
-- (!\blue1_pwm_inst|cnt\(3) & !\blue2_pwm_inst|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blueROM_inst|altsyncram_component|auto_generated|q_a\(3),
	datab => \blue1_pwm_inst|cnt\(3),
	datad => VCC,
	cin => \blue2_pwm_inst|LessThan1~5_cout\,
	cout => \blue2_pwm_inst|LessThan1~7_cout\);

-- Location: LCCOMB_X54_Y53_N16
\blue2_pwm_inst|LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue2_pwm_inst|LessThan1~9_cout\ = CARRY((\blue1_pwm_inst|cnt\(4) & ((!\blue2_pwm_inst|LessThan1~7_cout\) # (!\blueROM_inst|altsyncram_component|auto_generated|q_a\(4)))) # (!\blue1_pwm_inst|cnt\(4) & 
-- (!\blueROM_inst|altsyncram_component|auto_generated|q_a\(4) & !\blue2_pwm_inst|LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(4),
	datab => \blueROM_inst|altsyncram_component|auto_generated|q_a\(4),
	datad => VCC,
	cin => \blue2_pwm_inst|LessThan1~7_cout\,
	cout => \blue2_pwm_inst|LessThan1~9_cout\);

-- Location: LCCOMB_X54_Y53_N18
\blue2_pwm_inst|LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue2_pwm_inst|LessThan1~11_cout\ = CARRY((\blueROM_inst|altsyncram_component|auto_generated|q_a\(5) & ((!\blue2_pwm_inst|LessThan1~9_cout\) # (!\blue1_pwm_inst|cnt\(5)))) # (!\blueROM_inst|altsyncram_component|auto_generated|q_a\(5) & 
-- (!\blue1_pwm_inst|cnt\(5) & !\blue2_pwm_inst|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blueROM_inst|altsyncram_component|auto_generated|q_a\(5),
	datab => \blue1_pwm_inst|cnt\(5),
	datad => VCC,
	cin => \blue2_pwm_inst|LessThan1~9_cout\,
	cout => \blue2_pwm_inst|LessThan1~11_cout\);

-- Location: LCCOMB_X54_Y53_N20
\blue2_pwm_inst|LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue2_pwm_inst|LessThan1~13_cout\ = CARRY((\blueROM_inst|altsyncram_component|auto_generated|q_a\(6) & (\blue1_pwm_inst|cnt\(6) & !\blue2_pwm_inst|LessThan1~11_cout\)) # (!\blueROM_inst|altsyncram_component|auto_generated|q_a\(6) & 
-- ((\blue1_pwm_inst|cnt\(6)) # (!\blue2_pwm_inst|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blueROM_inst|altsyncram_component|auto_generated|q_a\(6),
	datab => \blue1_pwm_inst|cnt\(6),
	datad => VCC,
	cin => \blue2_pwm_inst|LessThan1~11_cout\,
	cout => \blue2_pwm_inst|LessThan1~13_cout\);

-- Location: LCCOMB_X54_Y53_N22
\blue2_pwm_inst|LessThan1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue2_pwm_inst|LessThan1~14_combout\ = (\blue1_pwm_inst|cnt\(7) & ((\blue2_pwm_inst|LessThan1~13_cout\) # (!\blueROM_inst|altsyncram_component|auto_generated|q_a\(7)))) # (!\blue1_pwm_inst|cnt\(7) & 
-- (!\blueROM_inst|altsyncram_component|auto_generated|q_a\(7) & \blue2_pwm_inst|LessThan1~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blue1_pwm_inst|cnt\(7),
	datab => \blueROM_inst|altsyncram_component|auto_generated|q_a\(7),
	cin => \blue2_pwm_inst|LessThan1~13_cout\,
	combout => \blue2_pwm_inst|LessThan1~14_combout\);

-- Location: LCCOMB_X54_Y53_N4
\blue2_pwm_inst|pwm_config_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue2_pwm_inst|pwm_config_process~0_combout\ = (!\blue2_pwm_inst|LessThan1~14_combout\ & ((\blue2_pwm_inst|LessThan0~0_combout\) # (\blue2_pwm_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blue2_pwm_inst|LessThan0~0_combout\,
	datab => \blue2_pwm_inst|LessThan0~1_combout\,
	datac => \blue2_pwm_inst|LessThan1~14_combout\,
	combout => \blue2_pwm_inst|pwm_config_process~0_combout\);

-- Location: LCCOMB_X54_Y53_N28
\blue1_pwm_inst|state.st1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue1_pwm_inst|state.st1~feeder_combout\ = \blue2_pwm_inst|pwm_config_process~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blue2_pwm_inst|pwm_config_process~0_combout\,
	combout => \blue1_pwm_inst|state.st1~feeder_combout\);

-- Location: FF_X54_Y53_N29
\blue1_pwm_inst|state.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|Selector11~0clkctrl_outclk\,
	d => \blue1_pwm_inst|state.st1~feeder_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue1_pwm_inst|state.st1~q\);

-- Location: LCCOMB_X56_Y53_N22
\red2_pwm_inst|state.st1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \red2_pwm_inst|state.st1~feeder_combout\ = \red2_pwm_inst|pwm_config_process~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red2_pwm_inst|pwm_config_process~0_combout\,
	combout => \red2_pwm_inst|state.st1~feeder_combout\);

-- Location: FF_X56_Y53_N23
\red2_pwm_inst|state.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|Selector11~0clkctrl_outclk\,
	d => \red2_pwm_inst|state.st1~feeder_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \red2_pwm_inst|state.st1~q\);

-- Location: LCCOMB_X52_Y53_N6
\green2_pwm_inst|state.st1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \green2_pwm_inst|state.st1~feeder_combout\ = \green2_pwm_inst|pwm_config_process~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \green2_pwm_inst|pwm_config_process~0_combout\,
	combout => \green2_pwm_inst|state.st1~feeder_combout\);

-- Location: FF_X52_Y53_N7
\green2_pwm_inst|state.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|Selector11~0clkctrl_outclk\,
	d => \green2_pwm_inst|state.st1~feeder_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \green2_pwm_inst|state.st1~q\);

-- Location: LCCOMB_X54_Y53_N26
\blue2_pwm_inst|state.st1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \blue2_pwm_inst|state.st1~feeder_combout\ = \blue2_pwm_inst|pwm_config_process~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blue2_pwm_inst|pwm_config_process~0_combout\,
	combout => \blue2_pwm_inst|state.st1~feeder_combout\);

-- Location: FF_X54_Y53_N27
\blue2_pwm_inst|state.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hlsm_inst|hlsm_helper_inst|Selector11~0clkctrl_outclk\,
	d => \blue2_pwm_inst|state.st1~feeder_combout\,
	clrn => \ALT_INV_ar~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blue2_pwm_inst|state.st1~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


