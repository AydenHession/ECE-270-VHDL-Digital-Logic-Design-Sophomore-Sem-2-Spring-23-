process
begin
    enable_int <= '0'; clear_n_int <= '0';

    wait for 20 ns; enable_int <= '1';
    wait for 20 ns; clear_n_int <= '1';
    wait for 20 ns; enable_int <= '0';
    wait for 20 ns; enable_int <= '1';
    wait for 20 ns; clear_n_int <= '0';
    wait for 20 ns; clear_n_int <= '1';

    wait for 40 ns;
  end process;
end behavior;
