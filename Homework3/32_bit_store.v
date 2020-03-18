module bit_store_32 (input clk, input clear, input inc, output reg[31:0] q);
 
  always @ (negedge clk, posedge clear) begin
    if (clear) 
    begin 
      q = 0;
    end

    else if(inc) 
    begin 
      q = q+3;
    end
  end
endmodule