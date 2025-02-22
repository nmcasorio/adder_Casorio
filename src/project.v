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
        .rst_n(rst_n),
        .a(ui_in[0]),
        .b(ui_in[1]),
        .c(ui_in[2]),
        .d(ui_in[3]),
        .e(ui_in[4]),
        .f(ui_in[5]),
        .g(ui_in[6]),
        .h(ui_in[7]),
        .v(uo_out[0]),
        .w(uo_out[1]),
        .x(uo_out[2]),
        .y(uo_out[3]),
        .z(uo_out[4]),
        .i(uo_out[5]),
        .j(uo_out[6]),
        .k(uo_out[7])
    );

endmodule
