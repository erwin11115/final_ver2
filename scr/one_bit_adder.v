module one_bit_adder(
	input a, b, 	// input bits to added
	input carry_in,	// carry input bit
	output sum,		// output sun bit
	output carry_out// carry output bit
);

assign sum = a ^ b ^ carry_in;						// bitwise XOR to calculate
assign carry_out = (a & b) | (carry_in & (a ^ b));	// bitwise AND and OR to calculate

endmodule
