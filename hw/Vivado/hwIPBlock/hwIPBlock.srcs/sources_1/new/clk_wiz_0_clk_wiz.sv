module clk_wiz_0_clk_wiz (
  input  clk_in1,
  output logic clk_out1,
  input reset,
  output locked
);

time t1, t2;

initial begin
  clk_out1 = 1;

  @(posedge clk_in1) t1 = $time;
  @(posedge clk_in1) t2 = $time;

  forever #((t2-t1)/4) clk_out1 = ~clk_out1;
end

endmodule
