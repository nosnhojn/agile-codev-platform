`include "svunit_defines.svh"

`include "test_defines.svh"
`include "test_constants.svh"

module step_2_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "step_2_ut";
  svunit_testcase svunit_ut;

  // uut params
  parameter MEM_DEPTH = 6*1920;

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

  pixelProcessor_s2 uut
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

  int ingressScenarioCnt = 0;
  bit[23:0] ingressScenario[int][];
  int egressScenarioCnt = 0;
  bit[23:0] egressScenario[int][];


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

  `SVTEST(scenario_0_streaming_data)
    driveNonBlockingTestScenario(0);
    checkTestScenario(0);
  `SVTEST_END
  
  `SVTEST(scenario_1_test)
    driveNonBlockingTestScenario(1);
    checkTestScenario(1);
  `SVTEST_END
  
  `SVTEST(scenario_2_test)
    driveNonBlockingTestScenario(2);
    checkTestScenario(2);
  `SVTEST_END
 
  `SVTEST(scenario_3_test)
    driveNonBlockingTestScenario(3);
    checkTestScenario(3);
  `SVTEST_END
  
  `SVTEST(scenario_4_test)
    driveNonBlockingTestScenario(4);
    checkTestScenario(4);
  `SVTEST_END
 
  `SVTEST(scenario_5_test)
    driveNonBlockingTestScenario(5);
    checkTestScenario(5);
  `SVTEST_END

  `SVUNIT_TESTS_END


  task setIngressPixel(bit [23:0] data, bit user = 1, bit[3:0] keep = 'hb, bit last = 0);
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
if (oTDATA !== data) $display("data:0x%0x oTDATA:0x%0x", data, oTDATA);
//if (oTKEEP !== keep) $display("keep:0x%0x oTKEEP:0x%0x", keep, oTKEEP);
    `FAIL_UNLESS(oTDATA === data);
    `FAIL_UNLESS(oTUSER === user);
    `FAIL_UNLESS(oTKEEP === keep);
    `FAIL_UNLESS(oTLAST === last);
  endtask

  function void newIngressScenario(int length, initialPixel = 'hffffff);
    ingressScenario[ingressScenarioCnt] = new [length];
    for (int i=0; i<length; i+=1) ingressScenario[ingressScenarioCnt][i] = initialPixel;
    ingressScenarioCnt += 1;
  endfunction


  function void newEgressScenario(int length, initialPixel = 'hffffff);
    egressScenario[egressScenarioCnt] = new [length];
    for (int i=0; i<length; i+=1) egressScenario[egressScenarioCnt][i] = initialPixel;
    egressScenarioCnt += 1;
  endfunction

  function void setIngressFgCell(int row, int col);
    ingressScenario[ingressScenarioCnt-1][row * 1920 + col] = 24'h0;
  endfunction

  function void setEgressFgCell(int row, int col);
    egressScenario[egressScenarioCnt-1][row * 1920 + col] = 24'h0;
  endfunction

  function void setEgressShCell(int row, int col);
    egressScenario[egressScenarioCnt-1][row * 1920 + col] = 24'h1417ed;
  endfunction

  initial begin
    //--------------------------
    // scenario 0 is a constant
    //--------------------------
    newIngressScenario(10*MEM_DEPTH, 'hffffff);
    newEgressScenario(9*MEM_DEPTH, 'hffffff);


    //--------------------------------------------------------
    // scenario 1 is a single fg pixel in the top left corner
    //--------------------------------------------------------
    newIngressScenario(8*LINE_WIDTH, 'hffffff);
    setIngressFgCell(0, 0);

    newEgressScenario(3*LINE_WIDTH+1, 'hffffff);
    setEgressFgCell(0, 0);
    setEgressShCell(0, 1);
    setEgressShCell(1, 0);
    setEgressShCell(1, 1);


    //-----------------------------------------------
    // scenario 2 is a block of fg pixels on top row
    //-----------------------------------------------
    newIngressScenario(8*LINE_WIDTH, 'hffffff);
    setIngressFgCell(0, 1);
    setIngressFgCell(0, 2);

    newEgressScenario(2*LINE_WIDTH, 'hffffff);
    setEgressShCell(0, 0);
    setEgressFgCell(0, 1);
    setEgressFgCell(0, 2);
    setEgressShCell(0, 3);
    setEgressShCell(1, 0);
    setEgressShCell(1, 1);
    setEgressShCell(1, 2);
    setEgressShCell(1, 3);


    //----------------------------------------------------
    // scenario 3 is a block of fg pixels at end of row 0
    //----------------------------------------------------
    newIngressScenario(8*LINE_WIDTH, 'hffffff);
    setIngressFgCell(0, 1918);
    setIngressFgCell(0, 1919);

    newEgressScenario(2*LINE_WIDTH, 'hffffff);
    setEgressShCell(0, 1917);
    setEgressFgCell(0, 1918);
    setEgressFgCell(0, 1919);
    setEgressShCell(1, 1917);
    setEgressShCell(1, 1918);
    setEgressShCell(1, 1919);


    //----------------------------------------------------------
    // scenario 4 is a single fg pixel near the top left corner
    //----------------------------------------------------------
    newIngressScenario(8*LINE_WIDTH, 'hffffff);
    setIngressFgCell(1, 1);

    newEgressScenario(3*LINE_WIDTH+1, 'hffffff);
    setEgressShCell(0, 0);
    setEgressShCell(0, 1);
    setEgressShCell(0, 2);
    setEgressShCell(1, 0);
    setEgressFgCell(1, 1);
    setEgressShCell(1, 2);
    setEgressShCell(2, 0);
    setEgressShCell(2, 1);
    setEgressShCell(2, 2);


    //-------------------------------------------------------
    // scenario 5 is a block of fg pixels at end of row 1079
    //-------------------------------------------------------
    newIngressScenario(1088*LINE_WIDTH, 'hffffff);
    setIngressFgCell(1079, 1918);
    setIngressFgCell(1079, 1919);

    newEgressScenario(1081*LINE_WIDTH, 'hffffff);
    setEgressShCell(1078, 1917);
    setEgressShCell(1078, 1918);
    setEgressShCell(1078, 1919);
    setEgressShCell(1079, 1917);
    setEgressFgCell(1079, 1918);
    setEgressFgCell(1079, 1919);


  end

  task driveBlockingTestScenario(int idx);
    step();

    for (int i=0; i<ingressScenario[idx].size(); i+=1) begin
      setIngressPixel(ingressScenario[idx][i], i[0], i[3:0], i[4]);
      step();
    end
  endtask

  task driveNonBlockingTestScenario(int idx);
    step();
    fork
      for (int i=0; i<ingressScenario[idx].size(); i+=1) begin
        setIngressPixel(ingressScenario[idx][i], i[0], i[3:0], i[4]);
        step();
      end
    join_none
  endtask

  task checkTestScenario(int idx);
    int j;

    while (!oTVALID) begin
      waitStep();
      nextSamplePoint();
    end

    begin
      j = 0;
      while (j<egressScenario[idx].size()) begin
        nextSamplePoint();
        if (oTVALID) begin
if (oTDATA !== egressScenario[idx][j]) $display("data[%0d]:0x%0x oTDATA:0x%0x", j, egressScenario[idx][j], oTDATA);
          expectEgressPixel(egressScenario[idx][j], j[0], j[3:0], j[4]);
          j += 1;
          waitStep();
        end else begin
          waitStep();
        end
      end
    end
  endtask

endmodule
