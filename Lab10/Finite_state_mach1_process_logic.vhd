begin

  flag <= '0'
  case (state) is

  when S0 =>
      if (input_ext = '1') then
        flag <= '0';
      elsif (input_ext = '0') then
        flag <= '1';
      end if;
  when S1 =>
      if (input_ext = '1') then
        flag <= '0';
      elsif (input_ext = '0') then
        flag <= '0';
      end if;
  when S2 =>
      if (unput_ext = '1') then
        flag <= '1';
      elsif (input_ext = '0') then
        flag <= '0';
      end if;
    when others =>
        flag <= '0';
end case;
end process
