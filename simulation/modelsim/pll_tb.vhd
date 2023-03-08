LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.numeric_std.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

ENTITY pll_tb IS
END pll_tb;

ARCHITECTURE arch OF pll_tb IS

	COMPONENT pll IS PORT
		(
		areset		: IN STD_LOGIC  := '0';
		inclk0		: IN STD_LOGIC  := '0';
		c0		: OUT STD_LOGIC ;
		c1		: OUT STD_LOGIC ;
		locked		: OUT STD_LOGIC 
		);
	END COMPONENT;

	SIGNAL 	areset_t	: STD_LOGIC  := '0';
	SIGNAL	inclk0_t	: STD_LOGIC  := '0';
	SIGNAL	c0_t		: STD_LOGIC ;
	SIGNAL	c1_t		: STD_LOGIC ;
	SIGNAL	locked_t	: STD_LOGIC ;

	constant input_clock_period : time := 20 ns;

BEGIN
	pll_inst : pll PORT MAP
		(
		areset	=> areset_t,
		inclk0	=> inclk0_t,
		c0	=> c0_t,
		c1	=> c1_t,
		locked	=> locked_t
	);

	input_clock : PROCESS
	BEGIN
		inclk0_t <= '0';
        	wait for input_clock_period/2;
        	inclk0_t <= '1';
        	wait for input_clock_period/2;
	END PROCESS input_clock;

	areset : PROCESS
	BEGIN
		areset_t <= '1';
		wait for 310 ns;
		areset_t <= '0';
		wait;
	END PROCESS areset;

END arch;