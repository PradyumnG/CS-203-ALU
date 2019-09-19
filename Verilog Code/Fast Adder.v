`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2019 12:16:33
// Design Name: 
// Module Name: fastadder
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

/*
Complete this
*/
module fastadder 
  (
   input [31:0]  a,
   input [31:0]  b,
   output [31:0] out
   );
     
  wire [32:0]    C;
  wire [31:0]    G, P, SUM,t;
  and a1(G[0],a[0],b[0]);
  or (P[0],a[0],b[0]);
  and a3 (t[0],P[0],C[i-1]);
  or a2(C[i],G[i],t[i]);
  genvar i;
  generate for(i=1;i<42;i=i+1) begin
  and a1(G[i],a[i],b[i]);
  or (P[i],a[i],b[i]);
  and a3 (t[i-1],P[i-1],C[i-1]);
  or a2(C[i],G[i-1],t[i-1]);
  end
  endgenerate

endmodule
