library verilog;
use verilog.vl_types.all;
entity INV8 is
    port(
        A               : in     vl_logic;
        Q               : out    vl_logic
    );
end INV8;
