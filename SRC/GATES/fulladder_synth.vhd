
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_fulladder is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_fulladder;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_fulladder.all;

entity fulladder is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder;

architecture SYN_fulladder_arch of fulladder is

   component CLKIN15
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component XOR22
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component NOR24
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   signal N0, N1, N2, N3, N4, n10, n20, n30, n40, n5 : std_logic;

begin
   
   C14 : NOR24 port map( A => n40, B => n5, Q => N4);
   C13 : NOR24 port map( A => n30, B => n5, Q => N2);
   C12 : NOR24 port map( A => n30, B => n40, Q => N1);
   C11 : NOR24 port map( A => N1, B => N2, Q => n20);
   C10 : NOR24 port map( A => N3, B => N4, Q => n10);
   C9 : XOR22 port map( A => a_i, B => b_i, Q => N0);
   C8 : XOR22 port map( A => N0, B => cin_i, Q => s_o);
   U1 : CLKIN15 port map( A => n10, Q => cout_o);
   U2 : CLKIN15 port map( A => n20, Q => N3);
   U3 : CLKIN15 port map( A => a_i, Q => n30);
   U4 : CLKIN15 port map( A => b_i, Q => n40);
   U5 : CLKIN15 port map( A => cin_i, Q => n5);

end SYN_fulladder_arch;
