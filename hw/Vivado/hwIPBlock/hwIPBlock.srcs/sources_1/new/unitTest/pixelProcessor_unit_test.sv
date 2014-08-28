`include "svunit_defines.svh"
`include "pixelProcessor.v"

`include "test_defines.svh"

module pixelProcessor_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "pixelProcessor_ut";
  svunit_testcase svunit_ut;

  parameter PORT0_ADDR_WIDTH = 8;

  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================
  reg [23:0]  iTDATA;
  reg         iTUSER;
  reg [3:0]   iTKEEP;
  reg         iTLAST;
  reg         iTVALID;
  wire        oTREADY;
  wire [23:0] oTDATA;
  wire        oTUSER;
  wire [3:0]  oTKEEP;
  wire        oTLAST;
  wire        oTVALID;
  reg         iTREADY;

  wire [29:0] wdata [1:0];
  wire [PORT0_ADDR_WIDTH-1:0] waddr [1:0];
  wire        wr [1:0];
  wire [29:0] rdata [1:0];
  wire [31:0] raddr [1:0];

  `CLK_RESET_FIXTURE(10,1)

  pixelProcessor
  #(
    .PORT0_ADDR_WIDTH(PORT0_ADDR_WIDTH)
  )
  uut
  (
    .clk(clk),
    .rst_n(rst_n),

    // ingress port
    .iTDATA(iTDATA),
    .iTUSER(iTUSER),
    .iTKEEP(iTKEEP),
    .iTLAST(iTLAST),
    .iTVALID(iTVALID),
    .oTREADY(oTREADY),

    // egress port
    .oTDATA(oTDATA),
    .oTUSER(oTUSER),
    .oTKEEP(oTKEEP),
    .oTLAST(oTLAST),
    .oTVALID(oTVALID),
    .iTREADY(iTREADY),

    // ram port 0
    .wdata_0(wdata[0]),
    .waddr_0(waddr[0]),
    .wr_0(wr[0]),
    .rdata_0(rdata[0]),
    .raddr_0(raddr[0]),

    // ram port 1
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

  `SVTEST(ingress_write_memory_format)
    // drive the bus
    ingressPixel('haa55bb);

    step();

    // sample the write memory
    expectWritePort0(0, 'haa55bb);
  `SVTEST_END

  `SVTEST(ingress_write_addr_increments)
    repeat (2) begin
      ingressPixel('haa55bb);
      step();
    end

    // sample the write memory
    expectWritePort0(1, 'haa55bb);
  `SVTEST_END

  `SVTEST(ingress_write_full_mem)
    repeat (2**PORT0_ADDR_WIDTH) begin
      ingressPixel('haa55bb);
      step();
    end

    // sample the write memory
    expectWritePort0((2**PORT0_ADDR_WIDTH)-1, 'haa55bb);
  `SVTEST_END

  `SVTEST(ingress_write_wrap_mem)
    repeat (2**PORT0_ADDR_WIDTH+1) begin
      ingressPixel('haa55bb);
      step();
    end

    // sample the write memory
    expectWritePort0(0, 'haa55bb);
  `SVTEST_END

  `SVUNIT_TESTS_END



  task ingressPixel(bit [29:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
    nextSamplePoint();
    iTDATA = data;
    iTUSER = user;
    iTKEEP = keep;
    iTLAST = last;
    iTVALID = 1;
  endtask

  task expectWritePort0(bit[31:0] addr, bit [29:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
    nextSamplePoint();
//$display("ADDR:0x%0x EXP:0x%0x", waddr[0], addr);
    `FAIL_UNLESS(wdata[0] === { data , user , keep , last });
    `FAIL_UNLESS(waddr[0] == addr);
    `FAIL_UNLESS(wr[0] === 1);
  endtask

endmodule
