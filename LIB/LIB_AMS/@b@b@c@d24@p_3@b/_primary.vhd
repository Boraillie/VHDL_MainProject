library verilog;
use verilog.vl_types.all;
entity BBCD24P_3B is
    port(
        A               : in     vl_logic;
        EN              : in     vl_logic;
        PAD             : inout  vl_logic;
        Y               : out    vl_logic
    );
end BBCD24P_3B;
