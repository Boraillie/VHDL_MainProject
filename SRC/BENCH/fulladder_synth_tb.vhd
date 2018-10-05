library ieee;
use ieee.std_logic_1164.all;

library lib_gates;

entity fulladder_synth_tb is
  
end fulladder_synth_tb;

architecture fulladder_synth_tb_arch of fulladder_synth_tb is


  component fulladder
    port (
      a_i, b_i, cin_i : in  std_logic;
      s_o, cout_o     : out std_logic);
  end component;

  signal a_s, b_s, cin_s : std_logic;
  signal s_s, cout_s     : std_logic;

  begin 
   
    DUT: fulladder
      port map (
        a_i    => a_s,
        b_i    => b_s,
        cin_i  => cin_s,
        s_o    => s_s,
        cout_o => cout_s);

    a_s <= '0', '1' after 15 ns, '0' after 30 ns, '1' after 45 ns;
    b_s <= '0', '1' after 25 ns, '0' after 40 ns, '1' after 55 ns;
    cin_s <= '0', '1' after 35 ns, '0' after 50 ns, '1' after 65 ns;

end fulladder_synth_tb_arch;
