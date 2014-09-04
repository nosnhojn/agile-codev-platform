`include "svunit_defines.svh"
`include "pixelProcessor.v"

`include "test_defines.svh"

module pixelProcessor_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "pixelProcessor_ut";
  svunit_testcase svunit_ut;

  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================

  parameter LINE_WIDTH = 1920;

  wire  [89:0] wdata;
  wire  [31:0] waddr;
  wire         wr;
  logic [89:0] rdata;
  wire  [31:0] raddr;
  logic        ingress_rdy;
  wire  [31:0] ingress_read_cnt;
  wire         egress_rdy;

  `CLK_RESET_FIXTURE(10,1)

  pixelProcessor uut(
   .clk(clk),
   .rst_n(rst_n),

   .wdata(wdata),
   .waddr(waddr),
   .wr(wr),
   .rdata(rdata),
   .raddr(raddr),

   .ingress_rdy(ingress_rdy),
   .ingress_read_cnt(ingress_read_cnt),

   .egress_rdy(egress_rdy)
  );


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

    setIngressNotRdy();

    reset();
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

  `SVTEST(read_start_of_first_line)
    step();

    expectRaddr(0);
  `SVTEST_END

  `SVTEST(read_start_of_second_line)
    setIngressRdy();
    repeat (1) step();

    expectRaddr(LINE_WIDTH);
  `SVTEST_END

  `SVTEST(read_2nd_of_first_line)
    setIngressRdy();
    repeat (2) step();

    expectRaddr(3);
  `SVTEST_END

  `SVTEST(read_2nd_of_second_line)
    setIngressRdy();
    repeat (3) step();

    expectRaddr(LINE_WIDTH+3);
  `SVTEST_END

  `SVTEST(read_3rd_of_first_line)
    setIngressRdy();
    repeat (4) step();

    expectRaddr(6);
  `SVTEST_END

  `SVTEST(pause_on_3rd_of_first_line)
    setIngressRdy();
    repeat (5) step();

    expectRaddr(6);
  `SVTEST_END

  `SVUNIT_TESTS_END

  task setIngressNotRdy();
    nextSamplePoint();
    ingress_rdy = 0;
  endtask

  task setIngressRdy();
    nextSamplePoint();
    ingress_rdy = 1;
  endtask

  task expectRaddr(bit [31:0] addr);
    nextSamplePoint();
    `FAIL_UNLESS(raddr === addr);
  endtask

endmodule
