--instantiation of and gates
and_1: and_gate port map (
a => x_outer(0),
b => s_outer,
c => a1
);

-- write the rest of three and gate ports
and_2: and_gate port map (
  a => x_outer(1),
  b => s_outer,
  c => a2
);  


and_3: and_gate port map (
  a => y_outer(0),
  b => select_comp,
  c => a3
);

and_4: and_gate port map (
  a => y_outer(1),
  b => select_comp,
  c => a4
);

--instantiation of or gates
or_1: or_gate port map (
  a => a1,
  b => a3,
  c => m_outer(0)
);
-- write or ports

or_2: or_gate port map (
  a => a2,
  b => a4,
  c => m_outer(1)
);  
