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

    reset();
  endtask

  function void loadStartOfFrame();
    for (int i=0; i<LINE_WIDTH*8; i+=1) my_dpram.mem[i] = i;
  endfunction

  function void loadEndOfFrame();
    for (int i=0; i<LINE_WIDTH*4; i+=1) my_dpram.mem[i] = i+15360;
  endfunction


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

// always @(posedge clk) begin
//   #0.1;
//   $display("%t: next:0x%0x rdata:0x%0x raddr:%0x (0x%0x) strobe:%0x", $time, uut.next_rptr_line_cnt, rdata, raddr, raddr[11:0], calc_strobe);
// end
    bit [119:0] slot0;
    bit [119:0] slot1;
    bit [119:0] slot2;
    int _1st_line;
    int _2nd_line;
    int _3rd_line;

  task automatic expectGroupEq(int row,
                               int column);



    _1st_line = row*LINE_WIDTH + column*4;
    _2nd_line = _1st_line + LINE_WIDTH;
    _3rd_line = _2nd_line + LINE_WIDTH;

    for (int i=_1st_line+3; i>=_1st_line; i-=1) slot0 = { slot0 , i[29:0] };
    for (int i=_2nd_line+3; i>=_2nd_line; i-=1) slot1 = { slot1 , i[29:0] };
    for (int i=_3rd_line+3; i>=_3rd_line; i-=1) slot2 = { slot2 , i[29:0] };

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
    loadStartOfFrame();
    step(full_group+1); // 4 is 3 clks for mem reads and 1 for flopped output
 
    expectStrobeWithRowColumnMarkers(FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectGroupEq(0, 0);
  `SVTEST_END

  `SVTEST(top_right)
    loadStartOfFrame();
    step(full_row+1);
 
    expectStrobeWithRowColumnMarkers(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, LAST_COLUMN);
    expectGroupEq(0, LINE_WIDTH_BY4-1);
  `SVTEST_END



  `SVTEST(inside_top_left)
    loadStartOfFrame();
    step(full_row + 2 * full_group + 1);
 
    expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectGroupEq(1, 1);
  `SVTEST_END
 
  `SVTEST(inside_top_right)
    loadStartOfFrame();
    step(2*full_row - full_group + 1);
 
    expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectGroupEq(1, LINE_WIDTH_BY4-2);
  `SVTEST_END


 
  `SVTEST(bottom_left)
    loadEndOfFrame();
    step(full_frame - full_row + full_group + 1);
 
    expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, FIRST_COLUMN, LAST_ROW, NOT_LAST_COLUMN);
    expectGroupEq(NUM_LINES-3, 0);
  `SVTEST_END
 
  `SVTEST(bottom_right)
    loadEndOfFrame();
    step(full_frame+1);
 
    expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, NOT_FIRST_COLUMN, LAST_ROW, LAST_COLUMN);
    expectGroupEq(NUM_LINES-3, LINE_WIDTH_BY4-1);
  `SVTEST_END



  `SVTEST(inside_bottom_left)
    loadEndOfFrame();
    step(full_frame - 2*full_row + 2*full_group + 1);
  
    expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectGroupEq(NUM_LINES-4, 1);
  `SVTEST_END
  
// `SVTEST(inside_bottom_right)
//   step(full_frame - full_row - full_group);
//
//   expectStrobeWithRowColumnMarkers(NOT_FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
// `SVTEST_END

  `SVUNIT_TESTS_END
endmodule
