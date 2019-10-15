`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2019 16:52:26
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(
    input [31:0] A,
    input [31:0] B,
    output [31:0] Sum
    );
    wire [3:0] a1,b1,s1;
    wire [7:0] cin;
    genvar i;
    assign cin[0]=0;
    generate for(i=0;i<32;i=i+4)begin
        four_bit f(A[i+3:i],B[i+3:i],cin[i/4],Sum[i+3:i],cin[(i+4)/4]);
    end 
    endgenerate
endmodule
