`timescale 1ns / 1ps
module R2(EN,Y2
    );
input EN;
output Y2;
wire w1,w2,w3,w4,w5;
	nand #2(w1,Y2,EN);
	not #2(w2,w1);
	not #2(w3,w2);
	not #2(w4,w3);
	not #2(Y2,w4);

endmodule
