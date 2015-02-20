//------------------------
// dpram_unit_test macros
//------------------------

`define write_read_port_N_test(PORT) \
`SVTEST(write_read_port_``PORT) \
  readPort(PORT, 'd4000); \
  writePort(PORT, 'h5, { 32'h00112233 , 32'h778899aa , 32'hbbccddee }); \
  step(1); \
  writePort(PORT, 'd4000, { 32'h00112233 , 32'h778899aa , 32'hbbccddee }); \
  step(1); \
  readPort(PORT, 'h5); \
  step(); \
  halfStep(); \
  expectReadData(PORT, { 32'h00112233 , 32'h778899aa , 32'hbbccddee }); \
  halfStep(); \
`SVTEST_END

`define rdata_N_is_registered_test(PORT) \
`SVTEST(rdata_``PORT``_is_registered) \
  writePort(PORT, 'h4, 'haabbccdd); \
  step(2); \
  readPort(PORT, 'h4); \
  expectReadData(PORT, 'hx); \
`SVTEST_END

// write an arbitrary section of memory that hasn't been accessed
`define no_write_N_in_reset(PORT) \
`SVTEST(no_write_``PORT``_in_reset) \
  rst_n = 0; \
  writePort(PORT, PORT*3, 120'h1122_3344_1122_3344_1234_5678); \
  step(); \
  noWritePort(PORT); \
  readPort(PORT, PORT*3); \
  rst_n = 1; \
  step(); \
  nextSamplePoint(); \
  `FAIL_IF(rdata_``PORT == 30'h12345678); \
`SVTEST_END

`define write_read_full_range(PORT) \
`SVTEST(write_read_port_``PORT``_full_range) \
  for (int i=0; i<MEM_DEPTH; i++) begin \
    writePort(PORT, i, i); \
    step(); \
  end \
  for (int i=0; i<MEM_DEPTH; i++) begin \
    readPort(PORT, i); \
    step(); \
    halfStep(); \
    expectReadData(PORT, i); \
    halfStep(); \
  end \
`SVTEST_END
