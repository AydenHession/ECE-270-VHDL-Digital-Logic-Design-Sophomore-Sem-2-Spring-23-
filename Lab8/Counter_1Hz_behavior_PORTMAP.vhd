U2: clk_divider_1hz_behvavior PORT MAP (
  clk => clk,
  reset => reset,
  enable => enable,
  q => clk_1hz
  );

  --Architure body for the other ports
  U3: c_counter_binary_0 
    PORT MAP (
      clk => clk_1hz,
      ce => enable,
      sclr => cnt_reset,
      thresh0 => thresh0,
      q => m_lsn
      );

  U4: c_counter_binary_0 
    PORT MAP (
      clk => clk_1hz,
      ce => enable,
      sclr => cnt_reset,
      thresh0 => topen,
      q => m_msn
      );

 

  U7: clk_divider_about_500hz_refresh_rate_2ddisplay
    PORT MAP (
      clk => clk,
      rst => reset,
      an0 => an0,
      an1 => an1
      
      );

   U8: two_bcd_2_7segment_display
    PORT MAP (
      lsn => m_lsn,
      msn => m_msn,
      an => an0,
      seq => seq
      );
