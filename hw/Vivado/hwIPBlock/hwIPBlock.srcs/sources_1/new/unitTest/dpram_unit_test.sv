`include "svunit_defines.svh"
`include "dpram.v"
`include "test_defines.svh"
`include "test_macros.svh"

module dpram_unit_test;
  import svunit_pkg::svunit_testcase;

  parameter DEPTH = 256;
  parameter PORT0_WIDTH = 32;
  parameter PORT1_WIDTH = 3 * PORT0_WIDTH;

  string name = "dpram_ut";
  svunit_testcase svunit_ut;

  `define PORT0 0
  `define PORT1 1

  `CLK_RESET_FIXTURE(10,1)

  logic [PORT0_WIDTH-1:0] wdata_0;
  logic [31:0] waddr_0;
  logic        wr_0;

  wire  [PORT0_WIDTH-1:0] rdata_0;
  logic [31:0] raddr_0;

  logic [PORT1_WIDTH-1:0] wdata_1;
  logic [31:0] waddr_1;
  logic        wr_1;

  wire  [PORT1_WIDTH-1:0] rdata_1;
  logic [31:0] raddr_1;

  logic [PORT1_WIDTH-1:0] testData;


  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================
  dpram
  #(
    .DPRAM_DEPTH(DEPTH),
    .DPRAM_PORT0_WIDTH(PORT0_WIDTH),
    .DPRAM_PORT1_WIDTH(PORT1_WIDTH)
  )
  my_dpram
  (
    .clk(clk),
    .rst_n(rst_n),

    .wdata_0(wdata_0),
    .waddr_0(waddr_0),
    .wr_0(wr_0),

    .rdata_0(rdata_0),
    .raddr_0(raddr_0),

    .wdata_1(wdata_1),
    .waddr_1(waddr_1),
    .wr_1(wr_1),

    .rdata_1(rdata_1),
    .raddr_1(raddr_1)
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
    wr_0 = 0;
    wdata_0 = 0;
    waddr_0 = 0;

    raddr_0 = 0;

    wr_1 = 0;
    wdata_1 = 0;
    waddr_1 = 0;

    raddr_1 = 0;

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

    `write_read_full_range(`PORT0)

    // 3 writes to 1 read
    `SVTEST(port0_to_port1)
      testData = 'h8899aabb_44556677_00112233;
      for (int i=0; i<3; i+=1) begin
        writePort(0, i, testData >> 32*i);
        step();
      end

      readPort(1, 0);
      step();
      expectReadData(1, testData);
    `SVTEST_END

    // 1 write to 3 reads
    `SVTEST(port1_to_port0)
      testData = 'h8899aabb_44556677_00112233;
      writePort(1, DEPTH-3, testData);
      step();

      for (int i=0; i<3; i+=1) begin
        readPort(0, DEPTH-1-i);
        step();
        expectReadData(0, testData >> 32*(3-1-i));
      end
    `SVTEST_END

  `SVUNIT_TESTS_END
 
 
  //------------------------
  // helper tasks/functions
  //------------------------

  task expectReadData(int port, logic [PORT1_WIDTH-1:0] exp);
    nextSamplePoint();
    if (port == 0) `FAIL_UNLESS(rdata_0 === exp[PORT0_WIDTH-1:0]);
    if (port == 1) `FAIL_UNLESS(rdata_1 === exp[PORT1_WIDTH-1:0]);
  endtask

  task writePort(int port, bit [31:0] addr, bit [PORT1_WIDTH-1:0] data);
    nextSamplePoint();
    if (port == 0) begin
      wr_0 = 1;
      waddr_0 = addr;
      wdata_0 = data;
    end

    else begin
      wr_1 = 1;
      waddr_1 = addr;
      wdata_1 = data;
    end
  endtask

  task readPort(int port, bit [31:0] addr);
    nextSamplePoint();
    if (port == 0) raddr_0 = addr;
    else if (port == 1) raddr_1 = addr;
  endtask

endmodule
