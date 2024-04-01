Entity add_two_values    Is Port (
  Signal ain : in STD_LOGIC_VECTOR (3 downto 0);
  Signal bin : in STD_LOGIC_VECTOR (3 downto 0);
  Signal addition : out STD_LOGIC_VECTOR (4 downto 0)
);
end add_two_values;

Architecture behavior of add_two_values is 
  --defiing the internal signals 
  Signal ain_int : STD_LOGIC_VECTOR (4 downto 0);
  Signal bin_int : STD_LOGIC_VECTOR (4 downto 0);


  function add_two_values_function (signal ain_func, bin_func : in STD_LOGIC_VECTOR)
  return std_logic_vector is
      variable result : STD_LOGIC_VECTOR(4 downto 0);
  begin


        result := ain_func + bin_func;
      return result;
  end add_two_values_function;

begin




        ain_int <= "0" & ain;
        bin_int <= "0" & bin;

    process (ain_int, bin_int) begin
      addition <= add_two_values_function(ain_int, bin_int);
    end process;
end behavior;      
