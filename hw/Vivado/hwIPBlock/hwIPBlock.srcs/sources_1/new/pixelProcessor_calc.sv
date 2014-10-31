module pixelProcessor_calc (
  output logic  calc_rdy,

  input         calc_strobe,
  input         first_row_flag,
  input         first_column_flag,
  input         last_row_flag,
  input         last_column_flag,

  input [119:0] group_slot0,
  input [119:0] group_slot1,
  input [119:0] group_slot2,

  input         egress_read_cnt,
  output logic  egress_rdy
);

endmodule
