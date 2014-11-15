`include "svunit_defines.svh"

`include "test_defines.svh"
`include "test_constants.svh"

module pixelProcessor_calc_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "pixelProcessor_calc_ut";
  svunit_testcase svunit_ut;

  parameter BG = 'hffffff;
  parameter FG = 'h000000;

  parameter FIRST_ROW = 1;
  parameter FIRST_COLUMN = 1;
  parameter NOT_FIRST_ROW = 0;
  parameter NOT_FIRST_COLUMN = 0;
  parameter LAST_ROW = 1;
  parameter LAST_COLUMN = 1;
  parameter NOT_LAST_ROW = 0;
  parameter NOT_LAST_COLUMN = 0;

  `CLK_RESET_FIXTURE(10,1)

  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================
  logic         calc_strobe;
  logic         first_row_flag;
  logic         first_column_flag;
  logic         last_row_flag;
  logic         last_column_flag;
  logic [119:0] slot0;
  logic [119:0] slot1;
  logic [119:0] slot2;

  wire         egress_read_cnt;
  wire         egress_rdy;

  wire [119:0] wdata_calc;
  wire [11:0]  waddr_calc;
  wire         wr_calc;

  pixelProcessor_calc calc(
    .clk(clk),
    .rst_n(rst_n),

    .calc_rdy(calc_rdy),

    .calc_strobe(calc_strobe),
    .first_row_flag(first_row_flag),
    .first_column_flag(first_column_flag),
    .last_row_flag(last_row_flag),
    .last_column_flag(last_column_flag),

    .group_slot0(slot0),
    .group_slot1(slot1),
    .group_slot2(slot2),

    .wdata(wdata_calc),
    .waddr(waddr_calc),
    .wr(wr_calc),

    .egress_rdy(egress_rdy),
    .egress_read_cnt(egress_read_cnt)
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
    /* Place Setup Code Here */

    clearStrobe();

    reset();
  endtask


  //===================================
  // Here we deconstruct anything we 
  // need after running the Unit Tests
  //===================================
  task teardown();
    svunit_ut.teardown();
    /* Place Teardown Code Here */

    // need a delay here to allow for sampling the async signals
    // before we cause a race by circling back for a reset
    #1;
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

  // write output tests
  `SVTEST(no_write_on_1st_column)
    strobeFlags(NOT_FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectNoWrite();
  `SVTEST_END

  `SVTEST(no_delayed_write_on_1st_column)
    strobeFlags(NOT_FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectNoWrite();

    step();
    clearStrobe();
    expectNoWrite();
  `SVTEST_END

  `SVTEST(write_on_middle_columns)
    strobeFlags(NOT_FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectWrite();
  `SVTEST_END

  `SVTEST(write_twice_on_last_column)
    strobeFlags(NOT_FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, LAST_COLUMN);
    expectWrite();

    step();
    clearStrobe();
    expectWrite();
  `SVTEST_END

  `SVTEST(no_write_on_1st_column_1st_row)
    strobeFlags(FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectNoWrite();
  `SVTEST_END

  `SVTEST(no_delayed_write_on_1st_column_1st_row)
    strobeFlags(FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectNoWrite();

    step();
    clearStrobe();
    expectNoWrite();
  `SVTEST_END

  `SVTEST(write_twice_on_first_row)
    strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectWrite();

    step();
    clearStrobe();
    expectWrite();
  `SVTEST_END

  `SVTEST(write_four_on_first_row_last_column)
    strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, LAST_COLUMN);
    expectWrite();

    repeat (3) begin
      step();
      clearStrobe();
      expectWrite();
    end
  `SVTEST_END

  `SVTEST(no_write_on_1st_column_last_row)
    strobeFlags(NOT_FIRST_ROW, FIRST_COLUMN, LAST_ROW, NOT_LAST_COLUMN);
    expectNoWrite();
  `SVTEST_END

  `SVTEST(no_delayed_write_on_1st_column_last_row)
    strobeFlags(NOT_FIRST_ROW, FIRST_COLUMN, LAST_ROW, NOT_LAST_COLUMN);
    expectNoWrite();

    step();
    clearStrobe();
    expectNoWrite();
  `SVTEST_END

  `SVTEST(write_twice_on_last_row)
    strobeFlags(NOT_FIRST_ROW, NOT_FIRST_COLUMN, LAST_ROW, NOT_LAST_COLUMN);
    expectWrite();
 
    step();
    clearStrobe();
    expectWrite();
  `SVTEST_END

  `SVTEST(write_four_on_last_row_last_column)
    strobeFlags(NOT_FIRST_ROW, NOT_FIRST_COLUMN, LAST_ROW, LAST_COLUMN);
    expectWrite();

    repeat (3) begin
      step();
      clearStrobe();
      expectWrite();
    end
  `SVTEST_END


  `SVTEST(write_addr_for_row_0_column_0)
    strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectWriteAddr(LINE_WIDTH_BY4);
  `SVTEST_END

  `SVTEST(write_addr_for_row_1_column_0)
    strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
 
    step();
    clearStrobe();
    expectWriteAddr(0);
  `SVTEST_END

  `SVTEST(write_addr_for_row_0_column_1)
    strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
 
    step();
    clearStrobe();
 
    step();
    strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectWriteAddr(LINE_WIDTH_BY4 + 1);
  `SVTEST_END
 
  `SVTEST(write_addr_for_row_1_column_1)
    strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
 
    step();
    clearStrobe();
 
    step();
    strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
 
    step();
    clearStrobe();
    expectWriteAddr(1);
  `SVTEST_END
 
  `SVTEST(write_addr_for_row_0_column_2)
    strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
 
    step();
    clearStrobe();
 
    step();
    strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
 
    step();
    clearStrobe();
 
    step();
    strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    expectWriteAddr(LINE_WIDTH_BY4+2);
  `SVTEST_END

  `SVTEST(write_addr_for_first_of_4_writes_at_end_of_row_0)
    goto_last_strobe_for_first_row();
    strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);

    expectWriteAddr(2*LINE_WIDTH_BY4-2);
  `SVTEST_END

  `SVTEST(write_addr_for_last_3_of_4_writes_at_end_of_row_0)
    goto_last_strobe_for_first_row();
    strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, LAST_COLUMN);
    step();
    clearStrobe();

    expectWriteAddr(LINE_WIDTH_BY4-2);

    step();
    expectWriteAddr(2*LINE_WIDTH_BY4-1);

    step();
    expectWriteAddr(LINE_WIDTH_BY4-1);
  `SVTEST_END

  `SVUNIT_TESTS_END

  task goto_last_strobe_for_first_row();
    strobeFlags(FIRST_ROW, FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
    step();
    clearStrobe();
    step(2);

    repeat (LINE_WIDTH_BY4-2) begin
      strobeFlags(FIRST_ROW, NOT_FIRST_COLUMN, NOT_LAST_ROW, NOT_LAST_COLUMN);
      step();
      clearStrobe();
      step(2);
    end
  endtask

  task strobeFlags(bit f_row, bit f_column,
                   bit l_row, bit l_column);
    nextSamplePoint();

    calc_strobe = 1;
    first_row_flag = f_row;
    first_column_flag = f_column;
    last_row_flag = l_row;
    last_column_flag = l_column;
  endtask

  task strobeData(bit[29:0] s0, bit[29:0] s1, bit[29:0] s2);
    nextSamplePoint();

    slot0 = s0;
    slot1 = s1;
    slot2 = s2;
  endtask

  task clearStrobe();
    nextSamplePoint();
    calc_strobe = 0;
    slot0 = 'h55;
    slot1 = 'h55;
    slot2 = 'h55;
    first_row_flag = 0;
    first_column_flag = 0;
    last_row_flag = 0;
    last_column_flag = 0;
  endtask

  task expectNoWrite();
    nextSamplePoint();
    `FAIL_IF(wr_calc !== 0);
  endtask

  task expectWrite();
    nextSamplePoint();
    `FAIL_IF(wr_calc !== 1);
  endtask

  task expectWriteAddr(bit [11:0] addr);
    nextSamplePoint();
    expectWrite();
    `FAIL_IF(waddr_calc !== addr);
  endtask

endmodule