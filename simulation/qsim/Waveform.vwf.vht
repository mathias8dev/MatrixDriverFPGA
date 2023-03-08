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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/26/2023 01:25:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          hlsm
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hlsm_vhd_vec_tst IS
END hlsm_vhd_vec_tst;
ARCHITECTURE hlsm_arch OF hlsm_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ar : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL mx_CBA : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL mx_clock : STD_LOGIC;
SIGNAL mx_LE : STD_LOGIC;
SIGNAL mx_OE : STD_LOGIC;
SIGNAL rom_add_b : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL rom_add_t : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT hlsm
	PORT (
	ar : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	mx_CBA : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	mx_clock : OUT STD_LOGIC;
	mx_LE : OUT STD_LOGIC;
	mx_OE : OUT STD_LOGIC;
	rom_add_b : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	rom_add_t : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : hlsm
	PORT MAP (
-- list connections between master ports and signals
	ar => ar,
	clock => clock,
	mx_CBA => mx_CBA,
	mx_clock => mx_clock,
	mx_LE => mx_LE,
	mx_OE => mx_OE,
	rom_add_b => rom_add_b,
	rom_add_t => rom_add_t
	);

-- ar
t_prcs_ar: PROCESS
BEGIN
	ar <= '0';
WAIT;
END PROCESS t_prcs_ar;

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		clock <= '0';
		WAIT FOR 10000 ps;
		clock <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;
END hlsm_arch;
