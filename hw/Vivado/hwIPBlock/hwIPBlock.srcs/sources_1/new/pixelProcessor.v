module pixelProcessor
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

  // ram port 0
  output logic [29:0] wdata_0,
  output logic [PORT0_ADDR_WIDTH-1:0] waddr_0,
  output logic        wr_0,
  input        [29:0] rdata_0,
  output wire  [31:0] raddr_0,

  // ram port 1
  output logic [29:0] wdata_1,
  output logic [PORT0_ADDR_WIDTH-1:0] waddr_1,
  output logic        wr_1,
  input        [29:0] rdata_1,
  output logic [31:0] raddr_1,

  output wire  [31:0] pixel_cnt,
  input        [31:0] pixel_rd_thresh
);

wire [29:0] concatinated_write_data;
logic [29:0] concatenated_read_data;

logic [31:0] ingress_write_address;
logic [31:0] egress_read_address;
wire [31:0] max_ingress_write_address = 2**PORT0_ADDR_WIDTH - 1;

wire ingress_pixel_ready;
wire wrap_ingress_write_address;

wire egress_bus_idle;
wire last_egress_pixel_accepted;
wire pixel_available;
wire egress_pixel_ready;
wire hold_oTVALID_until_iTREADY;

assign raddr_0 = egress_read_address + egress_pixel_ready;

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    wr_0 <= 0;
    wdata_0 <= 0;
    waddr_0 <= 0;

    oTVALID <= 0;

    ingress_write_address <= 0;
    egress_read_address <= 0;
  end

  else begin
    //----------------------------
    // ingress path to the memory
    //----------------------------
    if (ingress_pixel_ready) begin
      wr_0 <= 1;
      wdata_0 <= concatinated_write_data;
      waddr_0 <= ingress_write_address;

      ingress_write_address <= ingress_write_address + 1;
      if (wrap_ingress_write_address) begin
        ingress_write_address <= 0;
      end
    end

    // stall the ingress path
    else begin
      wr_0 <= 0;
    end


    //-----------------------------
    // egress path from the memory
    //-----------------------------
    if (egress_pixel_ready) begin
      oTVALID <= 1;
      concatenated_read_data <= rdata_0;

      egress_read_address <= egress_read_address + 1;
    end

    // stall the egress path
    else begin
      oTVALID <= hold_oTVALID_until_iTREADY;
    end
  end
end


assign ingress_pixel_ready = iTVALID && oTREADY;
assign wrap_ingress_write_address = (ingress_write_address >= max_ingress_write_address);
assign concatinated_write_data = { iTDATA , iTUSER , iTKEEP , iTLAST };

assign oTDATA = concatenated_read_data[29:6];
assign oTUSER = concatenated_read_data[5];
assign oTKEEP = concatenated_read_data[4:1];
assign oTLAST = concatenated_read_data[0];

assign egress_bus_idle = !oTVALID;
assign last_egress_pixel_accepted = oTVALID && iTREADY;
assign pixel_available = (pixel_cnt >= pixel_rd_thresh);
assign egress_pixel_ready = pixel_available && (egress_bus_idle || last_egress_pixel_accepted);
assign hold_oTVALID_until_iTREADY = oTVALID && ~iTREADY;

assign oTREADY = iTREADY;
assign pixel_cnt = ingress_write_address - egress_read_address;

endmodule
