module clk_5MHzz_clk_wiz

  (-- clock in and out ports

    output clk_out1,

    input reset,
    output locked,
    input clk_in1
    );

wire clk_in1_clk_5MHzz;
wire clk_in2_clk_5MHzz;
  IBUF clkin1_ibufg
    (.O (clk_in1_clk_5MHzz),
     .I (clk_in1));



    
