/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06
// Date      : Fri May 22 15:26:10 2020
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
  ad01d0 \intadd_0/U2  ( .A(R3[3]), .B(R1[3]), .CI(\intadd_0/n2 ), .CO(
        \intadd_0/n1 ), .S(out1[3]) );
  ad01d0 \intadd_1/U2  ( .A(R3[3]), .B(R2[3]), .CI(\intadd_1/n2 ), .CO(
        \intadd_1/n1 ), .S(N13) );
  ad01d0 \intadd_2/U4  ( .A(\intadd_2/B[0] ), .B(Cin1[1]), .CI(\intadd_2/CI ), 
        .CO(\intadd_2/n3 ), .S(Cout[1]) );
  ad01d0 \intadd_1/U3  ( .A(R3[2]), .B(R2[2]), .CI(\intadd_1/n3 ), .CO(
        \intadd_1/n2 ), .S(N12) );
  ad01d0 \intadd_1/U4  ( .A(R3[1]), .B(R2[1]), .CI(\intadd_1/CI ), .CO(
        \intadd_1/n3 ), .S(N11) );
  ad01d0 \intadd_2/U2  ( .A(\intadd_2/B[2] ), .B(Cin1[3]), .CI(\intadd_2/n2 ), 
        .CO(\intadd_2/n1 ), .S(Cout[3]) );
  ad01d0 \intadd_2/U3  ( .A(\intadd_2/B[1] ), .B(Cin1[2]), .CI(\intadd_2/n3 ), 
        .CO(\intadd_2/n2 ), .S(Cout[2]) );
  ad01d0 \intadd_0/U3  ( .A(R3[2]), .B(R1[2]), .CI(\intadd_0/n3 ), .CO(
        \intadd_0/n2 ), .S(out1[2]) );
  ad01d0 \intadd_0/U4  ( .A(R3[1]), .B(R1[1]), .CI(R1[0]), .CO(\intadd_0/n3 ), 
        .S(out1[1]) );
  cg01d0 U20 ( .A(data1[1]), .B(data2[1]), .CI(N4), .CO(n11) );
  cg01d0 U21 ( .A(data1[2]), .B(data2[2]), .CI(n11), .CO(n30) );
  cg01d0 U22 ( .A(Cin2[2]), .B(n44), .CI(n43), .CO(n46) );
  inv0d0 U23 ( .I(Cin1[2]), .ZN(n43) );
  cg01d0 U24 ( .A(Cin2[2]), .B(Cin1[2]), .CI(n42), .CO(n45) );
  cg01d0 U25 ( .A(data2[1]), .B(n19), .CI(n12), .CO(n23) );
  inv0d0 U26 ( .I(data1[1]), .ZN(n12) );
  cg01d0 U27 ( .A(data2[2]), .B(n23), .CI(n13), .CO(n33) );
  inv0d0 U28 ( .I(data1[2]), .ZN(n13) );
  an02d0 U29 ( .A1(Cin1[0]), .A2(n25), .Z(\intadd_2/CI ) );
  xr03d1 U30 ( .A1(Cin2[1]), .A2(Cin1[1]), .A3(n41), .Z(\intadd_2/B[0] ) );
  inv0d0 U31 ( .I(n30), .ZN(n6) );
  inv0d0 U32 ( .I(n11), .ZN(n10) );
  inv0d0 U33 ( .I(n8), .ZN(N4) );
  an02d0 U34 ( .A1(data1[1]), .A2(data2[1]), .Z(N3) );
  nd02d0 U35 ( .A1(n57), .A2(n56), .ZN(n55) );
  inv0d0 U36 ( .I(Cin2[0]), .ZN(n25) );
  an02d0 U37 ( .A1(Cin1[0]), .A2(Cin2[0]), .Z(n40) );
  cg01d0 U38 ( .A(Cin2[1]), .B(n39), .CI(n3), .CO(n44) );
  inv0d0 U39 ( .I(Cin1[1]), .ZN(n3) );
  cg01d0 U40 ( .A(Cin2[1]), .B(Cin1[1]), .CI(n40), .CO(n42) );
  inv0d0 U41 ( .I(data2[0]), .ZN(n26) );
  inv0d0 U42 ( .I(sel), .ZN(n47) );
  cg01d0 U43 ( .A(data2[3]), .B(n33), .CI(n32), .CO(n35) );
  inv0d0 U44 ( .I(data1[3]), .ZN(n32) );
  nd02d0 U45 ( .A1(data2[0]), .A2(data1[0]), .ZN(n8) );
  inv0d0 U46 ( .I(R1[0]), .ZN(n27) );
  xr03d1 U47 ( .A1(Cin1[3]), .A2(Cin2[3]), .A3(n51), .Z(\intadd_2/B[2] ) );
  cg01d0 U48 ( .A(data1[3]), .B(data2[3]), .CI(n30), .CO(n31) );
  inv0d0 U49 ( .I(n23), .ZN(n22) );
  inv0d0 U50 ( .I(n33), .ZN(n15) );
  an02d0 U51 ( .A1(data1[2]), .A2(data2[2]), .Z(N2) );
  an02d0 U52 ( .A1(data1[3]), .A2(data2[3]), .Z(N1) );
  an02d0 U53 ( .A1(data2[4]), .A2(data1[4]), .Z(N0) );
  an02d0 U54 ( .A1(R1[0]), .A2(R2[0]), .Z(\intadd_1/CI ) );
  nd02d0 U55 ( .A1(n47), .A2(N9), .ZN(n38) );
  nd02d0 U56 ( .A1(n38), .A2(n37), .ZN(arth_o[4]) );
  nr02d0 U57 ( .A1(Cin1[0]), .A2(n25), .ZN(n39) );
  mx02d0 U58 ( .I0(n42), .I1(n44), .S(sel), .Z(n4) );
  xr03d1 U59 ( .A1(Cin2[2]), .A2(Cin1[2]), .A3(n4), .Z(\intadd_2/B[1] ) );
  nr02d0 U60 ( .A1(data1[3]), .A2(data2[3]), .ZN(n5) );
  nr02d0 U61 ( .A1(n5), .A2(N1), .ZN(n14) );
  mx02d0 U62 ( .I0(n30), .I1(n6), .S(n14), .Z(N8) );
  nr02d0 U63 ( .A1(data1[1]), .A2(data2[1]), .ZN(n7) );
  nr02d0 U64 ( .A1(n7), .A2(N3), .ZN(n17) );
  mx02d0 U65 ( .I0(N4), .I1(n8), .S(n17), .Z(N6) );
  nr02d0 U66 ( .A1(data1[2]), .A2(data2[2]), .ZN(n9) );
  nr02d0 U67 ( .A1(n9), .A2(N2), .ZN(n21) );
  mx02d0 U68 ( .I0(n11), .I1(n10), .S(n21), .Z(N7) );
  nr02d0 U69 ( .A1(data1[0]), .A2(n26), .ZN(n19) );
  mx02d0 U70 ( .I0(n33), .I1(n15), .S(n14), .Z(n16) );
  mx02d0 U71 ( .I0(N8), .I1(n16), .S(sel), .Z(arth_o[3]) );
  inv0d0 U72 ( .I(n19), .ZN(n18) );
  mx02d0 U73 ( .I0(n19), .I1(n18), .S(n17), .Z(n20) );
  mx02d0 U74 ( .I0(N6), .I1(n20), .S(sel), .Z(arth_o[1]) );
  mx02d0 U75 ( .I0(n23), .I1(n22), .S(n21), .Z(n24) );
  mx02d0 U76 ( .I0(N7), .I1(n24), .S(sel), .Z(arth_o[2]) );
  mx02d0 U77 ( .I0(data2[0]), .I1(n26), .S(data1[0]), .Z(N5) );
  mx02d0 U78 ( .I0(R1[0]), .I1(n27), .S(R2[0]), .Z(N10) );
  nr02d0 U79 ( .A1(R4[0]), .A2(n27), .ZN(out3[0]) );
  an12d1 U80 ( .A2(R3[4]), .A1(R4[4]), .Z(n28) );
  an12d1 U81 ( .A2(R3[3]), .A1(R4[3]), .Z(n54) );
  an12d1 U82 ( .A2(R3[1]), .A1(R4[1]), .Z(n58) );
  nr02d0 U83 ( .A1(out3[0]), .A2(n58), .ZN(n57) );
  nd12d0 U84 ( .A1(R4[2]), .A2(R3[2]), .ZN(n56) );
  nr02d0 U85 ( .A1(n54), .A2(n55), .ZN(n53) );
  xn02d1 U86 ( .A1(n28), .A2(n53), .ZN(out3[4]) );
  nr02d0 U87 ( .A1(data2[4]), .A2(data1[4]), .ZN(n29) );
  nr02d0 U88 ( .A1(N0), .A2(n29), .ZN(n36) );
  xr02d1 U89 ( .A1(n36), .A2(n31), .Z(N9) );
  nr02d0 U90 ( .A1(n36), .A2(n35), .ZN(n34) );
  aor211d1 U91 ( .C1(n36), .C2(n35), .A(n47), .B(n34), .Z(n37) );
  mx02d0 U92 ( .I0(n40), .I1(n39), .S(sel), .Z(n41) );
  mx02d0 U93 ( .I0(n45), .I1(n46), .S(sel), .Z(n51) );
  an02d0 U94 ( .A1(R3[4]), .A2(R4[4]), .Z(out2[4]) );
  an02d0 U95 ( .A1(R4[0]), .A2(R1[0]), .Z(out2[0]) );
  an02d0 U96 ( .A1(R4[2]), .A2(R3[2]), .Z(out2[2]) );
  an02d0 U97 ( .A1(R4[1]), .A2(R3[1]), .Z(out2[1]) );
  an02d0 U98 ( .A1(R4[3]), .A2(R3[3]), .Z(out2[3]) );
  ora211d1 U100 ( .C1(Cin2[3]), .C2(n45), .A(Cin1[3]), .B(n47), .Z(n50) );
  nr02d0 U101 ( .A1(Cin2[3]), .A2(n46), .ZN(n48) );
  nr03d0 U102 ( .A1(n48), .A2(n47), .A3(Cin1[3]), .ZN(n49) );
  aor211d1 U103 ( .C1(n51), .C2(Cin2[3]), .A(n50), .B(n49), .Z(n52) );
  xr03d1 U104 ( .A1(Cin2[4]), .A2(\intadd_2/n1 ), .A3(n52), .Z(Cout[4]) );
  xr03d1 U105 ( .A1(R3[4]), .A2(\intadd_1/n1 ), .A3(R2[4]), .Z(N14) );
  xr03d1 U106 ( .A1(R3[4]), .A2(R1[4]), .A3(\intadd_0/n1 ), .Z(out1[4]) );
  aoi21d1 U107 ( .B1(n54), .B2(n55), .A(n53), .ZN(out3[3]) );
  ora21d1 U108 ( .B1(n57), .B2(n56), .A(n55), .Z(out3[2]) );
  aoi21d1 U109 ( .B1(n58), .B2(out3[0]), .A(n57), .ZN(out3[1]) );
endmodule

