`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:34:05 05/22/2016 
// Design Name: 
// Module Name:    prueba_1_asc 
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
module prueba_1_asc(
		clk,
		
		destino,
		
		piso,
		direccion,
		puertas_abiertas,
		
		ocupado
		
		//state_andando,
		//clk_nuevo
	
    );
	 
	input clk;
	
	input [2:0] destino; //100: nada, 000: -1, 001: 1, 010: 2, 011: 3; 
	
	output [1:0] piso;
	output reg [1:0] direccion; //00:nada, 01: arriba, 10: abajo.
	output reg puertas_abiertas;
	
	output reg ocupado; //0: disponible, 1:ocupado. Esta ocupado cuando va yendo a otro piso por ahora.
	
	reg clk_nuevo;
	
	reg [9:0] address;
	//wire [1:0] destino;
	
	 
	reg [33:0] disp_ctr;
	reg [1:0] state;
	reg [1:0] last_state;
		
	
	reg [33:0] ctr_en_piso;
	reg [1:0] state_andando;
	
	parameter FinFIFO = 9;
	
	parameter IDLE = 2'b00, andando = 2'b01, open_doors = 2'b10;
	parameter tiempo_en_piso = 100000000;
	
	parameter divider = 50000000;
	parameter minus_one = 2'b00, one = 2'b01, two = 2'b10, three = 2'b11;
	
	initial begin
		address = 0;
		state = one;
		state_andando = andando;
		//last_state = minus_one;
		//destino = three;
		direccion = 2'b01;
		clk_nuevo = 0;
		disp_ctr = 0;
		ctr_en_piso = 0;
		puertas_abiertas = 0;
		ocupado = 0;
	end
	
//	cola_destinos_externos cola_externos(
//		.address(address),
//		.destino(destino)
//	);
	
	
	
	always @ (posedge(clk_nuevo))   // When will Always Block Be Triggered
	begin
		if (destino[1:0] > state) begin
			direccion = 2'b01;
			case (state)
				minus_one: state = one;
				one: state = two;
				two: state = three;
			endcase
		end else if (destino[1:0] < state) begin
			direccion = 2'b10;
			case (state)
				one: state = minus_one;
				two: state = one;
				three: state = two;
			endcase
		end
		else direccion = 2'b00;
	

	end
	
	always @(posedge(clk)) begin
		case (state_andando)
			andando: begin
				ocupado <= 1;
				disp_ctr <= disp_ctr + 1;
				if (disp_ctr == divider) begin
					clk_nuevo <= ~clk_nuevo;
					disp_ctr <= 0;
					if (clk_nuevo == 1) begin
						if (state == destino[1:0]) begin
							state_andando <= open_doors;
							puertas_abiertas <= 1; //Solo cuando se llega.
						end
					end
				end
			end
			
			open_doors: begin //Esto deberia pasar solo cuando se llega al piso de destino.
				ctr_en_piso <= ctr_en_piso + 1;
				puertas_abiertas <= 1;
				if (ctr_en_piso == tiempo_en_piso) begin
					//if (address < FinFIFO)
					//	address <= address + 1;
					ocupado <= 0;
					ctr_en_piso <= 0;
					//destino = one;
					state_andando <= IDLE;
					//puertas_abiertas <= 0;
					//if (state != destino)
						
				end
			end
			
			IDLE: begin
				ocupado <= 0;
				if (state != destino[1:0]) begin
					ocupado <= 1;
					state_andando <= andando;
					puertas_abiertas <= 0;
				end
			end
		endcase
	end
	
	assign piso = state;
endmodule
