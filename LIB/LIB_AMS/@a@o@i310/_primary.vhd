library verilog;
use verilog.vl_types.all;
entity AOI310 is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        Q               : out    vl_logic
    );
end AOI310;