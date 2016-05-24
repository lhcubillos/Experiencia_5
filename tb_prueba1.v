`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:13:59 05/23/2016
// Design Name:   prueba_1
// Module Name:   C:/Users/LH Cubillos/Desktop/Universidad/2016-1-Windows/Lab digitales/Exp5/Exp5/tb_prueba1.v
// Project Name:  Exp5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: prueba_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_prueba1;

	// Inputs
	reg clk;

	// Outputs
	wire [1:0] piso_asc_1;
	wire [1:0] piso_asc_2;
	wire [1:0] direccion_asc_1;
	wire [1:0] direccion_asc_2;
	wire puertas_abiertas_asc_1;
	wire puertas_abiertas_asc_2;

	// Instantiate the Unit Under Test (UUT)
	prueba_1 uut (
		.clk(clk), 
		.piso_asc_1(piso_asc_1), 
		.piso_asc_2(piso_asc_2), 
		.direccion_asc_1(direccion_asc_1), 
		.direccion_asc_2(direccion_asc_2), 
		.puertas_abiertas_asc_1(puertas_abiertas_asc_1), 
		.puertas_abiertas_asc_2(puertas_abiertas_asc_2)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;

	end
	
	initial begin
		$monitor("clk = %d,  piso_asc_1 = %d, direccion_asc_1 = %b, puertas_abiertas_asc_1 = %d\npiso_asc_2 = %d, direccion_asc_2 = %b, puertas_abiertas_asc_2 = %d",clk,piso_asc_1,direccion_asc_1,puertas_abiertas_asc_1, piso_asc_2,direccion_asc_2, puertas_abiertas_asc_2);
	end

      
endmodule

