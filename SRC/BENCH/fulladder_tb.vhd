library ieee;
use ieee.std_logic_1164.all;

library lib_rtl;

--entite vide
entity fulladder_tb is
  
end fulladder_tb;

architecture fulladder_tb_arch of fulladder_tb is
-- declaration du composant a simuler
  component fulladder
    port (
      a_i    : in  std_logic;
      b_i    : in  std_logic;
      cin_i  : in  std_logic;
      s_o    : out std_logic;
      cout_o : out std_logic);
  end component;

  signal a_s    : std_logic;
  signal b_s    : std_logic;
  signal cin_s  : std_logic;
  signal s_s    : std_logic;
  signal cout_s : std_logic;
  
begin  -- fulladder_tb_arch
  
  DUT : fulladder
    port map (
      a_i    => a_s,
      b_i    => b_s,
      cin_i  => cin_s,
      s_o    => s_s,
      cout_o => cout_s);

  a_s <= '0', '1' after 15 ns, '0' after 30 ns, '1' after 45 ns;
  b_s <= '0', '1' after 25 ns, '0' after 40 ns, '1' after 55 ns;
  cin_s <= '0', '1' after 35 ns, '0' after 50 ns, '1' after 65 ns;

end fulladder_tb_arch;

configuration fulladder_tb_conf of fulladder_tb is
  for fulladder_tb_arch
    for DUT : fulladder
      use entity lib_rtl.fulladder(fulladder_arch);
    end for;
  end for;


end fulladder_tb_conf;
