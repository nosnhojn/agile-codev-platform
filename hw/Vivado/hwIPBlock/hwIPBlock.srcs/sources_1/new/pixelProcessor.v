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
  output logic [31:0] raddr_0,

  // ram port 1
  output logic [29:0] wdata_1,
  output logic [PORT0_ADDR_WIDTH-1:0] waddr_1,
  output logic        wr_1,
  input        [29:0] rdata_1,
  output logic [31:0] raddr_1,

  output wire  [31:0] pixel_cnt,
  input        [31:0] pixel_rd_thresh
);

logic [31:0] ingress_write_address;
logic [31:0] egress_read_address;
wire [31:0] max_ingress_write_address = 2**PORT0_ADDR_WIDTH - 1;

assign oTREADY = iTREADY;
assign pixel_cnt = ingress_write_address - egress_read_address;

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    wr_0 <= 0;
    wdata_0 <= 0;
    waddr_0 <= 0;

    raddr_0 <= 0;

    ingress_write_address <= 0;
    egress_read_address <= 0;
  end

  else begin
    // ingress path to the memory
    if (iTVALID && oTREADY) begin
      wr_0 <= 1;
      wdata_0 <= { iTDATA , iTUSER , iTKEEP , iTLAST };
      waddr_0 <= ingress_write_address;

      ingress_write_address <= ingress_write_address + 1;
      if (ingress_write_address >= max_ingress_write_address) begin
        ingress_write_address <= 0;
      end
    end

    // stall the ingress path
    else begin
      wr_0 <= 0;
    end

    // egress path from the memory
    if (pixel_cnt >= pixel_rd_thresh) begin
      egress_read_address <= egress_read_address + 1;
      oTVALID <= 1;
      { oTDATA , oTUSER , oTKEEP , oTLAST } <= rdata_0;
    end
  end
end

endmodule
