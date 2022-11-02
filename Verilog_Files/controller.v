module controller(
	input I7_t, I7_f, I6_t, I6_f, I5_t, I5_f, I4_t, I4_f, 
	output C1A1_t, C1A1_f, C1A0_t, C1A0_f, C1O_t, C1O_f);

	wire hysteresis;
	assign hysteresis = I7_t | I7_f | I6_t | I6_f | I5_t | I5_f | I4_t | I4_f;

	assign C1A1_f= (I7_t & I6_f & I5_f) | (I7_f & I6_t & I5_f) | (hysteresis & C1A1_f);
	assign C1A1_t= (I7_f & I6_t & I5_t) | (I7_t & I6_f & I5_t) | (hysteresis & C1A1_t);
	assign C1A0_f= (I7_f & I6_t & I4_f) | (I7_t & I6_f & I4_f) | (hysteresis & C1A0_f);
	assign C1A0_t= (I7_t & I6_f & I4_t) | (I7_f & I6_t & I4_t) | (hysteresis & C1A0_t);
	assign C1O_f= (I7_t & I6_f) | (hysteresis & C1O_f);
	assign C1O_t= (I7_f & I6_t) | (hysteresis & C1O_t);

endmodule 
