module NCL_enable_addr(
	input A3_t, A3_f, A2_t, A2_f, A1_t, A1_f, A0_t, A0_f, PH0_t, PH0_f, 
	output O3_t, O3_f, O2_t, O2_f, O1_t, O1_f, O0_t, O0_f);

	wire hysteresis;
	assign hysteresis = A3_t | A3_f | A2_t | A2_f | A1_t | A1_f | A0_t | A0_f | PH0_t | PH0_f;

	assign O3_f= (A3_f & PH0_t) | (hysteresis & O3_f);
	assign O3_t= (A3_t & PH0_t) | (hysteresis & O3_t);
	assign O2_f= (A2_f & PH0_t) | (hysteresis & O2_f);
	assign O2_t= (A2_t & PH0_t) | (hysteresis & O2_t);
	assign O1_f= (A1_f & PH0_t) | (hysteresis & O1_f);
	assign O1_t= (A1_t & PH0_t) | (hysteresis & O1_t);
	assign O0_f= (A0_f & PH0_t) | (hysteresis & O0_f);
	assign O0_t= (A0_t & PH0_t) | (hysteresis & O0_t);

endmodule 
