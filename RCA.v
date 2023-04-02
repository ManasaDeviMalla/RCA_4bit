`timescale 1ns / 1ps
module RCA_4bit(S, cout, A, B, cin);
 input [3:0] A, B; 
 input cin;
 output [3:0] S; 
 output cout;
 wire c1,c2,c3;
 
 fullAdder FA0 (S[0],c1,A[0],B[0],cin);
 fullAdder FA1 (S[1],c2,A[1],B[1],c1);
 fullAdder FA2 (S[2],c3,A[2],B[2],c2);
 fullAdder FA3 (S[3],cout,A[3],B[3],c3);

endmodule
