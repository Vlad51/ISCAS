//Verilog
//testbench ISCAS-85 c17
//тест: полный перебор, 32 вектора

`timescale 1 ns/ 1 ps

module test_c17_1();
reg tN1, tN2, tN3, tN6, tN7;
wire tN22, tN23;

c17 ts(tN1,tN2,tN3,tN6,tN7,tN22,tN23);

initial begin: test
integer i;
$display("Результаты моделирования ISCAS-85 c17:");
$timeformat(-9,1,"ns",8);
$monitor($time,": N1=%b N2=%b N3=%b N6=%b N7t=%b N22=%b N23=%b",
tN1,tN2,tN3,tN6,tN7,tN22,tN23);
for (i=0; i<32; i=i+1) begin
#10;

{tN1,tN2,tN3,tN6,tN7}=i;
end
end
endmodule