`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:37:49 05/25/2016 
// Design Name: 
// Module Name:    controlador_ascensores 
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
module controlador_ascensores(
		clk,
		
		destino,
		
		piso_asc_1,
		direccion_asc_1,
		ocupado_asc_1,
		
		piso_asc_2,
		direccion_asc_2,
		ocupado_asc_2,
		
		
		destino_asc_1,
		destino_asc_2
		
	
    );
	 
	input clk;
	
	input [1:0] destino;
	
	input [1:0] piso_asc_1;
	input [1:0] direccion_asc_1; //00:nada, 01: arriba, 10: abajo.
	input ocupado_asc_1;
	
	input [1:0] piso_asc_2;
	input [1:0] direccion_asc_2; //00:nada, 01: arriba, 10: abajo.
	input ocupado_asc_2;
	
	output reg [2:0] destino_asc_1; //100: nada, 000: -1, 001: 1, 010: 2, 011: 3; 
	output reg [2:0] destino_asc_2;
	
	//Primero, dado un requerimiento externo, se elige cual ascensor debiera ir.
	
	reg state_address;
	
	reg [33:0] contador;
	
	reg [9:0] address;
	wire [1:0] salida_cola;
	
	wire [1:0] dist_piso_dest_asc_1;
	wire [1:0] dist_piso_dest_asc_2;
	
	assign dist_piso_dest_asc_1 = (piso_asc_1>salida_cola)?(piso_asc_1-salida_cola):(salida_cola-piso_asc_1);
	assign dist_piso_dest_asc_2 = (piso_asc_2>salida_cola)?(piso_asc_2-salida_cola):(salida_cola-piso_asc_2);
//	
//	assign dist_piso_dest_asc_1 = (piso_asc_1>destino)?(piso_asc_1-destino):(destino-piso_asc_1);
//	assign dist_piso_dest_asc_2 = (piso_asc_2>destino)?(piso_asc_2-destino):(destino-piso_asc_2);
	
	parameter CAMBIO = 1'b0, ESPERAR = 1'b1;
	parameter FINFIFO = 9;
	
	cola_destinos_externos cola_externos(
		.address(address),
		.destino(salida_cola)
	);
	
	parameter tiempo_en_piso = 100000000;
	
	initial begin
		address = 0;
		state_address = CAMBIO;
	end
	
	
//	always @(posedge(clk))
//	begin
////		case (state_address)
////			INICIO:
//				//Si los dos estan disponibles
//				if (!ocupado_asc_1 && !ocupado_asc_2)
//					if (dist_piso_dest_asc_1 < dist_piso_dest_asc_2) begin
//						destino_asc_1 = {1'b0,salida_cola};
//						//destino_asc_2 = 3'b100;
//						if (address < FINFIFO)
//							address = address + 1;
//						state_address = SUMA;
//					end else begin
//						//destino_asc_1 = 3'b100;
//						destino_asc_2 = {1'b0,salida_cola};
//						if (address < FINFIFO)
//							address = address + 1;
//						state_address = SUMA;
//					end
//				else if (!ocupado_asc_1) begin
//					destino_asc_1 = {1'b0,salida_cola};
//					//destino_asc_2 = 3'b100;
//					if (address < FINFIFO)
//							address = address + 1;
//					state_address = SUMA;
//				end else if (!ocupado_asc_2) begin
//					//destino_asc_1 = 3'b100;
//					destino_asc_2 = {1'b0,salida_cola};
//					if (address < FINFIFO)
//							address = address + 1;
//					state_address = SUMA;
//				end else begin
//					//destino_asc_1 = 3'b100;
//					//destino_asc_2 = 3'b100;
////					if (address < FINFIFO)
////							address = address + 1;
//					state_address = INICIO;
//				end
////			SUMA: begin
////				if (address < FINFIFO)
////					address = address + 1;
////				state_address = INICIO;
////			end
////		endcase
//	end
//	

always @(posedge(clk))
	case (state_address)
		CAMBIO:
			//Si los dos estan disponibles
			if (!ocupado_asc_1 && !ocupado_asc_2) begin
				if (dist_piso_dest_asc_1 < dist_piso_dest_asc_2) begin
					destino_asc_1 = {1'b0,salida_cola};
					state_address = ESPERAR;
					if (address < FINFIFO)
						address = address +1'b1;
				end else begin
					//destino_asc_1 = 3'b100;
					destino_asc_2 = {1'b0,salida_cola};
					if (address < FINFIFO)
						address = address +1'b1;					
					state_address = ESPERAR;
				end
			end else if (!ocupado_asc_1) begin
				destino_asc_1 = {1'b0,salida_cola};
				state_address = ESPERAR;
					if (address < FINFIFO)
						address = address +1'b1;
			end else if (!ocupado_asc_2) begin
				destino_asc_2 = {1'b0,salida_cola};
				state_address = ESPERAR;
				if (address < FINFIFO)
					address = address +1'b1;
			end
				
		ESPERAR: begin
			contador = contador + 1;
			if (contador == tiempo_en_piso) begin
				state_address = CAMBIO;
				contador = 0;
			end
		end
	endcase
	
endmodule
