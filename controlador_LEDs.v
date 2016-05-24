`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:26:30 05/22/2016 
// Design Name: 
// Module Name:    controlador_LEDs 
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
module controlador_LEDs(
		clk,
		direccion_asc_1,
		puertas_abiertas_asc_1,
		
		direccion_asc_2,
		puertas_abiertas_asc_2,
		
		leds
    );
	 
	 input clk;
	 input [1:0] direccion_asc_1; //00:nada, 01: arriba, 10: abajo.
	 input puertas_abiertas_asc_1; //0: cerradas, 1:abiertas.
	 
	 input [1:0] direccion_asc_2; //00:nada, 01: arriba, 10: abajo.
	 input puertas_abiertas_asc_2; //0: cerradas, 1:abiertas
	 
	 output [7:0] leds;
	 
	 wire [7:0] leds_aux;
	 
	 //assign leds = 8'b11111111;
	 //assign leds = {puertas_abiertas_asc_2,direccion_asc_2,2'b00,puertas_abiertas_asc_1,direccion_asc_1};
	 assign leds_aux[7] = puertas_abiertas_asc_2;
	 assign leds_aux[6:5] = direccion_asc_2;
	 assign leds_aux[4:3] = 0;
	 assign leds_aux[2] = puertas_abiertas_asc_1;
	 assign leds_aux[1:0] = direccion_asc_1;
	 
	 assign leds = leds_aux;
	 


endmodule
