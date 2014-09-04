//------------------------
// dpram_unit_test macros
//------------------------

`define write_read_port_N_test(PORT) \
`SVTEST(write_read_port_``PORT) \
  writePort(PORT, 'hf, { 31'h00112233 , 32'h778899aa , 32'hbbccddee }); \
  step(); \
  readPort(PORT, 'hf); \
  step(); \
  expectReadData(PORT, { 32'h00112233 , 32'h778899aa , 32'hbbccddee }); \
`SVTEST_END

`define rdata_N_is_registered_test(PORT) \
`SVTEST(rdata_``PORT``_is_registered) \
  writePort(PORT, 'hf, 'haabbccdd); \
  step(); \
  readPort(PORT, 'hf); \
  expectReadData(PORT, 'hx); \
`SVTEST_END

// write an arbitrary section of memory that hasn't been accessed
`define no_write_N_in_reset(PORT) \
`SVTEST(no_write_``PORT``_in_reset) \
  rst_n = 0; \
  writePort(PORT, 'h34+PORT*3, 'h112233441122334412345678); \
  step(); \
  readPort(PORT, 'h34+PORT*3); \
  rst_n = 1; \
  step(); \
  nextSamplePoint(); \
  `FAIL_IF(rdata_``PORT == 'h12345678); \
`SVTEST_END

`define no_read_N_in_reset(PORT) \
`SVTEST(no_read_``PORT``_in_reset) \
  writePort(PORT, 'hf, 'haabbccdd); \
  step(); \
  readPort(PORT, 'hf); \
  rst_n = 0; \
  step(); \
  expectReadData(PORT, 'hx); \
`SVTEST_END

`define write_read_full_range(PORT) \
`SVTEST(write_read_port_``PORT``_full_range) \
  for (int i=0; i<`TEST_DPRAM_SIZE; i++) begin \
    writePort(PORT, i, i); \
    step(); \
  end \
  for (int i=0; i<`TEST_DPRAM_SIZE; i++) begin \
    readPort(PORT, i); \
    step(); \
    expectReadData(PORT, i); \
  end \
`SVTEST_END
