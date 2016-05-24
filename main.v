`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:24:10 05/22/2016 
// Design Name: 
// Module Name:    main 
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
module main(
		input clk,
		input [7:0] sw,
		output [7:0] seg,
		output [3:0] an,
		output [7:0] leds
    );
	 
	 wire [1:0] piso_asc_1;
	 wire puertas_abiertas_asc_1;
	 wire [1:0] direccion_asc_1;
	 
	 wire [1:0] piso_asc_2;
	 wire puertas_abiertas_asc_2;
	 wire [1:0] direccion_asc_2;
	 
	 controlador_display controlador_display(
		.clk(clk),
		.seg(seg),
		.piso_asc_1(piso_asc_1),
		.piso_asc_2(piso_asc_2),
		.an(an)
	 );
	 
	 controlador_LEDs controlador_LEDs(
		.clk(clk),
		.direccion_asc_1(sw[1:0]),
		.puertas_abiertas_asc_1(sw[2]),
		
		.direccion_asc_2(sw[6:5]),
		.puertas_abiertas_asc_2(sw[7]),
		
		.leds(leds)
	 );
	 
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
