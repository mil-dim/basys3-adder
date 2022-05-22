`timescale 1ns/1ps
module tb_adder ();

reg [3:0] a,b;
wire [3:0] s;
wire cout;

initial   for (a=0;a<18;a=a+1) #180 ;

initial   for (b=0;b<18;b=b+1) #10 ;

adder test_adder(s,cout,a,b);
endmodule