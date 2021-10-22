`timescale 1ns / 1ps

module signed_3bit_MUL(
    input [2:0] in_x,
    input [2:0] in_y,
    output [5:0] p
);

    /* assign p = in_x * in_y; */
    
    wire and_1, and_2, and_3, and_4, and_5;
    wire nand_1, nand_2, nand_3, nand_4;

    and (and_1, in_x[0], in_y[0]);
    and (and_2, in_x[1], in_y[0]);
    nand (nand_1, in_x[2], in_y[0]);

    and (and_3, in_x[0], in_y[1]);
    and (and_4, in_x[1], in_y[1]);
    nand (nand_2, in_x[2], in_y[1]);

    nand (nand_3, in_x[0], in_y[2]);
    nand (nand_4, in_x[1], in_y[2]);
    and (and_5, in_x[2], in_y[2]);

    wire c_1, c_2, c_3, c_4, c_5;
    wire s_1, s_2;

    assign p[0] = and_1;

    HA HA_1(.a(and_2), .b(and_3), .sum(p[1]), .cout(c_1));
    FA FA_1(.a(and_4), .b(nand_3), .cin(c_1), .sum(s_1), .cout(c_2));
    FA FA_2(.a(nand_2), .b(nand_4), .cin(c_2), .sum(s_2), .cout(c_3));

    HA HA_2(.a(nand_1), .b(s_1), .sum(p[2]), .cout(c_4));
    HA HA_3(.a(s_2), .b(c_4), .sum(p[3]), .cout(c_5));
    FA FA_3(.a(and_5), .b(c_3), .cin(c_5), .sum(p[4]), .cout(p[5]));


endmodule
