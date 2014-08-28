`include "svunit_defines.svh"
`include "dpram.v"
`include "test_defines.svh"
`include "test_macros.svh"

module dpram_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "dpram_ut";
  svunit_testcase svunit_ut;

  `define PORT0 0
  `define PORT1 1

  `CLK_RESET_FIXTURE(10,1)

  logic [31:0] wdata [1:0];
  logic [31:0] waddr [1:0];
  logic        wr    [1:0];

  wire  [31:0] rdata [1:0];
  logic [31:0] raddr [1:0];

  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================
  dpram
  #(
    .SIZE(`TEST_DPRAM_SIZE)
  )
  my_dpram
  (
    .clk(clk),
    .rst_n(rst_n),

    .wdata_0(wdata[0]),
    .waddr_0(waddr[0]),
    .wr_0(wr[0]),

    .rdata_0(rdata[0]),
    .raddr_0(raddr[0]),

    .wdata_1(wdata[1]),
    .waddr_1(waddr[1]),
    .wr_1(wr[1]),

    .rdata_1(rdata[1]),
    .raddr_1(raddr[1])
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

    // clear the inputs to the uut
    for (int port=0; port<2; port+=1) begin
      wr[port] = 0;
      wdata[port] = 0;
      waddr[port] = 0;

      raddr[port] = 0;
    end

    // flex the reset
    reset();
  endtask

  //===================================
  // Here we deconstruct anything we 
  // need after running the Unit Tests
  //===================================
  task teardown();
    svunit_ut.teardown();
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

    `write_read_port_N_test(`PORT0)
    `write_read_port_N_test(`PORT1)

    `rdata_N_is_registered_test(`PORT0)
    `rdata_N_is_registered_test(`PORT1)

    `no_write_N_in_reset(`PORT0)
    `no_write_N_in_reset(`PORT1)

    `no_read_N_in_reset(`PORT0)
    `no_read_N_in_reset(`PORT1)

    `write_read_port_N_full_range(`PORT0)
    `write_read_port_N_full_range(`PORT1)

  `SVUNIT_TESTS_END
 
 
  //------------------------
  // helper tasks/functions
  //------------------------

  task expectReadData(int port, logic [31:0] exp);
    nextSamplePoint();
    `FAIL_UNLESS(rdata[port] === exp);
  endtask

  task writePort(int port, bit [31:0] addr, bit [31:0] data);
    nextSamplePoint();
    wr[port] = 1;
    waddr[port] = addr;
    wdata[port] = data;
  endtask

  task readPort(int port, bit [31:0] addr);
    nextSamplePoint();
    raddr[port] = addr;
  endtask

endmodule
