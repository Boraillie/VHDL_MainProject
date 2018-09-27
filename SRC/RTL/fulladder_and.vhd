library IEEE;
use IEEE.std_logic_1164.all;
library lib_rtl;

entity fulladder_and is

  port (
        sel_i  : in  std_logic;
        a_i    : in  std_logic;
        b_i    : in  std_logic;
        cin_i  : in  std_logic;
        s_o    : out std_logic;
        cout_o : out std_logic);
end fulladder_and;

architecture fulladder_and_arch of fulladder_and is

    component fulladder
        port (
            a_i    : in  std_logic;
            b_i    : in  std_logic;
            cin_i  : in  std_logic;
            s_o    : out std_logic;
            cout_o : out std_logic
        );
    end component;
  
    signal b_and_s : std_logic;
begin  -- fulladder_and_arch

b_and_s <= b_i and sel_i;

    fulladder_1: fulladder
        port map (
            a_i    => a_i,
            b_i    => b_and_s,
            cin_i  => cin_i,
            s_o    => s_o,
            cout_o => cout_o
        );


end fulladder_and_arch;

configuration fulladder_and_conf of fulladder_and is
    for fulladder_and_arch
            for fulladder_1 : fulladder
                use entity lib_rtl.fulladder(fulladder_arch);
        end for;
    end for;
end fulladder_and_conf;
