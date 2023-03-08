LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.math_real.ALL;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.ALL;

ENTITY ledMatrix IS

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
		matrix_CBA : OUT STD_LOGIC_VECTOR(INTEGER(ceil(log2(real(mx_lines)))) - 2 DOWNTO 0);
		matrix_R1 : OUT STD_LOGIC;
		matrix_V1 : OUT STD_LOGIC;
		matrix_B1 : OUT STD_LOGIC;
		matrix_R2 : OUT STD_LOGIC;
		matrix_V2 : OUT STD_LOGIC;
		matrix_B2 : OUT STD_LOGIC
	);
END ledMatrix;

ARCHITECTURE struct OF ledMatrix IS

	SIGNAL ar : STD_LOGIC;
	SIGNAL pll_locked : STD_LOGIC;
	SIGNAL clock_4 : STD_LOGIC;
	SIGNAL rom_address_top, rom_address_bottom : STD_LOGIC_VECTOR (mx_lines / 2 DOWNTO 0);
	SIGNAL red1_color, red2_color : STD_LOGIC;
	SIGNAL blue1_color, blue2_color : STD_LOGIC;
	SIGNAL green1_color, green2_color : STD_LOGIC;
	SIGNAL red1_color_cp, red2_color_cp : STD_LOGIC_VECTOR(mx_enc_depth - 1 DOWNTO 0);
	SIGNAL gamma_red1_color_cp, gamma_red2_color_cp : STD_LOGIC_VECTOR(mx_enc_depth - 1 DOWNTO 0);
	SIGNAL green1_color_cp, green2_color_cp : STD_LOGIC_VECTOR(mx_enc_depth - 1 DOWNTO 0);
	SIGNAL gamma_green1_color_cp, gamma_green2_color_cp : STD_LOGIC_VECTOR(mx_enc_depth - 1 DOWNTO 0);
	SIGNAL blue1_color_cp, blue2_color_cp : STD_LOGIC_VECTOR(mx_enc_depth - 1 DOWNTO 0);
	SIGNAL gamma_blue1_color_cp, gamma_blue2_color_cp : STD_LOGIC_VECTOR(mx_enc_depth - 1 DOWNTO 0);
	SIGNAL mx_clock : STD_LOGIC;
	SIGNAL mx_LE : STD_LOGIC;
	SIGNAL mx_OE : STD_LOGIC;
	SIGNAL pwm_cnt : STD_LOGIC_VECTOR(mx_enc_depth - 1 DOWNTO 0);

	COMPONENT redROM IS PORT (
		address_a : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		address_b : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		clock : IN STD_LOGIC := '1';
		q_a : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		q_b : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT greenROM IS PORT (
		address_a : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		address_b : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		clock : IN STD_LOGIC := '1';
		q_a : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		q_b : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT blueROM IS PORT (
		address_a : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		address_b : IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		clock : IN STD_LOGIC := '1';
		q_a : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
		q_b : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT pll IS PORT (
		areset : IN STD_LOGIC := '0';
		inclk0 : IN STD_LOGIC := '0';
		c0 : OUT STD_LOGIC;
		c1 : OUT STD_LOGIC;
		locked : OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT hlsm IS
		GENERIC (
			mx_lines : INTEGER := 16;
			mx_ppline : INTEGER := 32;
			mx_enc_depth : INTEGER := 8);
		PORT (
			ar : IN STD_LOGIC;
			clock : IN STD_LOGIC;
			mx_LE : OUT STD_LOGIC;
			mx_OE : OUT STD_LOGIC;
			mx_clock : OUT STD_LOGIC;
			mx_CBA : OUT STD_LOGIC_VECTOR(INTEGER(ceil(log2(real(mx_lines)))) - 2 DOWNTO 0);
			rom_add_t : OUT STD_LOGIC_VECTOR(INTEGER(ceil(log2(real(mx_lines * mx_ppline)))) - 1 DOWNTO 0);
			rom_add_b : OUT STD_LOGIC_VECTOR(INTEGER(ceil(log2(real(mx_lines * mx_ppline)))) - 1 DOWNTO 0);
			pwm_cnt : OUT STD_LOGIC_VECTOR(mx_enc_depth - 1 DOWNTO 0)
		);
	END COMPONENT;

	COMPONENT pwm IS

		GENERIC (mx_enc_depth : INTEGER := 8);

		PORT (
			mx_clock : IN STD_LOGIC;
			cnt_pwm : IN STD_LOGIC_VECTOR(mx_enc_depth - 1 DOWNTO 0);
			color_cp : IN STD_LOGIC_VECTOR(mx_enc_depth - 1 DOWNTO 0);
			color_cpm : OUT STD_LOGIC
		);

	END COMPONENT;

	component gammaCorrection is port(
		color_cp: in std_logic_vector(7 downto 0);
		output_color: out std_logic_vector(7 downto 0)
	);

  end component;

BEGIN

	ar <= global_ar OR NOT pll_locked;

	------------------------------------------
	-- ROM
	------------------------------------------
	redROM_inst : redROM PORT MAP
	(
		address_a => rom_address_top,
		address_b => rom_address_bottom,
		clock => clock_4,
		q_a => red1_color_cp,
		q_b => red2_color_cp
	);

	greenROM_inst : greenROM PORT MAP
	(
		address_a => rom_address_top,
		address_b => rom_address_bottom,
		clock => clock_4,
		q_a => green1_color_cp,
		q_b => green2_color_cp
	);

	blueROM_inst : blueROM PORT MAP
	(
		address_a => rom_address_top,
		address_b => rom_address_bottom,
		clock => clock_4,
		q_a => blue1_color_cp,
		q_b => blue2_color_cp
	);

	------------------------------------------
	-- pll
	------------------------------------------
	pll_inst : pll PORT MAP
	(
		areset => global_AR,
		inclk0 => clock_50,
		c0 => clock_4,
		c1 => OPEN,
		locked => pll_locked
	);

	------------------------------------------
	-- hlsm
	------------------------------------------
	hlsm_inst : hlsm
	GENERIC MAP(
		mx_lines => mx_lines,
		mx_ppline => mx_ppline,
		mx_enc_depth => mx_enc_depth
	)
	PORT MAP
	(
		ar => ar,
		clock => clock_4,
		mx_LE => mx_LE,
		mx_OE => mx_OE,
		mx_clock => mx_clock,
		mx_CBA => matrix_CBA,
		rom_add_t => rom_address_top,
		rom_add_b => rom_address_bottom,
		pwm_cnt => pwm_cnt
	);


	------------------------------------------
	-- gammaCorrection
	------------------------------------------
	red1_gammaCorrection_inst : gammaCorrection PORT MAP(
  		color_cp => red1_color_cp,
		output_color => gamma_red1_color_cp
	);

	green1_gammaCorrection_inst : gammaCorrection PORT MAP(
  		color_cp => green1_color_cp,
		output_color => gamma_green1_color_cp
	);

	blue1_gammaCorrection_inst : gammaCorrection PORT MAP(
  		color_cp => blue1_color_cp,
		output_color => gamma_blue1_color_cp
	);

	red2_gammaCorrection_inst : gammaCorrection PORT MAP(
  		color_cp => red2_color_cp,
		output_color => gamma_red2_color_cp
	);

	green2_gammaCorrection_inst : gammaCorrection PORT MAP(
  		color_cp => green2_color_cp,
		output_color => gamma_green2_color_cp
	);

	blue2_gammaCorrection_inst : gammaCorrection PORT MAP(
  		color_cp => blue2_color_cp,
		output_color => gamma_blue2_color_cp
	);


	------------------------------------------
	-- pwm
	------------------------------------------
	red1_pwm_inst : pwm GENERIC MAP(
		mx_enc_depth => mx_enc_depth)
	PORT MAP(
		mx_clock => mx_clock,
		cnt_pwm => pwm_cnt,
		color_cp => gamma_red1_color_cp,
		color_cpm => matrix_R1);

	green1_pwm_inst : pwm GENERIC MAP(
		mx_enc_depth => mx_enc_depth)
	PORT MAP(
		mx_clock => mx_clock,
		cnt_pwm => pwm_cnt,
		color_cp => gamma_green1_color_cp,
		color_cpm => matrix_V1);

	blue1_pwm_inst : pwm GENERIC MAP(
		mx_enc_depth => mx_enc_depth)
	PORT MAP(
		mx_clock => mx_clock,
		cnt_pwm => pwm_cnt,
		color_cp => gamma_blue1_color_cp,
		color_cpm => matrix_B1);

	red2_pwm_inst : pwm GENERIC MAP(
		mx_enc_depth => mx_enc_depth)
	PORT MAP(
		mx_clock => mx_clock,
		cnt_pwm => pwm_cnt,
		color_cp => gamma_red2_color_cp,
		color_cpm => matrix_R2);

	green2_pwm_inst : pwm GENERIC MAP(
		mx_enc_depth => mx_enc_depth)
	PORT MAP(
		mx_clock => mx_clock,
		cnt_pwm => pwm_cnt,
		color_cp => gamma_green2_color_cp,
		color_cpm => matrix_V2);

	blue2_pwm_inst : pwm GENERIC MAP(
		mx_enc_depth => mx_enc_depth)
	PORT MAP(
		mx_clock => mx_clock,
		cnt_pwm => pwm_cnt,
		color_cp => gamma_blue2_color_cp,
		color_cpm => matrix_B2);

	matrix_clock <= mx_clock;
	matrix_LE <= mx_LE;
	matrix_OE <= mx_OE;

END struct;