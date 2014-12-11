`include "svunit_defines.svh"

`include "test_defines.svh"
`include "test_constants.svh"

module step_2_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "step_2_ut";
  svunit_testcase svunit_ut;

  // uut params
  parameter MEM_DEPTH = 8*1920;
  parameter P0_ADDR_WIDTH = $clog2(MEM_DEPTH);
  parameter P1_ADDR_WIDTH = $clog2(MEM_DEPTH/4);
  parameter INGRESS_THRESH = 3;
  parameter INGRESS_FULL = 7*1920;

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

  wire  [P0_ADDR_WIDTH-1:0] ingress_cnt;

  wire [29:0] wdata_io;
  wire [P0_ADDR_WIDTH-1:0] waddr_io;
  wire        wr_io;
  wire [29:0] rdata_io;
  wire [P0_ADDR_WIDTH-1:0] raddr_io;

  wire [119:0] wdata_calc;
  wire [P1_ADDR_WIDTH-1:0] waddr_calc;
  wire        wr_calc;

  wire [119:0] rdata_proc;
  wire [P1_ADDR_WIDTH-1:0] raddr_proc;

  wire         calc_strobe;
  wire         first_row_flag;
  wire         first_column_flag;
  wire         last_row_flag;
  wire         last_column_flag;
  wire [119:0] slot0;
  wire [119:0] slot1;
  wire [119:0] slot2;

  wire [P0_ADDR_WIDTH-1:0] ingress_read_cnt;
  wire         egress_read_cnt;
  assign ingress_read_cnt = egress_read_cnt;

  `CLK_RESET_FIXTURE(10,1)

 always @(posedge clk) begin
   #1;
   //$display("%t: wr_io:0x%0x wdata_io:0x%0x waddr_io:%0x", $time, wr_io, wdata_io, waddr_io);
   //$display("%t: rdata_io:0x%0x raddr_io:%0x", $time, rdata_io, raddr_io);
 end

  pixelProcessor_IO
  #(
    .MEM_DEPTH(MEM_DEPTH)
  )
  IO
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
    .wdata(wdata_io),
    .waddr(waddr_io),
    .wr(wr_io),
    .rdata(rdata_io),
    .raddr(raddr_io),

    // control signals
    .ingress_rdy(), // no connect
    .ingress_cnt(), // no connect
    .ingress_thresh(INGRESS_THRESH[P0_ADDR_WIDTH-1:0]),
    .ingress_full(INGRESS_FULL[P0_ADDR_WIDTH-1:0]),
    .ingress_read_cnt(ingress_read_cnt), // connected to egress_read_cnt
    .ingress_new_pixel(ingress_new_pixel),

    .egress_rdy(egress_rdy),
    .egress_read_cnt(egress_read_cnt)
  );


  qpram
  #(
    .QPRAM_DEPTH(MEM_DEPTH),
    .QPRAM_PORT0_WIDTH(30),
    .QPRAM_PORT1_WIDTH(120),
    .QPRAM_PORT0_ADDR_WIDTH(P0_ADDR_WIDTH),
    .QPRAM_PORT1_ADDR_WIDTH(P1_ADDR_WIDTH)
  )
  my_qpram
  (
    .clk(clk),
    .rst_n(rst_n),

    .wdata_0(wdata_io),
    .waddr_0(waddr_io),
    .wr_0(wr_io),

    .rdata_0(rdata_io),
    .raddr_0(raddr_io),

    .wdata_1(wdata_calc),
    .waddr_1(waddr_calc),
    .wr_1(wr_calc),

    .rdata_1(rdata_proc),
    .raddr_1(raddr_proc)
  );


  pixelProcessor
    #(
      .PIXEL_WIDTH(1920),
      .PIXEL_HEIGHT(1080),
      .PIXELS_PER_READ(4)
    )
    proc
    (
    .clk(clk),
    .rst_n(rst_n),

    .rdata(rdata_proc),
    .raddr(raddr_proc),

    .ingress_used_cnt(),
    .ingress_available_cnt(),
    .ingress_rdy_thresh(3*1920),
    .ingress_new_pixel(ingress_new_pixel),

    .calc_rdy(calc_rdy),

    .calc_strobe(calc_strobe),
    .first_row_flag(first_row_flag),
    .first_column_flag(first_column_flag),
    .last_row_flag(last_row_flag),
    .last_column_flag(last_column_flag),

    .group_slot0(slot0),
    .group_slot1(slot1),
    .group_slot2(slot2)
  );

  pixelProcessor_calc calc(
    .clk(clk),
    .rst_n(rst_n),

    .calc_rdy(calc_rdy),

    .calc_strobe(calc_strobe),
    .first_row_flag(first_row_flag),
    .first_column_flag(first_column_flag),
    .last_row_flag(last_row_flag),
    .last_column_flag(last_column_flag),

    .group_slot0(slot0),
    .group_slot1(slot1),
    .group_slot2(slot2),

    .wdata(wdata_calc),
    .waddr(waddr_calc),
    .wr(wr_calc),

    .egress_rdy(egress_rdy),
    .egress_dec(egress_read_cnt)
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
    driveTestScenario(0);
    checkTestScenario(0);
  `SVTEST_END

  `SVTEST(scenario_1_test)
    driveTestScenario(1);
    checkTestScenario(1);
  `SVTEST_END

  `SVTEST(scenario_2_test)
    driveTestScenario(2);
    checkTestScenario(2);
  `SVTEST_END

  `SVTEST(scenario_3_test)
    driveTestScenario(3);
    checkTestScenario(3);
  `SVTEST_END

// `SVTEST(scenario_4_test)
//   driveTestScenario(4);
//   checkTestScenario(4);
// `SVTEST_END

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
    egressScenario[egressScenarioCnt-1][row * 1920 + col] = 24'he0e0e0;
  endfunction

  initial begin
    //--------------------------
    // scenario 0 is a constant
    //--------------------------
    newIngressScenario(24*MEM_DEPTH, 'h55);
    newEgressScenario(20*MEM_DEPTH, 'h55);


    //---------------------------------
    // scenario 1 is a single fg pixel
    //---------------------------------
    newIngressScenario(8*LINE_WIDTH, 'hffffff);
    setIngressFgCell(0, 0);

    newEgressScenario(2*LINE_WIDTH, 'hffffff);
    setEgressFgCell(0, 0);
    setEgressShCell(0, 1);
    setEgressShCell(1, 0);
    setEgressShCell(1, 1);


    //------------------------------------
    // scenario 2 is a block of fg pixels
    //------------------------------------
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


    //-------------------------------------------------------
    // scenario 4 is a block of fg pixels at end of row 1079
    //-------------------------------------------------------
    newIngressScenario(1088*LINE_WIDTH, 'hffffff);
    setIngressFgCell(1079, 1918);
    setIngressFgCell(1079, 1919);

    newEgressScenario(1080*LINE_WIDTH, 'hffffff);
    setEgressShCell(1078, 1917);
    setEgressShCell(1078, 1918);
    setEgressShCell(1078, 1919);
    setEgressShCell(1079, 1917);
    setEgressFgCell(1079, 1918);
    setEgressFgCell(1079, 1919);

  end

  task driveTestScenario(int idx);
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
//$display("J:%0d", j);
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
