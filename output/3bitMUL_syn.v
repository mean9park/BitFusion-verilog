/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : N-2017.09-SP3
// Date      : Fri Feb 18 17:48:20 2022
/////////////////////////////////////////////////////////////


module signed_3bit_MUL ( in_x, in_y, p );
  input [2:0] in_x;
  input [2:0] in_y;
  output [5:0] p;
  wire   N0, N1, N2, N3;
  tri   and_2;
  tri   nand_1;
  tri   and_3;
  tri   and_4;
  tri   nand_2;
  tri   nand_3;
  tri   nand_4;
  tri   and_5;
  tri   c_1;
  tri   s_1;
  tri   c_2;
  tri   s_2;
  tri   c_3;
  tri   c_4;
  tri   c_5;

  HA HA_1 ( .a(and_2), .b(and_3), .sum(p[1]), .cout(c_1) );
  FA FA_1 ( .a(and_4), .b(nand_3), .cin(c_1), .sum(s_1), .cout(c_2) );
  FA FA_2 ( .a(nand_2), .b(nand_4), .cin(c_2), .sum(s_2), .cout(c_3) );
  HA HA_2 ( .a(nand_1), .b(s_1), .sum(p[2]), .cout(c_4) );
  HA HA_3 ( .a(s_2), .b(c_4), .sum(p[3]), .cout(c_5) );
  FA FA_3 ( .a(and_5), .b(c_3), .cin(c_5), .sum(p[4]), .cout(p[5]) );
  AND2X1_HVT U6 ( .A1(in_x[1]), .A2(in_y[0]), .Y(and_2) );
  INVX0_HVT U7 ( .A(N0), .Y(nand_1) );
  AND2X1_HVT U8 ( .A1(in_x[0]), .A2(in_y[1]), .Y(and_3) );
  AND2X1_HVT U9 ( .A1(in_x[1]), .A2(in_y[1]), .Y(and_4) );
  INVX0_HVT U10 ( .A(N1), .Y(nand_2) );
  INVX0_HVT U11 ( .A(N2), .Y(nand_3) );
  INVX0_HVT U12 ( .A(N3), .Y(nand_4) );
  AND2X1_HVT U13 ( .A1(in_x[2]), .A2(in_y[2]), .Y(and_5) );
  AND2X1_HVT U14 ( .A1(in_x[0]), .A2(in_y[0]), .Y(p[0]) );
  AND2X1_HVT U15 ( .A1(in_y[0]), .A2(in_x[2]), .Y(N0) );
  AND2X1_HVT U16 ( .A1(in_x[2]), .A2(in_y[1]), .Y(N1) );
  AND2X1_HVT U17 ( .A1(in_x[0]), .A2(in_y[2]), .Y(N2) );
  AND2X1_HVT U18 ( .A1(in_y[2]), .A2(in_x[1]), .Y(N3) );
endmodule

