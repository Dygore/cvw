// This module implements a 12-bit carry lookahead adder. It is used
// for rounding in the floating point adder. 

module cla12 (S, CO, X, Y);
   
   input  [11:0] X;
   input [11:0]  Y;
   
   output [11:0] S;
   output 	 CO;
   
   wire [0:63] 	 A,B,Q;
   wire 	 LOGIC0;
   wire 	 CIN;
   wire 	 CO_64;
   
   assign LOGIC0 = 0;
   assign CIN = 0;

   DBLCADDER_64_64 U1 (A , B , CIN, Q , CO_64);

   assign A[0] = X[0];
   assign B[0] = Y[0];
   assign A[1] = X[1];
   assign B[1] = Y[1];
   assign A[2] = X[2];
   assign B[2] = Y[2];
   assign A[3] = X[3];
   assign B[3] = Y[3];
   assign A[4] = X[4];
   assign B[4] = Y[4];
   assign A[5] = X[5];
   assign B[5] = Y[5];
   assign A[6] = X[6];
   assign B[6] = Y[6];
   assign A[7] = X[7];
   assign B[7] = Y[7];
   assign A[8] = X[8];
   assign B[8] = Y[8];
   assign A[9] = X[9];
   assign B[9] = Y[9];
   assign A[10] = X[10];
   assign B[10] = Y[10];
   assign A[11] = X[11];
   assign B[11] = Y[11];
   assign A[12] = LOGIC0;
   assign B[12] = LOGIC0;
   assign A[13] = LOGIC0;
   assign B[13] = LOGIC0;
   assign A[14] = LOGIC0;
   assign B[14] = LOGIC0;
   assign A[15] = LOGIC0;
   assign B[15] = LOGIC0;
   assign A[16] = LOGIC0;
   assign B[16] = LOGIC0;
   assign A[17] = LOGIC0;
   assign B[17] = LOGIC0;
   assign A[18] = LOGIC0;
   assign B[18] = LOGIC0;
   assign A[19] = LOGIC0;
   assign B[19] = LOGIC0;
   assign A[20] = LOGIC0;
   assign B[20] = LOGIC0;
   assign A[21] = LOGIC0;
   assign B[21] = LOGIC0;
   assign A[22] = LOGIC0;
   assign B[22] = LOGIC0;
   assign A[23] = LOGIC0;
   assign B[23] = LOGIC0;
   assign A[24] = LOGIC0;
   assign B[24] = LOGIC0;
   assign A[25] = LOGIC0;
   assign B[25] = LOGIC0;
   assign A[26] = LOGIC0;
   assign B[26] = LOGIC0;
   assign A[27] = LOGIC0;
   assign B[27] = LOGIC0;
   assign A[28] = LOGIC0;
   assign B[28] = LOGIC0;
   assign A[29] = LOGIC0;
   assign B[29] = LOGIC0;
   assign A[30] = LOGIC0;
   assign B[30] = LOGIC0;
   assign A[31] = LOGIC0;
   assign B[31] = LOGIC0;
   assign A[32] = LOGIC0;
   assign B[32] = LOGIC0;
   assign A[33] = LOGIC0;
   assign B[33] = LOGIC0;
   assign A[34] = LOGIC0;
   assign B[34] = LOGIC0;
   assign A[35] = LOGIC0;
   assign B[35] = LOGIC0;
   assign A[36] = LOGIC0;
   assign B[36] = LOGIC0;
   assign A[37] = LOGIC0;
   assign B[37] = LOGIC0;
   assign A[38] = LOGIC0;
   assign B[38] = LOGIC0;
   assign A[39] = LOGIC0;
   assign B[39] = LOGIC0;
   assign A[40] = LOGIC0;
   assign B[40] = LOGIC0;
   assign A[41] = LOGIC0;
   assign B[41] = LOGIC0;
   assign A[42] = LOGIC0;
   assign B[42] = LOGIC0;
   assign A[43] = LOGIC0;
   assign B[43] = LOGIC0;
   assign A[44] = LOGIC0;
   assign B[44] = LOGIC0;
   assign A[45] = LOGIC0;
   assign B[45] = LOGIC0;
   assign A[46] = LOGIC0;
   assign B[46] = LOGIC0;
   assign A[47] = LOGIC0;
   assign B[47] = LOGIC0;
   assign A[48] = LOGIC0;
   assign B[48] = LOGIC0;
   assign A[49] = LOGIC0;
   assign B[49] = LOGIC0;
   assign A[50] = LOGIC0;
   assign B[50] = LOGIC0;
   assign A[51] = LOGIC0;
   assign B[51] = LOGIC0;
   assign A[52] = LOGIC0;
   assign B[52] = LOGIC0;
   assign A[53] = LOGIC0;
   assign B[53] = LOGIC0;
   assign A[54] = LOGIC0;
   assign B[54] = LOGIC0;
   assign A[55] = LOGIC0;
   assign B[55] = LOGIC0;
   assign A[56] = LOGIC0;
   assign B[56] = LOGIC0;
   assign A[57] = LOGIC0;
   assign B[57] = LOGIC0;
   assign A[58] = LOGIC0;
   assign B[58] = LOGIC0;
   assign A[59] = LOGIC0;
   assign B[59] = LOGIC0;
   assign A[60] = LOGIC0;
   assign B[60] = LOGIC0;
   assign A[61] = LOGIC0;
   assign B[61] = LOGIC0;
   assign A[62] = LOGIC0;
   assign B[62] = LOGIC0;
   assign A[63] = LOGIC0;
   assign B[63] = LOGIC0;

   assign S[0] = Q[0];
   assign S[1] = Q[1];
   assign S[2] = Q[2];
   assign S[3] = Q[3];
   assign S[4] = Q[4];
   assign S[5] = Q[5];
   assign S[6] = Q[6];
   assign S[7] = Q[7];
   assign S[8] = Q[8];
   assign S[9] = Q[9];
   assign S[10] = Q[10];
   assign S[11] = Q[11];
   assign CO    = Q[12];
   
endmodule //cla52

// This module implements a 12-bit carry lookahead subtractor. It is used
// for rounding in the floating point adder. 

module cla_sub12 (S, X, Y);
   
   input [11:0] X;
   input [11:0] Y;
   
   output [11:0] S;
   
   wire [0:63] 	 A,B,Q,Bbar;
   wire 	 CO;
   wire 	 LOGIC0;
   wire 	 VDD;
   
   assign Bbar = ~B;
   assign LOGIC0 = 0;
   assign VDD = 1;

   DBLCADDER_64_64 U1 (A , Bbar , VDD, Q , CO);

   assign A[0] = X[0];
   assign B[0] = Y[0];
   assign A[1] = X[1];
   assign B[1] = Y[1];
   assign A[2] = X[2];
   assign B[2] = Y[2];
   assign A[3] = X[3];
   assign B[3] = Y[3];
   assign A[4] = X[4];
   assign B[4] = Y[4];
   assign A[5] = X[5];
   assign B[5] = Y[5];
   assign A[6] = X[6];
   assign B[6] = Y[6];
   assign A[7] = X[7];
   assign B[7] = Y[7];
   assign A[8] = X[8];
   assign B[8] = Y[8];
   assign A[9] = X[9];
   assign B[9] = Y[9];
   assign A[10] = X[10];
   assign B[10] = Y[10];
   assign A[11] = X[11];
   assign B[11] = Y[11];
   assign A[12] = LOGIC0;
   assign B[12] = LOGIC0;
   assign A[13] = LOGIC0;
   assign B[13] = LOGIC0;
   assign A[14] = LOGIC0;
   assign B[14] = LOGIC0;
   assign A[15] = LOGIC0;
   assign B[15] = LOGIC0;
   assign A[16] = LOGIC0;
   assign B[16] = LOGIC0;
   assign A[17] = LOGIC0;
   assign B[17] = LOGIC0;
   assign A[18] = LOGIC0;
   assign B[18] = LOGIC0;
   assign A[19] = LOGIC0;
   assign B[19] = LOGIC0;
   assign A[20] = LOGIC0;
   assign B[20] = LOGIC0;
   assign A[21] = LOGIC0;
   assign B[21] = LOGIC0;
   assign A[22] = LOGIC0;
   assign B[22] = LOGIC0;
   assign A[23] = LOGIC0;
   assign B[23] = LOGIC0;
   assign A[24] = LOGIC0;
   assign B[24] = LOGIC0;
   assign A[25] = LOGIC0;
   assign B[25] = LOGIC0;
   assign A[26] = LOGIC0;
   assign B[26] = LOGIC0;
   assign A[27] = LOGIC0;
   assign B[27] = LOGIC0;
   assign A[28] = LOGIC0;
   assign B[28] = LOGIC0;
   assign A[29] = LOGIC0;
   assign B[29] = LOGIC0;
   assign A[30] = LOGIC0;
   assign B[30] = LOGIC0;
   assign A[31] = LOGIC0;
   assign B[31] = LOGIC0;
   assign A[32] = LOGIC0;
   assign B[32] = LOGIC0;
   assign A[33] = LOGIC0;
   assign B[33] = LOGIC0;
   assign A[34] = LOGIC0;
   assign B[34] = LOGIC0;
   assign A[35] = LOGIC0;
   assign B[35] = LOGIC0;
   assign A[36] = LOGIC0;
   assign B[36] = LOGIC0;
   assign A[37] = LOGIC0;
   assign B[37] = LOGIC0;
   assign A[38] = LOGIC0;
   assign B[38] = LOGIC0;
   assign A[39] = LOGIC0;
   assign B[39] = LOGIC0;
   assign A[40] = LOGIC0;
   assign B[40] = LOGIC0;
   assign A[41] = LOGIC0;
   assign B[41] = LOGIC0;
   assign A[42] = LOGIC0;
   assign B[42] = LOGIC0;
   assign A[43] = LOGIC0;
   assign B[43] = LOGIC0;
   assign A[44] = LOGIC0;
   assign B[44] = LOGIC0;
   assign A[45] = LOGIC0;
   assign B[45] = LOGIC0;
   assign A[46] = LOGIC0;
   assign B[46] = LOGIC0;
   assign A[47] = LOGIC0;
   assign B[47] = LOGIC0;
   assign A[48] = LOGIC0;
   assign B[48] = LOGIC0;
   assign A[49] = LOGIC0;
   assign B[49] = LOGIC0;
   assign A[50] = LOGIC0;
   assign B[50] = LOGIC0;
   assign A[51] = LOGIC0;
   assign B[51] = LOGIC0;
   assign A[52] = LOGIC0;
   assign B[52] = LOGIC0;
   assign A[53] = LOGIC0;
   assign B[53] = LOGIC0;
   assign A[54] = LOGIC0;
   assign B[54] = LOGIC0;
   assign A[55] = LOGIC0;
   assign B[55] = LOGIC0;
   assign A[56] = LOGIC0;
   assign B[56] = LOGIC0;
   assign A[57] = LOGIC0;
   assign B[57] = LOGIC0;
   assign A[58] = LOGIC0;
   assign B[58] = LOGIC0;
   assign A[59] = LOGIC0;
   assign B[59] = LOGIC0;
   assign A[60] = LOGIC0;
   assign B[60] = LOGIC0;
   assign A[61] = LOGIC0;
   assign B[61] = LOGIC0;
   assign A[62] = LOGIC0;
   assign B[62] = LOGIC0;
   assign A[63] = LOGIC0;
   assign B[63] = LOGIC0;

   assign S[0] = Q[0];
   assign S[1] = Q[1];
   assign S[2] = Q[2];
   assign S[3] = Q[3];
   assign S[4] = Q[4];
   assign S[5] = Q[5];
   assign S[6] = Q[6];
   assign S[7] = Q[7];
   assign S[8] = Q[8];
   assign S[9] = Q[9];
   assign S[10] = Q[10];
   assign S[11] = Q[11];
   assign CO_12 = Q[12];
   
endmodule //cla_sub52
