module tt_um_adder (input clk, 
                    input rst_n,
                    input ena,
                    input a(ui_in[0]), 
                    input b(ui_in[1]), 
                    input c(ui_in[2]), 
                    input d(ui_in[3]),
                    output v(uo_out[0]), 
                    output w(uo_out[1]), 
                    output x(uo_out[2]), 
                    output y(uo_out[3]), 
                    output z(uo_out[4]),
                   );

    assign v =  ~a&~b&~c&~d ;

    assign w =  ~a&~b&~c&d | ~a&~b&c&~d | ~a&b&~c&~d | a&~b&~c&~d ;

    assign x =  a&b&~c&~d | a&~b&c&~d | a&~b&~c&d | ~a&b&c&~d | ~a&b&~c&d| ~a&~b&c&d ;

    assign y =  ~a&b&c&d | a&~b&c&d | a&b&~c&d | a&b&c&~d ;

    assign z =  a&b&c&d 
          ;

endmodule
