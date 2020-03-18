module thirtytwobitreg (input clock, input clear, 
    input write1, input[31:0] write_data1, input[4:0] write_index1,
    input write2, input[31:0] write_data2, input[4:0] write_index2, 
    input[4:0] read_index, output reg [31:0][31:0] read_value);

  integer i = 0;

  always @ (negedge clock, posedge clear) begin
    
    if (clear == 1'd0) 
        begin 
            if (write2 == 1'd1)
                begin
                    read_value[write_index2] = write_data2;
                end
            if (write1 == 1'd1) 
                begin
                    read_value[write_index1] = write_data1;   
                end                
        end
       
    else
        begin 
            while (i <= 31) begin
                read_value[i] = 32'd0;   
                i = i + 1;
            end
        end
  end

endmodule