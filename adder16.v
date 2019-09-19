`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.09.2019 19:53:50
// Design Name: 
// Module Name: adder16
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


module adder16(a,b,sum);
    input[15:0] a;
    input[15:0] b;
    output[15:0] sum;
    wire[16:0] t;
    assign t[0]=0;
    genvar i;
    generate for(i=0;i<16;i=i+4) begin
            adder4 x1 (a[i],b[i],t[i],sum[i],t[i+1]);
    end
    endgenerate

endmodule
