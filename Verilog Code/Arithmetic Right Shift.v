`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2019 11:20:03
// Design Name: 
// Module Name: arithmetic_right
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


module arithmetic_right(
    input [31:0] A,
    output [31:0] B
    );
    genvar i;
    assign B[0]=A[0];
    generate for(i=2;i<32;i=i+1) begin
        assign B[i]=A[i-1];
    end
    endgenerate
    assign B[31]=0;
endmodule
