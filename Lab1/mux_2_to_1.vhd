library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

entity mux_2_to_1 is
port (x: in std_logic;
      y: in std_logci;
      s: in std_logic;
      m: out std_logic;
);
end mux_2_to_1

architecture dataflow of mux_2_to_1 is

begin

        m <= ((x and (not s)) or (s and y));

end dataflow;
