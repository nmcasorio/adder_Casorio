module tt_um_adder (input clk, 
                    input reset, 
                    input [0]a, 
                    input [1]b, 
                    input [2]c, 
                    input [3]d,
                    output [0]v, 
                    output [1]w, 
                    output [2]x, 
                    output [3]y, 
                    output [4]z
                   );

     assign [0]v =  ~[0]a&~[1]b&~[2]c&~[3]d ;

     assign [1]w =  ~[0]a&~[1]b&~[2]c&[3]d | ~[0]a&~[1]b&[2]c&~[3]d | ~[0]a&[1]b&~[2]c&~[3]d | [0]a&~[1]b&~[2]c&~[3]d ;

     assign [2]x =  [0]a&[1]b&~[2]c&~[3]d | [0]a&~[1]b&[2]c&~[3]d | [0]a&~[1]b&~[2]c&[3]d | ~[0]a&[1]b&[2]c&~[3]d | ~[0]a&[1]b&~[2]c&[3]d| ~[0]a&~[1]b&[2]c&[3]d ;

     assign [3]y =  ~[0]a&[1]b&[2]c&[3]d | [0]a&~[1]b&[2]c&[3]d | [0]a&[1]b&~[2]c&[3]d | [0]a&[1]b&[2]c&~[3]d ;

     assign [4]z =  [0]a&[1]b&[2]c&[3]d 
          ;

endmodule
