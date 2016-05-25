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
		//destino,
		
		piso,
		direccion,
		puertas_abiertas
		
		//state_andando,
		//clk_nuevo
	
    );
	 
	input clk;
	//input [1:0] destino;
	output [1:0] piso;
	output reg [1:0] direccion; //00:nada, 01: arriba, 10: abajo.
	output reg puertas_abiertas;
	
	reg clk_nuevo;
	
	reg [9:0] address;
	wire [1:0] destino;
	
	 
	reg [33:0] disp_ctr;
	reg [1:0] state;
	reg [1:0] last_state;
	
	//reg [1:0] destino;
	
	
	reg [33:0] ctr_en_piso;
	reg state_andando;
	
	parameter IDLE = 0, andando = 1;
	parameter en_piso = 100000000;
	
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
	end
	
	cola_destinos_externos cola_externos(
		.address(address),
		.destino(destino)
	);
	
	
	
	always @ (posedge(clk_nuevo))   // When will Always Block Be Triggered
	begin
		if (destino > state) begin
			direccion = 2'b01;
			case (state)
				minus_one: state = one;
				one: state = two;
				two: state = three;
			endcase
		end else if (destino < state) begin
			direccion = 2'b10;
			case (state)
				one: state = minus_one;
				two: state = one;
				three: state = two;
			endcase
		end
		else direccion = 2'b00;
	
//		case (state)
//			minus_one: begin
//				state = one;
//				direccion = 2'b01; //subiendo
//			end
//			
//			one: begin
//				if (direccion == 2'b10) begin
//					state = minus_one;
//					direccion = 2'b00;
//				end
//				else if (direccion == 2'b01) state = two;
//			end
//			
//			two: begin
//				if (direccion == 2'b10) state = one;
//				else if (direccion ==2'b01)begin
//					state = three;
//					direccion = 2'b00;
//				end
//			end
//			
//			three: begin
//				state = two;
//				direccion = 2'b10; //bajando
//			end
//		endcase
	end
	
	always @(posedge(clk)) begin
		case (state_andando)
			andando: begin
				disp_ctr <= disp_ctr + 1;
				if (disp_ctr == divider) begin
					clk_nuevo <= ~clk_nuevo;
					disp_ctr <= 0;
					if (clk_nuevo == 1) begin
						if (state == destino) begin
							state_andando <= IDLE;
							puertas_abiertas <= 1; //Solo cuando se llega.
						end
					end
				end
			end
			
			IDLE: begin //Esto deberia pasar solo cuando se llega al piso de destino.
				ctr_en_piso <= ctr_en_piso + 1;
				puertas_abiertas <= 1;
				if (ctr_en_piso == en_piso) begin
//					if (address < 9)
//						address <= address + 1;
//					else address <= 0;
					ctr_en_piso <= 0;
					//destino = one;
					state_andando <= andando;
					puertas_abiertas <= 0;
					//if (state != destino)
						
				end
			end
		endcase
	end
	
	assign piso = state;
endmodule
