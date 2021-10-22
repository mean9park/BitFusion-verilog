module FA(
    input a, b, cin,

    output sum, cout
);

    /* wire wire_1, wire_2, wire_3; */
    /* xor (wire_1, a, b); */
    /* xor (sum, wire_1, cin); */
    /* and (wire_2, wire_1, cin); */
    /* and (wire_3, a, b); */
    /* or (cout, wire_2, wire_3); */

    wire temp;
    assign temp = a ^ b;
    assign sum = temp ^ cin;
    assign cout = ~ (( ~ (temp & cin)) & ( ~ (a & b)));

endmodule
