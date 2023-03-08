LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.math_real.ALL;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY ledMatrix_tb IS
END ledMatrix_tb;

ARCHITECTURE arch OF ledMatrix_tb IS

	COMPONENT ledMatrix IS

		GENERIC (
			mx_lines : INTEGER := 16;
			mx_ppline : INTEGER := 32;
			mx_enc_depth : INTEGER := 8);
		PORT (
			clock_50 : IN STD_LOGIC;
			global_AR : IN STD_LOGIC;
			matrix_clock : OUT STD_LOGIC;
			matrix_LE : OUT STD_LOGIC;
			matrix_OE : OUT STD_LOGIC;
			matrix_CBA : OUT STD_LOGIC_VECTOR(INTEGER(ceil(log2(real(mx_lines)))) - 1 DOWNTO 0);
			matrix_R1 : OUT STD_LOGIC;
			matrix_V1 : OUT STD_LOGIC;
			matrix_B1 : OUT STD_LOGIC;
			matrix_R2 : OUT STD_LOGIC;
			matrix_V2 : OUT STD_LOGIC;
			matrix_B2 : OUT STD_LOGIC
		);
	END COMPONENT;

	CONSTANT mx_lines : INTEGER := 16;
	CONSTANT mx_ppline : INTEGER := 32;
	CONSTANT mx_enc_depth : INTEGER := 8;

	SIGNAL clock_50 : STD_LOGIC;
	SIGNAL global_AR : STD_LOGIC;
	SIGNAL matrix_clock : STD_LOGIC;
	SIGNAL matrix_LE : STD_LOGIC;
	SIGNAL matrix_OE : STD_LOGIC;
	SIGNAL matrix_CBA : STD_LOGIC_VECTOR(INTEGER(ceil(log2(real(mx_lines)))) - 1 DOWNTO 0);
	SIGNAL matrix_R1 : STD_LOGIC;
	SIGNAL matrix_V1 : STD_LOGIC;
	SIGNAL matrix_B1 : STD_LOGIC;
	SIGNAL matrix_R2 : STD_LOGIC;
	SIGNAL matrix_V2 : STD_LOGIC;
	SIGNAL matrix_B2 : STD_LOGIC;

	CONSTANT clock_period : TIME := 20 ns; -- 20ns -> f_clock=50 MHz

BEGIN

	ledMatrix_inst : ledMatrix
	GENERIC MAP(
		mx_lines => mx_lines,
		mx_ppline => mx_ppline,
		mx_enc_depth => mx_enc_depth
	)
	PORT MAP

	(
	clock_50 => clock_50,
	global_AR => global_AR,
	matrix_clock => matrix_clock,
	matrix_LE => matrix_LE,
	matrix_OE => matrix_OE,
	matrix_CBA => matrix_CBA,
	matrix_R1 => matrix_R1,
	matrix_V1 => matrix_V1,
	matrix_B1 => matrix_B1,
	matrix_R2 => matrix_R2,
	matrix_V2 => matrix_V2,
	matrix_B2 => matrix_B2
	);

	ar2 : PROCESS
	BEGIN
		global_ar <= '1';
		WAIT FOR 500 ns;
		global_ar <= '0';
		WAIT;
	END PROCESS ar2;

	clock : PROCESS
	BEGIN
		clock_50 <= '0';
		WAIT FOR clock_period/2;
		clock_50 <= '1';
		WAIT FOR clock_period/2;
	END PROCESS clock;

END arch;