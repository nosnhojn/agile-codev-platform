`include "svunit_defines.svh"
`include "pixelProcessor_ave.sv"

module pixelProcessor_ave_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "pixelProcessor_ave_ut";
  svunit_testcase svunit_ut;


  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================
  `CLK_RESET_FIXTURE(24,5)

  logic [29:0] wdata_i;
  logic [10:0] waddr_i;
  logic        wr_i;
  wire [29:0] wdata_o;
  wire [10:0] waddr_o;
  wire        wr_o;

  pixelProcessor_ave uut(
    .clk(clk),
    .rst_n(rst_n),
    .wdata_i(wdata_i),
    .waddr_i(waddr_i),
    .wr_i(wr_i),
    .wdata_o(wdata_o),
    .waddr_o(waddr_o),
    .wr_o(wr_o)
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

    wdata_i = 0;
    waddr_i = 0;
    wr_i = 0;

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

  parameter PIPEDEPTH = 5;

  `SVUNIT_TESTS_BEGIN

  `SVTEST(pipedepth)
    setRamWrite(0, 'h776655);

    step(PIPEDEPTH-1);
    expectNoRamWrite();

    step();
    expectRamWrite(getAddr_o(0), 'h776655);
  `SVTEST_END

$finish();
  `SVUNIT_TESTS_END

  task expectNoRamWrite();
    nextSamplePoint();
    `FAIL_UNLESS(wr_o === 0);
  endtask

  task setRamWrite(bit[10:0] addr, bit [23:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
    nextSamplePoint();
    wdata_i = { user , keep , last , data };
    waddr_i = addr;
    wr_i = 1;
  endtask

  task expectRamWrite(bit[10:0] addr, bit [23:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
    nextSamplePoint();
    `FAIL_UNLESS(wdata_o === { user , keep , last , data });
    `FAIL_UNLESS(waddr_o == addr);
    `FAIL_UNLESS(wr_o === 1);
  endtask

  function bit[10:0] getAddr_o(bit[10:0] addr);
    return addr;
  endfunction

endmodule
