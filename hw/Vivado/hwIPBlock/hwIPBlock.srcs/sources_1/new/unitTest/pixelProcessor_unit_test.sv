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
  parameter NUM_ROWS = 1080;

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
  wire first_row_flag;
  wire first_column_flag;
  wire last_row_flag;
  wire last_column_flag;

  const int pixels_per_mem_read = 4;
  const int mem_reads_per_group = 3;
  const int mem_reads_per_row = mem_reads_per_group * (LINE_WIDTH / pixels_per_mem_read);

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
    .first_row_flag(first_row_flag),
    .first_column_flag(first_column_flag),
    .last_row_flag(last_row_flag),
    .last_column_flag(last_column_flag)
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
  `SVTEST(raddr_start_of_first_row)
    expectRaddr(0);
  `SVTEST_END

  `SVTEST(raddr_start_of_second_row)
    step();

    expectRaddr(LINE_WIDTH);
  `SVTEST_END

  `SVTEST(raddr_start_of_third_row)
    step(2);

    expectRaddr(2*LINE_WIDTH);
  `SVTEST_END

  // roll over to the next set of 3 groups of 4 pixels
  `SVTEST(raddr_2nd_group_of_first_row)
    step(3);
 
    expectRaddr(4);
  `SVTEST_END
 
  `SVTEST(raddr_2nd_group_of_second_row)
    step(4);
 
    expectRaddr(LINE_WIDTH + 4);
  `SVTEST_END

  // fast forward to the last group of the first row
  `SVTEST(raddr_third_row_of_last_group)
    step(mem_reads_per_row - 1);
 
    expectRaddr(LINE_WIDTH*2 + LINE_WIDTH-4);
  `SVTEST_END



  // strobes are asserted after every group is pulled from memory
  `SVTEST(no_strobe_before_end_of_group)
    step(2);

    expectNoStrobe();
  `SVTEST_END

  `SVTEST(strobe_for_end_of_first_group)
    step(3);

    expectStrobeWithRowColumnMarkers(FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END

  `SVTEST(no_strobe_after_end_of_group)
    step(4);
    expectNoStrobe();
  `SVTEST_END

  `SVTEST(strobe_for_end_of_2nd_group)
    step(6);
    expectStrobeWithRowColumnMarkers(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END
 
  // fast forward to the 2nd last group of the first row
  `SVTEST(strobe_before_end_of_first_row)
    step(mem_reads_per_row - mem_reads_per_group);

    expectStrobeWithRowColumnMarkers(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END

  `SVTEST(strobe_at_end_of_first_row)
    step(mem_reads_per_row);

    expectStrobeWithRowColumnMarkers(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, LAST_COLUMN);
  `SVTEST_END



  // strobes for beginning and end of last row
  `SVTEST(strobe_at_last_row_first_column)
    step((NUM_ROWS-2) * mem_reads_per_row + mem_reads_per_group);

    expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, FIRST_COLUMN, LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END

  `SVTEST(strobe_at_last_row_last_column)
    step((NUM_ROWS-1) * mem_reads_per_row);

    expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, NOT_FIRST_COLUMN, LAST_ROW, LAST_COLUMN);
  `SVTEST_END




  // stalling with the ingress not ready
  `SVTEST(stall_from_reset)
    setIngressNotRdy();
    step(41); // arbitrary stall time

    expectRaddr(0);
  `SVTEST_END

  `SVTEST(next_raddr_when_ingress_rdy_asserted)
    setIngressNotRdy();
    step(17); // arbitrary stall time
    setIngressRdy();
    step(3);

    expectRaddr(4);
    expectStrobeWithRowColumnMarkers(FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END

  `SVTEST(hold_raddr_when_ingress_rdy_deasserted)
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

    expectStrobeWithRowColumnMarkers(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END

  `SVTEST(clear_ingress_read_cnt_before_releasing_row_0)
    step(mem_reads_per_row);

    expectIngressReadCnt(0);
  `SVTEST_END

  `SVTEST(set_ingress_read_cnt_to_release_row_0)
    step(mem_reads_per_row + 1);

    expectIngressReadCnt(LINE_WIDTH);
  `SVTEST_END

  `SVTEST(clear_ingress_read_cnt_after_releasing_row_0)
    step(mem_reads_per_row + 2);

    expectIngressReadCnt(0);
  `SVTEST_END

  `SVTEST(raddr_after_releasing_row_0)
    step(mem_reads_per_row);
 
    expectRaddr(LINE_WIDTH);
  `SVTEST_END

  `SVTEST(set_ingress_read_cnt_to_release_row_1)
    step(2*mem_reads_per_row + 1);

    expectIngressReadCnt(LINE_WIDTH);
  `SVTEST_END

  `SVTEST(set_ingress_read_cnt_to_release_bottom_row)
    step((NUM_ROWS-1) * mem_reads_per_row);

    step();
 
    expectIngressReadCnt(3 * LINE_WIDTH);
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

  task expectStrobeWithRowColumnMarkers(bit _first_row, bit _first_column, bit _last_row, bit _last_column);
    nextSamplePoint();
    `FAIL_UNLESS(calc_strobe === 1);
    `FAIL_UNLESS(first_row_flag === _first_row);
    `FAIL_UNLESS(first_column_flag === _first_column);
    `FAIL_UNLESS(last_column_flag === _last_column);
    `FAIL_UNLESS(last_row_flag === _last_row);
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
