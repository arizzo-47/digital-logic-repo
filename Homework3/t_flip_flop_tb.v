module t_flip_flop_tb;
  reg clk;
  reg clear;
  reg t;
 
  t_flip_flop u0 (  .clk(clk),
            .clear(clear),
            .t(t),
          .q(q));
 
  always #5 clk = ~clk;
 
  initial begin  
    {clear, clk, t} <= 0;
 
    $monitor ("T=%0t clear=%0b t=%0d q=%0d", $time, clear, t, q);
    repeat(2) @(posedge clk);

    t = 0; clear = 0;
    t = 0; clear = 1;
    t = 1; clear = 0;
    t = 1; clear = 1;

    #20 $finish;
 
  end
endmodule