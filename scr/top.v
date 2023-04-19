module top(
	input [1:0] a, b, 			// two 2-bit input numbers
	input carry_in,				// carry input bit
	output [1:0] sum,			// 2-bit output sum
	output carry_out			// carry outputbit
);

wire carry1;

one_bit_adder adder1(.a(a[0]), .b(b[0]), .carry_in(carry_in), .sum(sum[0]), .carry_out(carry1));
one_bit_adder adder2(.a(a[1]), .b(b[1]), .carry_in(carry1)  , .sum(sum[1]), .carry_out(carry_out));

endmodule
