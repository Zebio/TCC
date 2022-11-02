module mem_addr_mux(
	input PH0_t, PH0_f, Mi_t, Mi_f, SA_t, SA_f, IA_t, IA_f, 
	output Ad_t, Ad_f);

	wire hysteresis;
	assign hysteresis = PH0_t | PH0_f | Mi_t | Mi_f | SA_t | SA_f | IA_t | IA_f;

	assign Ad_f= (PH0_t & Mi_f & SA_f) | (PH0_f & Mi_t & IA_f) | (hysteresis & Ad_f);
	assign Ad_t= (PH0_t & Mi_f & SA_t) | (PH0_f & Mi_t & IA_t) | (hysteresis & Ad_t);

endmodule 
