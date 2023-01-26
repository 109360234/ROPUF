`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:30:15 10/22/2022 
// Design Name: 
// Module Name:    Counter12 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Counter12(COUT1,COUT2,EN,RESET,COUNT1,COUNT2
    );
input COUT1,COUT2;
input EN,RESET;
output reg[3:0] COUNT1;
output reg[3:0] COUNT2;
always@(posedge COUT2 or posedge RESET)
begin
		if(RESET)
		begin
			COUNT2 <= 0;
		end	
					 
		else if(EN & (!(&COUNT1)) & !((&COUNT2)))
		begin
			COUNT2 <= COUNT2 + 4'b0001;
		end	

end				

always@(posedge COUT1 or posedge RESET)
begin
		if(RESET)
		begin
			COUNT1 <= 0;
		end	
					 
		else if(EN & (!(&COUNT1)) & (!(&COUNT2)))
		begin
			COUNT1 <= COUNT1 + 4'b0001;
		end	

end				

endmodule
