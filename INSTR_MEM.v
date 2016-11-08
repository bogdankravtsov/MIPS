`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company:       California State University San Bernardino
// Engineer:		Bogdan Kravtsov
//
// Create Date:   14:20:02 10/03/2016
// Module Name:   INSTR_MEM
// Project Name:  MIPS 
// Description:   MIPS Instruction Memory implementation in verilog.
//
// Dependencies:  None
//
////////////////////////////////////////////////////////////////////////////////

module INSTR_MEM(input clk, input [31:0] addr, output reg [31:0] data);
   // Declare the memory block.
	reg [31:0] MEM [128:0];
	
	// Initialize memory.
	initial begin
		MEM[0]  <= 32'b100011_00000_00001_0000_0000_0000_0001;  // LW r1 , 1(r0)
		MEM[1]  <= 32'b100011_00000_00001_0000_0000_0000_0010;  // LW r2 , 2(r0)		MEM[2]  <= 32'b100011_00000_00001_0000_0000_0000_0011;  // LW r3 , 3(r0)
		MEM[3]  <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
		MEM[4]  <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
		MEM[5]  <= 32'b000000_00001_00010_00001_00000_100000;   // ADD r1, r1, r2
		MEM[6]  <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
		MEM[7]  <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
		MEM[8]  <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP		
		MEM[9]  <= 32'b000000_00001_00011_00001_00000_100000;   // ADD r1, r1, r3		
		MEM[10] <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
		MEM[11] <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
		MEM[12] <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP			
		MEM[13] <= 32'b000000_00001_00001_00001_00000_100000;   // ADD r1, r1, r1		
		MEM[14] <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
		MEM[15] <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
		MEM[16] <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
		MEM[17] <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP		
		MEM[18] <= 32'b000000_00001_00000_00001_00000_100000;   // ADD r1, r1, r0		
		MEM[19] <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
		MEM[20] <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
		MEM[21] <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
		MEM[22] <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
		MEM[23] <= 32'b1000_0000_0000_0000_0000_0000_0000_0000; // NOP
	end

   // Assign the contents at the requested memory address to data.
	always @ *
	begin
		data <= MEM[addr];
	end
endmodule
