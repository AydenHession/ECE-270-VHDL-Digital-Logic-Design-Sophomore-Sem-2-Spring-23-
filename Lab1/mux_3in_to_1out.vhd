begin

mux: process(s,x,y)
begin

if(s = '0')then

m <= x;
else

m <= y;


end if;

end process;
