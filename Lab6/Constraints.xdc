set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_IBUF]

set_property PACKAGE_PIN V10 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports shift_in]
set_property IOSTANDARD LVCMOS33 [get_ports shift_out]
set_property PACKAGE_PIN J15 [get_ports shift_in]
set_property PACKAGE_PIN H17 [get_ports shift_out]
