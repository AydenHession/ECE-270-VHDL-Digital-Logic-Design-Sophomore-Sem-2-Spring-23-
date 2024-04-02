process
begin
    d_int <= '0'; rst_int <= '0'; ce_int <= '0';

    wait for 20 ns; d_int <= '1';

    wait for 40 ns; ce_int <= '1';
    wait for 20 ns; ce_int <= '0';

    wait for 20 ns; d_int <= '0';

    wait for 20 ns; rst_int <= '1';
    wait for 20 ns; rst_int <= '0';

    wait for 40 ns; ce_int <= '1';
    wait for 20 ns; ce_int <= '0';

    wait for 20 ns; d_int <= '1';

    wait for 40 ns; ce_int <= '1';
    wait for 20 ns; ce_int <= '0';

    wait for 20 ns;

 end process;
end behavior;      
