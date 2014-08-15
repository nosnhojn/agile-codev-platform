`include "svunit_defines.svh"
`include "dpram.v"

`define TEST_DPRAM_SIZE 256

`define write_read_port_N_test(PORT) \
`SVTEST(write_read_port_``PORT) \
  write_port(PORT, 'hf, 'haabbccdd); \
  step(); \
  read(PORT, 'hf); \
  step(); \
  expect_rdata(PORT, 'haabbccdd); \
`SVTEST_END

`define rdata_N_is_registered_test(PORT) \
`SVTEST(rdata_``PORT``_is_registered) \
  write_port(PORT, 'hf, 'haabbccdd); \
  step(); \
  read(PORT, 'hf); \
  expect_rdata(PORT, 'hx); \
`SVTEST_END

`define no_write_N_in_reset(PORT) \
`SVTEST(no_write_``PORT``_in_reset) \
  rst_n = 0; \
  write_port(PORT, 'hf, 'haabbccdd); \
  step(); \
  read(PORT, 'hf); \
  rst_n = 1; \
  step(); \
  expect_rdata(PORT, 'hx); \
`SVTEST_END

`define no_read_N_in_reset(PORT) \
`SVTEST(no_read_``PORT``_in_reset) \
  write_port(PORT, 'hf, 'haabbccdd); \
  step(); \
  read(PORT, 'hf); \
  rst_n = 0; \
  step(); \
  expect_rdata(PORT, 'hx); \
`SVTEST_END

`define write_read_port_N_full_range(PORT) \
`SVTEST(write_read_port_``PORT``_full_range) \
  for (int i=0; i<`TEST_DPRAM_SIZE; i++) begin \
    write_port(PORT, i, i); \
    step(); \
  end \
  for (int i=0; i<`TEST_DPRAM_SIZE; i++) begin \
    read(PORT, i); \
    step(); \
    expect_rdata(PORT, i); \
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

  task expect_rdata(int port, logic [31:0] exp);
    if ($time%5 == 0) #1;
    `FAIL_UNLESS(rdata[port] === exp);
  endtask

  task write_port(int port, bit [31:0] addr, bit [31:0] data);
    if ($time%5 == 0) #1;
    wr[port] = 1;
    waddr[port] = addr;
    wdata[port] = data;
  endtask

  task read(int port, bit [31:0] addr);
    if ($time%5 == 0) #1;
    raddr[port] = addr;
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

    for (int port=0; port<2; port+=1) begin
      wr[port] = 0;
      wdata[port] = 0;
      waddr[port] = 0;

      raddr[port] = 0;
    end

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
    `rdata_N_is_registered_test(`PORT1)

    `no_write_N_in_reset(`PORT0)
    `no_write_N_in_reset(`PORT1)

    `no_read_N_in_reset(`PORT0)
    `no_read_N_in_reset(`PORT1)

    `write_read_port_N_full_range(`PORT0)
    `write_read_port_N_full_range(`PORT1)

  `SVUNIT_TESTS_END

endmodule
