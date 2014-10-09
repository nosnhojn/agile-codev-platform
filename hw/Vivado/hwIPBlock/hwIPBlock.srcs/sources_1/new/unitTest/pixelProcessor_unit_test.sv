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

  parameter LINE_WIDTH = 1920/4;
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
  wire  [31:0] ingress_used_cnt;
  wire  [31:0] ingress_available_cnt;
  logic [31:0] ingress_rdy_thresh;
  logic        ingress_new_pixel;
  wire         egress_rdy;

  wire calc_strobe;
  wire first_row_flag;
  wire first_column_flag;
  wire last_row_flag;
  wire last_column_flag;

  const int mem_reads_per_group = 3;
  const int full_group = mem_reads_per_group;
  const int mem_reads_per_row = mem_reads_per_group * (LINE_WIDTH);
  const int full_row = mem_reads_per_row;
  const int full_frame = (NUM_ROWS-2) * full_row;

  `CLK_RESET_FIXTURE(10,1)

  pixelProcessor uut(
    .clk(clk),
    .rst_n(rst_n),

    .wdata(wdata),
    .waddr(waddr),
    .wr(wr),
    .rdata(rdata),
    .raddr(raddr),

    .ingress_used_cnt(ingress_used_cnt),
    .ingress_available_cnt(ingress_available_cnt),
    .ingress_rdy_thresh(ingress_rdy_thresh),
    .ingress_new_pixel(ingress_new_pixel),

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
    ingress_new_pixel = 0;

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
  `SVTEST(raddr_1st_group_first_read)
    expectRaddr(0);
  `SVTEST_END

  `SVTEST(raddr_1st_group_second_read)
    step();

    expectRaddr(LINE_WIDTH);
  `SVTEST_END

  `SVTEST(raddr_1st_group_third_read)
    step(2);
 
    expectRaddr(2*LINE_WIDTH);
  `SVTEST_END
 
  // roll over to the next set of 3 groups of 4 pixels
  `SVTEST(raddr_2nd_group_first_read)
    step(3);
 
    expectRaddr(1);
  `SVTEST_END

  `SVTEST(raddr_2nd_group_second_read)
    step(4);
 
    expectRaddr(LINE_WIDTH + 1);
  `SVTEST_END
 
  // fast forward to the last group of the first row
  `SVTEST(raddr_end_of_row_third_read)
    step(full_row - 1);
 
    expectRaddr(LINE_WIDTH*2 + LINE_WIDTH-1);
  `SVTEST_END
 
  `SVTEST(raddr_is_LINE_WIDTH_after_releasing_row_0)
    step(full_row);
 
    expectRaddr(LINE_WIDTH);
  `SVTEST_END
 
  `SVTEST(raddr_is_0_after_releasing_full_frame)
    step(full_frame);
 
    expectRaddr(0);
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
    step(full_row - full_group);
 
    expectStrobeWithRowColumnMarkers(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END
 
  `SVTEST(strobe_at_end_of_first_row)
    step(full_row);
 
    expectStrobeWithRowColumnMarkers(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, LAST_COLUMN);
  `SVTEST_END
 
 
 
  // strobes for beginning and end of last row
  `SVTEST(strobe_at_last_row_first_column)
    step(full_frame - full_row + full_group);
 
    expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, FIRST_COLUMN, LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END
 
  `SVTEST(strobe_at_last_row_last_column)
    step(full_frame);
 
    expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, NOT_FIRST_COLUMN, LAST_ROW, LAST_COLUMN);
  `SVTEST_END
 
 
 
 
  // ingress read cnt is set at the end of each row
  `SVTEST(clear_ingress_read_cnt_before_releasing_row_0)
    step(full_row);
 
    expectIngressUsedCnt(0);
  `SVTEST_END
 
  `SVTEST(set_ingress_read_cnt_to_release_row_0)
    step(full_row + 1);
 
    expectIngressUsedCnt(LINE_WIDTH);
  `SVTEST_END
 
  `SVTEST(clear_ingress_read_cnt_after_releasing_row_0)
    step(full_row + 2);
 
    expectIngressUsedCnt(0);
  `SVTEST_END
 
  `SVTEST(set_ingress_read_cnt_to_release_row_1)
    step(2 * full_row + 1);
 
    expectIngressUsedCnt(LINE_WIDTH);
  `SVTEST_END
 
  `SVTEST(set_ingress_read_cnt_to_release_bottom_row)
    step(full_frame);
 
    step();
 
    expectIngressUsedCnt(3 * LINE_WIDTH);
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
 
    expectRaddr(1);
    expectStrobeWithRowColumnMarkers(FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END
 
  `SVTEST(hold_raddr_when_ingress_rdy_deasserted)
    step(3);
 
    setIngressNotRdy();
    step();
 
    expectRaddr(1);
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
  
  `SVTEST(ingress_available_cnt_resets_to_0)
    expectIngressAvailCnt(0);
  `SVTEST_END
  
  `SVTEST(ingress_available_cnt_inc_by_1)
    setNewIngressPixel();
    step();

    expectIngressAvailCnt(1);
  `SVTEST_END
  
  `SVTEST(ingress_available_cnt_inc_by_N)
    setNewIngressPixel();
    repeat (50) step();

    expectIngressAvailCnt(50);
  `SVTEST_END

  `SVTEST(stall_before_ingress_availble_ge_thresh)
    setIngressRdyThresh(41);
    setNewIngressPixel();
    step(41);
 
    expectRaddr(0);
  `SVTEST_END

  `SVTEST(ready_when_ingress_availble_ge_thresh)
    setIngressRdyThresh(41);
    setNewIngressPixel();
    step(42);
 
    expectRaddr(LINE_WIDTH);
  `SVTEST_END

  `SVTEST(ingress_available_cnt_dec_at_end_of_line)
    setIngressRdyThresh(LINE_WIDTH*4);
    setNewIngressPixel();

    step(LINE_WIDTH*4); // hit the threshold here so the pixelproc starts

    setNoNewIngressPixel();
    step(full_row+1);
 
    expectIngressAvailCnt(0);
  `SVTEST_END

  `SVTEST(ingress_available_cnt_dec_at_end_of_frame)
    setIngressRdyThresh(NUM_ROWS*LINE_WIDTH*4);
    setNewIngressPixel();

    step(NUM_ROWS*LINE_WIDTH*4); // hit the threshold here so the pixelproc starts

    setIngressRdyThresh(0);
    setNoNewIngressPixel();
    step(full_frame+1);
 
    expectIngressAvailCnt(0);
  `SVTEST_END

  `SVUNIT_TESTS_END

  task setIngressNotRdy();
    nextSamplePoint();
    ingress_rdy_thresh = 2**31; // any value the ingress_available_cnt can never reach will do
  endtask

  task setIngressRdy();
    nextSamplePoint();
    ingress_rdy_thresh = 0;
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

  task expectIngressUsedCnt(int cnt);
    nextSamplePoint();
    `FAIL_UNLESS(ingress_used_cnt === cnt);
  endtask

  task setNewIngressPixel();
    nextSamplePoint();
    ingress_new_pixel = 1;
  endtask

  task setNoNewIngressPixel();
    nextSamplePoint();
    ingress_new_pixel = 0;
  endtask

  task setIngressRdyThresh(int cnt);
    nextSamplePoint();
    ingress_rdy_thresh = cnt;
  endtask

  task expectIngressAvailCnt(int cnt);
    nextSamplePoint();
    `FAIL_UNLESS(ingress_available_cnt === cnt);
  endtask

endmodule
