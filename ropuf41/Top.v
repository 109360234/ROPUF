`timescale 1ns / 1ps

module Top(EN,SEL,RESET,OUT,COUNT1,COUNT2,COUT1,COUT2
    );
input EN,RESET;
input [1:0]SEL;
output COUT1,COUT2;
output [3:0]OUT;
output [3:0]COUNT1;
output [3:0]COUNT2;

R1 q1(EN,Y1);
R2 q2(EN,Y2);
R3 q3(EN,Y3);
R4 q4(EN,Y4);
R5 q5(EN,Y5);
R6 q6(EN,Y6);
R7 q7(EN,Y7);
R8 q8(EN,Y8);
Mux4to1 mux( Y1,Y2,Y3,Y4,COUT1,SEL);
Mux4to12 mux2( Y5,Y6,Y7,Y8,COUT2,SEL);
Counter12 Count(COUT1,COUT2,EN,RESET,COUNT1,COUNT2);
Campare Camp(COUNT1,COUNT2,OUT);
endmodule
