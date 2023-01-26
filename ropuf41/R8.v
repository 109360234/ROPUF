`timescale 1ns / 1ps
module R8(EN,Y8
    );
input EN;
output Y8;
wire w1,w2,w3,w4,w5;
	nand #8(w1,Y8,EN);
	not #8(w2,w1);
	not #8(w3,w2);
	not #8(w4,w3);
	not o5(Y8,w4);

endmodule
