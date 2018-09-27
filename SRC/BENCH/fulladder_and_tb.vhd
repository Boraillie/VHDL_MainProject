library ieee;
use ieee.std_logic_1164.all;

library lib_rtl;

--entite vide
entity fulladder_and_tb is
  
end fulladder_and_tb;

architecture fulladder_and_tb_arch of fulladder_and_tb is
-- declaration du composant a simuler
  component fulladder_and
    port (
      sel_i : in std_logic;
      a_i    : in  std_logic;
      b_i    : in  std_logic;
      cin_i  : in  std_logic;
      s_o    : out std_logic;
      cout_o : out std_logic);
  end component;

  signal sel_s : std_logic;
  signal a_s    : std_logic;
  signal b_s    : std_logic;
  signal cin_s  : std_logic;
  signal s_s    : std_logic;
  signal cout_s : std_logic;
  
begin  -- fulladder_and_tb_arch
  
  DUT : fulladder_and
    port map (
      sel_i => sel_s,
      a_i    => a_s,
      b_i    => b_s,
      cin_i  => cin_s,
      s_o    => s_s,
      cout_o => cout_s);

  sel_s <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 40 ns;
  a_s <= '0', '1' after 15 ns, '0' after 30 ns, '1' after 45 ns;
  b_s <= '0', '1' after 25 ns, '0' after 40 ns, '1' after 55 ns;
  cin_s <= '0';--, '1' after 35 ns, '0' after 50 ns, '1' after 65 ns;

end fulladder_and_tb_arch;

configuration fulladder_and_tb_conf of fulladder_and_tb is
  for fulladder_and_tb_arch
    for DUT : fulladder_and
      use entity lib_rtl.fulladder_and(fulladder_and_arch);
    end for;
  end for;


end fulladder_and_tb_conf;
