begin
    shift_in_int <= '0';

    wait for 20 ns; shift_in_int <= '1';
    wait for 40 ns; shift_in_int <= '0';
    wait for 20 ns; shift_in_int <= '1';
    wait for 40 ns; shift_in_int <= '0';

    wait for 20 ns;
  end process;
end behavior;
