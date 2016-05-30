`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:58:48 05/28/2016 
// Design Name: 
// Module Name:    clk_divider 
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
module clk_divider(
		input clk,
		
		output reg clk_div
    );
	 //Constante: f_original / (f_meta * 2)
	 localparam cfinal = 2;
	 
	 reg [1:0] count;
	 
	 
	 always @ (posedge(clk))
	 if (count >= cfinal)
	 begin
	     count <= 32'b0;
        clk_div <= ~clk_div;
	 end
    else
		  count <= count + 1;

endmodule
