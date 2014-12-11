  `include "test_constants.svh"

  wire  [119:0] wdata;
  wire  [11:0]  waddr;
  wire          wr;
  logic [119:0] rdata;
  wire  [11:0] raddr;
  wire  [31:0] ingress_used_cnt;
  wire  [31:0] ingress_available_cnt;
  logic [31:0] ingress_rdy_thresh;
  logic        ingress_new_pixel;

  logic calc_rdy;
  wire  calc_strobe;
  wire  first_row_flag;
  wire  first_column_flag;
  wire  last_row_flag;
  wire  last_column_flag;

  wire [119:0] group_slot0;
  wire [119:0] group_slot1;
  wire [119:0] group_slot2;

  const int mem_reads_per_group = 3;
  const int full_group = mem_reads_per_group;
  const int mem_reads_per_row = mem_reads_per_group * (LINE_WIDTH_BY4);
  const int full_row = mem_reads_per_row;
  const int full_frame = (NUM_LINES-2) * full_row;

  `CLK_RESET_FIXTURE(24,5)

  pixelProcessor
    #(
      .PIXEL_WIDTH(LINE_WIDTH),
      .PIXEL_HEIGHT(NUM_LINES),
      .PIXELS_PER_READ(4)
    )
    uut
    (
    .clk(clk),
    .rst_n(rst_n),

    .rdata(rdata),
    .raddr(raddr),

    .ingress_used_cnt(ingress_used_cnt),
    .ingress_available_cnt(ingress_available_cnt),
    .ingress_rdy_thresh(ingress_rdy_thresh),
    .ingress_new_pixel(ingress_new_pixel),

    .calc_rdy(calc_rdy),

    .calc_strobe(calc_strobe),
    .first_row_flag(first_row_flag),
    .first_column_flag(first_column_flag),
    .last_row_flag(last_row_flag),
    .last_column_flag(last_column_flag),

    .group_slot0(group_slot0),
    .group_slot1(group_slot1),
    .group_slot2(group_slot2)
  );

  wire [29:0] rdata_no_connect;
  qpram
  #(
    .QPRAM_DEPTH(8*LINE_WIDTH),
    .QPRAM_PORT0_WIDTH(30),
    .QPRAM_PORT1_WIDTH(120),
    .QPRAM_PORT0_ADDR_WIDTH(14),
    .QPRAM_PORT1_ADDR_WIDTH(12)
  )
  my_qpram
  (
    .clk(clk),
    .rst_n(rst_n),

    .wdata_1(wdata),
    .waddr_1(waddr),
    .wr_1(wr),

    .rdata_1(rdata),
    .raddr_1(raddr),

    .wdata_0(30'h0),
    .waddr_0(14'h0),
    .wr_0(1'b0),

    .raddr_0(14'h0),
    .rdata_0(rdata_no_connect)
  );


  task setIngressNotRdy();
    nextSamplePoint();
    ingress_rdy_thresh = 2**31; // any value the ingress_available_cnt can never reach will do
  endtask

  task setIngressRdy();
    nextSamplePoint();
    ingress_rdy_thresh = 0;
  endtask

  task expectRaddr(bit [31:0] addr);
    nextSamplePoint();
    `FAIL_UNLESS(raddr === addr);
  endtask

  task expectNoStrobe();
    nextSamplePoint();
    `FAIL_UNLESS(calc_strobe === 0);
  endtask

  task expectStrobeWithRowColumnMarkers(bit _first_row, bit _first_column, bit _last_row, bit _last_column);
    nextSamplePoint();
    `FAIL_UNLESS(calc_strobe === 1);
    `FAIL_UNLESS(first_row_flag === _first_row);
    `FAIL_UNLESS(first_column_flag === _first_column);
    `FAIL_UNLESS(last_column_flag === _last_column);
    `FAIL_UNLESS(last_row_flag === _last_row);
  endtask

  task stepUntilStrobe();
    step();
    nextSamplePoint();
    while (!calc_strobe) begin
      step();
      nextSamplePoint();
    end
  endtask

  task expectIngressUsedCnt(int cnt);
    nextSamplePoint();
    `FAIL_UNLESS(ingress_used_cnt === cnt);
  endtask

  task setNewIngressPixel();
    nextSamplePoint();
    ingress_new_pixel = 1;
  endtask

  task setNoNewIngressPixel();
    nextSamplePoint();
    ingress_new_pixel = 0;
  endtask

  task setIngressRdyThresh(int cnt);
    nextSamplePoint();
    ingress_rdy_thresh = cnt;
  endtask

  task expectIngressAvailCnt(int cnt);
    nextSamplePoint();
    `FAIL_UNLESS(ingress_available_cnt === cnt);
  endtask

  task setCalcRdy();
    nextSamplePoint();
    calc_rdy = 1;
  endtask

  task setNoCalcRdy();
    nextSamplePoint();
    calc_rdy = 0;
  endtask
