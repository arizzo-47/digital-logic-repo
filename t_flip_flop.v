module t_flip_flop (   input clk,
              input clear,
              input t,
            output reg q);
 
  always @ (posedge clk) begin
    if (!clear) 
      q <= 0;
    else
      if (t)
          q <= ~q;
      else
          q <= q;
  end
endmodule