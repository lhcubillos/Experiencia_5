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
		
		piso_asc_1,
		direccion_asc_1,
		puertas_abiertas_asc_1,
		
		piso_asc_2,
		direccion_asc_2,
		puertas_abiertas_asc_2
		
		//state_andando,
		//clk_nuevo
	
    );
	 
	input clk;
	output [1:0] piso_asc_1;
	output reg [1:0] direccion_asc_1; //00:nada, 01: arriba, 10: abajo.
	output reg puertas_abiertas_asc_1;
	
	output [1:0] piso_asc_2;
	output reg [1:0] direccion_asc_2; //00:nada, 01: arriba, 10: abajo.
	output reg puertas_abiertas_asc_2;
	
	reg clk_nuevo_asc_1;
	reg clk_nuevo_asc_2;
	 
	reg [33:0] disp_ctr_asc_1;
	reg [33:0] disp_ctr_asc_2;
	
	reg [1:0] state_asc_1;
	reg [1:0] last_state_asc_1;
	
	reg [1:0] state_asc_2;
	reg [1:0] last_state_asc_2;
	
	reg [33:0] ctr_en_piso_asc_1;
	reg state_andando_asc_1;
	
	reg [33:0] ctr_en_piso_asc_2;
	reg state_andando_asc_2;
	
	parameter IDLE = 0, andando = 1;
	parameter en_piso = 100000000;
	
	parameter divider = 50000000;
	parameter minus_one = 2'b00, one = 2'b01, two = 2'b10, three = 2'b11;
	
	initial begin
		state_asc_1 = one;
		state_andando_asc_1 = andando;
		last_state_asc_1 = minus_one;
		direccion_asc_1 = 2'b01;
		
		state_asc_2 = three;
		state_andando_asc_2 = andando;
		last_state_asc_2 = two;
		direccion_asc_2 = 2'b00;
		
		
		clk_nuevo_asc_1 = 0;
		disp_ctr_asc_1 = 0;
		ctr_en_piso_asc_1 = 0;
		puertas_abiertas_asc_1 = 0;
		
		clk_nuevo_asc_2 = 0;
		disp_ctr_asc_2 = 0;
		ctr_en_piso_asc_2 = 0;
		puertas_abiertas_asc_2 = 0;
	end
	
	//Para moverse entre pisos.
  	always @ (posedge(clk_nuevo_asc_1))   // When will Always Block Be Triggered
	begin
		case (state_asc_1)
			minus_one: begin
				state_asc_1 = one;
				last_state_asc_1 = minus_one;
				direccion_asc_1 = 2'b01; //subiendo
			end
			
			one: begin
				if (last_state_asc_1 == two) begin
					state_asc_1 = minus_one;
					direccion_asc_1 = 2'b00;
				end
				else if (last_state_asc_1 == minus_one) state_asc_1 = two;
				last_state_asc_1 = one;
			end
			
			two: begin
				if (last_state_asc_1 == three) state_asc_1 = one;
				else if (last_state_asc_1 == one)begin
					state_asc_1 = three;
					direccion_asc_1 = 2'b00;
				end
				last_state_asc_1 = two;
			end
			
			three: begin
				state_asc_1 = two;
				last_state_asc_1 = three;
				direccion_asc_1 = 2'b10; //bajando
			end
			default: begin
				state_asc_1 = one;
				last_state_asc_1 = minus_one;
				direccion_asc_1 = 2'b01;
			end
		endcase
	end
	
	//Para moverse entre pisos.
  	always @ (posedge(clk_nuevo_asc_2))   // When will Always Block Be Triggered
	begin
		case (state_asc_2)
			minus_one: begin
				state_asc_2 = one;
				last_state_asc_2 = minus_one;
				direccion_asc_2 = 2'b01; //subiendo
			end
			
			one: begin
				if (last_state_asc_2 == two) begin
					state_asc_2 = minus_one;
					direccion_asc_2 = 2'b00;
				end
				else if (last_state_asc_2 == minus_one) state_asc_2 = two;
				last_state_asc_2 = one;
			end
			
			two: begin
				if (last_state_asc_2 == three) state_asc_2 = one;
				else if (last_state_asc_2 == one)begin
					state_asc_2 = three;
					direccion_asc_2 = 2'b00;
				end
				last_state_asc_2 = two;
			end
			
			three: begin
				state_asc_2 = two;
				last_state_asc_2 = three;
				direccion_asc_2 = 2'b10; //bajando
			end
			default: begin
				state_asc_2 = one;
				last_state_asc_2 = minus_one;
				direccion_asc_2 = 2'b01;
			end
		endcase
	end
	
	//Crear el clk nuevo. Parar en pisos.
	always @(posedge(clk)) begin
		//para el ascensor 1.
		case (state_andando_asc_1)
			andando: begin
				disp_ctr_asc_1 <= disp_ctr_asc_1 + 1;
				if (disp_ctr_asc_1 == divider) begin
					clk_nuevo_asc_1 <= ~clk_nuevo_asc_1;
					disp_ctr_asc_1 <= 0;
					if (clk_nuevo_asc_1 == 1) begin
						state_andando_asc_1 <= IDLE;
						puertas_abiertas_asc_1 <= 1; // Esto va a ser opcional.
					end
				end
			end
			
			IDLE: begin //Esto debe pasar cuando se llegue al piso correspondiente.
				ctr_en_piso_asc_1 <= ctr_en_piso_asc_1 + 1;
				if (ctr_en_piso_asc_1 == en_piso) begin
					ctr_en_piso_asc_1 <= 0;
					state_andando_asc_1 <= andando;
					puertas_abiertas_asc_1 <= 0;
				end
			end
		endcase

	end
	
	always @(posedge(clk)) begin
		//para el ascensor dos.
		case (state_andando_asc_2)
			andando: begin
				disp_ctr_asc_2 <= disp_ctr_asc_2 + 1;
				if (disp_ctr_asc_2 == divider) begin
					clk_nuevo_asc_2 <= ~clk_nuevo_asc_2;
					disp_ctr_asc_2 <= 0;
					if (clk_nuevo_asc_2 == 1) begin
						state_andando_asc_2 <= IDLE;
						puertas_abiertas_asc_2 <= 1; // Esto va a ser opcional.
					end
				end
			end
			
			IDLE: begin //Esto debe pasar cuando se llegue al piso correspondiente.
				ctr_en_piso_asc_2 <= ctr_en_piso_asc_2 + 1;
				if (ctr_en_piso_asc_2 == en_piso) begin
					ctr_en_piso_asc_2 <= 0;
					state_andando_asc_2 <= andando;
					puertas_abiertas_asc_2 <= 0;
				end
			end
		endcase
	end
	
	assign piso_asc_1 = state_asc_1;
	assign piso_asc_2 = state_asc_2;
endmodule
