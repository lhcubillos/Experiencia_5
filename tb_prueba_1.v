`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:06:22 05/23/2016
// Design Name:   prueba_1_asc
// Module Name:   C:/Users/LH Cubillos/Desktop/Universidad/2016-1-Windows/Lab digitales/Exp5/Exp5/tb_prueba_1.v
// Project Name:  Exp5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: prueba_1_asc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_prueba_1;

	// Inputs
	reg clk;

	// Outputs
	wire [1:0] piso;
	wire [1:0] direccion;
	wire puertas_abiertas;
	wire state_andando;
	wire clk_nuevo;

	// Instantiate the Unit Under Test (UUT)
	prueba_1_asc uut (
		.clk(clk), 
		.piso(piso), 
		.direccion(direccion), 
		.puertas_abiertas(puertas_abiertas),
		.state_andando(state_andando),
		.clk_nuevo(clk_nuevo)
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
		$monitor("clk = %d, clk_nuevo = %d, state_andando=%d, piso = %d, direccion = %b, puertas_abiertas = %d",clk,clk_nuevo,state_andando,piso,direccion,puertas_abiertas);
	end
      
endmodule

