`timescale 1ns / 1ps

module bitbrick_shift(
    input [5:0] p,
    input [3:0] signal,
    output [15:0] product
);

//    output is 6bit and the maximum shift value is 4bit
//    But, in this architecture, output only needs 4 the LSB bit(2 MSB bit is just sign extension)
//    
//    shift here : 0 2 4. 
//
//    ex ) Not MSB part, input = 000, 001, 010, 011 -> possible output = 0 ~ +9 : 4bit is enough
//         MSB Part, input = 000, 001, 110, 111 -> possible output = -2 ~ +4 : 4bit is enough
//    Therefore, here, the number of bit of product is just 16bit which is 12bit(shift) + 4bit(output bit)

    //sign extension and shift it
    assign product = { {10{p[5]}}, p } << (signal);
    
endmodule
