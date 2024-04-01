library UNISIM;
use UNISIM.VComponents.all;

Enitity add_two_values Is Port (
  Signal ain : in STD_LOGIC_VECTOR (3 downto 0);
  Signal bin : in STD_LOGIC_VECTOR (3 downto 0);
  Signal sum : out STD_LOGIC_VECTOR (4 downto 0)

);
end add_two_values;

Architecture behavior of add_to_values Is


  procedure add_two_values_procedure (
    --input and outpout signals
    Signal ain_int : in STD_LOGIC_VECTOR (3 downto 0);
    Signal bin_int : in STD_LOGIC_VECTOR (3 downto 0);
    SIGNAL total_out_int : STD_LOGIC_VECTOR (4 downto 0)

  )is

  begin
      total_out_int <= ('0' & ain_int) + ('0' & bin_int);
  end add_two_values_procedure;

  
begin

--assigning the value of total out
  process (ain, bin)
  begin
    --procedure below
    add_two_values_procedure(ain,bin,sum);
  end process;
end behavior;  
