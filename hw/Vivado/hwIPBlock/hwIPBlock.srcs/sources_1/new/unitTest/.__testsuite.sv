module __testsuite;
  import svunit_pkg::svunit_testsuite;

  string name = "__ts";
  svunit_testsuite svunit_ts;
  
  
  //===================================
  // These are the unit tests that we
  // want included in this testsuite
  //===================================
  agileHWBlock_unit_test agileHWBlock_ut();
  dpram_unit_test dpram_ut();
  pixelProcessor_calc_unit_test pixelProcessor_calc_ut();
  pixelProcessor_ctrl_unit_test pixelProcessor_ctrl_ut();
  pixelProcessor_data_unit_test pixelProcessor_data_ut();
  pixelProcessor_IO_unit_test pixelProcessor_IO_ut();
  step_1_unit_test step_1_ut();
  step_2_unit_test step_2_ut();


  //===================================
  // Build
  //===================================
  function void build();
    agileHWBlock_ut.build();
    dpram_ut.build();
    pixelProcessor_calc_ut.build();
    pixelProcessor_ctrl_ut.build();
    pixelProcessor_data_ut.build();
    pixelProcessor_IO_ut.build();
    step_1_ut.build();
    step_2_ut.build();
    svunit_ts = new(name);
    svunit_ts.add_testcase(agileHWBlock_ut.svunit_ut);
    svunit_ts.add_testcase(dpram_ut.svunit_ut);
    svunit_ts.add_testcase(pixelProcessor_calc_ut.svunit_ut);
    svunit_ts.add_testcase(pixelProcessor_ctrl_ut.svunit_ut);
    svunit_ts.add_testcase(pixelProcessor_data_ut.svunit_ut);
    svunit_ts.add_testcase(pixelProcessor_IO_ut.svunit_ut);
    svunit_ts.add_testcase(step_1_ut.svunit_ut);
    svunit_ts.add_testcase(step_2_ut.svunit_ut);
  endfunction


  //===================================
  // Run
  //===================================
  task run();
    svunit_ts.run();
    agileHWBlock_ut.run();
    dpram_ut.run();
    pixelProcessor_calc_ut.run();
    pixelProcessor_ctrl_ut.run();
    pixelProcessor_data_ut.run();
    pixelProcessor_IO_ut.run();
    step_1_ut.run();
    step_2_ut.run();
    svunit_ts.report();
  endtask

endmodule
