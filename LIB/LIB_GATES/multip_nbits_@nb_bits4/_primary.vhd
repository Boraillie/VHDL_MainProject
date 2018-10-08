library verilog;
use verilog.vl_types.all;
entity multip_nbits_Nb_bits4 is
    port(
        op1_i           : in     vl_logic_vector(3 downto 0);
        op2_i           : in     vl_logic_vector(3 downto 0);
        s_o             : out    vl_logic_vector(7 downto 0)
    );
end multip_nbits_Nb_bits4;
