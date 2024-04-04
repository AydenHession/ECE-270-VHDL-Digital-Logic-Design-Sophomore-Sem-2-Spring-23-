NEXT_STATE_DECODE : process (state,ain)
begin
next_state <= S0;
case (state) is

      when S0 =>
      if (ain = "00" or ain = "01) then
          next_state <= S0;
      elsif (ain = "11" or ain = "10") then
          next_state <= S1;
      end if;

      when S1 =>
      if (ain = "11" or ain = "10") then
          next_state <= S1;
      elsif (ain = "01") then
          next_state <= S0;
      elsif (ain = "00") then
          next_state <= S2;
      end if;

      when S2 =>
      if (ain = "00") then
          next_state <= S0;
      elsif (ain = "11" or ain = "00") then
          next_state <= S2;
      elsif (ain = "10" or ain = "01") then
          next_state <= S3;
      end if;


      when S3 =>
      if (ain = "10" or ain = "01") then
          next_state <= S3;
      elsif (ain = "10") then
          next_state <= S1;
      elsif (ain = "00") then
          next_state <= S0;
      elsif (ain = "11") then
          next_state <= S2;
      end if;    


      when others =>
          next_state <= S0;

end case;
end process;
end Behavioral;
