`include "svunit_defines.svh"
`include "pixelProcessor.v"

module pixelProcessor_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "pixelProcessor_ut";
  svunit_testcase svunit_ut;


  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================
  reg [31:0]  iTDATA;
  reg         iTUSER;
  reg [3:0]   iTKEEP;
  reg         iTVALID;
  reg         iTLAST;
  wire        oTREADY;
  wire [31:0] oTDATA;
  wire        oTUSER;
  wire [3:0]  oTKEEP;
  wire        oTVALID;
  wire        oTLAST;
  reg         iTREADY;

  reg clk;
  reg rst_n;

  pixelProcessor uut
  (
    .clk(clk),
    .rst_n(rst_n),
    .iTDATA(iTDATA),
    .iTUSER(iTUSER),
    .iTKEEP(iTKEEP),
    .iTVALID(iTVALID),
    .iTLAST(iTLAST),
    .oTREADY(oTREADY),
    .oTDATA(oTDATA),
    .oTUSER(oTUSER),
    .oTKEEP(oTKEEP),
    .oTVALID(oTVALID),
    .oTLAST(oTLAST),
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
    /* Place Setup Code Here */
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

  `SVTEST(ingress_write_to_memory)
  `SVTEST_END

  `SVUNIT_TESTS_END

endmodule
