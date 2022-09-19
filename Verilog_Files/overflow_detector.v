module overflow_detector(
	input A_t, A_f, B_t, B_f, S_t, S_f, 
	output OF_t, OF_f);

	wire hysteresis;
	assign hysteresis = A_t | A_f | B_t | B_f | S_t | S_f;

	assign OF_f= (A_f & S_f) | (A_t & B_f) | (B_t & S_t) | (hysteresis & OF_f);
	assign OF_t= (A_f & B_f & S_t) | (A_t & B_t & S_f) | (hysteresis & OF_t);

endmodule 
