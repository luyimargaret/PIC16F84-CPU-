library verilog;
use verilog.vl_types.all;
entity control is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        s0              : out    vl_logic;
        s1              : out    vl_logic;
        s2              : out    vl_logic;
        s3              : out    vl_logic;
        s4              : out    vl_logic;
        s5              : out    vl_logic;
        s6              : out    vl_logic;
        s7              : out    vl_logic
    );
end control;
