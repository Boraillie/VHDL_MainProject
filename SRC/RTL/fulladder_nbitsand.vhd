library IEEE;
use IEEE.std_logic_1164.all;
library lib_rtl;

entity fulladder_nbitsand is
  generic (
        N : positive
  );
  port (
      --On se considère à l'étage J
        sin_i : in std_logic_vector(N-1 downto 0); --Somme partiel entrante (de l'étage j-1)
        op1_i : in std_logic_vector(N-1 downto 0); --Multiplicande
        op2j_i : in std_logic; -- op2(j) avec  j l'etage contenant le fulladder
        cin_i : in std_logic; --Carry provenant du fulladder N-1 de l'étage j-1
        s_o : out std_logic_vector(N-1 downto 0); --Somme partiel sortante de l'étage j
        cout_o : out std_logic --Carry sortante du full adder N-1 de l'étage j
        );
end fulladder_nbitsand;

architecture fulladder_nbitsand_arch of fulladder_nbitsand is

    component fulladder
        port (
            a_i    : in  std_logic;
            b_i    : in  std_logic;
            cin_i  : in  std_logic;
            s_o    : out std_logic;
            cout_o : out std_logic       
        );
    end component;

    signal a_s : std_logic_vector(N-1 downto 0); --Signal en sortie des portes AND 
    signal c_s : std_logic_vector(N downto 0); --Carry se propragent sur les N fulladder (vaut 0 au premier)   
    signal sin_s : std_logic_vector(N downto 0); --Somme partielle entrante + ajout d'un 0 en MSB
    


begin  -- fulladder_nbitsand_arch

c_s(0) <= '0'; -- Première carry nulle
sin_s(N-1 downto 0) <= sin_i;
sin_s(N) <= cin_i;

l1: for k in 0 to N-1 generate
    a_s(k) <= op1_i(k) and op2j_i;

    U0: fulladder
        port map (
            a_i    => a_s(k),
            b_i    => sin_s(k+1),
            cin_i  => c_s(k),
            s_o    => s_o(k),
            cout_o => c_s(k+1)
        );
end generate l1;

cout_o <= c_s(N);

end fulladder_nbitsand_arch;

configuration fulladder_nbitsand_conf of fulladder_nbitsand is
    for fulladder_nbitsand_arch
        for l1
            for U0 : fulladder
                use entity lib_rtl.fulladder(fulladder_arch);
             end for;
        end for;
    end for;
end fulladder_nbitsand_conf;
