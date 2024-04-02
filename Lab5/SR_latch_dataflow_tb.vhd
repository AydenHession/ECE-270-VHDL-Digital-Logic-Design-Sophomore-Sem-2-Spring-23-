signal r_int: STD_LOGIC := '0';
signal s_int: STD_LOGIC := '0';
signal q_int: STD_LOGIC := '0';
signal q_bar_int: STD_LOGIC := '0';

begin
  uut: SR_latch_dataflow PORT MAP (
    r => r_int,
    s => s_int,
    q => q_int,
    q_bar => q_bar_int
  );

begin
    s_int <= '0'; r_int <= '0';

    wait for 10 ns; s_int <= '1';
    wait for 10 ns; s_int <= '0';
    wait for 10 ns; r_int <= '1';
    wait for 10 ns; s_int <= '1'; r_int <= '0';
    wait for 10 ns; s_int <= '0'; r_int <= '1';
    wait for 10 ns; s_int <= '1'; r_int <= '0';
    wait for 10 ns; s_int <= '0'; r_int <= '1';
    wait for 10 ns; s_int <= '1'; r_int <= '1';
    
    wait for 20 ns;

  end process;
end behavior;      
