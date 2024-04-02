process (clk)
begin
    if rising_edge(clk) then
      if (rst = '1') then
        q <= "0000";
      elsif (load = '1') then
        q <= d;
      end if;
    end if;    
