library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VComponents.all;

Enitity SR_gated_latch_dataflow Is
port (
        r : in STD_LOGIC;
        s : in STD_LOGIC;
        enable : in STD_LOGIC;
        q : out STD_LOGIC;
        q_bar : out STD_LOGIC
  );
end SR_gated_latch_dataflow;

Architecture behavior of SR_gated_latch_dataflow Is

--signals

signal q_int : STD_LOGIC;
signal q_bar_int : STD_LOGIC;

begin


q_int <= (r and enable) nor(q_bar_int);
q_bar_int <= (s and enable) nor (q_int);
q <= q_int;
q_bar <= q_bar_int;

end behavior;
