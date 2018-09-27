library ieee;   
use ieee.std_logic_1164.all;
library lib_rtl;

entity multip_nbits_tb is

end entity;

architecture multip_nbits_tb_arch of multip_nbits_tb is
    
constant N : positive := 8;
    
component multip_nbits is
    generic (
        Nb_bits : positive
    );
   
    port(
        op1_i : in std_logic_vector(Nb_bits-1 downto 0); --Multiplicande
        op2_i : in std_logic_vector(Nb_bits-1 downto 0); -- celui qui multiplie l'autre
        s_o : out std_logic_vector(2*Nb_bits-1 downto 0) --Somme finale
    );
end component;


signal op1_s : std_logic_vector(N-1 downto 0); --Multiplicande
signal op2_s : std_logic_vector(N-1 downto 0); -- op2(j) avec  j l'etage contenant le fulladder
signal s_s : std_logic_vector(2*N-1 downto 0); --Somme partiel sortante de l'étage j


begin

    DUT : multip_nbits
    generic map(
        N
    )
    port map(
        op1_i    => op1_s,
        op2_i    => op2_s,
        s_o    => s_s
    );
    
op1_s <= "11110010" ;
op2_s <= "10011100" ;

end multip_nbits_tb_arch;

configuration multip_nbits_tb_conf of multip_nbits_tb is
	for multip_nbits_tb_arch
		for DUT : multip_nbits
			use entity lib_rtl.multip_nbits(multip_nbits_arch) ;
		end for ;
	end for ;
end multip_nbits_tb_conf ;