`timescale 1ns / 1ps

module comparator_tb();
    reg [7:0] a;
    reg [7:0] b;
    wire eq;
    wire lt;
    wire gt;

comparator uut (
	.a(a),
	.b(b),
	.eq(eq),
	.lt(lt),
	.gt(gt));

    initial
        begin

            #200;		//Expect equals, eq = 1
            a = 00000001;
            b = 00000001;
            $display("Test Equals: eq = ", eq, ", lt = ", lt, ", gt = ", gt);

            #100;		//Expect less than, lt = 1
            a = 00000010;
            b = 00010000;
            $display("Test Less Than: eq = ", eq, ", lt = ", lt, ", gt = ", gt);
            
            #100;		//Expect greater than, gt = 1
            a = 01000000;
            b = 00000001;
            $display("Test Greater Than: eq = ", eq, ", lt = ", lt, ", gt = ", gt);
        end
endmodule
