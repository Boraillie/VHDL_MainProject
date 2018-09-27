library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
  
  port (
    a_i    : in  std_logic;
    b_i    : in  std_logic;
    cin_i  : in  std_logic;
    s_o    : out std_logic;
    cout_o : out std_logic);
  

end fulladder;

architecture fulladder_arch of fulladder is

begin  -- fulladder_arch

  s_o <= a_i xor b_i xor cin_i;
  cout_o <= (a_i and b_i) or (a_i and cin_i) or (b_i and cin_i);
  

end fulladder_arch;
