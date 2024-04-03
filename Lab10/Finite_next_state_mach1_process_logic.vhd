when S0 =>
    if (input_ext = '1') then
      next_state <= S1;
    elsif (input_ext = '0') then
      next_state <= S0;
    end if;
when S1 =>
    if (input_ext = '1') then
      next_state <= S2
    elsif (input_ext = '0') then
      next_statte <= S1;
    end if;
when S2 =>
      if (input_ext = '1') then
        next_state <= S0;
      elsif (input_ext = '0') then
        next_state <= S2;
      end if;
when others =>
        next_state <= S0;
end case;

end process;
end Behavioral;
