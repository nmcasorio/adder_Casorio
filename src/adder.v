module tt_um_adder (input clk, 
                    input rst_n,
                    input a, 
                    input b, 
                    input c, 
                    input d,
                    input e,
                    input f,
                    input g,
                    input h,
                    output v, 
                    output w, 
                    output x, 
                    output y, 
                    output z,
                    output i,
                    output j,
                    output k
                   );

    
    assign v =  ~a&~b&~c&~d ;

    assign w =  ~a&~b&~c&d | ~a&~b&c&~d | ~a&b&~c&~d | a&~b&~c&~d ;

    assign x =  a&b&~c&~d | a&~b&c&~d | a&~b&~c&d | ~a&b&c&~d | ~a&b&~c&d| ~a&~b&c&d ;

    assign y =  ~a&b&c&d | a&~b&c&d | a&b&~c&d | a&b&c&~d ;

    assign z =  a&b&c&d ;

    assign i = e ;

    assign j = f ;

    assign k = g&h ;

  

endmodule
