begin
  uut: SR_gated_latch_dataflow PORT MAP (
    r => r_int,
    s => s_int,
    enable => enable_int,
    q => q_int,
    q_bar => q_bar_int
  );

process

begin
  s_int <= '0'; r_int <= '0'; enable_int <= '0';

  wait for 10 ns; s_int <= '1';

  wait for 10 ns; enable_int <= '1';

  wait for 10 ns; s_int <= '0';
  wait for 10 ns; r_int <= '1';
 
  wait for 10 ns; enable_int <= '0';

  wait for 10 ns; s_int <= '1'; r_int <= '0';
  wait for 10 ns; s_int <= '0'; r_int <= '1';
  wait for 10 ns; s_int <= '1'; r_int <= '0';

  wait for 10 ns; enable_int <= '1';

  wait for 10 ns; s_int <= '1'; r_int <= '0';
  wait for 10 ns; s_int <= '1'; r_int <= '1';

  wait;

end process;
