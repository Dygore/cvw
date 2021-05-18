/////////////////////////////////////////////////////////////////////////////// 
// Block Name:	lop.v
// Author:		David Harris
// Date:		11/2/1995
//
// Block Description:
//   This block implements a Leading One Predictor used to determine 
//   the normalization shift count. 
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////// 
module lza(sum, normcnt, sumzero); 
/////////////////////////////////////////////////////////////////////////////
 
	input logic     	[163:0]  	sum;            // sum
	output logic     	[8:0]		normcnt;		// normalization shift count
	output logic     		  		sumzero;		// sum = 0

	// Internal nodes

	reg			[8:0] 		i;				// loop index
 
	// A real LOP uses a fast carry chain to find only the first 0.
	// It is an example of a parallel prefix algorithm.  For the sake
	// of simplicity,  this model is behavioral instead.
	// A real LOP would also operate on the sources of the adder, not
	// the result!

	always_comb
		begin
			i =   0;
			while (~sum[163-i] && i <= 163) i = i+1;  // search for leading one 
			normcnt = i;    // compute shift count
	end

	// Also check if sum is zero 
	assign sumzero = ~(|sum);
	
endmodule
