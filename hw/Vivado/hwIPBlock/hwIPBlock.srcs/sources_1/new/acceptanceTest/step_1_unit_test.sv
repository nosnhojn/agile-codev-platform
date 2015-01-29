`include "svunit_defines.svh"

`include "test_defines.svh"

module step_1_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "step_1_ut";
  svunit_testcase svunit_ut;

  // uut params
  parameter MEM_DEPTH = 321;
  parameter P0_WIDTH = 30;
  parameter P1_WIDTH = 120;
  parameter P0_ADDR_WIDTH = $clog2(MEM_DEPTH);
  parameter P1_ADDR_WIDTH = $clog2(MEM_DEPTH/4);
  parameter INGRESS_THRESH = 3;
  parameter INGRESS_FULL = 10;

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

  `CLK_RESET_FIXTURE(24,5)

  pixelProcessor_s1
  #(
    .MEM_DEPTH(321)
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
    .iTREADY(iTREADY)
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
    iTVALID = 0;

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

  `SVTEST(streaming_data)
    step();
    fork
      for (int i=0; i<2*MEM_DEPTH; i+=1) begin
        setIngressPixel(i, i[0], i[3:0], i[4]);
        step();
      end
    join_none

    while (!oTVALID) begin
      waitStep();
      nextSamplePoint();
    end

    for (int i=0; i<2*MEM_DEPTH-INGRESS_THRESH-1; i+=1) begin
      expectEgressPixel(i, i[0], i[3:0], i[4]);
      waitStep();
    end
  `SVTEST_END
 
  `SVUNIT_TESTS_END


  task setIngressPixel(bit [29:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
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

endmodule
