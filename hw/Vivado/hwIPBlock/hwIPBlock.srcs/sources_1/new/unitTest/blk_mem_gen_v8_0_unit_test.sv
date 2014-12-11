`include "svunit_defines.svh"
`include "test_defines.svh"

module blk_mem_gen_v8_0_unit_test;
  import svunit_pkg::svunit_testcase;

  string name = "blk_mem_gen_v8_0_ut";
  svunit_testcase svunit_ut;


  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================

  `CLK_RESET_FIXTURE(24,5)

  logic wea;
  logic [10:0] addra;
  logic [31:0] dina;
  wire [31:0] douta;

  logic web;
  logic [8:0] addrb;
  logic [127:0] dinb;
  wire [127:0] doutb;



  blk_mem_gen_v8_0
  #(
    .C_WRITE_WIDTH_A           (32),
    .C_READ_WIDTH_A            (32),
    .C_WRITE_DEPTH_A           (1536),
    .C_READ_DEPTH_A            (1536),
    .C_ADDRA_WIDTH             (11),
    .C_WRITE_MODE_A            ("NO_CHANGE"),
    .C_WRITE_WIDTH_B           (128),
    .C_READ_WIDTH_B            (128),
    .C_WRITE_DEPTH_B           (384),
    .C_READ_DEPTH_B            (384),
    .C_ADDRB_WIDTH             (9),
    .C_WRITE_MODE_B            ("NO_CHANGE"),
    .C_HAS_MEM_OUTPUT_REGS_A   (0),
    .C_HAS_MEM_OUTPUT_REGS_B   (0)
  )
    uut
  (
   .clka(clk),
   .rsta(~rst_n),
   .ena(1'b1),
   .regcea(1'b1),
   .wea(wea),
   .addra(addra),
   .dina(dina),
   .douta(douta),

   .clkb(clk),
   .rstb(~rst_n),
   .enb(1'b1),
   .regceb(1'b1),
   .web(web),
   .addrb(addrb),
   .dinb(dinb),
   .doutb(doutb)
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
    reset();
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

  `SVTEST(d_blah)
//  fork
//    forever begin
//      step();
//      $display("%t - wea:0b%0b addra:0x%0x dina:0x%0x douta:0x%0x", $time, wea, addra, dina, douta);
//    end
//  join_none

    for (int i=0; i<10; i+=1) begin
      step();
      nextSamplePoint();
      wea = 1;
      addra = i;
      dina = i;
    end

    step(1);
    nextSamplePoint();
    wea = 0;

    step(10);
    for (int i=0; i<10; i+=1) begin
      step(3);
      nextSamplePoint();
      addra = i;
    end
    step(10);
  `SVTEST_END

  `SVTEST(blah)
    addrb = 55;
    web = 0;
//  fork
//    forever begin
//      step();
//      $display("%t - web:0b%0b addrb:0x%0x dinb:0x%0x doutb:0x%0x", $time, web, addrb, dinb, doutb);
//    end
//  join_none

    for (int i=0; i<12; i+=1) begin
      step();
      nextSamplePoint();
      wea = 1;
      addra = i;
      dina = i;
    end

    step(1);
    nextSamplePoint();
    wea = 0;

    step(20);
    for (int i=0; i<3; i+=1) begin
      step(3);
      nextSamplePoint();
      addrb = i;
    end
    step(10);
  `SVTEST_END

  `SVUNIT_TESTS_END

endmodule
