library ieee;   
use ieee.std_logic_1164.all;

library lib_gates;

entity multip_nbits_synth_tb is

end multip_nbits_synth_tb;

architecture multip_nbits_synth_tb_arch of multip_nbits_synth_tb is

constant N : positive := 4;
    
component multip_nbits_Nb_bits4 is
  
    port(
        op1_i : in std_logic_vector(3 downto 0); --Multiplicande
        op2_i : in std_logic_vector(3 downto 0); -- celui qui multiplie l'autre
        s_o : out std_logic_vector(7 downto 0) --Somme finale
    );
end component;


signal op1_s : std_logic_vector(N-1 downto 0); --Multiplicande
signal op2_s : std_logic_vector(N-1 downto 0); -- op2(j) avec  j l'etage contenant le fulladder
signal s_s : std_logic_vector(2*N-1 downto 0); --Somme partiel sortante de l'étage j


begin

    DUT : multip_nbits_Nb_bits4
    port map(
        op1_i    => op1_s,
        op2_i    => op2_s,
        s_o    => s_s
    );
    
op1_s <= "1111" ;
op2_s <= "1001" ;

end multip_nbits_synth_tb_arch;
