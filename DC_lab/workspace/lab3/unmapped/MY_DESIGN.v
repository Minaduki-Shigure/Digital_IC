/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri May 22 15:53:03 2020
/////////////////////////////////////////////////////////////


module MY_DESIGN ( Cin1, Cin2, Cout, data1, data2, sel, clk, out1, out2, out3
 );
  input [4:0] Cin1;
  input [4:0] Cin2;
  output [4:0] Cout;
  input [4:0] data1;
  input [4:0] data2;
  output [4:0] out1;
  output [4:0] out2;
  output [4:0] out3;
  input sel, clk;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14,
         \intadd_0/n3 , \intadd_0/n2 , \intadd_0/n1 , \intadd_1/CI ,
         \intadd_1/n3 , \intadd_1/n2 , \intadd_1/n1 , \intadd_2/B[2] ,
         \intadd_2/B[1] , \intadd_2/B[0] , \intadd_2/CI , \intadd_2/n3 ,
         \intadd_2/n2 , \intadd_2/n1 , n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58;
  wire   [4:0] arth_o;
  wire   [4:0] R1;
  wire   [4:0] R2;
  wire   [4:0] R3;
  wire   [4:0] R4;
  assign Cout[0] = Cin2[0];
  assign out1[0] = 1'b0;

  dfnrq1 \R4_reg[4]  ( .D(N14), .CP(clk), .Q(R4[4]) );
  dfnrq1 \R4_reg[3]  ( .D(N13), .CP(clk), .Q(R4[3]) );
  dfnrq1 \R4_reg[2]  ( .D(N12), .CP(clk), .Q(R4[2]) );
  dfnrq1 \R4_reg[1]  ( .D(N11), .CP(clk), .Q(R4[1]) );
  dfnrq1 \R4_reg[0]  ( .D(N10), .CP(clk), .Q(R4[0]) );
  dfnrq1 \R2_reg[4]  ( .D(N0), .CP(clk), .Q(R2[4]) );
  dfnrq1 \R2_reg[3]  ( .D(N1), .CP(clk), .Q(R2[3]) );
  dfnrq1 \R2_reg[2]  ( .D(N2), .CP(clk), .Q(R2[2]) );
  dfnrq1 \R2_reg[1]  ( .D(N3), .CP(clk), .Q(R2[1]) );
  dfnrq1 \R2_reg[0]  ( .D(N4), .CP(clk), .Q(R2[0]) );
  dfnrq1 \R1_reg[4]  ( .D(arth_o[4]), .CP(clk), .Q(R1[4]) );
  dfnrq1 \R1_reg[3]  ( .D(arth_o[3]), .CP(clk), .Q(R1[3]) );
  dfnrq1 \R1_reg[2]  ( .D(arth_o[2]), .CP(clk), .Q(R1[2]) );
  dfnrq1 \R1_reg[1]  ( .D(arth_o[1]), .CP(clk), .Q(R1[1]) );
  dfnrq1 \R1_reg[0]  ( .D(N5), .CP(clk), .Q(R1[0]) );
  dfnrq1 \R3_reg[4]  ( .D(N9), .CP(clk), .Q(R3[4]) );
  dfnrq1 \R3_reg[2]  ( .D(N7), .CP(clk), .Q(R3[2]) );
  dfnrq1 \R3_reg[3]  ( .D(N8), .CP(clk), .Q(R3[3]) );
  dfnrq1 \R3_reg[1]  ( .D(N6), .CP(clk), .Q(R3[1]) );
  ad01d0 \intadd_1/U2  ( .A(R3[3]), .B(R2[3]), .CI(\intadd_1/n2 ), .CO(
        \intadd_1/n1 ), .S(N13) );
  ad01d0 \intadd_0/U2  ( .A(R3[3]), .B(R1[3]), .CI(\intadd_0/n2 ), .CO(
        \intadd_0/n1 ), .S(out1[3]) );
  ad01d0 \intadd_1/U3  ( .A(R3[2]), .B(R2[2]), .CI(\intadd_1/n3 ), .CO(
        \intadd_1/n2 ), .S(N12) );
  ad01d0 \intadd_1/U4  ( .A(R3[1]), .B(R2[1]), .CI(\intadd_1/CI ), .CO(
        \intadd_1/n3 ), .S(N11) );
  ad01d0 \intadd_2/U4  ( .A(\intadd_2/B[0] ), .B(Cin1[1]), .CI(\intadd_2/CI ), 
        .CO(\intadd_2/n3 ), .S(Cout[1]) );
  ad01d0 \intadd_0/U3  ( .A(R3[2]), .B(R1[2]), .CI(\intadd_0/n3 ), .CO(
        \intadd_0/n2 ), .S(out1[2]) );
  ad01d0 \intadd_2/U3  ( .A(\intadd_2/B[1] ), .B(Cin1[2]), .CI(\intadd_2/n3 ), 
        .CO(\intadd_2/n2 ), .S(Cout[2]) );
  ad01d0 \intadd_2/U2  ( .A(\intadd_2/B[2] ), .B(Cin1[3]), .CI(\intadd_2/n2 ), 
        .CO(\intadd_2/n1 ), .S(Cout[3]) );
  ad01d0 \intadd_0/U4  ( .A(R3[1]), .B(R1[1]), .CI(R1[0]), .CO(\intadd_0/n3 ), 
        .S(out1[1]) );
  cg01d0 U20 ( .A(data1[1]), .B(data2[1]), .CI(N4), .CO(n38) );
  cg01d0 U21 ( .A(data1[2]), .B(data2[2]), .CI(n38), .CO(n32) );
  inv0d0 U22 ( .I(Cin2[0]), .ZN(n57) );
  an02d0 U23 ( .A1(Cin1[0]), .A2(Cin2[0]), .Z(n23) );
  cg01d0 U24 ( .A(data2[1]), .B(n49), .CI(n5), .CO(n41) );
  inv0d0 U25 ( .I(data1[1]), .ZN(n5) );
  cg01d0 U26 ( .A(data2[2]), .B(n41), .CI(n6), .CO(n45) );
  inv0d0 U27 ( .I(data1[2]), .ZN(n6) );
  inv0d0 U28 ( .I(n32), .ZN(n31) );
  inv0d0 U29 ( .I(n35), .ZN(N4) );
  an02d0 U30 ( .A1(data1[1]), .A2(data2[1]), .Z(N3) );
  cg01d0 U31 ( .A(Cin2[2]), .B(n25), .CI(n14), .CO(n16) );
  inv0d0 U32 ( .I(Cin1[2]), .ZN(n14) );
  nr02d0 U33 ( .A1(out3[0]), .A2(n29), .ZN(n53) );
  cg01d0 U34 ( .A(Cin2[1]), .B(n22), .CI(n13), .CO(n25) );
  inv0d0 U35 ( .I(Cin1[1]), .ZN(n13) );
  cg01d0 U36 ( .A(Cin2[1]), .B(Cin1[1]), .CI(n23), .CO(n26) );
  cg01d0 U37 ( .A(Cin2[2]), .B(Cin1[2]), .CI(n26), .CO(n15) );
  inv0d0 U38 ( .I(data2[0]), .ZN(n56) );
  inv0d0 U39 ( .I(sel), .ZN(n17) );
  cg01d0 U40 ( .A(data2[3]), .B(n45), .CI(n7), .CO(n9) );
  inv0d0 U41 ( .I(data1[3]), .ZN(n7) );
  inv0d0 U42 ( .I(R1[0]), .ZN(n58) );
  an02d0 U43 ( .A1(Cin1[0]), .A2(n57), .Z(\intadd_2/CI ) );
  inv0d0 U44 ( .I(n38), .ZN(n37) );
  cg01d0 U45 ( .A(data1[3]), .B(data2[3]), .CI(n32), .CO(n4) );
  inv0d0 U46 ( .I(n45), .ZN(n44) );
  an02d0 U47 ( .A1(data1[2]), .A2(data2[2]), .Z(N2) );
  an02d0 U48 ( .A1(data1[3]), .A2(data2[3]), .Z(N1) );
  an02d0 U49 ( .A1(data2[4]), .A2(data1[4]), .Z(N0) );
  an02d0 U50 ( .A1(R1[0]), .A2(R2[0]), .Z(\intadd_1/CI ) );
  nd02d0 U51 ( .A1(data2[0]), .A2(data1[0]), .ZN(n35) );
  nr02d0 U52 ( .A1(R4[0]), .A2(n58), .ZN(out3[0]) );
  nr02d0 U53 ( .A1(data2[4]), .A2(data1[4]), .ZN(n3) );
  nr02d0 U54 ( .A1(N0), .A2(n3), .ZN(n10) );
  xr02d1 U55 ( .A1(n10), .A2(n4), .Z(N9) );
  nd02d0 U56 ( .A1(n17), .A2(N9), .ZN(n12) );
  nr02d0 U57 ( .A1(data1[0]), .A2(n56), .ZN(n49) );
  nr02d0 U58 ( .A1(n10), .A2(n9), .ZN(n8) );
  aor211d1 U59 ( .C1(n10), .C2(n9), .A(n17), .B(n8), .Z(n11) );
  nd02d0 U60 ( .A1(n12), .A2(n11), .ZN(arth_o[4]) );
  nr02d0 U61 ( .A1(Cin1[0]), .A2(n57), .ZN(n22) );
  mx02d0 U62 ( .I0(n15), .I1(n16), .S(sel), .Z(n28) );
  ora211d1 U63 ( .C1(Cin2[3]), .C2(n15), .A(Cin1[3]), .B(n17), .Z(n20) );
  nr02d0 U64 ( .A1(Cin2[3]), .A2(n16), .ZN(n18) );
  nr03d0 U65 ( .A1(n18), .A2(n17), .A3(Cin1[3]), .ZN(n19) );
  aor211d1 U66 ( .C1(n28), .C2(Cin2[3]), .A(n20), .B(n19), .Z(n21) );
  xr03d1 U67 ( .A1(Cin2[4]), .A2(\intadd_2/n1 ), .A3(n21), .Z(Cout[4]) );
  mx02d0 U68 ( .I0(n23), .I1(n22), .S(sel), .Z(n24) );
  xr03d1 U69 ( .A1(Cin2[1]), .A2(Cin1[1]), .A3(n24), .Z(\intadd_2/B[0] ) );
  mx02d0 U70 ( .I0(n26), .I1(n25), .S(sel), .Z(n27) );
  xr03d1 U71 ( .A1(Cin2[2]), .A2(Cin1[2]), .A3(n27), .Z(\intadd_2/B[1] ) );
  xr03d1 U72 ( .A1(Cin1[3]), .A2(Cin2[3]), .A3(n28), .Z(\intadd_2/B[2] ) );
  an02d0 U73 ( .A1(R4[2]), .A2(R3[2]), .Z(out2[2]) );
  an02d0 U74 ( .A1(R4[3]), .A2(R3[3]), .Z(out2[3]) );
  an02d0 U75 ( .A1(R4[1]), .A2(R3[1]), .Z(out2[1]) );
  an02d0 U76 ( .A1(R3[4]), .A2(R4[4]), .Z(out2[4]) );
  an02d0 U77 ( .A1(R4[0]), .A2(R1[0]), .Z(out2[0]) );
  xr03d1 U78 ( .A1(R3[4]), .A2(R1[4]), .A3(\intadd_0/n1 ), .Z(out1[4]) );
  an12d1 U79 ( .A2(R3[1]), .A1(R4[1]), .Z(n29) );
  aoi21d1 U80 ( .B1(n29), .B2(out3[0]), .A(n53), .ZN(out3[1]) );
  nr02d0 U81 ( .A1(data1[3]), .A2(data2[3]), .ZN(n30) );
  nr02d0 U82 ( .A1(n30), .A2(N1), .ZN(n43) );
  mx02d0 U83 ( .I0(n32), .I1(n31), .S(n43), .Z(N8) );
  an12d1 U84 ( .A2(R3[3]), .A1(R4[3]), .Z(n33) );
  nd12d0 U85 ( .A1(R4[2]), .A2(R3[2]), .ZN(n52) );
  nd02d0 U86 ( .A1(n53), .A2(n52), .ZN(n51) );
  nr02d0 U87 ( .A1(n33), .A2(n51), .ZN(n54) );
  aoi21d1 U88 ( .B1(n33), .B2(n51), .A(n54), .ZN(out3[3]) );
  nr02d0 U89 ( .A1(data1[1]), .A2(data2[1]), .ZN(n34) );
  nr02d0 U90 ( .A1(n34), .A2(N3), .ZN(n47) );
  mx02d0 U91 ( .I0(N4), .I1(n35), .S(n47), .Z(N6) );
  nr02d0 U92 ( .A1(data1[2]), .A2(data2[2]), .ZN(n36) );
  nr02d0 U93 ( .A1(n36), .A2(N2), .ZN(n39) );
  mx02d0 U94 ( .I0(n38), .I1(n37), .S(n39), .Z(N7) );
  inv0d0 U95 ( .I(n41), .ZN(n40) );
  mx02d0 U96 ( .I0(n41), .I1(n40), .S(n39), .Z(n42) );
  mx02d0 U97 ( .I0(N7), .I1(n42), .S(sel), .Z(arth_o[2]) );
  mx02d0 U98 ( .I0(n45), .I1(n44), .S(n43), .Z(n46) );
  mx02d0 U99 ( .I0(N8), .I1(n46), .S(sel), .Z(arth_o[3]) );
  inv0d0 U100 ( .I(n49), .ZN(n48) );
  mx02d0 U101 ( .I0(n49), .I1(n48), .S(n47), .Z(n50) );
  mx02d0 U102 ( .I0(N6), .I1(n50), .S(sel), .Z(arth_o[1]) );
  ora21d1 U103 ( .B1(n53), .B2(n52), .A(n51), .Z(out3[2]) );
  an12d1 U104 ( .A2(R3[4]), .A1(R4[4]), .Z(n55) );
  xn02d1 U105 ( .A1(n55), .A2(n54), .ZN(out3[4]) );
  mx02d0 U106 ( .I0(data2[0]), .I1(n56), .S(data1[0]), .Z(N5) );
  mx02d0 U107 ( .I0(R1[0]), .I1(n58), .S(R2[0]), .Z(N10) );
  xr03d1 U108 ( .A1(R3[4]), .A2(\intadd_1/n1 ), .A3(R2[4]), .Z(N14) );
endmodule

