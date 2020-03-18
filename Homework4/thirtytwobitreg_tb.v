module thirtytwobitreg_tb;
    reg clock; reg clear; reg write1; reg[31:0] write_data1; reg[4:0] write_index1;
    reg write2; reg[31:0] write_data2; reg[4:0] write_index2; 
    reg[4:0] read_index; wire[31:0][31:0] read_value ;

  thirtytwobitreg dut (clock, clear, write1, write_data1, write_index1, write2, write_data2, write_index2, read_index, read_value);
 

 initial
        begin
            $monitor("%d clear=%b, write1=%b, write_data1=%b, write_index1=%b, write2=%b, write_data2=%b, write_index2=%b, read_value=%b", 
                $time, clear, write1, write_data1, write_index1, write2, write_data2, write_index2, read_value);
            #10 clear = 1'd0; write1 = 1'd1; write_data1 = 32'd255; write_index1 = 5'd0; write2 = 1'd0; write_data2 = 32'd0; write_index2 = 5'd0;
            #10 clear = 1'd1; write1 = 1'd1; write_data1 = 32'd255; write_index1 = 5'd0; write2 = 1'd0; write_data2 = 32'd0; write_index2 = 5'd0;
            #10 clear = 1'd0; write1 = 1'd1; write_data1 = 32'd255; write_index1 = 5'd0; write2 = 1'd1; write_data2 = 32'd200; write_index2 = 5'd0;
            #10 clear = 1'd0; write1 = 1'd1; write_data1 = 32'd255; write_index1 = 5'd0; write2 = 1'd0; write_data2 = 32'd0; write_index2 = 5'd0;
        end
endmodule