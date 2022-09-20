module controller(
	input I7_t, I7_f, I6_t, I6_f, I5_t, I5_f, I4_t, I4_f, I3_t, I3_f, I2_t, I2_f, I1_t, I1_f, I0_t, I0_f, 
	output C1i_t, C1i_f, C11_t, C11_f, C10_t, C10_f, C2i_t, C2i_f, C21_t, C21_f, C20_t, C20_f, C3i_t, C3i_f, C31_t, C31_f, C30_t, C30_f, Mr_t, Mr_f);

	wire hysteresis;
	assign hysteresis = I7_t | I7_f | I6_t | I6_f | I5_t | I5_f | I4_t | I4_f | I3_t | I3_f | I2_t | I2_f | I1_t | I1_f | I0_t | I0_f;

	assign C1i_f= (I7_t & I6_f) | (hysteresis & C1i_f);
	assign C1i_t= (I6_t) | (hysteresis & C1i_t);
	assign C11_f= (I7_t & I6_f & I5_f) | (I7_f & I6_t & I5_f) | (I7_t & I6_t & I3_f) | (hysteresis & C11_f);
	assign C11_t= (I7_f & I6_t & I5_t) | (I7_t & I6_f & I5_t) | (I7_t & I6_t & I3_t) | (hysteresis & C11_t);
	assign C10_f= (I7_t & I6_f & I4_f) | (I7_f & I6_t & I4_f) | (I7_t & I6_t & I2_f) | (hysteresis & C10_f);
	assign C10_t= (I7_f & I6_t & I4_t) | (I7_t & I6_f & I4_t) | (I7_t & I6_t & I2_t) | (hysteresis & C10_t);
	
	//assign C2i_f= () | (hysteresis & C2i_f);
	assign C2i_f=0;

	assign C2i_t= (I7_t & I6_t) | (hysteresis & C2i_t);
	assign C21_f= (I7_t & I6_t & I1_f) | (hysteresis & C21_f);
	assign C21_t= (I7_t & I6_t & I1_t) | (hysteresis & C21_t);
	assign C20_f= (I7_t & I6_t & I0_f) | (hysteresis & C20_f);
	assign C20_t= (I7_t & I6_t & I0_t) | (hysteresis & C20_t);
	assign C3i_f= (I7_t & I6_t) | (hysteresis & C3i_f);
	
	//assign C3i_t= () | (hysteresis & C3i_t);
	assign C3i_t= 0;
	
	assign C31_f= (I7_t & I6_t & I1_f) | (hysteresis & C31_f);
	assign C31_t= (I7_t & I6_t & I1_t) | (hysteresis & C31_t);
	assign C30_f= (I7_t & I6_t & I0_f) | (hysteresis & C30_f);
	assign C30_t= (I7_t & I6_t & I0_t) | (hysteresis & C30_t);
	assign Mr_f= (I7_f & I6_t) | (hysteresis & Mr_f);
	assign Mr_t= (I7_t & I6_f) | (hysteresis & Mr_t);

endmodule 
