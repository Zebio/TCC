module mux_memory_RW(
	input PH0_t, PH0_f, MI_t, MI_f, 
	output RW_t, RW_f);

	wire hysteresis;
	assign hysteresis = PH0_t | PH0_f | MI_t | MI_f;

	assign RW_f= (PH0_f & MI_f) | (hysteresis & RW_f);
	assign RW_t= (MI_t) | (PH0_t) | (hysteresis & RW_t);

endmodule 
