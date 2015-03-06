module pixelProcessor_IO
#(
  MEM_DEPTH = 1,
  DATA_WIDTH = 24,
  RAM_DATA_WIDTH = DATA_WIDTH+6,
  RAM_ADDR_WIDTH = $clog2(MEM_DEPTH)
)
(
  input clk,
  input rst_n,

  // axi4 ingress
  input [DATA_WIDTH-1:0]  iTDATA,
  input         iTUSER,
  input [3:0]   iTKEEP,
  input         iTLAST,
  input         iTVALID,
  output wire   oTREADY,

  // axi4 ingress
  output logic [DATA_WIDTH-1:0] oTDATA,
  output logic        oTUSER,
  output logic [3:0]  oTKEEP,
  output logic        oTLAST,
  output logic        oTVALID,
  input               iTREADY,

  // ram port
  output logic [RAM_DATA_WIDTH-1:0] wdata,
  output logic [RAM_ADDR_WIDTH-1:0] waddr,
  output logic        wr,
  input        [RAM_DATA_WIDTH-1:0] rdata,
  output wire  [RAM_ADDR_WIDTH-1:0] raddr,

  output wire         ingress_rdy,
  output logic [RAM_ADDR_WIDTH-1:0] ingress_cnt,
  input        [RAM_ADDR_WIDTH-1:0] ingress_thresh,
  input        [RAM_ADDR_WIDTH-1:0] ingress_full,
  input        [RAM_ADDR_WIDTH-1:0] ingress_read_cnt,
  output wire                       ingress_new_pixel,

  output wire         egress_read_cnt,
  input               egress_rdy
);

wire  [RAM_ADDR_WIDTH-1:0] raddr_rdy;
wire  [RAM_ADDR_WIDTH-1:0] raddr_not_rdy;

wire [RAM_DATA_WIDTH-1:0] concatenated_wdata;
logic [RAM_DATA_WIDTH-1:0] concatenated_rdata;

logic [RAM_ADDR_WIDTH-1:0] ingress_ptr;
logic [RAM_ADDR_WIDTH-1:0] egress_ptr;
logic [RAM_ADDR_WIDTH-1:0] egress_ptr_plus1;
wire  [RAM_ADDR_WIDTH-1:0] max_ram_address = MEM_DEPTH - 1;

logic ingress_not_quite_ready;
wire ingress_pixel_ready;
wire wrap_ingress_ptr;

wire egress_bus_idle;
wire egress_pixel_accepted;
wire egress_pixel_ready;
wire hold_oTVALID_until_iTREADY;

logic last_read_address;;
wire wrap_egress_read_address;

assign oTUSER = concatenated_rdata[RAM_DATA_WIDTH-1];
assign oTKEEP = concatenated_rdata[RAM_DATA_WIDTH-2:RAM_DATA_WIDTH-5];
assign oTLAST = concatenated_rdata[RAM_DATA_WIDTH-6];
assign oTDATA = concatenated_rdata[RAM_DATA_WIDTH-7:0];

assign oTREADY = (ingress_cnt < ingress_full) || |(ingress_read_cnt);

/*
always @(posedge clk) begin
  if (ingress_read_cnt == 0) $display("%t - ingress_cnt:%0d ingress_pixel_ready:%0d ingress_read_cnt:%0d", $time, ingress_cnt, ingress_pixel_ready, ingress_read_cnt);
  if (oTREADY == 0) $display("%t - oTREADY:0b%0b ingress_cnt:%0d ingress_pixel_ready:%0d ingress_read_cnt:%0d", $time, oTREADY, ingress_cnt, ingress_pixel_ready, ingress_read_cnt);
end
*/

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    wr <= 0;
    wdata <= 0;
    waddr <= 0;

    oTVALID <= 0;

    ingress_ptr <= 0;
    ingress_cnt <= 0;
    egress_ptr <= 0;
    egress_ptr_plus1 <= 1;
    ingress_not_quite_ready <= 0;
    last_read_address <= 0;
  end

  else begin
    ingress_not_quite_ready <= ~(ingress_cnt >= ingress_thresh-2);

    //----------------------------
    // ingress path to the memory
    //----------------------------
    if (ingress_pixel_ready) begin
      wr <= 1;
      wdata <= concatenated_wdata;
      waddr <= ingress_ptr;

      ingress_ptr <= ingress_ptr + 1;
      if (wrap_ingress_ptr) begin
        ingress_ptr <= 0;
      end
    end

    // stall the ingress path
    else begin
      wr <= 0;
    end

    ingress_cnt = ingress_cnt + ingress_pixel_ready - ingress_read_cnt;

    //-----------------------------
    // egress path from the memory
    //-----------------------------
    if (egress_pixel_ready) begin
      oTVALID <= 1;
      concatenated_rdata <= rdata;
      egress_ptr <= raddr;
      egress_ptr_plus1 <= raddr + 1;
      last_read_address = (raddr == max_ram_address);
    end
 
    // stall the egress path
    else begin
      oTVALID <= hold_oTVALID_until_iTREADY;
    end
  end
end

assign ingress_pixel_ready = iTVALID && oTREADY;
assign ingress_new_pixel = ingress_pixel_ready;
assign wrap_ingress_ptr = (ingress_ptr >= max_ram_address);
assign concatenated_wdata = { iTUSER , iTKEEP , iTLAST , iTDATA };
assign ingress_rdy = (ingress_cnt >= ingress_thresh);
//assign ingress_almost_rdy = (ingress_cnt >= ingress_thresh-1);

assign egress_bus_idle = !oTVALID;
assign egress_pixel_accepted = oTVALID && iTREADY;
assign egress_pixel_ready = egress_rdy && (egress_bus_idle || egress_pixel_accepted);
assign hold_oTVALID_until_iTREADY = oTVALID && ~iTREADY;
assign egress_read_cnt = egress_pixel_accepted;

assign wrap_egress_read_address = last_read_address && egress_pixel_ready;
assign raddr_not_rdy = -1;
//assign raddr_rdy = wrap_egress_read_address ? 0 : egress_ptr + egress_pixel_ready;
assign raddr_rdy = wrap_egress_read_address ? 0 :
                      egress_pixel_ready ? egress_ptr_plus1 : egress_ptr;
assign raddr = ingress_not_quite_ready ? raddr_not_rdy : raddr_rdy;

endmodule
