begin
  uut:  D_ff_behavior PORT MAP (
        d => d_int,
        clk => clk_int,
        q => q_int
    );

 process
    variable k : integer := 0;
 begin
    clk_int <= '0';

    for k in 0 to 127 loop

      wait for 10 ns;
      clk_int <= not(clk_int);

    end loop;
  end process;

process
begin
  d_int <= '0';

  wait for 30 ns; d_int <= '1';
  wait for 30 ns; d_int <= '0';
  wait for 30 ns; d_int <= '1';
  wait for 30 ns; d_int <= '0';

  wait for 20 ns;
end process;
end behavior;    
