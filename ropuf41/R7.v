`timescale 1ns / 1ps
module R7(EN,Y7
    );
input EN;
output Y7;
wire w1,w2,w3,w4,w5;
	nand #7(w1,Y7,EN);
	not #7(w2,w1);
	not #7(w3,w2);
	not #7(w4,w3);
	not #7(Y7,w4);

endmodule
