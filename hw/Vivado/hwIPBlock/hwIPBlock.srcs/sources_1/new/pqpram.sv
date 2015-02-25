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

parameter BANK_SIZE_A = 15360/8;
parameter BANK_SIZE_B = BANK_SIZE_A / 4;

logic wea_b0;
logic [29:0] dina_b0;
logic [29:0] douta_b0;
logic [13:0] addra_b0;

logic next_wea_b0;
logic [29:0] next_dina_b0;
logic [13:0] next_addra_b0;

logic _wea_b0;
logic [29:0] _dina_b0;
logic [13:0] _addra_b0;

logic wea_b1;
logic [29:0] dina_b1;
logic [29:0] douta_b1;
logic [13:0] addra_b1;

logic next_wea_b1;
logic [29:0] next_dina_b1;
logic [13:0] next_addra_b1;

logic _wea_b1;
logic [29:0] _dina_b1;
logic [13:0] _addra_b1;

logic wea_b2;
logic [29:0] dina_b2;
logic [29:0] douta_b2;
logic [13:0] addra_b2;

logic next_wea_b2;
logic [29:0] next_dina_b2;
logic [13:0] next_addra_b2;

logic _wea_b2;
logic [29:0] _dina_b2;
logic [13:0] _addra_b2;

logic wea_b3;
logic [29:0] dina_b3;
logic [29:0] douta_b3;
logic [13:0] addra_b3;

logic next_wea_b3;
logic [29:0] next_dina_b3;
logic [13:0] next_addra_b3;

logic _wea_b3;
logic [29:0] _dina_b3;
logic [13:0] _addra_b3;

logic wea_b4;
logic [29:0] dina_b4;
logic [29:0] douta_b4;
logic [13:0] addra_b4;

logic next_wea_b4;
logic [29:0] next_dina_b4;
logic [13:0] next_addra_b4;

logic _wea_b4;
logic [29:0] _dina_b4;
logic [13:0] _addra_b4;

logic wea_b5;
logic [29:0] dina_b5;
logic [29:0] douta_b5;
logic [13:0] addra_b5;

logic next_wea_b5;
logic [29:0] next_dina_b5;
logic [13:0] next_addra_b5;

logic _wea_b5;
logic [29:0] _dina_b5;
logic [13:0] _addra_b5;

logic wea_b6;
logic [29:0] dina_b6;
logic [29:0] douta_b6;
logic [13:0] addra_b6;

logic next_wea_b6;
logic [29:0] next_dina_b6;
logic [13:0] next_addra_b6;

logic _wea_b6;
logic [29:0] _dina_b6;
logic [13:0] _addra_b6;

logic wea_b7;
logic [29:0] dina_b7;
logic [29:0] douta_b7;
logic [13:0] addra_b7;

logic next_wea_b7;
logic [29:0] next_dina_b7;
logic [13:0] next_addra_b7;

logic _wea_b7;
logic [29:0] _dina_b7;
logic [13:0] _addra_b7;

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

logic web_b6;
logic [119:0] dinb_b6;
logic [119:0] doutb_b6;
logic [11:0] addrb_b6;

logic next_web_b6;
logic [119:0] next_dinb_b6;
logic [11:0] next_addrb_b6;

logic _web_b6;
logic [119:0] _dinb_b6;
logic [11:0] _addrb_b6;

logic web_b7;
logic [119:0] dinb_b7;
logic [119:0] doutb_b7;
logic [11:0] addrb_b7;

logic next_web_b7;
logic [119:0] next_dinb_b7;
logic [11:0] next_addrb_b7;

logic _web_b7;
logic [119:0] _dinb_b7;
logic [11:0] _addrb_b7;


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
    6 : rdata_0 = douta_b6;
    7 : rdata_0 = douta_b7;
  endcase

  case (read_bankb_select)
    0 : rdata_1 = doutb_b0;
    1 : rdata_1 = doutb_b1;
    2 : rdata_1 = doutb_b2;
    3 : rdata_1 = doutb_b3;
    4 : rdata_1 = doutb_b4;
    5 : rdata_1 = doutb_b5;
    6 : rdata_1 = doutb_b6;
    7 : rdata_1 = doutb_b7;
  endcase
end

always @* begin
  wea_b0 = 0;
  dina_b0 = 0;
  addra_b0 = 0;

  next_wea_b0 = 0;
  next_dina_b0 = 0;
  next_addra_b0 = 0;

  wea_b1 = 0;
  dina_b1 = 0;
  addra_b1 = 0;

  next_wea_b1 = 0;
  next_dina_b1 = 0;
  next_addra_b1 = 0;

  wea_b2 = 0;
  dina_b2 = 0;
  addra_b2 = 0;

  next_wea_b2 = 0;
  next_dina_b2 = 0;
  next_addra_b2 = 0;

  wea_b3 = 0;
  dina_b3 = 0;
  addra_b3 = 0;

  next_wea_b3 = 0;
  next_dina_b3 = 0;
  next_addra_b3 = 0;

  wea_b4 = 0;
  dina_b4 = 0;
  addra_b4 = 0;

  next_wea_b4 = 0;
  next_dina_b4 = 0;
  next_addra_b4 = 0;

  wea_b5 = 0;
  dina_b5 = 0;
  addra_b5 = 0;

  next_wea_b5 = 0;
  next_dina_b5 = 0;
  next_addra_b5 = 0;

  wea_b6 = 0;
  dina_b6 = 0;
  addra_b6 = 0;

  next_wea_b6 = 0;
  next_dina_b6 = 0;
  next_addra_b6 = 0;

  wea_b7 = 0;
  dina_b7 = 0;
  addra_b7 = 0;

  next_wea_b7 = 0;
  next_dina_b7 = 0;
  next_addra_b7 = 0;

  next_read_banka_select = 0;
  if (raddr_0 < BANK_SIZE_A) begin
    addra_b0 = raddr_0;
    next_read_banka_select = 0;
  end
  if (raddr_0 >= BANK_SIZE_A && raddr_0 < 2*BANK_SIZE_A) begin
    addra_b1 = raddr_0 - BANK_SIZE_A;
    next_read_banka_select = 1;
  end
  if (raddr_0 >= 2*BANK_SIZE_A && raddr_0 < 3*BANK_SIZE_A) begin
    addra_b2 = raddr_0 - 2*BANK_SIZE_A;
    next_read_banka_select = 2;
  end
  if (raddr_0 >= 3*BANK_SIZE_A && raddr_0 < 4*BANK_SIZE_A) begin
    addra_b3 = raddr_0 - 3*BANK_SIZE_A;
    next_read_banka_select = 3;
  end
  if (raddr_0 >= 4*BANK_SIZE_A && raddr_0 < 5*BANK_SIZE_A) begin
    addra_b4 = raddr_0 - 4*BANK_SIZE_A;
    next_read_banka_select = 4;
  end
  if (raddr_0 >= 5*BANK_SIZE_A && raddr_0 < 6*BANK_SIZE_A) begin
    addra_b5 = raddr_0 - 5*BANK_SIZE_A;
    next_read_banka_select = 5;
  end
  if (raddr_0 >= 6*BANK_SIZE_A && raddr_0 < 7*BANK_SIZE_A) begin
    addra_b6 = raddr_0 - 6*BANK_SIZE_A;
    next_read_banka_select = 6;
  end
  if (raddr_0 >= 7*BANK_SIZE_A) begin
    addra_b7 = raddr_0 - 7*BANK_SIZE_A;
    next_read_banka_select = 7;
  end

  if (next_read_banka_select != 0) begin
    dina_b0 = wdata_0;
    addra_b0 = waddr_0;
  end
  if (next_read_banka_select != 1) begin
    dina_b1 = wdata_0;
    addra_b1 = waddr_0 - BANK_SIZE_A;
  end
  if (next_read_banka_select != 2) begin
    dina_b2 = wdata_0;
    addra_b2 = waddr_0 - 2*BANK_SIZE_A;
  end
  if (next_read_banka_select != 3) begin
    dina_b3 = wdata_0;
    addra_b3 = waddr_0 - 3*BANK_SIZE_A;
  end
  if (next_read_banka_select != 4) begin
    dina_b4 = wdata_0;
    addra_b4 = waddr_0 - 4*BANK_SIZE_A;
  end
  if (next_read_banka_select != 5) begin
    dina_b5 = wdata_0;
    addra_b5 = waddr_0 - 5*BANK_SIZE_A;
  end
  if (next_read_banka_select != 6) begin
    dina_b6 = wdata_0;
    addra_b6 = waddr_0 - 6*BANK_SIZE_A;
  end
  if (next_read_banka_select != 7) begin
    dina_b7 = wdata_0;
    addra_b7 = waddr_0 - 7*BANK_SIZE_A;
  end

  next_dina_b0 = wdata_0;
  next_addra_b0 = waddr_0;
  next_dina_b1 = wdata_0;
  next_addra_b1 = waddr_0 - BANK_SIZE_A;
  next_dina_b2 = wdata_0;
  next_addra_b2 = waddr_0 - 2*BANK_SIZE_A;
  next_dina_b3 = wdata_0;
  next_addra_b3 = waddr_0 - 3*BANK_SIZE_A;
  next_dina_b4 = wdata_0;
  next_addra_b4 = waddr_0 - 4*BANK_SIZE_A;
  next_dina_b5 = wdata_0;
  next_addra_b5 = waddr_0 - 5*BANK_SIZE_A;
  next_dina_b6 = wdata_0;
  next_addra_b6 = waddr_0 - 6*BANK_SIZE_A;
  next_dina_b7 = wdata_0;
  next_addra_b7 = waddr_0 - 7*BANK_SIZE_A;

  if (wr_0) begin
    if (waddr_0 < BANK_SIZE_A) begin
      if (next_read_banka_select != 0) begin
        wea_b0 = 1;
      end
      else begin
        next_wea_b0 = 1;
      end
    end
    else if (waddr_0 < 2*BANK_SIZE_A) begin
      if (next_read_banka_select != 1) begin
        wea_b1 = 1;
      end
      else begin
        next_wea_b1 = 1;
      end
    end
    else if (waddr_0 < 3*BANK_SIZE_A) begin
      if (next_read_banka_select != 2) begin
        wea_b2 = 1;
      end
      else begin
        next_wea_b2 = 1;
      end
    end
    else if (waddr_0 < 4*BANK_SIZE_A) begin
      if (next_read_banka_select != 3) begin
        wea_b3 = 1;
      end
      else begin
        next_wea_b3 = 1;
      end
    end
    else if (waddr_0 < 5*BANK_SIZE_A) begin
      if (next_read_banka_select != 4) begin
        wea_b4 = 1;
      end
      else begin
        next_wea_b4 = 1;
      end
    end
    else if (waddr_0 < 6*BANK_SIZE_A) begin
      if (next_read_banka_select != 5) begin
        wea_b5 = 1;
      end
      else begin
        next_wea_b5 = 1;
      end
    end
    else if (waddr_0 < 7*BANK_SIZE_A) begin
      if (next_read_banka_select != 6) begin
        wea_b6 = 1;
      end
      else begin
        next_wea_b6 = 1;
      end
    end
    else begin
      if (next_read_banka_select != 7) begin
        wea_b7 = 1;
      end
      else begin
        next_wea_b7 = 1;
      end
    end
  end

  if (_wea_b0) begin
    wea_b0 = 1;
    dina_b0 = _dina_b0;
    addra_b0 = _addra_b0;
  end
  if (_wea_b1) begin
    wea_b1 = 1;
    dina_b1 = _dina_b1;
    addra_b1 = _addra_b1;
  end
  if (_wea_b2) begin
    wea_b2 = 1;
    dina_b2 = _dina_b2;
    addra_b2 = _addra_b2;
  end
  if (_wea_b3) begin
    wea_b3 = 1;
    dina_b3 = _dina_b3;
    addra_b3 = _addra_b3;
  end
  if (_wea_b4) begin
    wea_b4 = 1;
    dina_b4 = _dina_b4;
    addra_b4 = _addra_b4;
  end
  if (_wea_b5) begin
    wea_b5 = 1;
    dina_b5 = _dina_b5;
    addra_b5 = _addra_b5;
  end
  if (_wea_b6) begin
    wea_b6 = 1;
    dina_b6 = _dina_b6;
    addra_b6 = _addra_b6;
  end
  if (_wea_b7) begin
    wea_b7 = 1;
    dina_b7 = _dina_b7;
    addra_b7 = _addra_b7;
  end
end

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    _wea_b0 <= 0;
    _dina_b0 <= 0;
    _addra_b0 <= 0;

    _wea_b1 <= 0;
    _dina_b1 <= 0;
    _addra_b1 <= 0;

    _wea_b2 <= 0;
    _dina_b2 <= 0;
    _addra_b2 <= 0;

    _wea_b3 <= 0;
    _dina_b3 <= 0;
    _addra_b3 <= 0;

    _wea_b4 <= 0;
    _dina_b4 <= 0;
    _addra_b4 <= 0;

    _wea_b5 <= 0;
    _dina_b5 <= 0;
    _addra_b5 <= 0;

    _wea_b6 <= 0;
    _dina_b6 <= 0;
    _addra_b6 <= 0;

    _wea_b7 <= 0;
    _dina_b7 <= 0;
    _addra_b7 <= 0;
  end else begin
    _wea_b0 <= next_wea_b0;
    _dina_b0 <= next_dina_b0;
    _addra_b0 <= next_addra_b0;

    _wea_b1 <= next_wea_b1;
    _dina_b1 <= next_dina_b1;
    _addra_b1 <= next_addra_b1;

    _wea_b2 <= next_wea_b2;
    _dina_b2 <= next_dina_b2;
    _addra_b2 <= next_addra_b2;

    _wea_b3 <= next_wea_b3;
    _dina_b3 <= next_dina_b3;
    _addra_b3 <= next_addra_b3;

    _wea_b4 <= next_wea_b4;
    _dina_b4 <= next_dina_b4;
    _addra_b4 <= next_addra_b4;

    _wea_b5 <= next_wea_b5;
    _dina_b5 <= next_dina_b5;
    _addra_b5 <= next_addra_b5;

    _wea_b6 <= next_wea_b6;
    _dina_b6 <= next_dina_b6;
    _addra_b6 <= next_addra_b6;

    _wea_b7 <= next_wea_b7;
    _dina_b7 <= next_dina_b7;
    _addra_b7 <= next_addra_b7;
  end
end

always @* begin
  web_b0 = 0;
  dinb_b0 = 0;
  addrb_b0 = 0;

  next_web_b0 = 0;
  next_dinb_b0 = 0;
  next_addrb_b0 = 0;

  web_b1 = 0;
  dinb_b1 = 0;
  addrb_b1 = 0;

  next_web_b1 = 0;
  next_dinb_b1 = 0;
  next_addrb_b1 = 0;

  web_b2 = 0;
  dinb_b2 = 0;
  addrb_b2 = 0;

  next_web_b2 = 0;
  next_dinb_b2 = 0;
  next_addrb_b2 = 0;

  web_b3 = 0;
  dinb_b3 = 0;
  addrb_b3 = 0;

  next_web_b3 = 0;
  next_dinb_b3 = 0;
  next_addrb_b3 = 0;

  web_b4 = 0;
  dinb_b4 = 0;
  addrb_b4 = 0;

  next_web_b4 = 0;
  next_dinb_b4 = 0;
  next_addrb_b4 = 0;

  web_b5 = 0;
  dinb_b5 = 0;
  addrb_b5 = 0;

  next_web_b5 = 0;
  next_dinb_b5 = 0;
  next_addrb_b5 = 0;

  web_b6 = 0;
  dinb_b6 = 0;
  addrb_b6 = 0;

  next_web_b6 = 0;
  next_dinb_b6 = 0;
  next_addrb_b6 = 0;

  web_b7 = 0;
  dinb_b7 = 0;
  addrb_b7 = 0;

  next_web_b7 = 0;
  next_dinb_b7 = 0;
  next_addrb_b7 = 0;

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
  else if (raddr_1 < 6*BANK_SIZE_B) begin
    addrb_b5 = raddr_1 - 5*BANK_SIZE_B;
    next_read_bankb_select = 5;
  end
  else if (raddr_1 < 7*BANK_SIZE_B) begin
    addrb_b6 = raddr_1 - 6*BANK_SIZE_B;
    next_read_bankb_select = 6;
  end
  else begin
    addrb_b7 = raddr_1 - 7*BANK_SIZE_B;
    next_read_bankb_select = 7;
  end

  if (wr_1) begin
    if (waddr_1 < BANK_SIZE_B) begin
      if (next_read_bankb_select != 0) begin
        web_b0 = 1;
        dinb_b0 = wdata_1;
        addrb_b0 = waddr_1;
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
        dinb_b1 = wdata_1;
        addrb_b1 = waddr_1 - BANK_SIZE_B;
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
        dinb_b2 = wdata_1;
        addrb_b2 = waddr_1 - 2*BANK_SIZE_B;
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
        dinb_b3 = wdata_1;
        addrb_b3 = waddr_1 - 3*BANK_SIZE_B;
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
        dinb_b4 = wdata_1;
        addrb_b4 = waddr_1 - 4*BANK_SIZE_B;
      end
      else begin
        next_web_b4 = 1;
        next_dinb_b4 = wdata_1;
        next_addrb_b4 = waddr_1 - 4*BANK_SIZE_B;
      end
    end
    else if (waddr_1 < 6*BANK_SIZE_B) begin
      if (next_read_bankb_select != 5) begin
        web_b5 = 1;
        dinb_b5 = wdata_1;
        addrb_b5 = waddr_1 - 5*BANK_SIZE_B;
      end
      else begin
        next_web_b5 = 1;
        next_dinb_b5 = wdata_1;
        next_addrb_b5 = waddr_1 - 5*BANK_SIZE_B;
      end
    end
    else if (waddr_1 < 7*BANK_SIZE_B) begin
      if (next_read_bankb_select != 6) begin
        web_b6 = 1;
        dinb_b6 = wdata_1;
        addrb_b6 = waddr_1 - 6*BANK_SIZE_B;
      end
      else begin
        next_web_b6 = 1;
        next_dinb_b6 = wdata_1;
        next_addrb_b6 = waddr_1 - 6*BANK_SIZE_B;
      end
    end
    else begin
      if (next_read_bankb_select != 7) begin
        web_b7 = 1;
        dinb_b7 = wdata_1;
        addrb_b7 = waddr_1 - 7*BANK_SIZE_B;
      end
      else begin
        next_web_b7 = 1;
        next_dinb_b7 = wdata_1;
        next_addrb_b7 = waddr_1 - 7*BANK_SIZE_B;
      end
    end
  end

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
  if (_web_b6) begin
    web_b6 = 1;
    dinb_b6 = _dinb_b6;
    addrb_b6 = _addrb_b6;
  end
  if (_web_b7) begin
    web_b7 = 1;
    dinb_b7 = _dinb_b7;
    addrb_b7 = _addrb_b7;
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

    _web_b6 <= 0;
    _dinb_b6 <= 0;
    _addrb_b6 <= 0;

    _web_b7 <= 0;
    _dinb_b7 <= 0;
    _addrb_b7 <= 0;
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

    _web_b6 <= next_web_b6;
    _dinb_b6 <= next_dinb_b6;
    _addrb_b6 <= next_addrb_b6;

    _web_b7 <= next_web_b7;
    _dinb_b7 <= next_dinb_b7;
    _addrb_b7 <= next_addrb_b7;
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

blk_mem_gen_0 bank6
(
 .clka(clk),
 .wea(wea_b6),
 .addra(addra_b6),
 .dina(dina_b6),
 .douta(douta_b6),

 .clkb(clk),
 .web(web_b6),
 .addrb(addrb_b6),
 .dinb(dinb_b6),
 .doutb(doutb_b6)
);

blk_mem_gen_0 bank7
(
 .clka(clk),
 .wea(wea_b7),
 .addra(addra_b7),
 .dina(dina_b7),
 .douta(douta_b7),

 .clkb(clk),
 .web(web_b7),
 .addrb(addrb_b7),
 .dinb(dinb_b7),
 .doutb(doutb_b7)
);

endmodule
