module overflow_detector(input A_t, A_f, B_t, B_f, S_t, S_f, 
output OF_t, OF_f );
 

assign OF_t= A_f & B_f & S_t | A_t & B_t & S_f  | ((A_t | A_f | B_t | B_f | S_t | S_f) & OF_t);
 

assign OF_f= B_f & S_f | A_f & B_t | A_t & S_t  | ((A_t | A_f | B_t | B_f | S_t | S_f) & OF_f);
 
endmodule 
