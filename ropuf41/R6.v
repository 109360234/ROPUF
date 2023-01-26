`timescale 1ns / 1ps
module R6(EN,Y6
    );
input EN;
output Y6;
wire w1,w2,w3,w4,w5;
	nand #6(w1,Y6,EN);
	not #6(w2,w1);
	not #6(w3,w2);
	not #6(w4,w3);
	not #6(Y6,w4);

endmodule
