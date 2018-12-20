
module c17 ( N1, N2, N3, N6, N7, N22, N23 );
  input N1, N2, N3, N6, N7;
  output N22, N23;
  wire   n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;

  AND2_X4 U7 ( .A1(N3), .A2(N6), .ZN(n7) );
  INV_X8 U8 ( .A(n10), .ZN(n8) );
  NOR2_X4 U9 ( .A1(n8), .A2(N7), .ZN(n9) );
  NOR2_X4 U10 ( .A1(n7), .A2(n9), .ZN(N23) );
  INV_X8 U11 ( .A(N2), .ZN(n10) );
  NOR2_X4 U12 ( .A1(N3), .A2(n10), .ZN(n13) );
  NAND2_X4 U13 ( .A1(N3), .A2(N1), .ZN(n11) );
  INV_X8 U14 ( .A(n11), .ZN(n12) );
  NOR2_X4 U15 ( .A1(n13), .A2(n12), .ZN(n16) );
  INV_X8 U16 ( .A(N6), .ZN(n14) );
  NAND2_X4 U17 ( .A1(n8), .A2(n14), .ZN(n15) );
  NAND2_X4 U18 ( .A1(n16), .A2(n15), .ZN(N22) );
endmodule

