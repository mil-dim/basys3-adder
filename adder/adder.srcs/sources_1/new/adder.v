`timescale 1ns/1ps
module adder (s,cout,a,b);
 input [3:0] a;
 input [3:0] b;
 output [3:0] s;
 output cout;
wire [2:0] carry;

  half_adder a0(s[0],carry[0],a[0],b[0]);
  full_adder a1(s[1],carry[1],a[1],b[1],carry[0]);
  full_adder a2(s[2],carry[2],a[2],b[2],carry[1]);
  full_adder a3(s[3],cout,    a[3],b[3],carry[2]);

endmodule
//================================
module half_adder (s,cout,a,b);
   input a;
   input b;
   output s;
   output cout;
    xor(s,a,b);
    and(cout,a,b);
endmodule
//===================================
module full_adder(s,cout,a,b,cin);
   input a;
   input b;
   input cin;
   output s;
   output cout;
  wire i1,i2,i3;
    xor (i1,a,b);
    and (i2,a,b);
    xor (s,i1,cin);
    and (i3,i1,cin);
    or (cout,i2,i3);    
endmodule
