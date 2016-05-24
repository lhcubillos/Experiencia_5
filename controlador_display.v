`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:26:17 05/22/2016 
// Design Name: 
// Module Name:    controlador_display 
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
module controlador_display(
		clk,
		piso_asc_1,
		piso_asc_2,
		seg,
		an
    );
		

	  
  // Declare input output
  
  input 	[1:0]	piso_asc_1;
  input 	[1:0] piso_asc_2;
  input clk;
  
  output reg [7:0] seg;
  output [3:0] an;
  
  // Declare internal variables
  
	//reg [1:0] Q;
	
	reg [15:0] disp_ctr = 0;
	reg [6:0] sseg;
	reg [3:0] an_temp;
	
  	always @ (posedge(clk))   // When will Always Block Be Triggered
	begin
		disp_ctr <= disp_ctr + 1;
		if (disp_ctr >= 49999) begin
			an_temp <= 4'b1110;
			if (piso_asc_2 > 0) sseg <= piso_asc_2;
			else sseg <= 2'd1;
		end else if (disp_ctr <= 12499) begin
			an_temp <= 4'b1101;
			if (piso_asc_2 > 0) sseg <= 2'b0; //todo apagado
			else sseg <= 3'd4; //Signo -
		end else if (disp_ctr <= 24999) begin
			an_temp <= 4'b1011;
			if (piso_asc_1 > 0) sseg <= piso_asc_1;
			else sseg <= 2'd1;
		end else if (disp_ctr <= 37499) begin
			an_temp <= 4'b0111;
			if (piso_asc_1 > 0) sseg <= 2'b0; //todo apagado
			else sseg <= 3'd4; //Signo -
		end
	
		begin
		case(sseg)
			0:		seg <= 8'b11111111;
			1:		seg <= 8'b11111001;
			2:		seg <= 8'b10100100;
			3:		seg <= 8'b10110000;
			4:		seg <= 8'b10111111;
			default:	seg <= 8'b11111111;
		  endcase
		end

	end
	
	
	assign an = an_temp;
  
endmodule


