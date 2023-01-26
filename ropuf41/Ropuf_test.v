`timescale 1ns / 1ps


module Ropuf_test;

	// Inputs
	reg EN;
	reg [1:0] SEL;
	reg RESET;

	// Outputs
	wire [3:0] OUT;
	wire [3:0] COUNT1;
	wire [3:0] COUNT2;
	wire COUT1;
	wire COUT2;

	Top uut (
		.EN(EN), 
		.SEL(SEL), 
		.RESET(RESET), 
		.OUT(OUT), 
		.COUNT1(COUNT1), 
		.COUNT2(COUNT2), 
		.COUT1(COUT1), 
		.COUT2(COUT2)
	);

	initial begin
		EN = 0;
		SEL = 0;
		RESET = 1;
		#50;
		EN=1;
		RESET=0;
		SEL=1;
#6000
		$finish;
	end
	initial
	begin
	$fsdbDumpfile("top.fsdb"); // The FSDB Database
      $fsdbDumpvars;

	end


endmodule


