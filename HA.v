module HA(
    input a, b,

    output sum, cout
);

    /* xor (sum, a, b); */
    /* and (cout, a, b); */

    assign sum = a ^ b;
    assign cout = a & b;

endmodule
