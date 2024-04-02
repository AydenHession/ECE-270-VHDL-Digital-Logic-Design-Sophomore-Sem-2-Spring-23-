process
begin
  d_int <= "0000"; rst_int <= '0'; load_int <= '0';

  wait for 20 ns; d_int <= "0101";

  wait for 40 ns; load_int <= '1';
  wait for 20 ns; load_int <= '0';

  wait for 20 ns; d_int <= "1001";

  wait for 40 ns; load_int <= '1';
  wait for 20 ns; load_int <= '0';

  wait for 15 ns; rst_int <= '1';

  wait for 40 ns; load_int <= '0';
  wait for 20 ns; load_int <= '1';

  wait for 25 ns; rst_int <= '0';

  wait for 40 ns; load_int <= '1';
  wait for 20 ns; load_int <= '0';

  wait for 20 ns;

 end process;
end behavior;    
