library IEEE;
use IEEE.std_logic_1164.all;
library lib_rtl;

entity multip_nbits is
  generic (
        Nb_bits : positive
  );
  port (
 
        op1_i : in std_logic_vector(Nb_bits-1 downto 0); --Multiplicande
        op2_i : in std_logic_vector(Nb_bits-1 downto 0); -- celui qui multiplie l'autre
        s_o : out std_logic_vector(2*Nb_bits-1 downto 0) --Somme finale
        );
end multip_nbits;

architecture multip_nbits_arch of multip_nbits is

    component fulladder_nbitsand
        generic(
            N : positive
        );
        port (
            sin_i : in std_logic_vector(N-1 downto 0); --Somme partiel entrante (de l'étage j-1)
            op1_i : in std_logic_vector(N-1 downto 0); --Multiplicande
            op2j_i : in std_logic; -- op2(j) avec  j l'etage contenant le fulladder
            cin_i : in std_logic; --Carry provenant du fulladder N-1 de l'étage j-1
            s_o : out std_logic_vector(N-1 downto 0); --Somme partiel sortante de l'étage j
            cout_o : out std_logic --Carry sortante du full adder N-1 de l'étage j     
        );
    end component;

    type matrix_NN1 is array (0 to Nb_bits) of std_logic_vector (Nb_bits-1 downto 0); 
    signal s_s : matrix_NN1 ; --Matrice stockage somme partielle
    signal null_colonne : std_logic_vector(Nb_bits-1 downto 0);
    signal c_s : std_logic_vector(Nb_bits downto 0);

begin  -- multip_nbits_arch

    null_colonne <= (others => '0');
    s_s(0)(Nb_bits-1 downto 0) <= null_colonne(Nb_bits-1 downto 0);
    c_s(0) <= '0';

l1: for j in 0 to Nb_bits-1 generate
    U0: fulladder_nbitsand
        generic map (
            Nb_bits
        )
        port map (
            sin_i => s_s(j),
            op1_i => op1_i,
            op2j_i => op2_i(j),
            cin_i => c_s(j),
            s_o => s_s(j+1),
            cout_o => c_s(j+1)
        );
        s_o(j) <= s_s(j+1)(0);
end generate l1;

s_o(2*Nb_bits-2 downto Nb_bits) <= s_s(Nb_bits)(Nb_bits-1 downto 1);
s_o(2*Nb_bits-1) <= c_s(Nb_bits);


end multip_nbits_arch;

configuration multip_nbits_conf of multip_nbits is
    for multip_nbits_arch
        for l1
            for U0 : fulladder_nbitsand
                use entity lib_rtl.fulladder_nbitsand(fulladder_nbitsand_arch);
             end for;
        end for;
    end for;
end multip_nbits_conf;
