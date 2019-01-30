// testgen_tb.vt
//
// Testbench for testgen.v
//
// 2018/04/23  Written (BB)

`timescale 1ns/10ps

// Test bench module has no inputs or outputs
module top_tb;

//----- Declarations

wire  [3:0]         odata0;
wire  [3:0]         odata1;
wire  [3:0]         odata2;
wire  [3:0]         odata3;
wire  [9:0]			  LED;
reg	[1:0]			 sel,sw;
reg	[1:0]			  key;
wire  [3:0]         newdata0;
wire  [3:0]         newdata1;
wire  [3:0]         newdata2;
wire  [3:0]         newdata3;

//----- testgen submodule
top top (
	.SW     (sw),
   .tout0    (newdata0),
   .tout1	(newdata1),
   .tout2	(newdata2),
   .tout3	(newdata3)
   );



testgen testgen (
   .select    	(sel),
   .data0       (odata0),
   .data1       (odata1),
   .data2      (odata2),
   .data3      (odata3)

   );

//----- Main test 
// This block is executed only once starting at the beginning of the simulation.
initial begin
   // creates a dump file of signals which can be displayed by the viewer.
   //$recordfile("testgen_tb");
   //$recordvars(testgen_tb);

   // $write is a simulator directive that prints text to the
   // simulator screen when this line is executed
	
	
   $write("Beginning simulation\n");

   sel = 2'b00;  
   #10;
	
   $write("select = %b,  ", sel);
   $write("odata0 = %h, ", odata0);
   $write("odata1 = %h, ", odata1);
   $write("odata2 = %h, ", odata2);
   $write("odata3 = %h", odata3);
   $write("\n");

   sel = 2'b01;  
   #10;
	
   $write("select = %b,  ", sel);
   $write("odata0 = %h, ", odata0);
   $write("odata1 = %h, ", odata1);
   $write("odata2 = %h, ", odata2);
   $write("odata3 = %h", odata3);
   $write("\n");

   sel = 2'b10;  
   #10;
	
   $write("select = %b,  ", sel);
   $write("odata0 = %h, ", odata0);
   $write("odata1 = %h, ", odata1);
   $write("odata2 = %h, ", odata2);
   $write("odata3 = %h", odata3);
   $write("\n");

   sel = 2'b11;  
   #10;
	
   $write("select = %b,  ", sel);
   $write("odata0 = %h, ", odata0);
   $write("odata1 = %h, ", odata1);
   $write("odata2 = %h, ", odata2);
   $write("odata3 = %h", odata3);
   $write("\n");

 sw = 2'b00;  
   #10;
	
   $write("sw = %b,  ", sw);
   $write("newdata0 = %h, ", newdata0);
   $write("newdata1 = %h, ", newdata1);
   $write("newdata2 = %h, ", newdata2);
   $write("newdata3 = %h", newdata3);
   $write("\n");

   sw = 2'b01;  
   #10;
	
   $write("sw = %b,  ", sw);
   $write("newdata0 = %h, ", newdata0);
   $write("newdata1 = %h, ", newdata1);
   $write("newdata2 = %h, ", newdata2);
   $write("newdata3 = %h", newdata3);
   $write("\n");

   sw = 2'b10;  
   #10;
	
   $write("sw = %b,  ", sw);
   $write("newdata0 = %h, ", newdata0);
   $write("newdata1 = %h, ", newdata1);
   $write("newdata2 = %h, ", newdata2);
   $write("newdata3 = %h", newdata3);
   $write("\n");

   sw = 2'b11;  
   #10;
	
   $write("sw = %b,  ", sw);
   $write("newdata0 = %h, ", newdata0);
   $write("newdata1 = %h, ", newdata1);
   $write("newdata2 = %h, ", newdata2);
   $write("newdata3 = %h", newdata3);
   $write("\n");



   $finish;             // ends simulation
end

endmodule

