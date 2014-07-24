module __testsuite;
  import svunit_pkg::svunit_testsuite;

  string name = "__ts";
  svunit_testsuite svunit_ts;
  
  
  //===================================
  // These are the unit tests that we
  // want included in this testsuite
  //===================================
  agileHWBlock_unit_test agileHWBlock_ut();


  //===================================
  // Build
  //===================================
  function void build();
    agileHWBlock_ut.build();
    svunit_ts = new(name);
    svunit_ts.add_testcase(agileHWBlock_ut.svunit_ut);
  endfunction


  //===================================
  // Run
  //===================================
  task run();
    svunit_ts.run();
    agileHWBlock_ut.run();
    svunit_ts.report();
  endtask

endmodule
