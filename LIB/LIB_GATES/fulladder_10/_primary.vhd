library verilog;
use verilog.vl_types.all;
entity fulladder_10 is
    port(
        a_i             : in     vl_logic;
        b_i             : in     vl_logic;
        cin_i           : in     vl_logic;
        s_o             : out    vl_logic;
        cout_o          : out    vl_logic
    );
end fulladder_10;
