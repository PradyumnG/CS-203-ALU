`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2019 23:20:14
// Design Name: 
// Module Name: OR_BIT
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
/////////////////////////////////////////////////////////////////////////////////
module NOT(
    input a[31:0],
    output c[31:0]
    );
    genvar i;
    generate for(i=0;i<32;i=i+1) begin
        not a1 (c[i],a[i]);
    end
    endgenerate
endmodule