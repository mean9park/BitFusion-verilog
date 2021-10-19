`timescale 1ns / 1ps

// [BitBrick]
//  input : x_0 x_1 (2bit) *   y_1 y_0 (2bit)
//  add sign and MUL (signed 3bit * 3bit)
//  output = p_5 p_4 p_3 p_2 p_1 p_0 (6bit)

module bitbrick(
    input clk,
    input reset,
    input [1:0] x, 
    input [1:0] y,
    input sign_x,
    input sign_y,
    output [5:0] p
    );

    wire [2:0] in_x;
    wire [2:0] in_y;
    
    assign in_x[1:0] = x[1:0];
    assign in_y[1:0] = y[1:0];
    assign in_x[2] = sign_x & x[1];
    assign in_y[2] = sign_y & y[1];
    
    signed_3bit_MUL MUL_3bit(.in_x(in_x), .in_y(in_y), .p(p));
        
endmodule

    
