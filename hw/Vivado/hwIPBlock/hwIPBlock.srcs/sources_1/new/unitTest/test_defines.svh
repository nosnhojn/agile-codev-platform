`define TEST_DPRAM_SIZE 256

`define CLK_RESET_FIXTURE(CLK_PERIOD,RST_PERIOD) \
parameter clkPeriod = CLK_PERIOD; \
logic clk; \
logic rst_n; \
initial begin \
  clk = 1; \
  rst_n = 1; \
end \
task automatic step(int size = 1); \
  repeat (size) begin \
    int step_size = clkPeriod/2 - $time % (clkPeriod/2); \
    #(step_size) clk = ~clk; \
    #(clkPeriod/2) clk = ~clk; \
  end \
endtask \
task nextSamplePoint(); \
  if ($time%clkPeriod == 0) #1; \
endtask \
task reset(); \
  rst_n = 0; \
  step(RST_PERIOD); \
  rst_n = 1; \
endtask
