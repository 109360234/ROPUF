`timescale 1ns / 1ps
module R3(EN,Y3
    );
input EN;
output Y3;
wire w1,w2,w3,w4,w5;
	nand #3(w1,Y3,EN);
	not #3(w2,w1);
	not #3(w3,w2);
	not #3(w4,w3);
	not #3(Y3,w4);

endmodule
