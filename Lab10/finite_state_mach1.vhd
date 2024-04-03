if rising_edge(clk) then

  if (reset = '1') then

    else
      state <= next_state;
    end if;
  end process;

OUTPUT_DECODE : process (state, input_ext)      
