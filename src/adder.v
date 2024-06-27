module threeadder (input a, b, c, d output v, w, x, y, z);

    assign v =  ~a&~b&~c&~d;

    assign w =  ~a&~b&~c&d
                ~a&~b&c&~d 
                ~a&b&~c&~d
                a&~b&~c&~d

    assign x =  a&b&~c&~d
                a&~b&c&~d
                a&~b&~c&d
                ~a&b&c&~d
                ~a&b&~c&d
                ~a&~b&c&d

    assign y =  ~a&b&c&d
                a&~b&c&d
                a&b&~c&d
                a&b&c&~d
    assign z =  a&b&c&d
    
endmodule
