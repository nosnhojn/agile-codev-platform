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

parameter BANK_SIZE_A = 11520/6;
parameter BANK_SIZE_B = BANK_SIZE_A / 4;

logic wea_b0;
logic [29:0] dina_b0;
logic [29:0] douta_b0;
logic [13:0] addra_b0;

logic wea_b1;
logic [29:0] dina_b1;
logic [29:0] douta_b1;
logic [13:0] addra_b1;

logic wea_b2;
logic [29:0] dina_b2;
logic [29:0] douta_b2;
logic [13:0] addra_b2;

logic wea_b3;
logic [29:0] dina_b3;
logic [29:0] douta_b3;
logic [13:0] addra_b3;

logic wea_b4;
logic [29:0] dina_b4;
logic [29:0] douta_b4;
logic [13:0] addra_b4;

logic wea_b5;
logic [29:0] dina_b5;
logic [29:0] douta_b5;
logic [13:0] addra_b5;

logic web_b0;
logic [119:0] dinb_b0;
logic [119:0] doutb_b0;
logic [11:0] addrb_b0;

logic next_web_b0;
logic [119:0] next_dinb_b0;
logic [11:0] next_addrb_b0;

logic _web_b0;
logic [119:0] _dinb_b0;
logic [11:0] _addrb_b0;

logic web_b1;
logic [119:0] dinb_b1;
logic [119:0] doutb_b1;
logic [11:0] addrb_b1;

logic next_web_b1;
logic [119:0] next_dinb_b1;
logic [11:0] next_addrb_b1;

logic _web_b1;
logic [119:0] _dinb_b1;
logic [11:0] _addrb_b1;

logic web_b2;
logic [119:0] dinb_b2;
logic [119:0] doutb_b2;
logic [11:0] addrb_b2;

logic next_web_b2;
logic [119:0] next_dinb_b2;
logic [11:0] next_addrb_b2;

logic _web_b2;
logic [119:0] _dinb_b2;
logic [11:0] _addrb_b2;

logic web_b3;
logic [119:0] dinb_b3;
logic [119:0] doutb_b3;
logic [11:0] addrb_b3;

logic next_web_b3;
logic [119:0] next_dinb_b3;
logic [11:0] next_addrb_b3;

logic _web_b3;
logic [119:0] _dinb_b3;
logic [11:0] _addrb_b3;

logic web_b4;
logic [119:0] dinb_b4;
logic [119:0] doutb_b4;
logic [11:0] addrb_b4;

logic next_web_b4;
logic [119:0] next_dinb_b4;
logic [11:0] next_addrb_b4;

logic _web_b4;
logic [119:0] _dinb_b4;
logic [11:0] _addrb_b4;

logic web_b5;
logic [119:0] dinb_b5;
logic [119:0] doutb_b5;
logic [11:0] addrb_b5;

logic next_web_b5;
logic [119:0] next_dinb_b5;
logic [11:0] next_addrb_b5;

logic _web_b5;
logic [119:0] _dinb_b5;
logic [11:0] _addrb_b5;

logic [2:0] next_read_banka_select;
logic [2:0] read_banka_select;
logic [2:0] next_read_bankb_select;
logic [2:0] read_bankb_select;

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
  case (read_banka_select)
    0 : rdata_0 = douta_b0;
    1 : rdata_0 = douta_b1;
    2 : rdata_0 = douta_b2;
    3 : rdata_0 = douta_b3;
    4 : rdata_0 = douta_b4;
    5 : rdata_0 = douta_b5;
  endcase

  case (read_bankb_select)
    0 : rdata_1 = doutb_b0;
    1 : rdata_1 = doutb_b1;
    2 : rdata_1 = doutb_b2;
    3 : rdata_1 = doutb_b3;
    4 : rdata_1 = doutb_b4;
    5 : rdata_1 = doutb_b5;
  endcase
end

always @* begin
  addra_b0 = raddr_0;
  addra_b1 = raddr_0 - BANK_SIZE_A;
  addra_b2 = raddr_0 - 2*BANK_SIZE_A;
  addra_b3 = raddr_0 - 3*BANK_SIZE_A;
  addra_b4 = raddr_0 - 4*BANK_SIZE_A;
  addra_b5 = raddr_0 - 5*BANK_SIZE_A;

  if      (waddr_0 < BANK_SIZE_A)   addra_b0 = waddr_0;
  else if (waddr_0 < 2*BANK_SIZE_A) addra_b1 = waddr_0 - BANK_SIZE_A;
  else if (waddr_0 < 3*BANK_SIZE_A) addra_b2 = waddr_0 - 2*BANK_SIZE_A;
  else if (waddr_0 < 4*BANK_SIZE_A) addra_b3 = waddr_0 - 3*BANK_SIZE_A;
  else if (waddr_0 < 5*BANK_SIZE_A) addra_b4 = waddr_0 - 4*BANK_SIZE_A;
  else                              addra_b5 = waddr_0 - 5*BANK_SIZE_A;

  wea_b0 = 0;
  wea_b1 = 0;
  wea_b2 = 0;
  wea_b3 = 0;
  wea_b4 = 0;
  wea_b5 = 0;
  if      (waddr_0 < BANK_SIZE_A)   wea_b0 = wr_0;
  else if (waddr_0 < 2*BANK_SIZE_A) wea_b1 = wr_0;
  else if (waddr_0 < 3*BANK_SIZE_A) wea_b2 = wr_0;
  else if (waddr_0 < 4*BANK_SIZE_A) wea_b3 = wr_0;
  else if (waddr_0 < 5*BANK_SIZE_A) wea_b4 = wr_0;
  else                              wea_b5 = wr_0;

  dina_b0 = wdata_0;
  dina_b1 = wdata_0;
  dina_b2 = wdata_0;
  dina_b3 = wdata_0;
  dina_b4 = wdata_0;
  dina_b5 = wdata_0;

  next_read_banka_select = 0;
  if      (raddr_0 < BANK_SIZE_A)   next_read_banka_select = 0;
  else if (raddr_0 < 2*BANK_SIZE_A) next_read_banka_select = 1;
  else if (raddr_0 < 3*BANK_SIZE_A) next_read_banka_select = 2;
  else if (raddr_0 < 4*BANK_SIZE_A) next_read_banka_select = 3;
  else if (raddr_0 < 5*BANK_SIZE_A) next_read_banka_select = 4;
  else                              next_read_banka_select = 5;
end

always @* begin
  web_b0 = 0;
  dinb_b0 = 0;

  next_web_b0 = 0;
  next_dinb_b0 = 0;
  next_addrb_b0 = 0;

  web_b1 = 0;
  dinb_b1 = 0;

  next_web_b1 = 0;
  next_dinb_b1 = 0;
  next_addrb_b1 = 0;

  web_b2 = 0;
  dinb_b2 = 0;

  next_web_b2 = 0;
  next_dinb_b2 = 0;
  next_addrb_b2 = 0;

  web_b3 = 0;
  dinb_b3 = 0;

  next_web_b3 = 0;
  next_dinb_b3 = 0;
  next_addrb_b3 = 0;

  web_b4 = 0;
  dinb_b4 = 0;

  next_web_b4 = 0;
  next_dinb_b4 = 0;
  next_addrb_b4 = 0;

  web_b5 = 0;
  dinb_b5 = 0;

  next_web_b5 = 0;
  next_dinb_b5 = 0;
  next_addrb_b5 = 0;

  addrb_b0 = waddr_1;
  addrb_b1 = waddr_1 - BANK_SIZE_B;
  addrb_b2 = waddr_1 - 2*BANK_SIZE_B;
  addrb_b3 = waddr_1 - 3*BANK_SIZE_B;
  addrb_b4 = waddr_1 - 4*BANK_SIZE_B;
  addrb_b5 = waddr_1 - 5*BANK_SIZE_B;

  next_read_bankb_select = 0;
  if (raddr_1 < BANK_SIZE_B) begin
    addrb_b0 = raddr_1;
    next_read_bankb_select = 0;
  end
  else if (raddr_1 < 2*BANK_SIZE_B) begin
    addrb_b1 = raddr_1 - BANK_SIZE_B;
    next_read_bankb_select = 1;
  end
  else if (raddr_1 < 3*BANK_SIZE_B) begin
    addrb_b2 = raddr_1 - 2*BANK_SIZE_B;
    next_read_bankb_select = 2;
  end
  else if (raddr_1 < 4*BANK_SIZE_B) begin
    addrb_b3 = raddr_1 - 3*BANK_SIZE_B;
    next_read_bankb_select = 3;
  end
  else if (raddr_1 < 5*BANK_SIZE_B) begin
    addrb_b4 = raddr_1 - 4*BANK_SIZE_B;
    next_read_bankb_select = 4;
  end
  else begin
    addrb_b5 = raddr_1 - 5*BANK_SIZE_B;
    next_read_bankb_select = 5;
  end

  if (wr_1) begin
    if (waddr_1 < BANK_SIZE_B) begin
      if (next_read_bankb_select != 0) begin
        web_b0 = 1;
      end
      else begin
        next_web_b0 = 1;
        next_dinb_b0 = wdata_1;
        next_addrb_b0 = waddr_1;
      end
    end
    else if (waddr_1 < 2*BANK_SIZE_B) begin
      if (next_read_bankb_select != 1) begin
        web_b1 = 1;
      end
      else begin
        next_web_b1 = 1;
        next_dinb_b1 = wdata_1;
        next_addrb_b1 = waddr_1 - BANK_SIZE_B;
      end
    end
    else if (waddr_1 < 3*BANK_SIZE_B) begin
      if (next_read_bankb_select != 2) begin
        web_b2 = 1;
      end
      else begin
        next_web_b2 = 1;
        next_dinb_b2 = wdata_1;
        next_addrb_b2 = waddr_1 - 2*BANK_SIZE_B;
      end
    end
    else if (waddr_1 < 4*BANK_SIZE_B) begin
      if (next_read_bankb_select != 3) begin
        web_b3 = 1;
      end
      else begin
        next_web_b3 = 1;
        next_dinb_b3 = wdata_1;
        next_addrb_b3 = waddr_1 - 3*BANK_SIZE_B;
      end
    end
    else if (waddr_1 < 5*BANK_SIZE_B) begin
      if (next_read_bankb_select != 4) begin
        web_b4 = 1;
      end
      else begin
        next_web_b4 = 1;
        next_dinb_b4 = wdata_1;
        next_addrb_b4 = waddr_1 - 4*BANK_SIZE_B;
      end
    end
    else begin
      if (next_read_bankb_select != 5) begin
        web_b5 = 1;
      end
      else begin
        next_web_b5 = 1;
        next_dinb_b5 = wdata_1;
        next_addrb_b5 = waddr_1 - 5*BANK_SIZE_B;
      end
    end
  end

  dinb_b0 = wdata_1;
  dinb_b1 = wdata_1;
  dinb_b2 = wdata_1;
  dinb_b3 = wdata_1;
  dinb_b4 = wdata_1;
  dinb_b5 = wdata_1;
  if (_web_b0) begin
    web_b0 = 1;
    dinb_b0 = _dinb_b0;
    addrb_b0 = _addrb_b0;
  end
  if (_web_b1) begin
    web_b1 = 1;
    dinb_b1 = _dinb_b1;
    addrb_b1 = _addrb_b1;
  end
  if (_web_b2) begin
    web_b2 = 1;
    dinb_b2 = _dinb_b2;
    addrb_b2 = _addrb_b2;
  end
  if (_web_b3) begin
    web_b3 = 1;
    dinb_b3 = _dinb_b3;
    addrb_b3 = _addrb_b3;
  end
  if (_web_b4) begin
    web_b4 = 1;
    dinb_b4 = _dinb_b4;
    addrb_b4 = _addrb_b4;
  end
  if (_web_b5) begin
    web_b5 = 1;
    dinb_b5 = _dinb_b5;
    addrb_b5 = _addrb_b5;
  end
end

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    _web_b0 <= 0;
    _dinb_b0 <= 0;
    _addrb_b0 <= 0;

    _web_b1 <= 0;
    _dinb_b1 <= 0;
    _addrb_b1 <= 0;

    _web_b2 <= 0;
    _dinb_b2 <= 0;
    _addrb_b2 <= 0;

    _web_b3 <= 0;
    _dinb_b3 <= 0;
    _addrb_b3 <= 0;

    _web_b4 <= 0;
    _dinb_b4 <= 0;
    _addrb_b4 <= 0;

    _web_b5 <= 0;
    _dinb_b5 <= 0;
    _addrb_b5 <= 0;
  end else begin
    _web_b0 <= next_web_b0;
    _dinb_b0 <= next_dinb_b0;
    _addrb_b0 <= next_addrb_b0;

    _web_b1 <= next_web_b1;
    _dinb_b1 <= next_dinb_b1;
    _addrb_b1 <= next_addrb_b1;

    _web_b2 <= next_web_b2;
    _dinb_b2 <= next_dinb_b2;
    _addrb_b2 <= next_addrb_b2;

    _web_b3 <= next_web_b3;
    _dinb_b3 <= next_dinb_b3;
    _addrb_b3 <= next_addrb_b3;

    _web_b4 <= next_web_b4;
    _dinb_b4 <= next_dinb_b4;
    _addrb_b4 <= next_addrb_b4;

    _web_b5 <= next_web_b5;
    _dinb_b5 <= next_dinb_b5;
    _addrb_b5 <= next_addrb_b5;
  end
end

/*
always @(negedge clk) begin
  if (wr_1) $display("%t - WRITE1 (waddr:%0d wdata:0x%0x)", $time, waddr_1, wdata_1);
end
always @(negedge clk) begin
  if (wr_0) $display("%t - WRITE0 (waddr:%0d wdata:0x%0x)", $time, waddr_0, wdata_0);
end
always @(negedge clk) begin
  $display("%t - READ (raddr:%0d rdata:0x%0x)", $time, raddr_1, rdata_1);
end
*/




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

blk_mem_gen_0 bank2
(
 .clka(clk),
 .wea(wea_b2),
 .addra(addra_b2),
 .dina(dina_b2),
 .douta(douta_b2),

 .clkb(clk),
 .web(web_b2),
 .addrb(addrb_b2),
 .dinb(dinb_b2),
 .doutb(doutb_b2)
);

blk_mem_gen_0 bank3
(
 .clka(clk),
 .wea(wea_b3),
 .addra(addra_b3),
 .dina(dina_b3),
 .douta(douta_b3),

 .clkb(clk),
 .web(web_b3),
 .addrb(addrb_b3),
 .dinb(dinb_b3),
 .doutb(doutb_b3)
);

blk_mem_gen_0 bank4
(
 .clka(clk),
 .wea(wea_b4),
 .addra(addra_b4),
 .dina(dina_b4),
 .douta(douta_b4),

 .clkb(clk),
 .web(web_b4),
 .addrb(addrb_b4),
 .dinb(dinb_b4),
 .doutb(doutb_b4)
);

blk_mem_gen_0 bank5
(
 .clka(clk),
 .wea(wea_b5),
 .addra(addra_b5),
 .dina(dina_b5),
 .douta(douta_b5),

 .clkb(clk),
 .web(web_b5),
 .addrb(addrb_b5),
 .dinb(dinb_b5),
 .doutb(doutb_b5)
);

endmodule
