library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
us UNISIM.VComponents.all;

Entity D_ff_behavior Is
port (
      d : in STD_LOGIC;
      clk : in STD_LOGIC;
      q : out STD_LOGIC
  );
end D_ff_behavior;

Architecture behavior of D_ff_behavior IS


begin
process (clk)
begin

        if rising_edge(clk) then
            q <= d;
        end if;

end process;
end behavior;          
