library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

Entity SR_latch_dataflow Is
port (
        r : in STD_LOGIC;
        s : in STD_LOGIC;
        q : out STD_LOGIC;
        q_bar: out STD_LOGIC;
  );

 end SR_latch_dataflow;

Architecture behavior of SR_latch_dataflow Is

  --defining the required signals

  signal q_int: std_logic;
  signal q_bar_int: std_logic;


begin

  q_int <= r nor(q_bar_int);
  q_bar_int <= q_int nor(s);
  q <= q_int;
  q_bar <= q_bar_int;

end behavior;
