`include "svunit_defines.svh"
`include "dpram.v"

module dpram_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "dpram_ut";
  svunit_testcase svunit_ut;

  logic clk;
  logic rst_n;

  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================
  dpram my_dpram(
    .clk(clk),
    .rst_n(rst_n),

    .wdata_0(),
    .waddr_0(),
    .wr_0(),

    .wdata_1(),
    .waddr_1(),
    .wr_1(),

    .rdata_0(),
    .raddr_0(),

    .rdata_1(),
    .raddr_1()
  );

  initial begin
    clk = 1;
    rst_n = 1;
  end

  task step(int size = 1);
    repeat (size) begin
      repeat (2) #5 clk = ~clk;
    end
  endtask


  //===================================
  // Build
  //===================================
  function void build();
    svunit_ut = new(name);
  endfunction


  //===================================
  // Setup for running the Unit Tests
  //===================================
  task setup();
    svunit_ut.setup();
    /* Place Setup Code Here */
  endtask


  //===================================
  // Here we deconstruct anything we 
  // need after running the Unit Tests
  //===================================
  task teardown();
    svunit_ut.teardown();
    /* Place Teardown Code Here */
  endtask


  //===================================
  // All tests are defined between the
  // SVUNIT_TESTS_BEGIN/END macros
  //
  // Each individual test must be
  // defined between `SVTEST(_NAME_)
  // `SVTEST_END
  //
  // i.e.
  //   `SVTEST(mytest)
  //     <test code>
  //   `SVTEST_END
  //===================================
  `SVUNIT_TESTS_BEGIN



  `SVUNIT_TESTS_END

endmodule
