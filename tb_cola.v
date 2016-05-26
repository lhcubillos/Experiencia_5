`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:54:30 05/26/2016
// Design Name:   cola_destinos_externos
// Module Name:   C:/Users/LH Cubillos/Desktop/Experiencia_5/tb_cola.v
// Project Name:  Exp5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cola_destinos_externos
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_cola;

	// Inputs
	reg [7:0] address;

	// Outputs
	wire [23:0] destino;

	// Instantiate the Unit Under Test (UUT)
	cola_destinos_externos uut (
		.address(address), 
		.destino(destino)
	);

	initial begin
		// Initialize Inputs
		address = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#5;
		address = 1;
		#5;
		address = 2;
		#5;
		address = 3;
		#5;
		address = 4;
		#5;
		address = 5;

	end
	
	initial begin
		$monitor("Address = %d, destino = %d", address, destino);
	end
      
endmodule

