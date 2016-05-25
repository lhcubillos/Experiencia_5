`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:53:26 05/25/2016 
// Design Name: 
// Module Name:    transicionador_pisos 
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
module transicionador_pisos(
		clk_nuevo,
		state,
		last_state,
		
		new_state,
		new_last_state,
		direccion
		
    );
	
	parameter IDLE = 0, andando = 1;
	parameter en_piso = 100000000;
	
	parameter divider = 50000000;
	parameter minus_one = 2'b00, one = 2'b01, two = 2'b10, three = 2'b11;
		
	always @ (posedge(clk_nuevo))   // When will Always Block Be Triggered
	begin
		case (state)
			minus_one: begin
				new_state = one;
				new_last_state = minus_one;
				direccion = 2'b01; //subiendo
			end
			
			one: begin
				if (last_state == two) begin
					new_state = minus_one;
					direccion = 2'b00;
				end
				else if (last_state == minus_one) new_state = two;
				new_last_state = one;
			end
			
			two: begin
				if (last_state == three) new_state = one;
				else if (last_state == one)begin
					new_state = three;
					direccion = 2'b00;
				end
				new_last_state = two;
			end
			
			three: begin
				new_state = two;
				new_last_state = three;
				direccion = 2'b10; //bajando
			end
		endcase
	end
	


endmodule
