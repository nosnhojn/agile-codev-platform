`include "svunit_defines.svh"
`include "pixelProcessor.v"

`include "test_defines.svh"

module pixelProcessor_data_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "pixelProcessor_data_ut";
  svunit_testcase svunit_ut;

  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================

  // instance and connectivity are in this include file
  `include "pixelProcessor_unit_test.svh"


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

    for (int r=0; r<1080; r+=1)
      for (int c=0; c<1920; c+=1)
        my_dpram.mem[r*1920+c] = r*1920+c;

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

always @(posedge clk) begin
  #0.1;
  $display("%t: next:0x%0x rdata:0x%0x raddr:%0x strobe:%0x", $time, uut.next_rptr_line_cnt, rdata, raddr, calc_strobe);
end

  task expectGroupEq(bit [119:0] slot0,
                     bit [119:0] slot1,
                     bit [119:0] slot2);
    nextSamplePoint();
    `FAIL_IF(group_slot0 !== slot0);
    `FAIL_IF(group_slot1 !== slot1);
    `FAIL_IF(group_slot2 !== slot2);
  endtask

  `SVUNIT_TESTS_BEGIN

  /*
      Testing 8 groups total at the boundaries

         X             X    - top left/right
          X           X     - inside top left/right
    
    
    
          X           X     - inside bottom left/right
         X             X    - bottom left/right

  */

  `SVTEST(top_left)
    bit[29:0] FULL_LINE_WIDTH = LINE_WIDTH*4;
    bit[29:0] FULL_LINE_WIDTH2 = 2*LINE_WIDTH*4;
    step(4);
 
    expectStrobeWithRowColumnMarkers(FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectGroupEq({ 30'h3 ,                30'h2 ,                30'h1 ,                30'h0              },
                  { FULL_LINE_WIDTH[29:0]+30'h3 ,   FULL_LINE_WIDTH[29:0]+30'h2 ,   FULL_LINE_WIDTH[29:0]+30'h1 ,   FULL_LINE_WIDTH[29:0]   },
                  { FULL_LINE_WIDTH2[29:0]+30'h3 , FULL_LINE_WIDTH2[29:0]+30'h2 , FULL_LINE_WIDTH2[29:0]+30'h1 , FULL_LINE_WIDTH2[29:0] });
  `SVTEST_END

// `SVTEST(top_right)
//   step(full_row);
//
//   expectStrobeWithRowColumnMarkers(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, LAST_COLUMN);
// `SVTEST_END
//
// `SVTEST(bottom_left)
//   step(full_frame - full_row + full_group);
//
//   expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, FIRST_COLUMN, LAST_ROW, NOT_LAST_COLUMN);
// `SVTEST_END
//
// `SVTEST(bottom_right)
//   step(full_frame);
//
//   expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, NOT_FIRST_COLUMN, LAST_ROW, LAST_COLUMN);
// `SVTEST_END
//
//
//
// `SVTEST(inside_top_left)
//   step(full_row + 2 * full_group);
//
//   expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
// `SVTEST_END
//
// `SVTEST(inside_top_right)
//   step(2*full_row - full_group);
//
//   expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
// `SVTEST_END
//
// `SVTEST(inside_bottom_left)
//   step(full_frame - 2*full_row + 2*full_group);
//
//   expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
// `SVTEST_END
//
// `SVTEST(inside_bottom_right)
//   step(full_frame - full_row - full_group);
//
//   expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
// `SVTEST_END

  `SVUNIT_TESTS_END
endmodule
