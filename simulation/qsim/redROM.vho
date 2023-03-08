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

-- DATE "02/26/2023 01:25:37"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hlsm IS
    PORT (
	ar : IN std_logic;
	clock : IN std_logic;
	mx_LE : OUT std_logic;
	mx_OE : OUT std_logic;
	mx_clock : OUT std_logic;
	mx_CBA : OUT std_logic_vector(2 DOWNTO 0);
	rom_add_t : OUT std_logic_vector(8 DOWNTO 0);
	rom_add_b : OUT std_logic_vector(8 DOWNTO 0)
	);
END hlsm;

-- Design Ports Information
-- ar	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mx_LE	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mx_OE	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mx_clock	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mx_CBA[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mx_CBA[1]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mx_CBA[2]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_t[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_t[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_t[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_t[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_t[4]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_t[5]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_t[6]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_t[7]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_t[8]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_b[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_b[1]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_b[2]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_b[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_b[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_b[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_b[6]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_b[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rom_add_b[8]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hlsm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ar : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_mx_LE : std_logic;
SIGNAL ww_mx_OE : std_logic;
SIGNAL ww_mx_clock : std_logic;
SIGNAL ww_mx_CBA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_rom_add_t : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_rom_add_b : std_logic_vector(8 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \LessThan4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ar~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \mx_LE~output_o\ : std_logic;
SIGNAL \mx_OE~output_o\ : std_logic;
SIGNAL \mx_clock~output_o\ : std_logic;
SIGNAL \mx_CBA[0]~output_o\ : std_logic;
SIGNAL \mx_CBA[1]~output_o\ : std_logic;
SIGNAL \mx_CBA[2]~output_o\ : std_logic;
SIGNAL \rom_add_t[0]~output_o\ : std_logic;
SIGNAL \rom_add_t[1]~output_o\ : std_logic;
SIGNAL \rom_add_t[2]~output_o\ : std_logic;
SIGNAL \rom_add_t[3]~output_o\ : std_logic;
SIGNAL \rom_add_t[4]~output_o\ : std_logic;
SIGNAL \rom_add_t[5]~output_o\ : std_logic;
SIGNAL \rom_add_t[6]~output_o\ : std_logic;
SIGNAL \rom_add_t[7]~output_o\ : std_logic;
SIGNAL \rom_add_t[8]~output_o\ : std_logic;
SIGNAL \rom_add_b[0]~output_o\ : std_logic;
SIGNAL \rom_add_b[1]~output_o\ : std_logic;
SIGNAL \rom_add_b[2]~output_o\ : std_logic;
SIGNAL \rom_add_b[3]~output_o\ : std_logic;
SIGNAL \rom_add_b[4]~output_o\ : std_logic;
SIGNAL \rom_add_b[5]~output_o\ : std_logic;
SIGNAL \rom_add_b[6]~output_o\ : std_logic;
SIGNAL \rom_add_b[7]~output_o\ : std_logic;
SIGNAL \rom_add_b[8]~output_o\ : std_logic;
SIGNAL \mx_LE_hscnt[0]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan4~0clkctrl_outclk\ : std_logic;
SIGNAL \mx_OE_hscnt~1_combout\ : std_logic;
SIGNAL \mx_OE_hscnt~2_combout\ : std_logic;
SIGNAL \mx_OE_hscnt~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \mx_clock_cnt[0]~1_combout\ : std_logic;
SIGNAL \mx_clock_cnt[1]~0_combout\ : std_logic;
SIGNAL \mx_clock_process~0_combout\ : std_logic;
SIGNAL \mx_clock~reg0_q\ : std_logic;
SIGNAL mx_clock_cnt : std_logic_vector(1 DOWNTO 0);
SIGNAL mx_LE_hscnt : std_logic_vector(1 DOWNTO 0);
SIGNAL mx_OE_hscnt : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_ar <= ar;
ww_clock <= clock;
mx_LE <= ww_mx_LE;
mx_OE <= ww_mx_OE;
mx_clock <= ww_mx_clock;
mx_CBA <= ww_mx_CBA;
rom_add_t <= ww_rom_add_t;
rom_add_b <= ww_rom_add_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\LessThan4~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \LessThan4~0_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X51_Y0_N23
\mx_LE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan2~0_combout\,
	devoe => ww_devoe,
	o => \mx_LE~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\mx_OE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan4~0_combout\,
	devoe => ww_devoe,
	o => \mx_OE~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\mx_clock~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mx_clock~reg0_q\,
	devoe => ww_devoe,
	o => \mx_clock~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\mx_CBA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mx_CBA[0]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\mx_CBA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mx_CBA[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\mx_CBA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mx_CBA[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\rom_add_t[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_t[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\rom_add_t[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_t[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\rom_add_t[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_t[2]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\rom_add_t[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_t[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\rom_add_t[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_t[4]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\rom_add_t[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_t[5]~output_o\);

-- Location: IOOBUF_X78_Y18_N9
\rom_add_t[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_t[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\rom_add_t[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_t[7]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\rom_add_t[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_t[8]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\rom_add_b[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_b[0]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\rom_add_b[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_b[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\rom_add_b[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_b[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\rom_add_b[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_b[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\rom_add_b[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_b[4]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\rom_add_b[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_b[5]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\rom_add_b[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_b[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\rom_add_b[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_b[7]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\rom_add_b[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rom_add_b[8]~output_o\);

-- Location: LCCOMB_X51_Y1_N12
\mx_LE_hscnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mx_LE_hscnt[0]~0_combout\ = (mx_LE_hscnt(1) & !\mx_LE_hscnt[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mx_LE_hscnt(1),
	datad => \mx_LE_hscnt[0]~0_combout\,
	combout => \mx_LE_hscnt[0]~0_combout\);

-- Location: LCCOMB_X51_Y1_N30
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = mx_LE_hscnt(1) $ (\mx_LE_hscnt[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mx_LE_hscnt(1),
	datad => \mx_LE_hscnt[0]~0_combout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X51_Y1_N10
\mx_LE_hscnt[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mx_LE_hscnt(1) = (\LessThan2~0_combout\ & (\Add1~0_combout\)) # (!\LessThan2~0_combout\ & ((mx_LE_hscnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~0_combout\,
	datac => \Add1~0_combout\,
	datad => mx_LE_hscnt(1),
	combout => mx_LE_hscnt(1));

-- Location: LCCOMB_X51_Y1_N0
\LessThan2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (mx_LE_hscnt(1)) # (\mx_LE_hscnt[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mx_LE_hscnt(1),
	datad => \mx_LE_hscnt[0]~0_combout\,
	combout => \LessThan2~0_combout\);

-- Location: CLKCTRL_G15
\LessThan4~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LessThan4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LessThan4~0clkctrl_outclk\);

-- Location: LCCOMB_X45_Y1_N22
\mx_OE_hscnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mx_OE_hscnt~1_combout\ = (mx_OE_hscnt(0) & ((mx_OE_hscnt(2)) # (!mx_OE_hscnt(1)))) # (!mx_OE_hscnt(0) & ((mx_OE_hscnt(1)) # (!mx_OE_hscnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mx_OE_hscnt(0),
	datac => mx_OE_hscnt(2),
	datad => mx_OE_hscnt(1),
	combout => \mx_OE_hscnt~1_combout\);

-- Location: LCCOMB_X45_Y1_N30
\mx_OE_hscnt[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mx_OE_hscnt(2) = (GLOBAL(\LessThan4~0clkctrl_outclk\) & ((!\mx_OE_hscnt~1_combout\))) # (!GLOBAL(\LessThan4~0clkctrl_outclk\) & (mx_OE_hscnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mx_OE_hscnt(2),
	datac => \mx_OE_hscnt~1_combout\,
	datad => \LessThan4~0clkctrl_outclk\,
	combout => mx_OE_hscnt(2));

-- Location: LCCOMB_X45_Y1_N26
\mx_OE_hscnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mx_OE_hscnt~2_combout\ = (mx_OE_hscnt(0)) # ((mx_OE_hscnt(2) & mx_OE_hscnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mx_OE_hscnt(0),
	datac => mx_OE_hscnt(2),
	datad => mx_OE_hscnt(1),
	combout => \mx_OE_hscnt~2_combout\);

-- Location: LCCOMB_X45_Y1_N18
\mx_OE_hscnt[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mx_OE_hscnt(0) = (GLOBAL(\LessThan4~0clkctrl_outclk\) & (!\mx_OE_hscnt~2_combout\)) # (!GLOBAL(\LessThan4~0clkctrl_outclk\) & ((mx_OE_hscnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0clkctrl_outclk\,
	datac => \mx_OE_hscnt~2_combout\,
	datad => mx_OE_hscnt(0),
	combout => mx_OE_hscnt(0));

-- Location: LCCOMB_X45_Y1_N12
\mx_OE_hscnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mx_OE_hscnt~0_combout\ = (!mx_OE_hscnt(2) & (mx_OE_hscnt(0) $ (mx_OE_hscnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mx_OE_hscnt(0),
	datac => mx_OE_hscnt(2),
	datad => mx_OE_hscnt(1),
	combout => \mx_OE_hscnt~0_combout\);

-- Location: LCCOMB_X45_Y1_N28
\mx_OE_hscnt[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- mx_OE_hscnt(1) = (GLOBAL(\LessThan4~0clkctrl_outclk\) & (\mx_OE_hscnt~0_combout\)) # (!GLOBAL(\LessThan4~0clkctrl_outclk\) & ((mx_OE_hscnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mx_OE_hscnt~0_combout\,
	datac => mx_OE_hscnt(1),
	datad => \LessThan4~0clkctrl_outclk\,
	combout => mx_OE_hscnt(1));

-- Location: LCCOMB_X45_Y1_N0
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (mx_OE_hscnt(1)) # ((mx_OE_hscnt(2)) # (mx_OE_hscnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mx_OE_hscnt(1),
	datac => mx_OE_hscnt(2),
	datad => mx_OE_hscnt(0),
	combout => \LessThan4~0_combout\);

-- Location: IOIBUF_X0_Y18_N15
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G3
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y1_N6
\mx_clock_cnt[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mx_clock_cnt[0]~1_combout\ = !mx_clock_cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mx_clock_cnt(0),
	combout => \mx_clock_cnt[0]~1_combout\);

-- Location: FF_X45_Y1_N7
\mx_clock_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mx_clock_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mx_clock_cnt(0));

-- Location: LCCOMB_X45_Y1_N24
\mx_clock_cnt[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mx_clock_cnt[1]~0_combout\ = mx_clock_cnt(1) $ (mx_clock_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => mx_clock_cnt(1),
	datad => mx_clock_cnt(0),
	combout => \mx_clock_cnt[1]~0_combout\);

-- Location: FF_X45_Y1_N25
\mx_clock_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mx_clock_cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mx_clock_cnt(1));

-- Location: LCCOMB_X45_Y1_N10
\mx_clock_process~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mx_clock_process~0_combout\ = (mx_OE_hscnt(2)) # ((mx_OE_hscnt(1)) # ((mx_OE_hscnt(0)) # (!mx_clock_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mx_OE_hscnt(2),
	datab => mx_OE_hscnt(1),
	datac => mx_OE_hscnt(0),
	datad => mx_clock_cnt(1),
	combout => \mx_clock_process~0_combout\);

-- Location: FF_X45_Y1_N11
\mx_clock~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mx_clock_process~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mx_clock~reg0_q\);

-- Location: IOIBUF_X78_Y3_N22
\ar~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ar,
	o => \ar~input_o\);

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
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_mx_LE <= \mx_LE~output_o\;

ww_mx_OE <= \mx_OE~output_o\;

ww_mx_clock <= \mx_clock~output_o\;

ww_mx_CBA(0) <= \mx_CBA[0]~output_o\;

ww_mx_CBA(1) <= \mx_CBA[1]~output_o\;

ww_mx_CBA(2) <= \mx_CBA[2]~output_o\;

ww_rom_add_t(0) <= \rom_add_t[0]~output_o\;

ww_rom_add_t(1) <= \rom_add_t[1]~output_o\;

ww_rom_add_t(2) <= \rom_add_t[2]~output_o\;

ww_rom_add_t(3) <= \rom_add_t[3]~output_o\;

ww_rom_add_t(4) <= \rom_add_t[4]~output_o\;

ww_rom_add_t(5) <= \rom_add_t[5]~output_o\;

ww_rom_add_t(6) <= \rom_add_t[6]~output_o\;

ww_rom_add_t(7) <= \rom_add_t[7]~output_o\;

ww_rom_add_t(8) <= \rom_add_t[8]~output_o\;

ww_rom_add_b(0) <= \rom_add_b[0]~output_o\;

ww_rom_add_b(1) <= \rom_add_b[1]~output_o\;

ww_rom_add_b(2) <= \rom_add_b[2]~output_o\;

ww_rom_add_b(3) <= \rom_add_b[3]~output_o\;

ww_rom_add_b(4) <= \rom_add_b[4]~output_o\;

ww_rom_add_b(5) <= \rom_add_b[5]~output_o\;

ww_rom_add_b(6) <= \rom_add_b[6]~output_o\;

ww_rom_add_b(7) <= \rom_add_b[7]~output_o\;

ww_rom_add_b(8) <= \rom_add_b[8]~output_o\;
END structure;


