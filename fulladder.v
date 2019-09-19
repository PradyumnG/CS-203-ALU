`timescale 1ns/1ps
module fulladder(a,b,cin,sum,cout);
    input a,b,cin;
    output sum,cout;
    wire t1,t2,t3,t4,t5;
    xor #4 x1 (t1,a,b);
    xor #4 x2 (sum,cin,t1);
    and #2 x3 (t5,a,b);
    and #2 x4 (t2,a,cin);
    and #2 x5 (t3,b,cin);
    or #2 x6 (t4,t5,t2);
    or #2 x7 (cout,t4,t3);
endmodule