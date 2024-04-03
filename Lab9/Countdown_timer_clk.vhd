---PORT MAP 

U1: clk_5MHz
  port map
    (
      CLK_IN1 => clkin,
    --clock out ports
      CLK_OUT1 => clk,
    --status and control signals
      RESET => reset,
      LOCKED => locked
      );

  U2: clk_divider_1hz_behavior
    port map
    (
      clk => clk,
      reset => reset,
      enable => enable,
      q => clk_1hz
      );

  U3 : c_counter_binary_0
    port map
      (
        clk => clk_1hz,
        ce => enable,
        sclr => cnt+reset,
        thresh0 => open,
        q => count_0
        );

  U5 : c_counter_binary_0
    port map
      (
        clk => clk_1hz,
        ce => thresh_min1,
        sclr => cnt_reset,
        thresh0 => open,
        q => count_2
      );

    u6 : c_counter_binary_1
      port map
        (
          clk => clk_1hz,
          ce => thresh_min2,
          sclr => cnt_reset,
          thresh0 => open,
          q => count_3
        );
  
