module pixelProcessor_IO
#(
  PORT0_ADDR_WIDTH = 1
)
(
  input clk,
  input rst_n,

  // axi4 ingress
  input [23:0]  iTDATA,
  input         iTUSER,
  input [3:0]   iTKEEP,
  input         iTLAST,
  input         iTVALID,
  output wire   oTREADY,

  // axi4 ingress
  output logic [23:0] oTDATA,
  output logic        oTUSER,
  output logic [3:0]  oTKEEP,
  output logic        oTLAST,
  output logic        oTVALID,
  input               iTREADY,

  // ram port
  output logic [29:0] wdata,
  output logic [PORT0_ADDR_WIDTH-1:0] waddr,
  output logic        wr,
  input        [29:0] rdata,
  output wire  [31:0] raddr,

  output wire         ingress_rdy,
  output logic [31:0] ingress_cnt,
  input        [31:0] ingress_thresh,
  input        [31:0] ingress_full,
  input        [31:0] ingress_read_cnt,

  input               egress_rdy
);

wire [29:0] concatenated_wdata;
logic [29:0] concatenated_rdata;

logic [31:0] ingress_ptr;
logic [31:0] egress_ptr;
wire  [31:0] max_ram_address = 2**PORT0_ADDR_WIDTH - 1;

wire ingress_pixel_ready;
wire wrap_ingress_ptr;

wire egress_bus_idle;
wire egress_pixel_accepted;
wire egress_pixel_ready;
wire hold_oTVALID_until_iTREADY;

wire wrap_egress_read_address;

assign oTDATA = concatenated_rdata[29:6];
assign oTUSER = concatenated_rdata[5];
assign oTKEEP = concatenated_rdata[4:1];
assign oTLAST = concatenated_rdata[0];

assign oTREADY = (ingress_cnt < ingress_full) || |(ingress_read_cnt);

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    wr <= 0;
    wdata <= 0;
    waddr <= 0;

    oTVALID <= 0;

    ingress_ptr <= 0;
    ingress_cnt <= 0;
    egress_ptr <= 0;
  end

  else begin
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
    end
 
    // stall the egress path
    else begin
      oTVALID <= hold_oTVALID_until_iTREADY;
    end
  end
end


assign ingress_pixel_ready = iTVALID && oTREADY;
assign wrap_ingress_ptr = (ingress_ptr >= max_ram_address);
assign concatenated_wdata = { iTDATA , iTUSER , iTKEEP , iTLAST };
assign ingress_rdy = (ingress_cnt >= ingress_thresh);

assign egress_bus_idle = !oTVALID;
assign egress_pixel_accepted = oTVALID && iTREADY;
assign egress_pixel_ready = egress_rdy && (egress_bus_idle || egress_pixel_accepted);
assign hold_oTVALID_until_iTREADY = oTVALID && ~iTREADY;

assign wrap_egress_read_address = (egress_ptr + egress_pixel_ready) > max_ram_address;
assign raddr = wrap_egress_read_address ? 0 : egress_ptr + egress_pixel_ready;

endmodule
