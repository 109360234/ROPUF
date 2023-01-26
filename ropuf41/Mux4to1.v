`timescale 1ns / 1ps

module Mux4to1( Y1,Y2,Y3,Y4,COUT1,SEL
    );
input Y1,Y2,Y3,Y4;
input [1:0]SEL;
output reg COUT1;

always@(Y1 or Y2 or Y3 or Y4 or SEL)
begin
	case(SEL)
		2'b00 : COUT1<=Y1;
		2'b01 : COUT1<=Y2;
		2'b10 : COUT1<=Y3;
		default: COUT1<=Y4;
	endcase
end
endmodule


