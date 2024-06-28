module tt_um_adder (input clk, 
                    input reset_n,
                    input ena,
                    input a, 
                    input b, 
                    input c, 
                    input d,
                    output v, 
                    output w, 
                    output x, 
                    output y, 
                    output z,
                   );

    assign v =  ~a&~b&~c&~d ;

    assign w =  ~a&~b&~c&d | ~a&~b&c&~d | ~a&b&~c&~d | a&~b&~c&~d ;

    assign x =  a&b&~c&~d | a&~b&c&~d | a&~b&~c&d | ~a&b&c&~d | ~a&b&~c&d| ~a&~b&c&d ;

    assign y =  ~a&b&c&d | a&~b&c&d | a&b&~c&d | a&b&c&~d ;

    assign z =  a&b&c&d 
          ;

endmodule
