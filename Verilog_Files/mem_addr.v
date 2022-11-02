module mem_addr(
	input PH0_t, PH0_f, PC3_t, PC3_f, PC2_t, PC2_f, PC1_t, PC1_f, PC0_t, PC0_f, I3_t, I3_f, I2_t, I2_f, I1_t, I1_f, I0_t, I0_f, 
	output A3_t, A3_f, A2_t, A2_f, A1_t, A1_f, A0_t, A0_f);

	wire hysteresis;
	assign hysteresis = PH0_t | PH0_f | PC3_t | PC3_f | PC2_t | PC2_f | PC1_t | PC1_f | PC0_t | PC0_f | I3_t | I3_f | I2_t | I2_f | I1_t | I1_f | I0_t | I0_f;

	assign A3_f= (PH0_f & I3_f) | (PH0_t & PC3_f) | (hysteresis & A3_f);
	assign A3_t= (PH0_f & I3_t) | (PH0_t & PC3_t) | (hysteresis & A3_t);
	assign A2_f= (PH0_f & I2_f) | (PH0_t & PC2_f) | (hysteresis & A2_f);
	assign A2_t= (PH0_f & I2_t) | (PH0_t & PC2_t) | (hysteresis & A2_t);
	assign A1_f= (PH0_f & I1_f) | (PH0_t & PC1_f) | (hysteresis & A1_f);
	assign A1_t= (PH0_f & I1_t) | (PH0_t & PC1_t) | (hysteresis & A1_t);
	assign A0_f= (PH0_f & I0_f) | (PH0_t & PC0_f) | (hysteresis & A0_f);
	assign A0_t= (PH0_f & I0_t) | (PH0_t & PC0_t) | (hysteresis & A0_t);

endmodule 
