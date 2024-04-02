Architecture behavior of gray_code_case Is


begin
    if (enable = '1') then
          invalid <= '0';

      case bcd is
          when "0000" => gray_code <= "0000";
          when "0001" => gray_code <= "0001";
          when "0010" => gray_code <= "0011";
          when "0011" => gray_code <= "0010";
          when "0100" => gray_code <= "0110";
          when "0101" => gray_code <= "1110";
          when "0110" => gray_code <= "1010";
          when "0111" => gray_code <= "1011";
          when "1000" => gray_code <= "1001";
          when others => gray_code <= "0000";

          invalid <= '1'
        end case;
      else
          invalid <= '1';
          gray_code <= "0000";

      end if;
    end process;
end behavior;
