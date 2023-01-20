library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        en_DECODE       : in     vl_logic;
        IN_opcode       : in     vl_logic_vector(5 downto 0);
        IN_operand      : in     vl_logic_vector(10 downto 0);
        IN_SER          : in     vl_logic_vector(9 downto 0);
        OUT_SFR         : out    vl_logic_vector(7 downto 0);
        W               : out    vl_logic_vector(7 downto 0)
    );
end alu;
