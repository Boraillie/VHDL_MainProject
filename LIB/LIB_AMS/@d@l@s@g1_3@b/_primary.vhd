library verilog;
use verilog.vl_types.all;
entity DLSG1_3B is
    port(
        C               : in     vl_logic;
        E               : in     vl_logic;
        SE              : in     vl_logic;
        GCK             : out    vl_logic
    );
end DLSG1_3B;
