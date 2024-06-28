/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_example (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.
  assign uio_out = 0;
  assign uio_oe  = 0;

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, 1'b0};

    tt_um_adder top(
        .clk(clk),
        .reset(rst_n),
        .ena(ena),
        .[0]a(ui_in[0]),
        .[1]b(ui_in[1]),
        .[2]c(ui_in[2]),
        .[3]d(ui_in[3]),
        .[0]v(uo_out[0]),
        .[1]w(uo_out[1]),
        .[2]x(uo_out[2]),
        .[3]y(uo_out[3]),
        .[4]z(uo_out[4])
    );

endmodule
