library verilog;
use verilog.vl_types.all;
entity JKCP3 is
    port(
        C               : in     vl_logic;
        J               : in     vl_logic;
        K               : in     vl_logic;
        Q               : out    vl_logic;
        QN              : out    vl_logic;
        RN              : in     vl_logic;
        SN              : in     vl_logic
    );
end JKCP3;
