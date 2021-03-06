`include "svunit_defines.svh"

`include "test_defines.svh"

module pixelProcessor_ctrl_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "pixelProcessor_ctrl_ut";
  svunit_testcase svunit_ut;

  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================

  // instance and connectivity are in this include file
  `include "pixelProcessor_pull_unit_test.svh"


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

    setNoCalcRdy();
    setIngressNotRdy();
    ingress_new_pixel = 0;

    reset();
    setIngressRdy();
    setCalcRdy();
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

    expectRaddr(LINE_WIDTH_BY4);
  `SVTEST_END

  `SVTEST(raddr_1st_group_third_read)
    step(2);
 
    expectRaddr(2*LINE_WIDTH_BY4);
  `SVTEST_END
 
  // roll over to the next set of 3 groups of 4 pixels
  `SVTEST(raddr_2nd_group_first_read)
    step(3);
 
    expectRaddr(1);
  `SVTEST_END

  `SVTEST(raddr_2nd_group_second_read)
    step(4);
 
    expectRaddr(LINE_WIDTH_BY4 + 1);
  `SVTEST_END
 
  // fast forward to the last group of the first row
  `SVTEST(raddr_end_of_row_third_read)
    step(full_row - 1);
 
    expectRaddr(LINE_WIDTH_BY4*3 - 1);
  `SVTEST_END
 
   `SVTEST(raddr_wraps_at_mem_depth)
     repeat (8) step(full_row);

     expectRaddr(0);
   `SVTEST_END
 
  `SVTEST(raddr_is_LINE_WIDTH_after_releasing_row_0)
    repeat (8) step(full_row);

//    step(full_row);
// 
//   expectRaddr(LINE_WIDTH_BY4);
//   step(full_row);
//
//   expectRaddr(2*LINE_WIDTH_BY4);
//   step(full_row);
//
//   expectRaddr(3*LINE_WIDTH_BY4);
//   step(full_row);
//
//   expectRaddr(4*LINE_WIDTH_BY4);
//   step(full_row);
//
//   expectRaddr(5*LINE_WIDTH_BY4);
//   step(full_row);
//
//   expectRaddr(6*LINE_WIDTH_BY4);
//   step(full_row);
//
//   expectRaddr(7*LINE_WIDTH_BY4);
//   step(full_row);
 
    expectRaddr(0);
  `SVTEST_END
 
   `SVTEST(raddr_jumps_at_end_of_frame)
     step(full_frame);
     expectRaddr('h780);

     step(1);
     expectRaddr('h780 + LINE_WIDTH_BY4);

     step(1);
     expectRaddr('h780 + LINE_WIDTH_BY4*2);
   `SVTEST_END
 
   `SVTEST(raddr_jumps_at_end_of_frame_2nd_frame)
     step(full_frame*2);
     expectRaddr(0);

     step(1);
     expectRaddr(LINE_WIDTH_BY4);

     step(1);
     expectRaddr(LINE_WIDTH_BY4*2);
   `SVTEST_END
 
 
 
 
  // strobes are asserted after every group is pulled from memory
  `SVTEST(no_strobe_before_end_of_group)
    step(3);
 
    expectNoStrobe();
  `SVTEST_END
 
  `SVTEST(strobe_for_end_of_first_group)
    step(4);
 
    expectStrobeWithRowColumnMarkers(FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END
 
  `SVTEST(no_strobe_unless_calc_rdy)
    setCalcRdy();
    step(2);

    setNoCalcRdy();
    step(40); // long random delay
 
    expectNoStrobe();
    setCalcRdy();
    step(2);

    expectStrobeWithRowColumnMarkers(FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    setNoCalcRdy();
    step(1);

    expectNoStrobe();
  `SVTEST_END
 
  `SVTEST(no_strobe_after_end_of_group)
    step(5);
    expectNoStrobe();
  `SVTEST_END
 
  `SVTEST(strobe_for_end_of_2nd_group)
    step(7);
    expectStrobeWithRowColumnMarkers(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END
 
  // fast forward to the 2nd last group of the first row
  `SVTEST(strobe_before_end_of_first_row)
    step(full_row - full_group + 1);
 
    expectStrobeWithRowColumnMarkers(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END
 
  `SVTEST(strobe_at_end_of_first_row)
    step(full_row + 1);
 
    expectStrobeWithRowColumnMarkers(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, LAST_COLUMN);
  `SVTEST_END
 
 
 
  // strobes for beginning and end of last row
  `SVTEST(strobe_at_last_row_first_column)
    step(full_frame - full_row + full_group + 1);
  
    expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, FIRST_COLUMN, LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END

  `SVTEST(strobe_at_last_row_last_column)
    step(full_frame + 1);
  
    expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, NOT_FIRST_COLUMN, LAST_ROW, LAST_COLUMN);
  `SVTEST_END

 
  // ingress read cnt is set at the end of each row
  `SVTEST(clear_ingress_read_cnt_before_releasing_row_0)
    step(full_row);
 
    expectIngressUsedCnt(0);
  `SVTEST_END
 
  `SVTEST(set_ingress_read_cnt_to_release_row_0)
    step(full_row + 2);
 
    expectIngressUsedCnt(LINE_WIDTH);
  `SVTEST_END
 
  `SVTEST(clear_ingress_read_cnt_after_releasing_row_0)
    step(full_row + 3);
 
    expectIngressUsedCnt(0);
  `SVTEST_END
 
  `SVTEST(set_ingress_read_cnt_to_release_row_1)
    step(2 * full_row + 2);
 
    expectIngressUsedCnt(LINE_WIDTH);
  `SVTEST_END
 
  `SVTEST(set_ingress_read_cnt_to_release_bottom_row)
    step(full_frame);
  
    step(2);
  
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
    step(1);
    expectStrobeWithRowColumnMarkers(FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
  `SVTEST_END
 
  `SVTEST(hold_raddr_when_ingress_rdy_deasserted)
    step(3);
 
    setIngressNotRdy();
    step();
 
    expectRaddr(1);
  `SVTEST_END
 
  `SVTEST(strobe_is_single_cycle_regardless_of_ingress_rdy)
    step(4);
 
    setIngressNotRdy();
    step();
 
    expectNoStrobe();
  `SVTEST_END
 
  `SVTEST(strobe_row_column_markers_not_affected_by_ingress_rdy)
    step(4);
 
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
 
    expectRaddr(LINE_WIDTH_BY4);
  `SVTEST_END

  `SVTEST(ingress_available_cnt_dec_at_end_of_line)
    setIngressRdyThresh(LINE_WIDTH);
    setNewIngressPixel();

    step(LINE_WIDTH); // hit the threshold here so the pixelproc starts

    setNoNewIngressPixel();
    step(full_row+2);
 
    expectIngressAvailCnt(0);
  `SVTEST_END

  `SVTEST(ingress_available_cnt_dec_at_end_of_frame)
    setIngressRdyThresh(NUM_LINES*LINE_WIDTH);
    setNewIngressPixel();

    step(NUM_LINES*LINE_WIDTH); // hit the threshold here so the pixelproc starts

    setIngressRdyThresh(0);
    setNoNewIngressPixel();
    step(full_frame+2);
 
    expectIngressAvailCnt(0);
  `SVTEST_END

  `SVUNIT_TESTS_END

endmodule
