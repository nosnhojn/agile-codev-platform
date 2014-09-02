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
    egressNotRdy();

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
    readIngressPixel();
    repeat (MEM_DEPTH) begin
      ingressPixel('haa55bb);
      step();
    end

    expectWritePort0(MEM_DEPTH-1, 'haa55bb);
  `SVTEST_END

  `SVTEST(ingress_write_wrap)
    readIngressPixel();
    repeat (MEM_DEPTH+1) begin
      ingressPixel('haa55bb);
      step();
    end
 
    expectWritePort0(0, 'haa55bb);
  `SVTEST_END
 
  `SVTEST(pixel_cnt_resets_to_0)
    expectPixelsAvail(0);
  `SVTEST_END
 
  `SVTEST(pixel_cnt_inc_by_1)
    ingressPixel('haa55bb);
    step();
 
    expectPixelsAvail(1);
  `SVTEST_END

  `SVTEST(ingress_ready_below_threshold)
    repeat (INGRESS_THRESH-1) begin
      ingressPixel('haa55bb);
      step();
    end

    expectIngressNotReady();
    expectPixelsAvail(INGRESS_THRESH-1);
  `SVTEST_END

  `SVTEST(ingress_ready_at_threshold)
    repeat (INGRESS_THRESH) begin
      ingressPixel('haa55bb);
      step();
    end

    expectIngressReady();
    expectPixelsAvail(INGRESS_THRESH);
  `SVTEST_END

  `SVTEST(ingress_ready_stable_when_pixels_consumed)
    repeat (INGRESS_THRESH) begin
      ingressPixel('haa55bb);
      step();
    end

    ingressPixel('haa55bb);
    readIngressPixel();
    step();

    expectIngressReady();
    expectPixelsAvail(INGRESS_THRESH);
  `SVTEST_END

  `SVTEST(ingress_not_ready_when_pixels_consumed)
    repeat (INGRESS_THRESH) begin
      ingressPixel('haa55bb);
      step();
    end

    ingressStall();
    readIngressPixel();
    step();

    expectIngressNotReady();
    expectPixelsAvail(INGRESS_THRESH-1);
  `SVTEST_END

  `SVTEST(ingress_full_cnt)
    repeat (INGRESS_FULL) begin
      ingressPixel('haa55bb);
      step();
    end

    expectPixelsAvail(INGRESS_FULL);
  `SVTEST_END

  `SVTEST(not_otready_when_full)
    repeat (INGRESS_FULL) begin
      ingressPixel('haa55bb);
      step();
    end

    expectNotoTREADY();
  `SVTEST_END

  `SVTEST(ingress_wrap_cnt)
    repeat (INGRESS_FULL) begin
      ingressPixel('haa55bb);
      step();
    end

    ingressPixel('haa55bb);
    readIngressPixel();
    step();

    expectPixelsAvail(INGRESS_FULL);
  `SVTEST_END

  `SVTEST(ingress_write_stall)
    ingressPixel('haa55bb);
    step();
 
    ingressStall();
    step();
 
    expectIdleWritePort0();
  `SVTEST_END
 
  `SVTEST(ingress_no_write_when_not_ready)
    repeat (INGRESS_FULL) begin
      ingressPixel('haa55bb);
      step();
    end

    step();

    expectIdleWritePort0();
  `SVTEST_END
 
  `SVTEST(ingress_write_resume_when_ready)
    repeat (INGRESS_FULL) begin
      ingressPixel('haa55bb);
      step();
    end

    jumpForward();

    readIngressPixel();
    step();

    expectWritePort0(INGRESS_FULL, 'haa55bb);
  `SVTEST_END
 
  `SVTEST(egress_first_pixel)
    incrementalFill();
    egressRdy();
    step();
 
    expectEgressPixel(0);
  `SVTEST_END
 
  `SVTEST(egress_N_pixels)
    incrementalFill();
    egressRdy();
    step();
  
    for (int e=0; e<10; e+=1) begin
      expectEgressPixel(e);
      step();
    end
  `SVTEST_END
 
  `SVTEST(egress_no_pixels_when_not_egress_rdy)
    egressNotRdy();
    step();
    expectNoEgressPixel();
  `SVTEST_END
 
  `SVTEST(egress_N_pixels_w_stall)
    notReady();
    incrementalFill();
    egressRdy();
    step();
 
    for (int e=0; e<10; e+=1) begin
      notReady();
      expectEgressPixel(e);
      step();

      ready();
      expectEgressPixel(e);
      step();
    end
  `SVTEST_END

  `SVTEST(egress_read_wrap)
    egressRdy();
    while (raddr !== MEM_DEPTH-1) begin
      step();
      nextSamplePoint();
    end
 
    step();
    nextSamplePoint();
    `FAIL_UNLESS(raddr === 0);
  `SVTEST_END
 
  `SVTEST(egress_read_wrap_continue)
    egressRdy();
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
    egressRdy();
    step();

    egressNotRdy();
    step();

    expectNoEgressPixel();
  `SVTEST_END

  `SVTEST(egress_resumes_after_empty)
    incrementalFill();

    egressRdy();
    step();

    expectEgressPixel(0);
    egressNotRdy();
    step();

    expectNoEgressPixel();
    egressRdy();
    step();

    expectEgressPixel(1);
  `SVTEST_END
 
  `SVUNIT_TESTS_END

  //------------------------
  // helper tasks/functions
  //------------------------

  task incrementalFill();
    for (int i=0; i<INGRESS_FULL; i+=1) begin
      ingressPixel(i);
      step();
    end
  endtask

  task readIngressPixel();
    nextSamplePoint();
    ingress_read = 1;
  endtask

  task jumpForward();
    step(10);
  endtask

  task ingressPixel(bit [29:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
    nextSamplePoint();
    iTVALID = 1;
    iTDATA = data;
    iTUSER = user;
    iTKEEP = keep;
    iTLAST = last;
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
    ready();
  endtask

  task ingressStall();
    nextSamplePoint();
    iTVALID = 0;
  endtask

  task expectIngressReady();
    nextSamplePoint();
    `FAIL_UNLESS(ingress_rdy === 1);
  endtask

  task expectIngressNotReady();
    nextSamplePoint();
    `FAIL_UNLESS(ingress_rdy === 0);
  endtask

  task egressNotRdy();
    nextSamplePoint();
    egress_rdy = 0;
  endtask

  task egressRdy();
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

  task expectWritePort0(bit[31:0] addr, bit [29:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
    nextSamplePoint();
    `FAIL_UNLESS(wdata === { data , user , keep , last });
    `FAIL_UNLESS(waddr == addr);
    `FAIL_UNLESS(wr === 1);
  endtask

  task expectIdleWritePort0();
    nextSamplePoint();
    `FAIL_UNLESS(wr === 0);
  endtask

  task expectPixelsAvail(int numPixels);
    nextSamplePoint();
    `FAIL_UNLESS(ingress_cnt === numPixels);
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
