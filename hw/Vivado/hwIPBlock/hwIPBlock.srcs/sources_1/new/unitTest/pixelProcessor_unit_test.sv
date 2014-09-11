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
  parameter FIRST_ROW = 1;
  parameter FIRST_COLUMN = 1;
  parameter NOT_FIRST_ROW = 0;
  parameter NOT_FIRST_COLUMN = 0;
  parameter LAST_ROW = 1;
  parameter LAST_COLUMN = 1;
  parameter NOT_LAST_ROW = 0;
  parameter NOT_LAST_COLUMN = 0;

  wire  [119:0] wdata;
  wire  [31:0] waddr;
  wire         wr;
  logic [119:0] rdata;
  wire  [31:0] raddr;
  logic        ingress_rdy;
  wire  [31:0] ingress_read_cnt;
  wire         egress_rdy;

  wire calc_strobe;
  wire first_row;
  wire first_column;
  wire last_row;
  wire last_column;

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

    .egress_rdy(egress_rdy),

    .calc_strobe(calc_strobe),
    .first_row(first_row),
    .first_column(first_column),
    .last_row(last_row),
    .last_column(last_column)
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

    setIngressRdy();

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

  // pull the first set of 3 groups of 4 pixels
  `SVTEST(raddr_start_of_first_line)
    expectRaddr(0);
  `SVTEST_END

  `SVTEST(raddr_start_of_second_line)
    step();

    expectRaddr(LINE_WIDTH);
  `SVTEST_END

  `SVTEST(raddr_start_of_third_line)
    step(2);

    expectRaddr(2*LINE_WIDTH);
  `SVTEST_END

  `SVTEST(no_strobe_until_end_of_group)
    step(2);

    expectNoStrobe();
  `SVTEST_END

  `SVTEST(strobe_for_end_of_first_group)
    step(3);
    expectStrobe(FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END

  `SVTEST(no_strobe_after_end_of_group)
    step(4);
    expectNoStrobe();
  `SVTEST_END

  // roll over to the next set of 3 groups of 4 pixels
  `SVTEST(raddr_2nd_group_of_first_line)
    step(3);
 
    expectRaddr(4);
  `SVTEST_END
 
  `SVTEST(raddr_2nd_group_of_second_line)
    step(4);
 
    expectRaddr(4 + LINE_WIDTH);
  `SVTEST_END

  `SVTEST(strobe_for_end_of_2nd_group)
    step(6);
    expectStrobe(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END
 
  // fast forward to the 2nd last group of the first line
  `SVTEST(strobe_before_end_of_first_line)
    step(3*(1920/4)-3);
    expectStrobe(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END

  // fast forward to the last group of the first line
  `SVTEST(raddr_third_line_of_last_group)
    step(3*(1920/4)-1);
 
    expectRaddr(1916 + LINE_WIDTH*2);
  `SVTEST_END

  `SVTEST(strobe_at_end_of_first_line)
    step(3*(1920/4));
    expectStrobe(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, LAST_COLUMN);
  `SVTEST_END

  // stalling with the ingress not ready
  `SVTEST(stall_from_reset)
    setIngressNotRdy();
    step(41); // arbitrary stall time

    expectRaddr(0);
  `SVTEST_END

  `SVTEST(ingress_not_rdy_to_rdy)
    setIngressNotRdy();
    step(17); // arbitrary stall time
    setIngressRdy();
    step(3);

    expectRaddr(4);
    expectStrobe(FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END

  `SVTEST(ingress_rdy_to_not_rdy)
    step(3);

    setIngressNotRdy();
    step();

    expectRaddr(4);
  `SVTEST_END

  `SVTEST(strobe_is_single_cycle_regardless_of_ingress_rdy)
    step(3);

    setIngressNotRdy();
    step();

    expectNoStrobe();
  `SVTEST_END

  `SVTEST(strobe_row_column_markers_not_affected_by_ingress_rdy)
    step(3);

    setIngressNotRdy();
    step(13);

    setIngressRdy();
    step(3);

    expectStrobe(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END

  `SVTEST(consume_first_3_pixels)
    stepUntilStrobe();
    step();

    expectIngressReadCnt(3);
  `SVTEST_END

  `SVTEST(consume_second_3_pixels)
    stepUntilStrobe();
    step(2);

    expectIngressReadCnt(3);
  `SVTEST_END

  `SVTEST(first_pause_consuming_pixels)
    stepUntilStrobe();
    step(3);

    expectIngressReadCnt(0);
  `SVTEST_END

  `SVTEST(consume_first_4_pixels)
    stepUntilStrobe();
    stepUntilStrobe();
    step();

    expectIngressReadCnt(4);
  `SVTEST_END

  `SVTEST(consume_second_4_pixels)
    stepUntilStrobe();
    stepUntilStrobe();
    step(2);

    expectIngressReadCnt(4);
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

  task expectNoStrobe();
    nextSamplePoint();
    `FAIL_UNLESS(calc_strobe === 0);
  endtask

  task expectStrobe(bit _first_row, bit _first_column, bit _last_row, bit _last_column);
    nextSamplePoint();
    `FAIL_UNLESS(calc_strobe === 1);
    `FAIL_UNLESS(first_row === _first_row);
    `FAIL_UNLESS(first_column === _first_column);
    `FAIL_UNLESS(last_row === _last_row);
    `FAIL_UNLESS(last_column === _last_column);
  endtask

  task stepUntilStrobe();
    step();
    nextSamplePoint();
    while (!calc_strobe) begin
      step();
      nextSamplePoint();
    end
  endtask

  task expectIngressReadCnt(int cnt);
    nextSamplePoint();
    `FAIL_UNLESS(ingress_read_cnt === cnt);
  endtask

endmodule
