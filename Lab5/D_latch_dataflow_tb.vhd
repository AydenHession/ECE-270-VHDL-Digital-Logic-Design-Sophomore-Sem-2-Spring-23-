begin
  uut: D_latch_dataflow PORT MAP (
    d => d_int,
    enable => enable_int,
    q => q_int,
    q_bar => q_bar_int
  );

process

begin
    d_int <= '0'; enable_int <= '0';

    wait for 10 ns; d_int <= '1';

    wait for 10 ns; enable_int <= '1';

    wait for 10 ns; d_int <= '0';
    wait for 10 ns; d_int <= '1';

    wait for 10 ns; enable_int <= '0';

    wait for 10 ns; d_int <= '0';
    wait for 10 ns; d_int <= '1';
    wait for 10 ns; d_int <= '0';

    wait for 10 ns; enable_int <= '1';

    wait for 10 ns; d_int <= '1';
    wait for 10 ns; d_int <= '0';

    wait for 20 ns;

  end process;
end behavior;      
