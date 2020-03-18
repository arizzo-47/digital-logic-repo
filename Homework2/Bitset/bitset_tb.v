`timescale 1ns / 1ps

module bitset_tb();
    reg [3:0] x;
    reg [1:0] index;
    reg value;
    wire [3:0] y;

bitset dut (x, index, value, y);
    initial
        begin
            $monitor("%d x=%b, index=%b, value=%b, y=%b", $time, x, index, value, y);
            #10 x = 1100; index = 00;value = 1;

            #10 x = 0101; index = 10; value = 0;

            #10 x = 1111; index = 11; value = 0;

            #10 x = 1100; index = 01; value = 1;
        end
endmodule
