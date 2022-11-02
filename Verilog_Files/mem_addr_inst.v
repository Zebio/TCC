module mem_addr_inst(
	input PH1_t, PH1_f, I7_t, I7_f, I6_t, I6_f, A3_t, A3_f, A2_t, A2_f, A1_t, A1_f, A0_t, A0_f, 
	output O3_t, O3_f, O2_t, O2_f, O1_t, O1_f, O0_t, O0_f);

	wire hysteresis;
	assign hysteresis = PH1_t | PH1_f | I7_t | I7_f | I6_t | I6_f | A3_t | A3_f | A2_t | A2_f | A1_t | A1_f | A0_t | A0_f;

	assign O3_f= (PH1_t & I7_f & I6_t & A3_f) | (PH1_t & I7_t & I6_f & A3_f) | (hysteresis & O3_f);
	assign O3_t= (PH1_t & I7_t & I6_f & A3_t) | (PH1_t & I7_f & I6_t & A3_t) | (hysteresis & O3_t);
	assign O2_f= (PH1_t & I7_f & I6_t & A2_f) | (PH1_t & I7_t & I6_f & A2_f) | (hysteresis & O2_f);
	assign O2_t= (PH1_t & I7_f & I6_t & A2_t) | (PH1_t & I7_t & I6_f & A2_t) | (hysteresis & O2_t);
	assign O1_f= (PH1_t & I7_t & I6_f & A1_f) | (PH1_t & I7_f & I6_t & A1_f) | (hysteresis & O1_f);
	assign O1_t= (PH1_t & I7_f & I6_t & A1_t) | (PH1_t & I7_t & I6_f & A1_t) | (hysteresis & O1_t);
	assign O0_f= (PH1_t & I7_t & I6_f & A0_f) | (PH1_t & I7_f & I6_t & A0_f) | (hysteresis & O0_f);
	assign O0_t= (PH1_t & I7_f & I6_t & A0_t) | (PH1_t & I7_t & I6_f & A0_t) | (hysteresis & O0_t);

endmodule 
