`timescale 1ns / 1ps
module R4(EN,Y4
    );
input EN;
output Y4;
wire w1,w2,w3,w4,w5;
	nand #4(w1,Y4,EN);
	not #4(w2,w1);
	not #4(w3,w2);
	not #4(w4,w3);
	not #4(Y4,w4);

endmodule
