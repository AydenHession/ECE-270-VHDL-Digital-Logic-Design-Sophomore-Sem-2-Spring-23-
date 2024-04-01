library UNISIM;
use UNISIM.VComponents.all;

entity twobitmux_2_to_1 is
port  (x: in std_logic_vector(1 downto 0);
       y: in std_logic_vector(1 downto 0);
       s: in std_logic;
       m: out std_logic_vector(1 downto 0)
);
end twobitmux_2_to_1;

architecture dataflow of twobitmux_2_to_1 is
-- no need for internal signals


begin

      m(0) <= ((x(0) and (not s)) or (y(0) and (s)));
      m(1) <= ((x(1) and (not s)) or (y(1) and (s)));

end dataflow;  
