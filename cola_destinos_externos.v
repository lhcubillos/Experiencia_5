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
		Mem[0] = two;
		Mem[1] = one;
		Mem[2] = three;
		Mem[3] = minus_one;
		Mem[4] = one;
		Mem[5] =three;
		Mem[6] = minus_one;
		Mem[7] = two;
		Mem[8] =three;
		Mem[9] = one;
		
		destino = Mem[address];
	end
	


endmodule
