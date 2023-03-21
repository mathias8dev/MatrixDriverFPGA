LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use ieee.math_real.all;

ENTITY bcm IS

	GENERIC (mx_enc_depth : INTEGER := 8);

	PORT (
		mx_clock : IN STD_LOGIC;
		cnt_bcm : IN STD_LOGIC_VECTOR(INTEGER(ceil(log2(real(mx_enc_depth)))) - 1 DOWNTO 0);
		color_cp : IN STD_LOGIC_VECTOR(mx_enc_depth - 1 DOWNTO 0);
		color_cpm : OUT STD_LOGIC -- color_cpm: Color Component modulated
	);
END bcm;

ARCHITECTURE arch OF bcm IS
BEGIN

	state_process : PROCESS (mx_clock, cnt_bcm)
	BEGIN
		IF rising_edge(mx_clock) AND mx_clock = '1' THEN
			IF color_cp(cnt_bcm) = '1' THEN
				color_cpm <= '1';
			ELSE
				color_cpm <= '0';
			END IF;
		END IF;
	END PROCESS state_process;

END ARCHITECTURE arch;