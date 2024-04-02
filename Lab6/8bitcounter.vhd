count_out <= std_logic_vector(count);

process (clk)
begin
  if (clear_n = '0') then
    count <= "00000000";
    elsif rising_edge(clk) then
  if (enable = '1') then
    count <= count + 1;
  end if;
  end if;
end process;    
