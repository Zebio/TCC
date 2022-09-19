module controller(
	input PH0_t, PH0_f, PH1_t, PH1_f, Rd_t, Rd_f, Ld_t, Ld_f, 
	output R_c_t, R_c_f, R_m_t, R_m_f);

	wire hysteresis;
	assign hysteresis = PH0_t | PH0_f | PH1_t | PH1_f | Rd_t | Rd_f | Ld_t | Ld_f;

	assign R_c_f= (Rd_f) | (PH1_f) | (PH0_t) | (hysteresis & R_c_f);
	assign R_c_t= (PH0_f & PH1_t & Rd_t) | (hysteresis & R_c_t);
	assign R_m_f= (PH0_f & PH1_f) | (PH0_f & Ld_f) | (hysteresis & R_m_f);
	assign R_m_t= (PH1_t & Ld_t) | (PH0_t) | (hysteresis & R_m_t);

endmodule 
