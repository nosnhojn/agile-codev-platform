`include "svunit_defines.svh"
`include "pixelProcessor.v"

`include "test_defines.svh"

module pixelProcessor_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "pixelProcessor_ut";
  svunit_testcase svunit_ut;

  // uut params
  parameter PORT0_ADDR_WIDTH = 8;
  parameter MEM_DEPTH = 2**PORT0_ADDR_WIDTH;
  parameter RD_THRESH = 10;

  // dpram params
  parameter DEPTH = 256;

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

  wire [31:0] pixel_cnt;

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
    .raddr_1(raddr[1]),

    .pixel_cnt(pixel_cnt),
    .pixel_rd_thresh(RD_THRESH)
  );

  dpram
  #(
    .DPRAM_DEPTH(DEPTH),
    .DPRAM_PORT0_WIDTH(30),
    .DPRAM_PORT1_WIDTH(30),
    .DPRAM_PORT0_ADDR_WIDTH(PORT0_ADDR_WIDTH)
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

    iTREADY = 1;

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

  `SVTEST(ingress_write_idle)
    step();

    expectIdleWritePort0();
  `SVTEST_END

  `SVTEST(ingress_write_memory_format)
    ingressPixel('haa55bb);

    step();

    expectWritePort0(0, 'haa55bb);
  `SVTEST_END

  `SVTEST(ingress_write_addr_increments)
    repeat (2) begin
      ingressPixel('haa55bb);
      step();
    end

    expectWritePort0(1, 'haa55bb);
  `SVTEST_END

  `SVTEST(ingress_write_full_mem)
    repeat (MEM_DEPTH) begin
      ingressPixel('haa55bb);
      step();
    end

    expectWritePort0(MEM_DEPTH-1, 'haa55bb);
  `SVTEST_END

  `SVTEST(ingress_write_wrap_mem)
    repeat (MEM_DEPTH+1) begin
      ingressPixel('haa55bb);
      step();
    end

    expectWritePort0(0, 'haa55bb);
  `SVTEST_END

  `SVTEST(ingress_write_stall)
    ingressPixel('haa55bb);
    step();

    ingressStall();
    step();

    expectIdleWritePort0();
  `SVTEST_END

  `SVTEST(ingress_write_stall_when_not_ready)
    ingressPixel('haa55bb);
    step();

    notReady();
    ingressPixel('haa55bb);
    step();

    expectIdleWritePort0();
  `SVTEST_END

  `SVTEST(ingress_write_resume_when_ready)
    ingressPixel('haa55bb);
    step();

    notReady();
    ingressPixel('haa55bb);
    step();

    ready();
    step();

    expectWritePort0(1, 'haa55bb);
  `SVTEST_END

  `SVTEST(egress_0_pixels_avail)
    expectPixelsAvail(0);
  `SVTEST_END

  `SVTEST(egress_1_pixels_avail)
    ingressPixel('haa55bb);
    step();

    expectPixelsAvail(1);
  `SVTEST_END

  `SVTEST(egress_rd_thresh_pixels_avail)
    repeat(RD_THRESH) begin
      ingressPixel('haa55bb);
      step();
    end

    expectPixelsAvail(RD_THRESH);
  `SVTEST_END

  `SVTEST(egress_read_when_rd_thresh_pixels_avail)
    repeat(RD_THRESH+1) begin
      ingressPixel('haa55bb);
      step();
    end

    expectPixelsAvail(RD_THRESH);
  `SVTEST_END

  `SVTEST(egress_read_memory_format)
    repeat(RD_THRESH+1) begin
      ingressPixel('haa55bb);
      step();
    end

    expectEgressPixel('haa55bb);
  `SVTEST_END


  `SVUNIT_TESTS_END


  //------------------------
  // helper tasks/functions
  //------------------------

  task ingressPixel(bit [29:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
    nextSamplePoint();
    iTVALID = 1;
    iTDATA = data;
    iTUSER = user;
    iTKEEP = keep;
    iTLAST = last;
  endtask

  task expectEgressPixel(bit [29:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
    nextSamplePoint();
    `FAIL_UNLESS(oTVALID === 1);
    `FAIL_UNLESS(oTDATA === data);
    `FAIL_UNLESS(oTUSER === user);
    `FAIL_UNLESS(oTKEEP === keep);
    `FAIL_UNLESS(oTLAST === last);
  endtask

  task egressPixel();
    ready();
  endtask

  task ingressStall();
    nextSamplePoint();
    iTVALID = 0;
  endtask

  task expectWritePort0(bit[31:0] addr, bit [29:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
    nextSamplePoint();
    `FAIL_UNLESS(wdata[0] === { data , user , keep , last });
    `FAIL_UNLESS(waddr[0] == addr);
    `FAIL_UNLESS(wr[0] === 1);
  endtask

  task expectIdleWritePort0();
    nextSamplePoint();
    `FAIL_UNLESS(wr[0] === 0);
  endtask

  task expectPixelsAvail(int numPixels);
    nextSamplePoint();
    `FAIL_UNLESS(pixel_cnt === numPixels);
  endtask

  task ready();
    nextSamplePoint();
    iTREADY = 1;
  endtask

  task notReady();
    nextSamplePoint();
    iTREADY = 0;
  endtask

endmodule
