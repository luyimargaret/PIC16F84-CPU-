library verilog;
use verilog.vl_types.all;
entity pc is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        IN_SFR          : in     vl_logic_vector(9 downto 0);
        IN_STACK        : in     vl_logic_vector(9 downto 0);
        goto_en         : in     vl_logic;
        en              : in     vl_logic;
        call_en         : in     vl_logic;
        out_en          : in     vl_logic;
        short_jump_en   : in     vl_logic;
        OUT_STACK       : out    vl_logic_vector(9 downto 0);
        OUT_MEMORY      : out    vl_logic_vector(9 downto 0)
    );
end pc;
