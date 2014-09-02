`include "svunit_defines.svh"
`include "agileHwBlock.v"

module agileHWBlock_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "agileHWBlock_ut";
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
  agileHWBlock my_agileHWBlock(.iTDATA(iTDATA),
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
    #1;
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
	   `SVTEST(iotest)
		iTDATA = 'hAAFF;
                iTUSER = 'h0;
                iTKEEP = 'hF;
                iTVALID = 'h1;
                iTLAST = 'h0;
                iTREADY = 'h1;
                #1;
		`FAIL_UNLESS(oTDATA === iTDATA);
	    	`FAIL_UNLESS(oTUSER === iTUSER);
	    	`FAIL_UNLESS(oTKEEP === iTKEEP);
	    	`FAIL_UNLESS(oTVALID === iTVALID);
	    	`FAIL_UNLESS(oTLAST === iTLAST);
	    	`FAIL_UNLESS(oTREADY === iTREADY);
	   `SVTEST_END


	   `SVTEST(colortest)
		iTDATA = 'h00000000;
                iTUSER = 'h0;
                iTKEEP = 'hF;
                iTVALID = 'h1;
                iTLAST = 'h0;
                iTREADY = 'h1;
                #1;
		`FAIL_UNLESS(oTDATA === 'h000055ff);
	    	`FAIL_UNLESS(oTUSER === iTUSER);
	    	`FAIL_UNLESS(oTKEEP === iTKEEP);
	    	`FAIL_UNLESS(oTVALID === iTVALID);
	    	`FAIL_UNLESS(oTLAST === iTLAST);
	    	`FAIL_UNLESS(oTREADY === iTREADY);
	   `SVTEST_END

	   


  `SVUNIT_TESTS_END

endmodule
