  parameter LINE_WIDTH = 1920;
  parameter NUM_ROWS = 12;

  parameter FIRST_ROW = 1;
  parameter FIRST_COLUMN = 1;
  parameter NOT_FIRST_ROW = 0;
  parameter NOT_FIRST_COLUMN = 0;
  parameter LAST_ROW = 1;
  parameter LAST_COLUMN = 1;
  parameter NOT_LAST_ROW = 0;
  parameter NOT_LAST_COLUMN = 0;

  wire  [119:0] wdata;
  wire  [31:0] waddr;
  wire         wr;
  logic [119:0] rdata;
  wire  [31:0] raddr;
  wire  [31:0] ingress_used_cnt;
  wire  [31:0] ingress_available_cnt;
  logic [31:0] ingress_rdy_thresh;
  logic        ingress_new_pixel;
  wire         egress_rdy;

  wire calc_strobe;
  wire first_row_flag;
  wire first_column_flag;
  wire last_row_flag;
  wire last_column_flag;

  wire [119:0] group_slot0;
  wire [119:0] group_slot1;
  wire [119:0] group_slot2;

  const int mem_reads_per_group = 3;
  const int full_group = mem_reads_per_group;
  const int mem_reads_per_row = mem_reads_per_group * (LINE_WIDTH/4);
  const int full_row = mem_reads_per_row;
  const int full_frame = (NUM_ROWS-2) * full_row;

  `CLK_RESET_FIXTURE(10,1)

  pixelProcessor
    #(
      .PIXEL_WIDTH(LINE_WIDTH),
      .PIXEL_HEIGHT(NUM_ROWS),
      .PIXELS_PER_READ(4)
    )
    uut
    (
    .clk(clk),
    .rst_n(rst_n),

    .wdata(wdata),
    .waddr(waddr),
    .wr(wr),
    .rdata(rdata),
    .raddr(raddr),

    .ingress_used_cnt(ingress_used_cnt),
    .ingress_available_cnt(ingress_available_cnt),
    .ingress_rdy_thresh(ingress_rdy_thresh),
    .ingress_new_pixel(ingress_new_pixel),

    .egress_rdy(egress_rdy),

    .calc_strobe(calc_strobe),
    .first_row_flag(first_row_flag),
    .first_column_flag(first_column_flag),
    .last_row_flag(last_row_flag),
    .last_column_flag(last_column_flag),

    .group_slot0(group_slot0),
    .group_slot1(group_slot1),
    .group_slot2(group_slot2)
  );

  dpram
  #(
    .DPRAM_DEPTH(6*LINE_WIDTH),
    .DPRAM_PORT0_WIDTH(30),
    .DPRAM_PORT1_WIDTH(120),
    .DPRAM_PORT0_ADDR_WIDTH(32),
    .DPRAM_PORT1_ADDR_WIDTH(32)
  )
  my_dpram
  (
    .clk(clk),
    .rst_n(rst_n),

    .wdata_1(wdata),
    .waddr_1(waddr),
    .wr_1(wr),

    .rdata_1(rdata),
    .raddr_1(raddr)
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

