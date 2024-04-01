begin
    y(0) <= not(x(2) or x(1) or x(0));

    y(1) <= not(x(2)) and not(x(1)) and x(0);
    y(2) <= not(x(2)) and x(1) and not(x(0));
    y(3) <= not(x(2)) and x(1) and x(0);
    y(4) <= x(2) and not(x(1)) and not(x(0));
    y(5) <= x(2) and not(x(1)) and x(0);
    y(6) <= x(2) and x(1) and not(x(0));
    y(7) <= x(2) and x(1) and x(0);
