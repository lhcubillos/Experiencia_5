`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:21 05/23/2016 
// Design Name: 
// Module Name:    prueba_1 
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
module prueba_1(
		clk,
		
		piso_asc_1,
		piso_asc_2,
		direccion_asc_1,
		direccion_asc_2,
		puertas_abiertas_asc_1,
		puertas_abiertas_asc_2
    );

	input clk;
	
	output [1:0] piso_asc_1;
	output [1:0] piso_asc_2;
	output [1:0] direccion_asc_1;
	output [1:0] direccion_asc_2;
	output puertas_abiertas_asc_1;
	output puertas_abiertas_asc_2;
	
	prueba_1_asc prueba_1_asc (
		.clk(clk),
		
		.piso(piso_asc_1),
		.direccion(direccion_asc_1),
		.puertas_abiertas(puertas_abiertas_asc_1)
	 );
	 
	 prueba_2_asc prueba_2_asc (
		.clk(clk),
		
		.piso(piso_asc_2),
		.direccion(direccion_asc_2),
		.puertas_abiertas(puertas_abiertas_asc_2)
	 );
	
endmodule
