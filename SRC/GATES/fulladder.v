
module fulladder ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   n5, n6, n7;

  XNR20 U6 ( .A(n5), .B(cin_i), .Q(s_o) );
  CLKIN0 U7 ( .A(n6), .Q(cout_o) );
  AOI220 U8 ( .A(b_i), .B(a_i), .C(n7), .D(cin_i), .Q(n6) );
  CLKIN0 U9 ( .A(n5), .Q(n7) );
  XNR20 U10 ( .A(b_i), .B(a_i), .Q(n5) );
endmodule

