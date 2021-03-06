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
	 
	 
	 
	 //FIFO:
	 wire rst_fifo;
	 wire [1:0] din_fifo;
	 wire wr_en_fifo;
	 wire rd_en_fifo;
	 wire [1:0] dout_fifo;
	 wire full_fifo;
	 wire empty_fifo;
	 
	 
	 wire [1:0] piso_asc_1;
	 wire puertas_abiertas_asc_1;
	 wire [1:0] direccion_asc_1;
	 
	 wire [1:0] piso_asc_2;
	 wire puertas_abiertas_asc_2;
	 wire [1:0] direccion_asc_2;
	 
	 wire ocupado_asc_1;
	 wire ocupado_asc_2;
	 
	 wire [2:0] destino_asc_1;
	 wire [2:0] destino_asc_2;
	 
	 wire clk_div;

	 assign leds[7] = ocupado_asc_1;
	 assign leds[6] = ocupado_asc_2;
	 assign leds[5] = puertas_abiertas_asc_1;
	 assign leds[4:3] = puertas_abiertas_asc_1 ? 2'b00: direccion_asc_1;
	 assign leds[2] = puertas_abiertas_asc_2;
	 assign leds[1:0] = puertas_abiertas_asc_2 ? 2'b00: direccion_asc_2;
	 
	 clk_divider clk_divider(
		.clk(clk),
		.clk_div(clk_div)
	 );
	 
	 sync_fifo #(.DATA_WIDTH(2), .LOG2_DEPTH(5)) sync_fifo
	 (
	   .clk(clk),
      .reset(rst_fifo),
		.din(din_fifo),
      .wr_en(wr_en_fifo),
      .rd_en(rd_en_fifo),
		
      .dout(dout),
      .full(full_fifo),
      .empty(empty_fifo)

	 );
	 
	 controlador_ascensores controlador_ascensores(
		.clk(clk),
		
		.destino(sw[1:0]),
		
		.piso_asc_1(piso_asc_1),
		.direccion_asc_1(direccion_asc_1),
		.ocupado_asc_1(ocupado_asc_1),
		
		.piso_asc_2(piso_asc_2),
		.direccion_asc_2(direccion_asc_2),
		.ocupado_asc_2(ocupado_asc_2),
		
		
		.destino_asc_1(destino_asc_1),
		.destino_asc_2(destino_asc_2)
	 );
	 
	 controlador_display controlador_display(
		.clk(clk),
		.seg(seg),
		.piso_asc_1(piso_asc_1),
		.piso_asc_2(piso_asc_2),
		.an(an)
	 );
	 
	 
	 prueba_1_asc prueba_1_asc (
		.clk(clk),
		
		.destino(destino_asc_1),
		
		.piso(piso_asc_1),
		.direccion(direccion_asc_1),
		.puertas_abiertas(puertas_abiertas_asc_1),
		
		.ocupado(ocupado_asc_1)
	 );
	 
	 prueba_2_asc prueba_2_asc (
		.clk(clk),
		
		.destino(destino_asc_2),
		
		.piso(piso_asc_2),
		.direccion(direccion_asc_2),
		.puertas_abiertas(puertas_abiertas_asc_2),
		.ocupado(ocupado_asc_2)
	 );

//	controlador_ascensores controlador_ascensores (
//		.clk(clk),
//		
//		.piso_asc_1(piso_asc_1),
//		.direccion_asc_1(direccion_asc_1),
//		.puertas_abiertas_asc_1(puertas_abiertas_asc_1),
//		
//		.piso_asc_2(piso_asc_2),
//		.direccion_asc_2(direccion_asc_2),
//		.puertas_abiertas_asc_2(puertas_abiertas_asc_2)
//	);


endmodule
