library verilog;
use verilog.vl_types.all;
entity IMUX30_3B is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        Q               : out    vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic
    );
end IMUX30_3B;
