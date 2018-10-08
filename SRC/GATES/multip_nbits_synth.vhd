
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_multip_nbits_Nb_bits4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_multip_nbits_Nb_bits4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_15 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_15;

architecture SYN_fulladder_arch of fulladder_15 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_14 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_14;

architecture SYN_fulladder_arch of fulladder_14 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_13 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_13;

architecture SYN_fulladder_arch of fulladder_13 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_12 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_12;

architecture SYN_fulladder_arch of fulladder_12 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_11 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_11;

architecture SYN_fulladder_arch of fulladder_11 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_10 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_10;

architecture SYN_fulladder_arch of fulladder_10 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_9 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_9;

architecture SYN_fulladder_arch of fulladder_9 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_8 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_8;

architecture SYN_fulladder_arch of fulladder_8 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_7 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_7;

architecture SYN_fulladder_arch of fulladder_7 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_6 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_6;

architecture SYN_fulladder_arch of fulladder_6 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_5 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_5;

architecture SYN_fulladder_arch of fulladder_5 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_4 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_4;

architecture SYN_fulladder_arch of fulladder_4 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_3 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_3;

architecture SYN_fulladder_arch of fulladder_3 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_2 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_2;

architecture SYN_fulladder_arch of fulladder_2 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_1 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_1;

architecture SYN_fulladder_arch of fulladder_1 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n4, n5, n6 : std_logic;

begin
   
   U1 : XNR20 port map( A => n6, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n5, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n4, D => cin_i, Q => n5);
   U4 : CLKIN0 port map( A => n6, Q => n4);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n6);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_nbitsand_N4_3 is

   port( sin_i, op1_i : in std_logic_vector (3 downto 0);  op2j_i, cin_i : in 
         std_logic;  s_o : out std_logic_vector (3 downto 0);  cout_o : out 
         std_logic);

end fulladder_nbitsand_N4_3;

architecture SYN_fulladder_nbitsand_arch of fulladder_nbitsand_N4_3 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component fulladder_9
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component fulladder_10
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component fulladder_11
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component fulladder_12
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   signal xLogic0x, n5, n6, n7, n8 : std_logic;
   
   signal c_s : std_logic_vector(3 downto 1);
   
   signal a_s : std_logic_vector(3 downto 0);

begin
   
   U2 : CLKIN0 port map( A => n8, Q => a_s(3));
   U3 : NAND20 port map( A => op2j_i, B => op1_i(3), Q => n8);
   U4 : CLKIN0 port map( A => n7, Q => a_s(2));
   U5 : NAND20 port map( A => op1_i(2), B => op2j_i, Q => n7);
   U6 : CLKIN0 port map( A => n6, Q => a_s(1));
   U7 : NAND20 port map( A => op1_i(1), B => op2j_i, Q => n6);
   U8 : CLKIN0 port map( A => n5, Q => a_s(0));
   U9 : NAND20 port map( A => op1_i(0), B => op2j_i, Q => n5);
   U0_0 : fulladder_12 port map( a_i => a_s(0), b_i => sin_i(1), cin_i => 
                           xLogic0x, s_o => s_o(0), cout_o => c_s(1));
   U0_1 : fulladder_11 port map( a_i => a_s(1), b_i => sin_i(2), cin_i => 
                           c_s(1), s_o => s_o(1), cout_o => c_s(2));
   U0_2 : fulladder_10 port map( a_i => a_s(2), b_i => sin_i(3), cin_i => 
                           c_s(2), s_o => s_o(2), cout_o => c_s(3));
   U0_3 : fulladder_9 port map( a_i => a_s(3), b_i => cin_i, cin_i => c_s(3), 
                           s_o => s_o(3), cout_o => cout_o);
   U10 : LOGIC0 port map( Q => xLogic0x);

end SYN_fulladder_nbitsand_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_nbitsand_N4_2 is

   port( sin_i, op1_i : in std_logic_vector (3 downto 0);  op2j_i, cin_i : in 
         std_logic;  s_o : out std_logic_vector (3 downto 0);  cout_o : out 
         std_logic);

end fulladder_nbitsand_N4_2;

architecture SYN_fulladder_nbitsand_arch of fulladder_nbitsand_N4_2 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component fulladder_5
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component fulladder_6
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component fulladder_7
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component fulladder_8
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   signal xLogic0x, n5, n6, n7, n8 : std_logic;
   
   signal c_s : std_logic_vector(3 downto 1);
   
   signal a_s : std_logic_vector(3 downto 0);

begin
   
   U2 : CLKIN0 port map( A => n8, Q => a_s(3));
   U3 : NAND20 port map( A => op2j_i, B => op1_i(3), Q => n8);
   U4 : CLKIN0 port map( A => n7, Q => a_s(2));
   U5 : NAND20 port map( A => op1_i(2), B => op2j_i, Q => n7);
   U6 : CLKIN0 port map( A => n6, Q => a_s(1));
   U7 : NAND20 port map( A => op1_i(1), B => op2j_i, Q => n6);
   U8 : CLKIN0 port map( A => n5, Q => a_s(0));
   U9 : NAND20 port map( A => op1_i(0), B => op2j_i, Q => n5);
   U0_0 : fulladder_8 port map( a_i => a_s(0), b_i => sin_i(1), cin_i => 
                           xLogic0x, s_o => s_o(0), cout_o => c_s(1));
   U0_1 : fulladder_7 port map( a_i => a_s(1), b_i => sin_i(2), cin_i => c_s(1)
                           , s_o => s_o(1), cout_o => c_s(2));
   U0_2 : fulladder_6 port map( a_i => a_s(2), b_i => sin_i(3), cin_i => c_s(2)
                           , s_o => s_o(2), cout_o => c_s(3));
   U0_3 : fulladder_5 port map( a_i => a_s(3), b_i => cin_i, cin_i => c_s(3), 
                           s_o => s_o(3), cout_o => cout_o);
   U10 : LOGIC0 port map( Q => xLogic0x);

end SYN_fulladder_nbitsand_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_nbitsand_N4_1 is

   port( sin_i, op1_i : in std_logic_vector (3 downto 0);  op2j_i, cin_i : in 
         std_logic;  s_o : out std_logic_vector (3 downto 0);  cout_o : out 
         std_logic);

end fulladder_nbitsand_N4_1;

architecture SYN_fulladder_nbitsand_arch of fulladder_nbitsand_N4_1 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component fulladder_1
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component fulladder_2
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component fulladder_3
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component fulladder_4
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   signal xLogic0x, n5, n6, n7, n8 : std_logic;
   
   signal c_s : std_logic_vector(3 downto 1);
   
   signal a_s : std_logic_vector(3 downto 0);

begin
   
   U2 : CLKIN0 port map( A => n8, Q => a_s(3));
   U3 : NAND20 port map( A => op2j_i, B => op1_i(3), Q => n8);
   U4 : CLKIN0 port map( A => n7, Q => a_s(2));
   U5 : NAND20 port map( A => op1_i(2), B => op2j_i, Q => n7);
   U6 : CLKIN0 port map( A => n6, Q => a_s(1));
   U7 : NAND20 port map( A => op1_i(1), B => op2j_i, Q => n6);
   U8 : CLKIN0 port map( A => n5, Q => a_s(0));
   U9 : NAND20 port map( A => op1_i(0), B => op2j_i, Q => n5);
   U0_0 : fulladder_4 port map( a_i => a_s(0), b_i => sin_i(1), cin_i => 
                           xLogic0x, s_o => s_o(0), cout_o => c_s(1));
   U0_1 : fulladder_3 port map( a_i => a_s(1), b_i => sin_i(2), cin_i => c_s(1)
                           , s_o => s_o(1), cout_o => c_s(2));
   U0_2 : fulladder_2 port map( a_i => a_s(2), b_i => sin_i(3), cin_i => c_s(2)
                           , s_o => s_o(2), cout_o => c_s(3));
   U0_3 : fulladder_1 port map( a_i => a_s(3), b_i => cin_i, cin_i => c_s(3), 
                           s_o => s_o(3), cout_o => cout_o);
   U10 : LOGIC0 port map( Q => xLogic0x);

end SYN_fulladder_nbitsand_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_0 is

   port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);

end fulladder_0;

architecture SYN_fulladder_arch of fulladder_0 is

   component XNR20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   component AOI220
      port( A, B, C, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal n1, n2, n3 : std_logic;

begin
   
   U1 : XNR20 port map( A => n1, B => cin_i, Q => s_o);
   U2 : CLKIN0 port map( A => n2, Q => cout_o);
   U3 : AOI220 port map( A => b_i, B => a_i, C => n3, D => cin_i, Q => n2);
   U4 : CLKIN0 port map( A => n1, Q => n3);
   U5 : XNR20 port map( A => b_i, B => a_i, Q => n1);

end SYN_fulladder_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity fulladder_nbitsand_N4_0 is

   port( sin_i, op1_i : in std_logic_vector (3 downto 0);  op2j_i, cin_i : in 
         std_logic;  s_o : out std_logic_vector (3 downto 0);  cout_o : out 
         std_logic);

end fulladder_nbitsand_N4_0;

architecture SYN_fulladder_nbitsand_arch of fulladder_nbitsand_N4_0 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component fulladder_13
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component fulladder_14
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component fulladder_15
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component fulladder_0
      port( a_i, b_i, cin_i : in std_logic;  s_o, cout_o : out std_logic);
   end component;
   
   component NAND20
      port( A, B : in std_logic;  Q : out std_logic);
   end component;
   
   component CLKIN0
      port( A : in std_logic;  Q : out std_logic);
   end component;
   
   signal xLogic0x, n1, n2, n3, n4 : std_logic;
   
   signal c_s : std_logic_vector(3 downto 1);
   
   signal a_s : std_logic_vector(3 downto 0);

begin
   
   U2 : CLKIN0 port map( A => n1, Q => a_s(3));
   U3 : NAND20 port map( A => op2j_i, B => op1_i(3), Q => n1);
   U4 : CLKIN0 port map( A => n2, Q => a_s(2));
   U5 : NAND20 port map( A => op1_i(2), B => op2j_i, Q => n2);
   U6 : CLKIN0 port map( A => n3, Q => a_s(1));
   U7 : NAND20 port map( A => op1_i(1), B => op2j_i, Q => n3);
   U8 : CLKIN0 port map( A => n4, Q => a_s(0));
   U9 : NAND20 port map( A => op1_i(0), B => op2j_i, Q => n4);
   U0_0 : fulladder_0 port map( a_i => a_s(0), b_i => sin_i(1), cin_i => 
                           xLogic0x, s_o => s_o(0), cout_o => c_s(1));
   U0_1 : fulladder_15 port map( a_i => a_s(1), b_i => sin_i(2), cin_i => 
                           c_s(1), s_o => s_o(1), cout_o => c_s(2));
   U0_2 : fulladder_14 port map( a_i => a_s(2), b_i => sin_i(3), cin_i => 
                           c_s(2), s_o => s_o(2), cout_o => c_s(3));
   U0_3 : fulladder_13 port map( a_i => a_s(3), b_i => cin_i, cin_i => c_s(3), 
                           s_o => s_o(3), cout_o => cout_o);
   U10 : LOGIC0 port map( Q => xLogic0x);

end SYN_fulladder_nbitsand_arch;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_multip_nbits_Nb_bits4.all;

entity multip_nbits_Nb_bits4 is

   port( op1_i, op2_i : in std_logic_vector (3 downto 0);  s_o : out 
         std_logic_vector (7 downto 0));

end multip_nbits_Nb_bits4;

architecture SYN_multip_nbits_arch of multip_nbits_Nb_bits4 is

   component LOGIC0
      port( Q : out std_logic);
   end component;
   
   component fulladder_nbitsand_N4_1
      port( sin_i, op1_i : in std_logic_vector (3 downto 0);  op2j_i, cin_i : 
            in std_logic;  s_o : out std_logic_vector (3 downto 0);  cout_o : 
            out std_logic);
   end component;
   
   component fulladder_nbitsand_N4_2
      port( sin_i, op1_i : in std_logic_vector (3 downto 0);  op2j_i, cin_i : 
            in std_logic;  s_o : out std_logic_vector (3 downto 0);  cout_o : 
            out std_logic);
   end component;
   
   component fulladder_nbitsand_N4_3
      port( sin_i, op1_i : in std_logic_vector (3 downto 0);  op2j_i, cin_i : 
            in std_logic;  s_o : out std_logic_vector (3 downto 0);  cout_o : 
            out std_logic);
   end component;
   
   component fulladder_nbitsand_N4_0
      port( sin_i, op1_i : in std_logic_vector (3 downto 0);  op2j_i, cin_i : 
            in std_logic;  s_o : out std_logic_vector (3 downto 0);  cout_o : 
            out std_logic);
   end component;
   
   signal xLogic0x, s_sx1xx3x, s_sx1xx2x, s_sx1xx1x, s_sx2xx3x, s_sx2xx2x, 
      s_sx2xx1x, s_sx3xx3x, s_sx3xx2x, s_sx3xx1x : std_logic;
   
   signal s_o_port : std_logic_vector(7 downto 0);
   
   signal c_s : std_logic_vector(3 downto 1);

begin
   s_o <= ( s_o_port(7), s_o_port(6), s_o_port(5), s_o_port(4), s_o_port(3), 
      s_o_port(2), s_o_port(1), s_o_port(0) );
   
   U0_0 : fulladder_nbitsand_N4_0 port map( sin_i(3) => xLogic0x, sin_i(2) => 
                           xLogic0x, sin_i(1) => xLogic0x, sin_i(0) => xLogic0x
                           , op1_i(3) => op1_i(3), op1_i(2) => op1_i(2), 
                           op1_i(1) => op1_i(1), op1_i(0) => op1_i(0), op2j_i 
                           => op2_i(0), cin_i => xLogic0x, s_o(3) => s_sx1xx3x,
                           s_o(2) => s_sx1xx2x, s_o(1) => s_sx1xx1x, s_o(0) => 
                           s_o_port(0), cout_o => c_s(1));
   U0_1 : fulladder_nbitsand_N4_3 port map( sin_i(3) => s_sx1xx3x, sin_i(2) => 
                           s_sx1xx2x, sin_i(1) => s_sx1xx1x, sin_i(0) => 
                           s_o_port(0), op1_i(3) => op1_i(3), op1_i(2) => 
                           op1_i(2), op1_i(1) => op1_i(1), op1_i(0) => op1_i(0)
                           , op2j_i => op2_i(1), cin_i => c_s(1), s_o(3) => 
                           s_sx2xx3x, s_o(2) => s_sx2xx2x, s_o(1) => s_sx2xx1x,
                           s_o(0) => s_o_port(1), cout_o => c_s(2));
   U0_2 : fulladder_nbitsand_N4_2 port map( sin_i(3) => s_sx2xx3x, sin_i(2) => 
                           s_sx2xx2x, sin_i(1) => s_sx2xx1x, sin_i(0) => 
                           s_o_port(1), op1_i(3) => op1_i(3), op1_i(2) => 
                           op1_i(2), op1_i(1) => op1_i(1), op1_i(0) => op1_i(0)
                           , op2j_i => op2_i(2), cin_i => c_s(2), s_o(3) => 
                           s_sx3xx3x, s_o(2) => s_sx3xx2x, s_o(1) => s_sx3xx1x,
                           s_o(0) => s_o_port(2), cout_o => c_s(3));
   U0_3 : fulladder_nbitsand_N4_1 port map( sin_i(3) => s_sx3xx3x, sin_i(2) => 
                           s_sx3xx2x, sin_i(1) => s_sx3xx1x, sin_i(0) => 
                           s_o_port(2), op1_i(3) => op1_i(3), op1_i(2) => 
                           op1_i(2), op1_i(1) => op1_i(1), op1_i(0) => op1_i(0)
                           , op2j_i => op2_i(3), cin_i => c_s(3), s_o(3) => 
                           s_o_port(6), s_o(2) => s_o_port(5), s_o(1) => 
                           s_o_port(4), s_o(0) => s_o_port(3), cout_o => 
                           s_o_port(7));
   U2 : LOGIC0 port map( Q => xLogic0x);

end SYN_multip_nbits_arch;
