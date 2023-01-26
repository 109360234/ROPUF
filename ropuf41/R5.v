`timescale 1ns / 1ps
module R5(EN,Y5
    );
input EN;
output Y5;
wire w1,w2,w3,w4,w5;
	nand #5(w1,Y5,EN);
	not #5(w2,w1);
	not #5(w3,w2);
	not #5(w4,w3);
	not #5(Y5,w4);

endmodule
