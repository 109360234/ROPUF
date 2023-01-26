`timescale 1ns / 1ps
module Campare(COUNT1,COUNT2,OUT
    );
input [3:0]COUNT1,COUNT2;
output reg [3:0]OUT;

always@(COUNT1 or COUNT2)
begin
	if(&COUNT1)
		begin
			
			OUT<=COUNT2;
		end
	if(&COUNT2)
		begin
			OUT<=COUNT1;
		end
	if(!(&COUNT1) & !(&COUNT2))
		begin
			OUT<=0;
		end
end

endmodule
