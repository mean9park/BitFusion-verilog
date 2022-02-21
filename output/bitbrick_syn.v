/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : N-2017.09-SP3
// Date      : Fri Feb 18 17:55:27 2022
/////////////////////////////////////////////////////////////


module bitbrick ( clk, reset, x, y, sign_x, sign_y, p );
  input [1:0] x;
  input [1:0] y;
  output [5:0] p;
  input clk, reset, sign_x, sign_y;
  wire   n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37;

  INVX0_HVT U21 ( .A(n31), .Y(n26) );
  INVX0_HVT U22 ( .A(sign_x), .Y(n21) );
  INVX0_HVT U23 ( .A(n34), .Y(p[0]) );
  INVX0_HVT U24 ( .A(n28), .Y(n30) );
  NAND2X0_HVT U25 ( .A1(x[0]), .A2(y[0]), .Y(n34) );
  AND3X1_HVT U26 ( .A1(sign_y), .A2(n34), .A3(x[0]), .Y(n22) );
  FADDX1_HVT U27 ( .A(n22), .B(sign_y), .CI(n21), .S(n23) );
  AND2X1_HVT U28 ( .A1(y[1]), .A2(x[1]), .Y(n37) );
  AND2X1_HVT U29 ( .A1(n23), .A2(n37), .Y(n27) );
  NAND3X0_HVT U30 ( .A1(x[1]), .A2(sign_x), .A3(y[0]), .Y(n32) );
  AND3X1_HVT U31 ( .A1(sign_y), .A2(y[1]), .A3(x[0]), .Y(n25) );
  NAND3X0_HVT U32 ( .A1(x[1]), .A2(y[1]), .A3(n34), .Y(n24) );
  HADDX1_HVT U33 ( .A0(n25), .B0(n24), .SO(n33) );
  NAND2X0_HVT U34 ( .A1(n32), .A2(n33), .Y(n31) );
  NAND2X0_HVT U35 ( .A1(n27), .A2(n26), .Y(n28) );
  OA21X1_HVT U36 ( .A1(n27), .A2(n26), .A3(n28), .Y(p[3]) );
  INVX0_HVT U37 ( .A(sign_y), .Y(n29) );
  NAND2X0_HVT U38 ( .A1(n30), .A2(n29), .Y(p[4]) );
  INVX0_HVT U39 ( .A(p[4]), .Y(p[5]) );
  OA21X1_HVT U40 ( .A1(n33), .A2(n32), .A3(n31), .Y(p[2]) );
  NAND2X0_HVT U41 ( .A1(y[1]), .A2(x[0]), .Y(n36) );
  NAND2X0_HVT U42 ( .A1(x[1]), .A2(y[0]), .Y(n35) );
  AOI22X1_HVT U43 ( .A1(n37), .A2(p[0]), .A3(n36), .A4(n35), .Y(p[1]) );
endmodule

