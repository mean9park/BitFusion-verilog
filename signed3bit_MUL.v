`timescale 1ns / 1ps

module signed_3bit_MUL(
    input signed [2:0] in_x,
    input signed [2:0] in_y,
    output signed [5:0] p
);

    assign p = in_x * in_y;

endmodule