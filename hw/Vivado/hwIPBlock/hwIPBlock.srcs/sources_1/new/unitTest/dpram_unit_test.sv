`include "svunit_defines.svh"
`include "dpram.v"

`define TEST_DPRAM_SIZE 256

`define write_read_port_N_test(PORT) \
`SVTEST(write_read_port_``PORT) \
  write_``PORT('hf, 'haabbccdd); \
  step(); \
  read_``PORT('hf); \
  step(); \
  expect_rdata_``PORT('haabbccdd); \
`SVTEST_END

`define rdata_N_is_registered_test(PORT) \
`SVTEST(rdata_``PORT``_is_registered) \
  write_``PORT('hf, 'haabbccdd); \
  step(); \
  read_``PORT('hf); \
  expect_rdata_``PORT('hx); \
`SVTEST_END

`define no_write_N_in_reset(PORT) \
`SVTEST(no_write_``PORT``_in_reset) \
  rst_n = 0; \
  write_``PORT('hf, 'haabbccdd); \
  step(); \
  read_``PORT('hf); \
  rst_n = 1; \
  step(); \
  expect_rdata_``PORT('hx); \
`SVTEST_END

`define no_read_N_in_reset(PORT) \
`SVTEST(no_read_``PORT``_in_reset) \
  write_``PORT('hf, 'haabbccdd); \
  step(); \
  read_``PORT('hf); \
  rst_n = 0; \
  step(); \
  expect_rdata_``PORT('hx); \
`SVTEST_END

`define write_read_port_N_full_range(PORT) \
`SVTEST(write_read_port_``PORT``_full_range) \
  for (int i=0; i<`TEST_DPRAM_SIZE; i++) begin \
    write_``PORT(i, i); \
    step(); \
  end \
  for (int i=0; i<`TEST_DPRAM_SIZE; i++) begin \
    read_``PORT(i); \
    step(); \
    expect_rdata_``PORT(i); \
  end \
`SVTEST_END

module dpram_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "dpram_ut";
  svunit_testcase svunit_ut;

  `define PORT0 0
  `define PORT1 1

  logic clk;
  logic rst_n;

  logic [31:0] wdata_0;
  logic [31:0] waddr_0;
  logic wr_0;

  logic [31:0] wdata_1;
  logic [31:0] waddr_1;
  logic wr_1;

  wire  [31:0] rdata_0;
  logic [31:0] raddr_0;

  wire  [31:0] rdata_1;
  logic [31:0] raddr_1;

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

  initial begin
    clk = 1;
    rst_n = 1;
  end

  task automatic step(int size = 1);
    repeat (size) begin
      int step_size = 5 - $time % 5;
      #(step_size) clk = ~clk;
      #5 clk = ~clk;
    end
  endtask

  task expect_rdata_0(logic [31:0] exp);
    if ($time%5 == 0) #1;
    `FAIL_UNLESS(rdata_0 === exp);
  endtask

  task write_0(bit [31:0] addr, bit [31:0] data);
    if ($time%5 == 0) #1;
    wr_0 = 1;
    waddr_0 = addr;
    wdata_0 = data;
  endtask

  task read_0(bit [31:0] addr);
    if ($time%5 == 0) #1;
    raddr_0 = addr;
  endtask

  task expect_rdata_1(logic [31:0] exp);
    if ($time%5 == 0) #1;
    `FAIL_UNLESS(rdata_1 === exp);
  endtask

  task write_1(bit [31:0] addr, bit [31:0] data);
    if ($time%5 == 0) #1;
    wr_1 = 1;
    waddr_1 = addr;
    wdata_1 = data;
  endtask

  task read_1(bit [31:0] addr);
    if ($time%5 == 0) #1;
    raddr_1 = addr;
  endtask


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

    wr_0 = 0;
    wdata_0 = 0;
    waddr_0 = 0;

    raddr_0 = 0;

    wr_1 = 0;
    wdata_1 = 0;
    waddr_1 = 0;

    raddr_1 = 0;

    /* Place Setup Code Here */
    rst_n = 0;

    step();

    rst_n = 1;

    step();
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

    `write_read_port_N_test(`PORT0)
    `write_read_port_N_test(`PORT1)

    `rdata_N_is_registered_test(`PORT0)
    `no_write_N_in_reset(`PORT0)
    `no_read_N_in_reset(`PORT0)
    `write_read_port_N_full_range(`PORT0)

  `SVUNIT_TESTS_END

endmodule
