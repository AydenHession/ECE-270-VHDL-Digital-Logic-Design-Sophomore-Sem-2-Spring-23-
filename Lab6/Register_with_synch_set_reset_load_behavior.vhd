library UNISIM;
use UNISIM.VComponents.all;

Entity Register_with_synch_set_reset_load_behavior Is
port (
      d : in STD_LOGIC_VECTOR(3 downto 0);
      clk : in STD_LOGIC;
      set : in STD_LOGIC;
      rst : in STD_LOGIC;
      load : in STD_LOGIC;
      q : out STD_LOGIC_VECTOR(3 downto 0)
  );
end Register_with_synch_set_reset_load_behavior;

Architecture behavior of Register_with_synch_set_reset_load_behavior Is

begin

process(clk)
begin  
if rising_edge(clk) then
  if (rst = '1') then
    Q <= "0000";
  elsif (set = '1') then
    Q <= "1111";
  elsif (load = '1') then
    Q <= D;
  end if;
end if;

end process;
end behavior;  
