library verilog;
use verilog.vl_types.all;
entity TFEC1 is
    port(
        C               : in     vl_logic;
        Q               : out    vl_logic;
        QN              : out    vl_logic;
        RN              : in     vl_logic;
        T               : in     vl_logic
    );
end TFEC1;
