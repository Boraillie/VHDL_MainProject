
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

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n5, n6, n7 : std_logic;

begin
   
   U6 : XNR20 port map( A => n5, B => cin_i, Q => s_o);
   U7 : CLKIN0 port map( A => n6, Q => cout_o);
   U8 : AOI220 port map( A => b_i, B => a_i, C => n7, D => cin_i, Q => n6);
   U9 : CLKIN0 port map( A => n5, Q => n7);
   U10 : XNR20 port map( A => b_i, B => a_i, Q => n5);

end SYN_fulladder_arch;
