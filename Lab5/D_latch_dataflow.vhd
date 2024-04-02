library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

Entity D_latch_dataflow Is
port (
  d : in STD_LOGIC;
  enable : in STD_LOGIC;
  q : out STD_LOGIC;
  q_bar : out STD_LOGIC

 );
end D_latch_dataflow;

Architecture behavior of D_latch_dataflow Is

--add required signals here
  signal q_int : STD_LOGIC;
  signal q_bar_int : STD_LOGIC;


begin

  q_int <= (not(d) and enable) nor (q_bar_int);
  q_bar_int <= (d and enable) nor (q_int);
  q <= q_int;
  q_bar <= q_bar_int;

end behavior;
  
