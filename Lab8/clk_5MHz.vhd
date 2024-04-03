'timescale lps/lps

module clk_5MHz_clk_wiz

 (--clock in and out ports

   output clk_out1,

   input reset,
   output locked,
   input clk_inl
   );

wire clk_in1_clk_5MHz;
wire clk_in2_clk_5MHz;
IBUF clkinl_ibufg
  (.O (clk_inl_clk_5MHz),
   .I (clk_inl));


--clocking primitive

--instantiation of the MMCM PRIMITIVE
-- unused inputs are tied off
--unused outputs are labeled as unused as to not draw error

wire clk_in1_clk_5MHz;
wire clk_in2_clk_5MHz;
wire clk_in3_clk_5MHz;
wire clk_in4_clk_5MHz;
wire clk_in5_clk_5MHz;
wire clk_in6_clk_5MHz;
wire clk_in7_clk_5MHz;

wire [15:0] do_unused;
wire drdy_unused;
wire psdone_unused;
wire locked_int;
wire clkfbout_clk_5MHz;
wire clkfbout_buf_clk_5MHz;
wire clkfboutb_unused;
wire clkout0b_unused
wire clkout1_unused;
wire clkout1b_unused;
wire clkout2_unused;
