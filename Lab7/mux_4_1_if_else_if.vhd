process(channel, sel)
begin
        if (sel = "00") then
            Q <= channel(0);
        elsif (sel = "01") then
            Q <= channel(1);
        elsif (sel = "10") then
            Q <= channel(2);
        else
            Q <= channel(3);
        end if;
end process;
end behavior;
