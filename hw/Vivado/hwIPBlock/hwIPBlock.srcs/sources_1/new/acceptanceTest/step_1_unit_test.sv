`include "svunit_defines.svh"

`include "test_defines.svh"

module step_1_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "step_1_ut";
  svunit_testcase svunit_ut;

  // uut params
  parameter MEM_DEPTH = 15360;
  parameter INGRESS_THRESH = 3;

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

  `CLK_RESET_FIXTURE(30,5)

  pixelProcessor_s1
  #(
    .MEM_DEPTH(MEM_DEPTH)
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

  `SVTEST(streaming_data_with_backpressure)
    step();
    fork
      for (int i=0; i<2*50; i+=1) begin
        setIngressPixel(i, i[0], i[3:0], i[4]);
        @(posedge clk);
        while (!oTREADY) begin
          @(posedge clk);
        end
      end

      forever begin
        int unsigned pause;
        nextSamplePoint();
        iTREADY = 1;
        pause = unsigned'($random) % 2;
        for (int i=0; i<pause; i+=1) begin
          step(pause);
        end

        nextSamplePoint();
        iTREADY = 0;
        pause = unsigned'($random) % 4;
        for (int i=0; i<pause; i+=1) begin
          step(pause);
        end
      end
    join_none

    for (int i=0; i<2*50-INGRESS_THRESH-1; i+=1) begin
      @(negedge clk);
      while (!(oTVALID && iTREADY)) begin
        @(negedge clk);
      end
      expectEgressPixel(i, i[0], i[3:0], i[4]);
    end
  `SVTEST_END

  `SVTEST(streaming_data_near_empty)
    fork
      for (int i=0; i<2*50; i+=1) begin
        int unsigned pause;
        nextSamplePoint();
        pause = unsigned'($random) % 4;
        for (int i=0; i<pause; i+=1) begin
          iTVALID = 0;
          step(pause);
        end

        setIngressPixel(i, i[0], i[3:0], i[4]);
        step();
      end
    join_none

    for (int i=0; i<2*50-INGRESS_THRESH-1; i+=1) begin
      @(negedge clk);
      while (!(oTVALID && iTREADY)) begin
        @(negedge clk);
      end
      expectEgressPixel(i, i[0], i[3:0], i[4]);
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

  task expectEgressPixel(bit [23:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
    nextSamplePoint();
    `FAIL_UNLESS(oTVALID === 1);
    `FAIL_UNLESS(oTDATA === data);
    `FAIL_UNLESS(oTUSER === user);
    `FAIL_UNLESS(oTKEEP === keep);
    `FAIL_UNLESS(oTLAST === last);
  endtask

endmodule
