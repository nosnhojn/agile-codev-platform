`include "svunit_defines.svh"
`include "test_defines.svh"
`include "test_macros.svh"

module pqpram_unit_test;
  import svunit_pkg::svunit_testcase;

  parameter MEM_DEPTH = 8*1920;

  string name = "pqpram_ut";
  svunit_testcase svunit_ut;

  logic [29:0] wdata_0;
  logic [13:0] waddr_0;
  logic        wr_0;

  wire  [29:0] rdata_0;
  logic [13:0] raddr_0;

  logic [119:0] wdata_1;
  logic [11:0] waddr_1;
  logic        wr_1;

  wire  [119:0] rdata_1;
  logic [11:0] raddr_1;

  `CLK_RESET_FIXTURE(24,5)

  `define PORT0 0
  `define PORT1 1

  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================

  pqpram uut
  (
    .clk(clk),
    .rst_n(rst_n),

    .wdata_0(wdata_0),
    .waddr_0(waddr_0),
    .wr_0(wr_0),

    .rdata_0(rdata_0),
    .raddr_0(raddr_0),

    .wdata_1(wdata_1),
    .waddr_1(waddr_1),
    .wr_1(wr_1),

    .rdata_1(rdata_1),
    .raddr_1(raddr_1)
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

    // clear the inputs to the uut
    wr_0 = 0;
    wdata_0 = 0;
    waddr_0 = 0;

    raddr_0 = 0;

    wr_1 = 0;
    wdata_1 = 0;
    waddr_1 = 0;

    raddr_1 = 0;

    // flex the reset
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

  //always @(negedge clk) begin
    //$display("%t - wea_b0:0x%0x addra_b0:0x%0x dina_b0:0x%0x douta_b0:0x%0x", $time, uut.wea_b0, uut.addra_b0, uut.dina_b0, uut.douta_b0);
    //$display("%t - web_b0:0x%0x addrb_b0:0x%0x dinb_b0:0x%0x doutb_b0:0x%0x", $time, uut.web_b0, uut.addrb_b0, uut.dinb_b0, uut.doutb_b0);
  //end

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
    `SVTEST(write_read_port_0_bankn)
       begin
         int addr = 0;
         int data = 30'hbbccddee;
         for (int i=0; i<8; i+=1) begin
           readPort(0, addr-1);
           writePort(0, addr, data);
           step();
           noWritePort(0);
           step();
           readPort(0, addr);
           step();
           expectReadData(0, data);
      
           addr += 1920;
           data -= 51;
         end
       end
    `SVTEST_END

    `SVTEST(write_read_port_1_bankn)
       begin
         int addr = 0;
         int data = { 30'h15456767 , 30'h0 , 30'h0 , 30'hbbccddee };
         for (int i=0; i<8; i+=1) begin
           readPort(1, addr-1);
           writePort(1, addr, data);
           step();
           noWritePort(1);
           step();
           readPort(1, addr);
           step();
           expectReadData(1, data);
      
           addr += 1920/4;
           data -= 51;
         end
       end
    `SVTEST_END

    `SVTEST(simultaneous_write_read_port_0_bankn)
       begin
         int addr = 0;
         int data = 30'h332211ff;
         for (int i=0; i<8; i+=1) begin
                                      readPort(0, addr-1);                         
           writePort(0, addr+1, 'h77);                                             
                                                                   step(1);      
           noWritePort(0);                                                       
                                                                   step(1);      
                                      readPort(0, addr+1);                         
           writePort(0, addr, data);                                             
                                                                   step(1);      
           noWritePort(0);                                                       
                                      expectReadData(0, 'h77);                   
                                                                   step(2);
                                      readPort(0, addr);                         
                                                                   step(1);      
                                      expectReadData(0, data);                   

           addr += 1920;
           data -= 51;
         end
       end
    `SVTEST_END

  `SVUNIT_TESTS_END

  task expectReadData(int port, logic [119:0] exp);
    nextSamplePoint();
    if (port == 0) begin 
//$display("%t rdata_0:0x%0x exp:0x%0x", $time, rdata_0, exp[29:0]);
      `FAIL_UNLESS(rdata_0 === exp[29:0]);
    end
    if (port == 1) begin 
//$display("rdata_1:0x%0x exp:0x%0x", rdata_1, exp[119:0]);
      `FAIL_UNLESS(rdata_1 === exp[119:0]);
    end
  endtask

  task noWritePort(int port);
    nextSamplePoint();
    if (port == 0) begin
      wr_0 = 0;
    end
    else begin
      wr_1 = 0;
    end
  endtask

  task writePort(int port, bit [31:0] addr, bit [119:0] data);
    nextSamplePoint();
    if (port == 0) begin
      wr_0 = 1;
      waddr_0 = addr;
      wdata_0 = data;
    end

    else begin
      wr_1 = 1;
      waddr_1 = addr;
      wdata_1 = data;
    end
  endtask

  task readPort(int port, bit [31:0] addr);
    nextSamplePoint();
    if (port == 0) raddr_0 = addr;
    else if (port == 1) raddr_1 = addr;
  endtask

endmodule
