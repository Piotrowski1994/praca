// PLLL.v

// Generated using ACDS version 17.0 595

`timescale 1 ps / 1 ps
module PLLL (
		input  wire  clk_in_clk,  //  clk_in.clk
		output wire  clk_out_clk, // clk_out.clk
		input  wire  reset_reset  //   reset.reset
	);

	PLLL_altpll_0 altpll_0 (
		.clk                (clk_in_clk),  //       inclk_interface.clk
		.reset              (reset_reset), // inclk_interface_reset.reset
		.read               (),            //             pll_slave.read
		.write              (),            //                      .write
		.address            (),            //                      .address
		.readdata           (),            //                      .readdata
		.writedata          (),            //                      .writedata
		.c0                 (clk_out_clk), //                    c0.clk
		.areset             (),            //        areset_conduit.export
		.locked             (),            //        locked_conduit.export
		.scandone           (),            //           (terminated)
		.scandataout        (),            //           (terminated)
		.c1                 (),            //           (terminated)
		.c2                 (),            //           (terminated)
		.c3                 (),            //           (terminated)
		.c4                 (),            //           (terminated)
		.phasedone          (),            //           (terminated)
		.phasecounterselect (3'b000),      //           (terminated)
		.phaseupdown        (1'b0),        //           (terminated)
		.phasestep          (1'b0),        //           (terminated)
		.scanclk            (1'b0),        //           (terminated)
		.scanclkena         (1'b0),        //           (terminated)
		.scandata           (1'b0),        //           (terminated)
		.configupdate       (1'b0)         //           (terminated)
	);

endmodule
