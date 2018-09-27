library ieee;   
use ieee.std_logic_1164.all;
library lib_rtl;

entity fulladder_nbitsand_tb is

end entity;

architecture fulladder_nbitsand_tb_arch of fulladder_nbitsand_tb is
    
constant Nb_bit : positive := 3;
    
component fulladder_nbitsand is
    generic (
        N : positive
    );
   
    port(
        sin_i : in std_logic_vector(Nb_bit-1 downto 0); --Somme partiel entrante (de l'étage j-1)
        op1_i : in std_logic_vector(Nb_bit-1 downto 0); --Multiplicande
        op2j_i : in std_logic; -- op2(j) avec  j l'etage contenant le fulladder
        cin_i : in std_logic; --Carry provenant du fulladder Nb_bit-1 de l'étage j-1
        s_o : out std_logic_vector(Nb_bit-1 downto 0); --Somme partiel sortante de l'étage j
        cout_o : out std_logic --Carry sortante du full adder Nb_bit-1 de l'étage j
    );
end component;


signal sin_s : std_logic_vector(Nb_bit-1 downto 0); --Somme partiel entrante (de l'étage j-1)
signal op1_s : std_logic_vector(Nb_bit-1 downto 0); --Multiplicande
signal op2j_s : std_logic; -- op2(j) avec  j l'etage contenant le fulladder
signal cin_s : std_logic; --Carry provenant du fulladder Nb_bit-1 de l'étage j-1
signal s_s : std_logic_vector(Nb_bit-1 downto 0); --Somme partiel sortante de l'étage j
signal cout_s : std_logic; --Carry sortante du full adder Nb_bit-1 de l'étage j


begin

    DUT : fulladder_nbitsand
    generic map(
        Nb_bit
    )
    port map(
        op1_i    => op1_s,
        op2j_i    => op2j_s,
        cin_i  => cin_s,
        s_o    => s_s,
        cout_o => cout_s,
        sin_i => sin_s
    );
    
op1_s <= "111" ;
op2j_s <= '1';
cin_s <= '0';
sin_s <= "011";

end fulladder_nbitsand_tb_arch;

configuration fulladder_nbitsand_tb_conf of fulladder_nbitsand_tb is
	for fulladder_nbitsand_tb_arch
		for DUT : fulladder_nbitsand
			use entity lib_rtl.fulladder_nbitsand(fulladder_nbitsand_arch) ;
		end for ;
	end for ;
end fulladder_nbitsand_tb_conf ;