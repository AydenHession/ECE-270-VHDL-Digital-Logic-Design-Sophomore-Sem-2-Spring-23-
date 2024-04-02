process(clk)
begin

  if rising_edge(clk) then
      shift_int <= shift_int(1 downto 0) & shift_in;
  end if;

  shift_out <= shift_int(2);

end process;
end behavior;  
