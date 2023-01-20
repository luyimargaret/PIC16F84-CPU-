library verilog;
use verilog.vl_types.all;
entity sfr is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        en_DECODE       : in     vl_logic;
        IN_opcode       : in     vl_logic_vector(4 downto 0);
        IN_operand      : in     vl_logic_vector(9 downto 0);
        write_en        : in     vl_logic;
        IN_ALU          : in     vl_logic_vector(7 downto 0);
        en_goto         : out    vl_logic;
        en_call         : out    vl_logic;
        en_out          : out    vl_logic;
        en_short_jump   : out    vl_logic;
        OUT_ALU_PC      : out    vl_logic_vector(9 downto 0);
        PORTA           : out    vl_logic_vector(4 downto 0);
        PORTB           : out    vl_logic_vector(7 downto 0)
    );
end sfr;
