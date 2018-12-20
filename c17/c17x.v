//  file :c17.v
// Verilog 
// c17 
// Ninputs 5 
// Noutputs 2 
// NtotalGates 6 
// NAND2 6 
 
module c17 (N1,N2,N3,N6,N7,N22,N23); 
 
input N1,N2,N3,N6,N7; 
 
output N22,N23; 
 
wire N10,N11,N16,N19; 
  NA2 NAND2_1  (  .Q(N10), .A(N1), .B(N3) ); 
  NA2 NAND2_2  (  .Q(N11), .A(N3), .B(N6) ); 
  NA2 NAND2_3  (  .Q(N16), .A(N2), .B(N11) ); 
  NA2 NAND2_4  (  .Q(N19), .A(N11), .B(N7) ); 
  NA2 NAND2_5  (  .Q(N22), .A(N10), .B(N16) ); 
  NA2 NAND2_6  (  .Q(N23), .A(N16), .B(N19) ); 
endmodule 
