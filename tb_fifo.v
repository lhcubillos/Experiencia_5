`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:20:18 05/26/2016
// Design Name:   FIFO_v
// Module Name:   C:/Users/LH Cubillos/Desktop/Experiencia_5/tb_fifo.v
// Project Name:  Exp5
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FIFO_v
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_fifo;

	// Inputs
	reg [23:0] data_in;
	reg wr_en;
	reg rd_en;
	reg n_reset;
	reg clk;

	// Outputs
	wire [23:0] data_out;
	wire [4:0] data_count;
	wire empty;
	wire full;
	wire almst_empty;
	wire almst_full;
	wire err;

	// Instantiate the Unit Under Test (UUT)
	FIFO_v uut (
		.data_out(data_out), 
		.data_count(data_count), 
		.empty(empty), 
		.full(full), 
		.almst_empty(almst_empty), 
		.almst_full(almst_full), 
		.err(err), 
		.data_in(data_in), 
		.wr_en(wr_en), 
		.rd_en(rd_en), 
		.n_reset(n_reset), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		data_in = 0;
		wr_en = 0;
		rd_en = 0;
		n_reset = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#15;
		n_reset = 1;
		#5;
		clk = 1;
		#5;
		clk = 0;
		n_reset = 0;
		#15;
		data_in = 10;
		wr_en = 1;
		#5;
		clk = 1;
		#5;
		clk = 0;		
		#15;
		wr_en = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#15;
		data_in = 5;
		wr_en = 1;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#15;
		wr_en = 0;
		#15;
		data_in = 2;
		wr_en = 1;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#15;
		wr_en = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#15;
		rd_en = 1;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#15;
		rd_en = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#15;
		rd_en = 1;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#15;
		rd_en = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#15;
		rd_en = 1;
		#5;
		clk = 1;
		#5;
		clk = 0;
		#15;
		rd_en = 0;
		#5;
		clk = 1;
		#5;
		clk = 0;
		clk = 0;
		
	end
	

	
	initial begin
		$monitor("data_out = %d, data_count = %d, empty = %d", data_out, data_count,empty);
	end 
      
endmodule

