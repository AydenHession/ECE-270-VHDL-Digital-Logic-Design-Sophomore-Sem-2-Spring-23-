process (x(0), x(1), x(2), x(3), x(4), x(5), x(6), x(7))
  begin
    if (not(x(7)) = '1') then
      y_int <= "000";
    elsif (not(x(6)) = '1') then
       y_int <= "001";
    elsif (not(x(5)) = '1') then
       y_int <= "010";
    elsif (not(x(4)) = '1') then
       y_int <= "011";
    elsif (not(x(3)) = '1') then
       y_int <= "100";
    elsif (not(x(2)) = '1') then
       y_int <= "101";
    elsif (not(x(1)) = '1') then
       y_int <= "110";
    elsif (not(x(0)) = '1') then
       y_int <= "111";
    else
      y_int <= "111";
    end if;
 end process;     
