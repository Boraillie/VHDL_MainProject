
module fulladder_0 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n1, n2, n3;

  XNR20 U1 ( .A(n1), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n2), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n3), .D(cin_i), .Q(n2) );
  CLKIN0 U4 ( .A(n1), .Q(n3) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n1) );
endmodule


module fulladder_15 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_14 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_13 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_nbitsand_N4_0 ( sin_i, op1_i, op2j_i, cin_i, s_o, cout_o );
  input [3:0] sin_i;
  input [3:0] op1_i;
  output [3:0] s_o;
  input op2j_i, cin_i;
  output cout_o;
  wire   xLogic0x, n1, n2, n3, n4;
  wire   [3:1] c_s;
  wire   [3:0] a_s;

  CLKIN0 U2 ( .A(n1), .Q(a_s[3]) );
  NAND20 U3 ( .A(op2j_i), .B(op1_i[3]), .Q(n1) );
  CLKIN0 U4 ( .A(n2), .Q(a_s[2]) );
  NAND20 U5 ( .A(op1_i[2]), .B(op2j_i), .Q(n2) );
  CLKIN0 U6 ( .A(n3), .Q(a_s[1]) );
  NAND20 U7 ( .A(op1_i[1]), .B(op2j_i), .Q(n3) );
  CLKIN0 U8 ( .A(n4), .Q(a_s[0]) );
  NAND20 U9 ( .A(op1_i[0]), .B(op2j_i), .Q(n4) );
  fulladder_0 U0_0 ( .a_i(a_s[0]), .b_i(sin_i[1]), .cin_i(xLogic0x), .s_o(
        s_o[0]), .cout_o(c_s[1]) );
  fulladder_15 U0_1 ( .a_i(a_s[1]), .b_i(sin_i[2]), .cin_i(c_s[1]), .s_o(
        s_o[1]), .cout_o(c_s[2]) );
  fulladder_14 U0_2 ( .a_i(a_s[2]), .b_i(sin_i[3]), .cin_i(c_s[2]), .s_o(
        s_o[2]), .cout_o(c_s[3]) );
  fulladder_13 U0_3 ( .a_i(a_s[3]), .b_i(cin_i), .cin_i(c_s[3]), .s_o(s_o[3]), 
        .cout_o(cout_o) );
  LOGIC0 U10 ( .Q(xLogic0x) );
endmodule


module fulladder_12 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_11 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_10 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_9 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_nbitsand_N4_3 ( sin_i, op1_i, op2j_i, cin_i, s_o, cout_o );
  input [3:0] sin_i;
  input [3:0] op1_i;
  output [3:0] s_o;
  input op2j_i, cin_i;
  output cout_o;
  wire   xLogic0x, n5, n6, n7, n8;
  wire   [3:1] c_s;
  wire   [3:0] a_s;

  CLKIN0 U2 ( .A(n8), .Q(a_s[3]) );
  NAND20 U3 ( .A(op2j_i), .B(op1_i[3]), .Q(n8) );
  CLKIN0 U4 ( .A(n7), .Q(a_s[2]) );
  NAND20 U5 ( .A(op1_i[2]), .B(op2j_i), .Q(n7) );
  CLKIN0 U6 ( .A(n6), .Q(a_s[1]) );
  NAND20 U7 ( .A(op1_i[1]), .B(op2j_i), .Q(n6) );
  CLKIN0 U8 ( .A(n5), .Q(a_s[0]) );
  NAND20 U9 ( .A(op1_i[0]), .B(op2j_i), .Q(n5) );
  fulladder_12 U0_0 ( .a_i(a_s[0]), .b_i(sin_i[1]), .cin_i(xLogic0x), .s_o(
        s_o[0]), .cout_o(c_s[1]) );
  fulladder_11 U0_1 ( .a_i(a_s[1]), .b_i(sin_i[2]), .cin_i(c_s[1]), .s_o(
        s_o[1]), .cout_o(c_s[2]) );
  fulladder_10 U0_2 ( .a_i(a_s[2]), .b_i(sin_i[3]), .cin_i(c_s[2]), .s_o(
        s_o[2]), .cout_o(c_s[3]) );
  fulladder_9 U0_3 ( .a_i(a_s[3]), .b_i(cin_i), .cin_i(c_s[3]), .s_o(s_o[3]), 
        .cout_o(cout_o) );
  LOGIC0 U10 ( .Q(xLogic0x) );
endmodule


module fulladder_8 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_7 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_6 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_5 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_nbitsand_N4_2 ( sin_i, op1_i, op2j_i, cin_i, s_o, cout_o );
  input [3:0] sin_i;
  input [3:0] op1_i;
  output [3:0] s_o;
  input op2j_i, cin_i;
  output cout_o;
  wire   xLogic0x, n5, n6, n7, n8;
  wire   [3:1] c_s;
  wire   [3:0] a_s;

  CLKIN0 U2 ( .A(n8), .Q(a_s[3]) );
  NAND20 U3 ( .A(op2j_i), .B(op1_i[3]), .Q(n8) );
  CLKIN0 U4 ( .A(n7), .Q(a_s[2]) );
  NAND20 U5 ( .A(op1_i[2]), .B(op2j_i), .Q(n7) );
  CLKIN0 U6 ( .A(n6), .Q(a_s[1]) );
  NAND20 U7 ( .A(op1_i[1]), .B(op2j_i), .Q(n6) );
  CLKIN0 U8 ( .A(n5), .Q(a_s[0]) );
  NAND20 U9 ( .A(op1_i[0]), .B(op2j_i), .Q(n5) );
  fulladder_8 U0_0 ( .a_i(a_s[0]), .b_i(sin_i[1]), .cin_i(xLogic0x), .s_o(
        s_o[0]), .cout_o(c_s[1]) );
  fulladder_7 U0_1 ( .a_i(a_s[1]), .b_i(sin_i[2]), .cin_i(c_s[1]), .s_o(s_o[1]), .cout_o(c_s[2]) );
  fulladder_6 U0_2 ( .a_i(a_s[2]), .b_i(sin_i[3]), .cin_i(c_s[2]), .s_o(s_o[2]), .cout_o(c_s[3]) );
  fulladder_5 U0_3 ( .a_i(a_s[3]), .b_i(cin_i), .cin_i(c_s[3]), .s_o(s_o[3]), 
        .cout_o(cout_o) );
  LOGIC0 U10 ( .Q(xLogic0x) );
endmodule


module fulladder_4 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_3 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_2 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_1 ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n4, n5, n6;

  XNR20 U1 ( .A(n6), .B(cin_i), .Q(s_o) );
  CLKIN0 U2 ( .A(n5), .Q(cout_o) );
  AOI220 U3 ( .A(b_i), .B(a_i), .C(n4), .D(cin_i), .Q(n5) );
  CLKIN0 U4 ( .A(n6), .Q(n4) );
  XNR20 U5 ( .A(b_i), .B(a_i), .Q(n6) );
endmodule


module fulladder_nbitsand_N4_1 ( sin_i, op1_i, op2j_i, cin_i, s_o, cout_o );
  input [3:0] sin_i;
  input [3:0] op1_i;
  output [3:0] s_o;
  input op2j_i, cin_i;
  output cout_o;
  wire   xLogic0x, n5, n6, n7, n8;
  wire   [3:1] c_s;
  wire   [3:0] a_s;

  CLKIN0 U2 ( .A(n8), .Q(a_s[3]) );
  NAND20 U3 ( .A(op2j_i), .B(op1_i[3]), .Q(n8) );
  CLKIN0 U4 ( .A(n7), .Q(a_s[2]) );
  NAND20 U5 ( .A(op1_i[2]), .B(op2j_i), .Q(n7) );
  CLKIN0 U6 ( .A(n6), .Q(a_s[1]) );
  NAND20 U7 ( .A(op1_i[1]), .B(op2j_i), .Q(n6) );
  CLKIN0 U8 ( .A(n5), .Q(a_s[0]) );
  NAND20 U9 ( .A(op1_i[0]), .B(op2j_i), .Q(n5) );
  fulladder_4 U0_0 ( .a_i(a_s[0]), .b_i(sin_i[1]), .cin_i(xLogic0x), .s_o(
        s_o[0]), .cout_o(c_s[1]) );
  fulladder_3 U0_1 ( .a_i(a_s[1]), .b_i(sin_i[2]), .cin_i(c_s[1]), .s_o(s_o[1]), .cout_o(c_s[2]) );
  fulladder_2 U0_2 ( .a_i(a_s[2]), .b_i(sin_i[3]), .cin_i(c_s[2]), .s_o(s_o[2]), .cout_o(c_s[3]) );
  fulladder_1 U0_3 ( .a_i(a_s[3]), .b_i(cin_i), .cin_i(c_s[3]), .s_o(s_o[3]), 
        .cout_o(cout_o) );
  LOGIC0 U10 ( .Q(xLogic0x) );
endmodule


module multip_nbits_Nb_bits4 ( op1_i, op2_i, s_o );
  input [3:0] op1_i;
  input [3:0] op2_i;
  output [7:0] s_o;
  wire   xLogic0x, s_sx1xx3x, s_sx1xx2x, s_sx1xx1x, s_sx2xx3x, s_sx2xx2x,
         s_sx2xx1x, s_sx3xx3x, s_sx3xx2x, s_sx3xx1x;
  wire   [3:1] c_s;

  fulladder_nbitsand_N4_0 U0_0 ( .sin_i({xLogic0x, xLogic0x, xLogic0x, 
        xLogic0x}), .op1_i(op1_i), .op2j_i(op2_i[0]), .cin_i(xLogic0x), .s_o({
        s_sx1xx3x, s_sx1xx2x, s_sx1xx1x, s_o[0]}), .cout_o(c_s[1]) );
  fulladder_nbitsand_N4_3 U0_1 ( .sin_i({s_sx1xx3x, s_sx1xx2x, s_sx1xx1x, 
        s_o[0]}), .op1_i(op1_i), .op2j_i(op2_i[1]), .cin_i(c_s[1]), .s_o({
        s_sx2xx3x, s_sx2xx2x, s_sx2xx1x, s_o[1]}), .cout_o(c_s[2]) );
  fulladder_nbitsand_N4_2 U0_2 ( .sin_i({s_sx2xx3x, s_sx2xx2x, s_sx2xx1x, 
        s_o[1]}), .op1_i(op1_i), .op2j_i(op2_i[2]), .cin_i(c_s[2]), .s_o({
        s_sx3xx3x, s_sx3xx2x, s_sx3xx1x, s_o[2]}), .cout_o(c_s[3]) );
  fulladder_nbitsand_N4_1 U0_3 ( .sin_i({s_sx3xx3x, s_sx3xx2x, s_sx3xx1x, 
        s_o[2]}), .op1_i(op1_i), .op2j_i(op2_i[3]), .cin_i(c_s[3]), .s_o(
        s_o[6:3]), .cout_o(s_o[7]) );
  LOGIC0 U2 ( .Q(xLogic0x) );
endmodule

