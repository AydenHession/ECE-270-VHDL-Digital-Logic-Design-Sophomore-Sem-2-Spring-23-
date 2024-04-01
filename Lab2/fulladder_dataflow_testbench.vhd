begin
  F0: fulladder_dataflow PORT MAP (
    a => a(0),
    b => b(0),
    cin => cin, 
    s => s(0),
    cout => cout_i(0)
  );

  F1: fulladder_dataflow PORT MAP (
    a => a(1),
    b => b(1),
    cin => cout_i(0), 
    s => s(1),
    cout => cout_i(1)
  );

  F2: fulladder_dataflow PORT MAP (
    a => a(2),
    b => b(2),
    cin => cout_i(1), 
    s => s(2),
    cout => cout_i(2)
  );

  F3: fulladder_dataflow PORT MAP (
    a => a(3),
    b => b(3),
    cin => cout_i(2), 
    s => s(3),
    cout => cout_i(3)
  );

 cout <= cout_i(3);

end behavior
