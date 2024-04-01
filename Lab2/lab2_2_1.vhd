U5: mux_2_to_1_behavior PORT MAP (
  x => v(1),
  y => v_out(1),
  s => z_int,
  m => m_out(1)
  );

U6: mux_2_to_1_behavior PORT MAP (
  x => v(0),
  y => v_out(0),
  s => z_int,
  m => m_out(0)
);

end behavior;  
