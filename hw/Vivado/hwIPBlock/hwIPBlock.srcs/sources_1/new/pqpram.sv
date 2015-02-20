module pqpram
(
  input clk,
  input rst_n,

  input [29:0] wdata_0,
  input [13:0] waddr_0,
  input wr_0,

  input [119:0] wdata_1,
  input [11:0] waddr_1,
  input wr_1,

  output logic [29:0] rdata_0,
  input        [13:0] raddr_0,

  output logic [119:0] rdata_1,
  input        [11:0] raddr_1
);

parameter BANK_SIZE = 15360/4;

logic wea_b0;
logic [29:0] dina_b0;
logic [29:0] douta_b0;
logic [13:0] addra_b0;

logic web_b0;
logic [119:0] dinb_b0;
logic [119:0] doutb_b0;
logic [11:0] addrb_b0;

logic wea_b1;
logic [29:0] dina_b1;
logic [29:0] douta_b1;
logic [13:0] addra_b1;

logic web_b1;
logic [119:0] dinb_b1;
logic [119:0] doutb_b1;
logic [11:0] addrb_b1;


logic [1:0] next_read_banka_select;
logic [1:0] read_banka_select;
logic [1:0] next_read_bankb_select;
logic [1:0] read_bankb_select;

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    read_banka_select <= 0;
    read_bankb_select <= 0;
  end
  else begin
    read_banka_select <= next_read_banka_select;
    read_bankb_select <= next_read_bankb_select;
  end
end

always @* begin
  wea_b0 = 0;
  dina_b0 = 0;
  addra_b0 = 0;

  web_b0 = 0;
  dinb_b0 = 0;
  addrb_b0 = 0;

  wea_b1 = 0;
  dina_b1 = 0;
  addra_b1 = 0;

  web_b1 = 0;
  dinb_b1 = 0;
  addrb_b1 = 0;

  next_read_banka_select = 0;
  next_read_bankb_select = 0;

  case (read_banka_select)
    0 : rdata_0 = douta_b0;
    1 : rdata_0 = douta_b1;
  endcase

  case (read_bankb_select)
    0 : rdata_1 = doutb_b0;
    1 : rdata_1 = doutb_b1;
  endcase

  if (wr_0) begin
    if (waddr_0 < BANK_SIZE) begin
      wea_b0 = 1;
      dina_b0 = wdata_0;
      addra_b0 = waddr_0;
    end

    else if (waddr_0 < 2*BANK_SIZE) begin
      wea_b1 = 1;
      dina_b1 = wdata_0;
      addra_b1 = waddr_0 - BANK_SIZE;
    end
  end

  if (raddr_0 < BANK_SIZE) begin
    addra_b0 = raddr_0;
    next_read_banka_select = 0;
  end
  else if (raddr_0 < 2*BANK_SIZE) begin
    addra_b1 = raddr_0 - BANK_SIZE;
    next_read_banka_select = 1;
  end


  if (wr_1) begin
    if (waddr_1 < BANK_SIZE) begin
      web_b0 = 1;
      dinb_b0 = wdata_1;
      addrb_b0 = waddr_1;
    end
    else if (waddr_1 < 2*BANK_SIZE) begin
      web_b1 = 1;
      dinb_b1 = wdata_1;
      addrb_b1 = waddr_1 - BANK_SIZE;
    end
  end

  if (raddr_1 < BANK_SIZE) begin
    addrb_b0 = raddr_1;
    next_read_bankb_select = 0;
  end
  else if (raddr_1 < 2*BANK_SIZE) begin
    addrb_b1 = raddr_1 - BANK_SIZE;
    next_read_bankb_select = 1;
  end
end


blk_mem_gen_0 bank0
(
 .clka(clk),
 .wea(wea_b0),
 .addra(addra_b0),
 .dina(dina_b0),
 .douta(douta_b0),

 .clkb(clk),
 .web(web_b0),
 .addrb(addrb_b0),
 .dinb(dinb_b0),
 .doutb(doutb_b0)
);

blk_mem_gen_0 bank1
(
 .clka(clk),
 .wea(wea_b1),
 .addra(addra_b1),
 .dina(dina_b1),
 .douta(douta_b1),

 .clkb(clk),
 .web(web_b1),
 .addrb(addrb_b1),
 .dinb(dinb_b1),
 .doutb(doutb_b1)
);



endmodule
