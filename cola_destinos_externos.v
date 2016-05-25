`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:11:15 05/25/2016 
// Design Name: 
// Module Name:    cola_destinos_externos 
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
module cola_destinos_externos(
		address,
		
		destino

    );
	 
	input [7:0] address;
	output reg [23:0] destino;

	parameter minus_one = 2'b00, one = 2'b01, two = 2'b10, three = 2'b11;
	
	reg [1:0] Mem[9:0];	

	always @ (address)
	begin
		Mem[0] = 2'b11;
		Mem[1] = three;
		Mem[2] = two;
		Mem[3] = one;
		Mem[4] = three;
		Mem[5] = one;
		Mem[6] = minus_one;
		Mem[7] = two;
		Mem[8] = three;
		Mem[9] = one;
	end


endmodule
