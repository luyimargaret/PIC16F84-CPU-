library verilog;
use verilog.vl_types.all;
entity decode is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        IN_MEMORY       : in     vl_logic_vector(13 downto 0);
        OUT_opcode      : out    vl_logic_vector(4 downto 0);
        OUT_operand     : out    vl_logic_vector(9 downto 0);
        sel             : out    vl_logic_vector(1 downto 0)
    );
end decode;
