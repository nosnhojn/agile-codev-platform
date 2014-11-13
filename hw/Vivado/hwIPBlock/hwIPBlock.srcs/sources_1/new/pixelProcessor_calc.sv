module pixelProcessor_calc (
  input         clk,
  input         rst_n,

  output logic  calc_rdy,

  input         calc_strobe,
  input         first_row_flag,
  input         first_column_flag,
  input         last_row_flag,
  input         last_column_flag,

  input [119:0] group_slot0,
  input [119:0] group_slot1,
  input [119:0] group_slot2,

  output wire [119:0] wdata,
  output wire [11:0]  waddr,
  output wire         wr,

  input         egress_read_cnt,
  output logic  egress_rdy
);

wire strobe_for_all_but_first_column;
logic second_strobe_for_first_row;

logic second_strobe_for_last_row;

logic second_strobe_for_last_column;

logic second_strobe_for_first_row_last_column;
logic third_strobe_for_first_row_last_column;
logic fourth_strobe_for_first_row_last_column;

logic second_strobe_for_last_row_last_column;
logic third_strobe_for_last_row_last_column;
logic fourth_strobe_for_last_row_last_column;

always @(negedge rst_n or posedge clk) begin
  if (!rst_n) begin
    second_strobe_for_first_row <= 0;

    second_strobe_for_last_row <= 0;

    second_strobe_for_last_column <= 0;

    second_strobe_for_first_row_last_column <= 0;
    third_strobe_for_first_row_last_column <= 0;
    fourth_strobe_for_first_row_last_column <= 0;

    second_strobe_for_last_row_last_column <= 0;
    third_strobe_for_last_row_last_column <= 0;
    fourth_strobe_for_last_row_last_column <= 0;
  end

  else begin
    second_strobe_for_first_row <= calc_strobe && first_row_flag && !first_column_flag;

    second_strobe_for_last_row <= calc_strobe && last_row_flag && !first_column_flag;

    second_strobe_for_last_column <= calc_strobe && last_column_flag;

    second_strobe_for_first_row_last_column <= calc_strobe && first_row_flag && last_column_flag;
    third_strobe_for_first_row_last_column <= second_strobe_for_first_row_last_column;
    fourth_strobe_for_first_row_last_column <= third_strobe_for_first_row_last_column;

    second_strobe_for_last_row_last_column <= calc_strobe && last_row_flag && last_column_flag;
    third_strobe_for_last_row_last_column <= second_strobe_for_last_row_last_column;
    fourth_strobe_for_last_row_last_column <= third_strobe_for_last_row_last_column;
  end
end

assign wr = strobe_for_all_but_first_column ||
            second_strobe_for_last_column ||
            second_strobe_for_last_row ||
            second_strobe_for_first_row ||
            second_strobe_for_first_row_last_column ||
            third_strobe_for_first_row_last_column ||
            fourth_strobe_for_first_row_last_column ||
            second_strobe_for_last_row_last_column ||
            third_strobe_for_last_row_last_column ||
            fourth_strobe_for_last_row_last_column;
assign strobe_for_all_but_first_column = (calc_strobe & !first_column_flag);

endmodule
