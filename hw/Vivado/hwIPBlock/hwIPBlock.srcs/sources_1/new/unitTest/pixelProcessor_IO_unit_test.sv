`include "svunit_defines.svh"
`include "pixelProcessor_IO.v"

`include "test_defines.svh"

module pixelProcessor_IO_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "pixelProcessor_IO_ut";
  svunit_testcase svunit_ut;

  // uut params
  parameter PORT0_ADDR_WIDTH = 8;
  parameter MEM_DEPTH = 2**PORT0_ADDR_WIDTH;
  parameter EGRESS_THRESH = 10;
  parameter INGRESS_THRESH = 31; // arbitrary number
  parameter INGRESS_FULL = MEM_DEPTH-5; // arbitrary number

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

  wire  [31:0] ingress_cnt;
  logic [31:0] ingress_read;
  logic        egress_rdy;

  wire [29:0] wdata;
  wire [PORT0_ADDR_WIDTH-1:0] waddr;
  wire        wr;
  wire [29:0] rdata;
  wire [31:0] raddr;

  `CLK_RESET_FIXTURE(10,1)

// always @(negedge clk) begin
//   $display("%t: oTDATA:0x%0x oTVALID:%0x iTREADY:%0x", $time, oTDATA, oTVALID, iTREADY);
// end

  pixelProcessor_IO
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

    // ram port
    .wdata(wdata),
    .waddr(waddr),
    .wr(wr),
    .rdata(rdata),
    .raddr(raddr),

    // control signals
    .ingress_rdy(ingress_rdy),
    .ingress_cnt(ingress_cnt),
    .ingress_thresh(INGRESS_THRESH),
    .ingress_full(INGRESS_FULL),
    .ingress_read(ingress_read),

    .egress_rdy(egress_rdy),
    .pixel_rd_thresh(EGRESS_THRESH)
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

    .wdata_0(wdata),
    .waddr_0(waddr),
    .wr_0(wr),

    .rdata_0(rdata),
    .raddr_0(raddr)
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
    ingress_read = 0;
    setEgressNotRdy();

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


  //--------------------------------------
  // tests for the write memory interface
  //--------------------------------------
  `SVTEST(ingress_write_idle)
    stallTheIngressPath();

    expectIdleWritePort();
  `SVTEST_END

  `SVTEST(ingress_write_1_pixel)
    setIngressPixel('haa55bb);

    expectRamWrite(0, 'haa55bb);
  `SVTEST_END

  `SVTEST(ingress_write_2_pixels)
    repeat (2) setIngressPixel('haa55bb);

    expectRamWrite(1, 'haa55bb);
  `SVTEST_END

  `SVTEST(ingress_write_full_mem)
    setReadIngressPixels();
    repeat (MEM_DEPTH) setIngressPixel('haa55bb);

    expectRamWrite(MEM_DEPTH-1, 'haa55bb);
  `SVTEST_END

  `SVTEST(ingress_write_wrap)
    setReadIngressPixels();
    repeat (MEM_DEPTH+1) setIngressPixel('haa55bb);
 
    expectRamWrite(0, 'haa55bb);
  `SVTEST_END
 
  `SVTEST(pixel_cnt_resets_to_0)
    expectPixelsAvail(0);
  `SVTEST_END
 
  `SVTEST(pixel_cnt_inc_by_1)
    setIngressPixel('haa55bb);
 
    expectPixelsAvail(1);
  `SVTEST_END

  `SVTEST(ingress_ready_below_threshold)
    repeat (INGRESS_THRESH-1) setIngressPixel('haa55bb);

    expectIngressNotReady();
    expectPixelsAvail(INGRESS_THRESH-1);
  `SVTEST_END

  `SVTEST(ingress_ready_at_threshold)
    repeat (INGRESS_THRESH) setIngressPixel('haa55bb);

    expectIngressReady();
    expectPixelsAvail(INGRESS_THRESH);
  `SVTEST_END

  `SVTEST(ingress_ready_stable_when_pixels_consumed)
    repeat (INGRESS_THRESH) setIngressPixel('haa55bb);

    setReadIngressPixels();
    setIngressPixel('haa55bb);

    expectIngressReady();
    expectPixelsAvail(INGRESS_THRESH);
  `SVTEST_END

  `SVTEST(ingress_not_ready_when_pixels_consumed)
    repeat (INGRESS_THRESH) setIngressPixel('haa55bb);

    setReadIngressPixels();
    stallTheIngressPath();

    expectIngressNotReady();
    expectPixelsAvail(INGRESS_THRESH-1);
  `SVTEST_END

  `SVTEST(ingress_full_cnt)
    repeat (INGRESS_FULL) setIngressPixel('haa55bb);

    expectPixelsAvail(INGRESS_FULL);
  `SVTEST_END

  `SVTEST(not_otready_when_full)
    repeat (INGRESS_FULL) setIngressPixel('haa55bb);

    expectNotoTREADY();
  `SVTEST_END

  `SVTEST(ingress_wrap_cnt)
    repeat (INGRESS_FULL) setIngressPixel('haa55bb);

    setReadIngressPixels();
    setIngressPixel('haa55bb);

    expectPixelsAvail(INGRESS_FULL);
  `SVTEST_END

  `SVTEST(ingress_write_stall)
    setIngressPixel('haa55bb);
 
    stallTheIngressPath();
 
    expectIdleWritePort();
  `SVTEST_END
 
  `SVTEST(ingress_no_write_when_not_ready)
    repeat (INGRESS_FULL) setIngressPixel('haa55bb);

    step();

    expectIdleWritePort();
  `SVTEST_END
 
  `SVTEST(ingress_write_resume_when_ready)
    repeat (INGRESS_FULL) setIngressPixel('haa55bb);

    jumpForward();

    setReadIngressPixels();
    step();

    expectRamWrite(INGRESS_FULL, 'haa55bb);
  `SVTEST_END
 
  `SVTEST(ingress_read_N_pixels)
    repeat (INGRESS_FULL) setIngressPixel('haa55bb);

    stallTheIngressPath();

    setReadIngressPixels(INGRESS_FULL);
    step();

    expectPixelsAvail(0);
  `SVTEST_END
 
  `SVTEST(egress_first_pixel)
    fillRamWithIncrementalData();
    setEgressRdy();
    step();
 
    expectEgressPixel(0);
  `SVTEST_END
 
  `SVTEST(egress_N_pixels)
    fillRamWithIncrementalData();
    setEgressRdy();
    step();
  
    for (int e=0; e<10; e+=1) begin
      expectEgressPixel(e);
      step();
    end
  `SVTEST_END
 
  `SVTEST(egress_no_pixels_when_not_egress_rdy)
    setEgressNotRdy();
    step();
    expectNoEgressPixel();
  `SVTEST_END
 
  `SVTEST(egress_N_pixels_w_stall)
    deassertoTREADY();
    fillRamWithIncrementalData();
    setEgressRdy();
    step();
 
    for (int e=0; e<10; e+=1) begin
      deassertoTREADY();
      expectEgressPixel(e);
      step();

      assertoTREADY();
      expectEgressPixel(e);
      step();
    end
  `SVTEST_END

  `SVTEST(egress_read_wrap)
    setEgressRdy();
    while (raddr !== MEM_DEPTH-1) begin
      step();
      nextSamplePoint();
    end
 
    step();
    nextSamplePoint();
    `FAIL_UNLESS(raddr === 0);
  `SVTEST_END
 
  `SVTEST(egress_read_wrap_continue)
    setEgressRdy();
    jumpForward();
    while (raddr !== 0) begin
      step();
      nextSamplePoint();
    end
 
    step();
    nextSamplePoint();
    `FAIL_UNLESS(raddr === 1);
  `SVTEST_END

  `SVTEST(egress_to_empty)
    setEgressRdy();
    step();

    setEgressNotRdy();
    step();

    expectNoEgressPixel();
  `SVTEST_END

  `SVTEST(egress_resumes_after_empty)
    fillRamWithIncrementalData();

    setEgressRdy();
    step();

    expectEgressPixel(0);
    setEgressNotRdy();
    step();

    expectNoEgressPixel();
    setEgressRdy();
    step();

    expectEgressPixel(1);
  `SVTEST_END
 
  `SVUNIT_TESTS_END

  //------------------------
  // helper tasks/functions
  //------------------------

  task fillRamWithIncrementalData();
    for (int i=0; i<INGRESS_FULL; i+=1) begin
      setIngressPixel(i);
    end
  endtask

  task setReadIngressPixels(int numPixels = 1);
    nextSamplePoint();
    ingress_read = numPixels;
  endtask

  task jumpForward();
    step(10);
  endtask

  task setIngressPixel(bit [29:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
    nextSamplePoint();
    iTVALID = 1;
    iTDATA = data;
    iTUSER = user;
    iTKEEP = keep;
    iTLAST = last;
    step();
  endtask

  task expectNoEgressPixel();
    nextSamplePoint();
    `FAIL_UNLESS(oTVALID === 0);
  endtask

  // exact synchronization isn't necessary so this is just waiting until
  // a pixel shows up on the egress
  task goToNextEgressPixel();
    nextSamplePoint();
    while (oTVALID !== 1) begin
      step();
      nextSamplePoint();
    end
  endtask

  task waitForNextEgressPixel();
    nextSamplePoint();
    while (oTVALID !== 1) begin
      waitStep();
      nextSamplePoint();
    end
  endtask

  task waitForIngressReady();
    nextSamplePoint();
    while (oTREADY !== 1) begin
      waitStep();
      nextSamplePoint();
    end
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
    assertoTREADY();
  endtask

  task stallTheIngressPath();
    nextSamplePoint();
    iTVALID = 0;

    step();
  endtask

  task expectIngressReady();
    nextSamplePoint();
    `FAIL_UNLESS(ingress_rdy === 1);
  endtask

  task expectIngressNotReady();
    nextSamplePoint();
    `FAIL_UNLESS(ingress_rdy === 0);
  endtask

  task setEgressNotRdy();
    nextSamplePoint();
    egress_rdy = 0;
  endtask

  task setEgressRdy();
    nextSamplePoint();
    egress_rdy = 1;
  endtask

  task expectoTREADY();
    nextSamplePoint();
    `FAIL_UNLESS(oTREADY === 1);
  endtask

  task expectNotoTREADY();
    nextSamplePoint();
    `FAIL_UNLESS(oTREADY === 0);
  endtask

  task expectRamWrite(bit[31:0] addr, bit [29:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
    nextSamplePoint();
    `FAIL_UNLESS(wdata === { data , user , keep , last });
    `FAIL_UNLESS(waddr == addr);
    `FAIL_UNLESS(wr === 1);
  endtask

  task expectIdleWritePort();
    nextSamplePoint();
    `FAIL_UNLESS(wr === 0);
  endtask

  task expectPixelsAvail(int numPixels);
    nextSamplePoint();
    `FAIL_UNLESS(ingress_cnt === numPixels);
  endtask

  task assertoTREADY();
    nextSamplePoint();
    iTREADY = 1;
  endtask

  task deassertoTREADY();
    nextSamplePoint();
    iTREADY = 0;
  endtask

endmodule
