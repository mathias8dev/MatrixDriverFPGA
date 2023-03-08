LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.math_real.ALL;

ENTITY hlsm_tb IS
END hlsm_tb;

ARCHITECTURE arch OF hlsm_tb IS
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
            mx_CBA : OUT STD_LOGIC_VECTOR(INTEGER(ceil(log2(real(mx_lines)))) - 1 DOWNTO 0);
            rom_add_t : OUT STD_LOGIC_VECTOR(INTEGER(ceil(log2(real(mx_lines * mx_ppline)))) - 1 DOWNTO 0);
            rom_add_b : OUT STD_LOGIC_VECTOR(INTEGER(ceil(log2(real(mx_lines * mx_ppline)))) - 1 DOWNTO 0);
            pwm_cnt : OUT STD_LOGIC_VECTOR(mx_enc_depth - 1 DOWNTO 0)
        );
    END COMPONENT;

    CONSTANT clock_period : TIME := 250 ns;
    CONSTANT mx_lines : INTEGER := 4;
    CONSTANT mx_ppline : INTEGER := 4;
    CONSTANT mx_enc_depth : INTEGER := 2;

    SIGNAL ar : STD_LOGIC;
    SIGNAL clock : STD_LOGIC;
    SIGNAL mx_LE : STD_LOGIC;
    SIGNAL mx_OE : STD_LOGIC;
    SIGNAL mx_clock : STD_LOGIC;
    SIGNAL mx_CBA : STD_LOGIC_VECTOR(INTEGER(ceil(log2(real(mx_lines)))) - 1 DOWNTO 0);
    SIGNAL rom_add_t : STD_LOGIC_VECTOR(INTEGER(ceil(log2(real(mx_lines * mx_ppline)))) - 1 DOWNTO 0);
    SIGNAL rom_add_b : STD_LOGIC_VECTOR(INTEGER(ceil(log2(real(mx_lines * mx_ppline)))) - 1 DOWNTO 0);
    SIGNAL pwm_cnt : STD_LOGIC_VECTOR(mx_enc_depth - 1 DOWNTO 0);

BEGIN

    hlsm_inst : hlsm
    GENERIC MAP(
        mx_lines => mx_lines,
        mx_ppline => mx_ppline,
        mx_enc_depth => mx_enc_depth
    )
    PORT MAP(
        ar => ar,
        clock => clock,
        mx_LE => mx_LE,
        mx_OE => mx_OE,
        mx_clock => mx_clock,
        mx_CBA => mx_CBA,
        rom_add_t => rom_add_t,
        rom_add_b => rom_add_b,
        pwm_cnt => pwm_cnt
    );

    ar_process : PROCESS
    BEGIN
        ar <= '1';
        WAIT FOR clock_period * 3;
        ar <= '0';
        WAIT;
    END PROCESS;

    clock_process : PROCESS
    BEGIN
        clock <= '1';
        WAIT FOR clock_period / 2;
        clock <= '0';
        WAIT FOR clock_period /2;
    END PROCESS clock_process;
END ARCHITECTURE arch;