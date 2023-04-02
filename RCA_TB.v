`timescale 1ns / 1ps
module RCA_TB;
reg [3:0] A, B; 
reg cin;
wire [3:0] S; 
wire cout;
RCA_4bit dut(S, cout, A, B, cin);

initial begin
A=4'd6;B=4'd9;cin=0;
#30;
A=4'd10;B=4'd8;cin=1;
#30;
A=4'd5;B=4'd7;cin=0;
#30;
A=4'd11;B=4'd13;cin=0;
#30;
$stop;
end
endmodule
