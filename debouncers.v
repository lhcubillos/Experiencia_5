`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:52:56 05/10/2016 
// Design Name: 
// Module Name:    debouncers 
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
module debouncers(
		input clk,
		input [3:0] btnIn,
		output [3:0] btnOut
    );
	 
	 	debouncer debouncer0(
			.PB(btnIn[0]),
			.clk(clk),
			.PB_state(btnOut[0])
		);
		
		debouncer debouncer1(
			.PB(btnIn[1]),
			.clk(clk),
			.PB_state(btnOut[1])
		);
		
		debouncer debouncer2(
			.PB(btnIn[2]),
			.clk(clk),
			.PB_state(btnOut[2])
		);
		
		debouncer debouncer3(
			.clk(clk),
			.PB(btnIn[3]),
			.PB_state(btnOut[3])
		);
	 


endmodule
