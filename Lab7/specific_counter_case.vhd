process(clk)
begin
if (reset = '1') then
count_int <= "000";
elsif rising_edge(clk) then
if (emable = '1') then
case (count_int) is
when "000" => count_int <= "001";
when "001" => count_int <= "011";
when "011" => count_int <= "101";
when "101" => count_int <= "111";
when "111" => count_int <= "010";
when "010" => count_int <= "000";
when others => count_int <= "111";
end case;
end if;
else
count_int <= count_int;
end if;
end process;


end behavior;
