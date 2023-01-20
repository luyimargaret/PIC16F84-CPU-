library verilog;
use verilog.vl_types.all;
entity stack is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        IN_PC           : in     vl_logic_vector(9 downto 0);
        en              : in     vl_logic;
        press_en        : in     vl_logic;
        out_en          : in     vl_logic;
        OUT_PC          : out    vl_logic_vector(9 downto 0)
    );
end stack;
