
module fulladder ( a_i, b_i, cin_i, s_o, cout_o );
  input a_i, b_i, cin_i;
  output s_o, cout_o;
  wire   N0, N1, N2, N3, N4, n10, n20, n30, n40, n5;

  NOR24 C14 ( .A(n40), .B(n5), .Q(N4) );
  NOR24 C13 ( .A(n30), .B(n5), .Q(N2) );
  NOR24 C12 ( .A(n30), .B(n40), .Q(N1) );
  NOR24 C11 ( .A(N1), .B(N2), .Q(n20) );
  NOR24 C10 ( .A(N3), .B(N4), .Q(n10) );
  XOR22 C9 ( .A(a_i), .B(b_i), .Q(N0) );
  XOR22 C8 ( .A(N0), .B(cin_i), .Q(s_o) );
  CLKIN15 U1 ( .A(n10), .Q(cout_o) );
  CLKIN15 U2 ( .A(n20), .Q(N3) );
  CLKIN15 U3 ( .A(a_i), .Q(n30) );
  CLKIN15 U4 ( .A(b_i), .Q(n40) );
  CLKIN15 U5 ( .A(cin_i), .Q(n5) );
endmodule

