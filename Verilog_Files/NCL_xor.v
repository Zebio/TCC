module NCL_xor(
	input in_a_t, in_a_f, in_b_t, in_b_f, 
	output out_t, out_f);

	wire hysteresis;
	assign hysteresis = in_a_t | in_a_f | in_b_t | in_b_f;

	assign out_f= (in_a_f & in_b_f) | (in_a_t & in_b_t) | (hysteresis & out_f);
	assign out_t= (in_a_t & in_b_f) | (in_a_f & in_b_t) | (hysteresis & out_t);

endmodule 
