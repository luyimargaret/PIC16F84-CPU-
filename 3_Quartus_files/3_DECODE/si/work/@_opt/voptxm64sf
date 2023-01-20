library verilog;
use verilog.vl_types.all;
entity decode is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        IN_MEMORY       : in     vl_logic_vector(13 downto 0);
        OUT_opcode      : out    vl_logic_vector(5 downto 0);
        OUT_operand     : out    vl_logic_vector(10 downto 0);
        en_SFR          : out    vl_logic;
        en_ALU          : out    vl_logic;
        sel             : out    vl_logic_vector(1 downto 0)
    );
end decode;
