`include "svunit_defines.svh"
`include "test_defines.svh"
`include "test_macros.svh"

module qpram_unit_test;
  import svunit_pkg::svunit_testcase;

  parameter MEM_DEPTH = 8*1920;
  parameter P0_WIDTH = 30;
  parameter P1_WIDTH = 4 * P0_WIDTH;
  parameter P0_ADDR_WIDTH = $clog2(MEM_DEPTH);
  parameter P1_ADDR_WIDTH = $clog2(MEM_DEPTH/4);

  string name = "qpram_ut";
  svunit_testcase svunit_ut;

  `define PORT0 0
  `define PORT1 1

  `CLK_RESET_FIXTURE(24,5)

  logic [P0_WIDTH-1:0] wdata_0;
  logic [P0_ADDR_WIDTH-1:0] waddr_0;
  logic        wr_0;

  wire  [P0_WIDTH-1:0] rdata_0;
  logic [P0_ADDR_WIDTH-1:0] raddr_0;

  logic [P1_WIDTH-1:0] wdata_1;
  logic [P1_ADDR_WIDTH-1:0] waddr_1;
  logic        wr_1;

  wire  [P1_WIDTH-1:0] rdata_1;
  logic [P1_ADDR_WIDTH-1:0] raddr_1;

  logic [P1_WIDTH-1:0] testData;


  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================
  qpram
  #(
    .QPRAM_DEPTH(MEM_DEPTH),
    .QPRAM_PORT0_WIDTH(P0_WIDTH),
    .QPRAM_PORT1_WIDTH(P1_WIDTH),
    .QPRAM_PORT0_ADDR_WIDTH(P0_ADDR_WIDTH),
    .QPRAM_PORT1_ADDR_WIDTH(P1_ADDR_WIDTH)
  )
  my_qpram
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

    // clear the memory contents
    for (int i=0; i<MEM_DEPTH; i+=1) begin
      my_qpram.mem[i] = 'hx;
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

    //`rdata_N_is_registered_test(`PORT0)
    //`rdata_N_is_registered_test(`PORT1)

//   `no_write_N_in_reset(`PORT0)
//   `no_write_N_in_reset(`PORT1)

    `write_read_full_range(`PORT0)

    // 4 writes to 1 read
    `SVTEST(port0_to_port1)
      testData = 120'hddeeff_8899aabb_44556677_00112233;
      for (int i=0; i<4; i+=1) begin
        writePort(0, i, testData >> P0_WIDTH*i);
        step();
      end

      readPort(1, 0);
      step();
      expectReadData(1, testData);
    `SVTEST_END

    // 1 write to 4 reads
    `SVTEST(port1_to_port0)
      testData = 120'hddeeff_8899aabb_44556677_00112233;
      writePort(1, (MEM_DEPTH-4)>>2, testData);
      step();
 
      for (int i=0; i<4; i+=1) begin
        readPort(0, MEM_DEPTH-1-i);
        step();
        expectReadData(0, testData >> P0_WIDTH*(4-1-i));
      end
    `SVTEST_END

  `SVUNIT_TESTS_END
 
 
  //------------------------
  // helper tasks/functions
  //------------------------

  task expectReadData(int port, logic [P1_WIDTH-1:0] exp);
    nextSamplePoint();
    if (port == 0) begin 
//$display("rdata_0:0x%0x exp:0x%0x", rdata_0, exp[P0_WIDTH-1:0]);
      `FAIL_UNLESS(rdata_0 === exp[P0_WIDTH-1:0]);
    end
    if (port == 1) begin 
//$display("rdata_1:0x%0x exp:0x%0x", rdata_1, exp[P1_WIDTH-1:0]);
      `FAIL_UNLESS(rdata_1 === exp[P1_WIDTH-1:0]);
    end
  endtask

  task noWritePort(int port);
    nextSamplePoint();
    if (port == 0) begin
      wr_0 = 0;
    end
    else begin
      wr_1 = 0;
    end
  endtask

  task writePort(int port, bit [31:0] addr, bit [P1_WIDTH-1:0] data);
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
