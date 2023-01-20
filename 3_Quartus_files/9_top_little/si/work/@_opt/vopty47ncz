library verilog;
use verilog.vl_types.all;
entity top is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        s0              : out    vl_logic;
        s1              : out    vl_logic;
        s2              : out    vl_logic;
        s3              : out    vl_logic;
        s4              : out    vl_logic;
        en_goto         : out    vl_logic;
        en_call         : out    vl_logic;
        en_out          : out    vl_logic;
        en_short_jump   : out    vl_logic;
        s7              : out    vl_logic;
        s6              : out    vl_logic;
        s5              : out    vl_logic;
        Z               : out    vl_logic;
        OUT_ALU_PC      : out    vl_logic_vector(9 downto 0);
        OUT_DECODE      : out    vl_logic_vector(13 downto 0);
        OUT_MEMORY      : out    vl_logic_vector(9 downto 0);
        out_opcode      : out    vl_logic_vector(4 downto 0);
        out_operand     : out    vl_logic_vector(9 downto 0);
        OUT_PC          : out    vl_logic_vector(9 downto 0);
        OUT_SFR         : out    vl_logic_vector(7 downto 0);
        OUT_STACK       : out    vl_logic_vector(9 downto 0);
        PORTA           : out    vl_logic_vector(4 downto 0);
        PORTB           : out    vl_logic_vector(7 downto 0);
        sel             : out    vl_logic_vector(1 downto 0);
        status          : out    vl_logic_vector(7 downto 0);
        W               : out    vl_logic_vector(7 downto 0)
    );
end top;
