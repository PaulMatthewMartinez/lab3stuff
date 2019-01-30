
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module lab3sortp1(

	//////////// CLOCK //////////
	//input 		          		ADC_CLK_10,
	//input 		          		MAX10_CLK1_50,
	//input 		          		MAX10_CLK2_50,

	//////////// SEG7 //////////
	//output		     [7:0]		HEX0,
	//output		     [7:0]		HEX1,
	//output		     [7:0]		HEX2,
	//output		     [7:0]		HEX3,
	//output		     [7:0]		HEX4,
	//output		     [7:0]		HEX5,

	//////////// KEY //////////
//	input 		     [1:0]		KEY,

	//////////// LED //////////
	//output		     [9:0]		LEDR,

	//////////// SW //////////
//	input 		     [9:0]		SW,
input[3:0] in1,
input[3:0] in0,
output reg [3:0] out1,
output reg [3:0] out0

);



//=======================================================
//  REG/WIRE declarations
//=======================================================



//=======================================================
//  Structural coding
//=======================================================

always@(in1,in0)
begin
if (in1>in0)begin
	out1=in1;
	out0=in0;
	end
else if (in1<in0)begin
	out0=in1;
	out1=in0;
	end

end
endmodule
