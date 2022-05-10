/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Tue May 10 16:53:23 2022
/////////////////////////////////////////////////////////////


module mulitiplier_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [7:1] carry;

  ad01d0 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ad01d0 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ad01d0 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ad01d0 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ad01d0 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ad01d0 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  an02d1 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  xr02d1 U2 ( .A1(B[7]), .A2(carry[7]), .Z(SUM[7]) );
  xr02d1 U3 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module mulitiplier_DW01_inc_2 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  ah01d0 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ah01d0 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ah01d0 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ah01d0 U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ah01d0 U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ah01d0 U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ah01d0 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ah01d0 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ah01d0 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ah01d0 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ah01d0 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ah01d0 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ah01d0 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ah01d0 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  inv0d1 U1 ( .I(carry[15]), .ZN(SUM[15]) );
  inv0d0 U2 ( .I(A[0]), .ZN(SUM[0]) );
endmodule


module mulitiplier_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ah01d0 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ah01d0 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ah01d0 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ah01d0 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ah01d0 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ah01d0 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  xr02d1 U1 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
  inv0d0 U2 ( .I(A[0]), .ZN(SUM[0]) );
endmodule


module mulitiplier_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ah01d0 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ah01d0 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ah01d0 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ah01d0 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ah01d0 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ah01d0 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  xr02d1 U1 ( .A1(carry[7]), .A2(A[7]), .Z(SUM[7]) );
  inv0d0 U2 ( .I(A[0]), .ZN(SUM[0]) );
endmodule


module mulitiplier ( A, B, M, clk, rst_n, start, done );
  input [7:0] A;
  input [7:0] B;
  output [15:0] M;
  input clk, rst_n, start;
  output done;
  wire   N14, N15, signed_bit, N35, N36, N37, N38, N39, N40, N41, N42, N60,
         N61, N62, N63, N64, N65, N66, N67, N78, N79, N80, N81, N82, N83, N84,
         N85, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124, N125,
         N126, N127, N128, N129, N130, n16, n17, n18, n19, n20, n21, n22, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n38, n39,
         n40, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, N113, N112, N111, N110, N109, N108, N107, N106, N105, N104,
         N103, N102, N101, N100, N34, N33, N32, N31, N30, N29, N28, N27, N59,
         N58, N57, N56, N55, N54, N53, N52, net1402, net1405, net1493, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n138, n141, n142, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n156, n157, n158, n160, n162, n164, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180;
  wire   [1:0] cur_state;
  wire   [1:0] next_state;
  wire   [2:0] count;
  wire   [15:0] product;
  wire   [7:0] multiplicand;
  assign done = net1493;

  lanlq1 \next_state_reg[0]  ( .D(N14), .EN(cur_state[1]), .Q(next_state[0])
         );
  lanlq1 \next_state_reg[1]  ( .D(N15), .EN(cur_state[1]), .Q(next_state[1])
         );
  dfcrn1 \product_reg[0]  ( .D(n73), .CP(n173), .CDN(n169), .QN(n39) );
  xr02d1 U4 ( .A1(B[7]), .A2(A[7]), .Z(n42) );
  aor22d1 U26 ( .A1(N67), .A2(n19), .B1(n20), .B2(product[7]), .Z(n18) );
  aor22d1 U28 ( .A1(n179), .A2(product[7]), .B1(N66), .B2(n19), .Z(n22) );
  aor22d1 U30 ( .A1(n179), .A2(product[6]), .B1(N65), .B2(n19), .Z(n24) );
  aor22d1 U32 ( .A1(n179), .A2(product[5]), .B1(N64), .B2(n19), .Z(n25) );
  aor22d1 U34 ( .A1(n179), .A2(product[4]), .B1(N63), .B2(n19), .Z(n26) );
  aor22d1 U36 ( .A1(n179), .A2(product[3]), .B1(N62), .B2(n19), .Z(n27) );
  aor22d1 U38 ( .A1(n179), .A2(product[2]), .B1(N61), .B2(n19), .Z(n28) );
  nr02d0 U45 ( .A1(n29), .A2(n177), .ZN(n16) );
  nr02d0 U47 ( .A1(n29), .A2(n39), .ZN(n17) );
  aor22d1 U49 ( .A1(n179), .A2(product[1]), .B1(N60), .B2(n19), .Z(n30) );
  nr02d0 U52 ( .A1(n179), .A2(n31), .ZN(n20) );
  nr02d0 U53 ( .A1(n178), .A2(B[7]), .ZN(n21) );
  aor222d1 U54 ( .A1(N36), .A2(n32), .B1(A[1]), .B2(n33), .C1(multiplicand[1]), 
        .C2(n178), .Z(n74) );
  aor222d1 U55 ( .A1(N37), .A2(n32), .B1(A[2]), .B2(n33), .C1(multiplicand[2]), 
        .C2(n178), .Z(n75) );
  aor222d1 U56 ( .A1(N38), .A2(n32), .B1(A[3]), .B2(n33), .C1(multiplicand[3]), 
        .C2(n178), .Z(n76) );
  aor222d1 U57 ( .A1(N39), .A2(n32), .B1(A[4]), .B2(n33), .C1(multiplicand[4]), 
        .C2(n178), .Z(n77) );
  aor222d1 U58 ( .A1(N40), .A2(n32), .B1(A[5]), .B2(n33), .C1(multiplicand[5]), 
        .C2(n178), .Z(n78) );
  aor222d1 U59 ( .A1(N41), .A2(n32), .B1(A[6]), .B2(n33), .C1(multiplicand[6]), 
        .C2(n178), .Z(n79) );
  aor22d1 U60 ( .A1(multiplicand[7]), .A2(n178), .B1(N42), .B2(n32), .Z(n80)
         );
  aor222d1 U61 ( .A1(N35), .A2(n32), .B1(A[0]), .B2(n33), .C1(multiplicand[0]), 
        .C2(n178), .Z(n81) );
  nr02d0 U62 ( .A1(n178), .A2(A[7]), .ZN(n33) );
  nr02d0 U65 ( .A1(next_state[0]), .A2(next_state[1]), .ZN(n31) );
  xn02d1 U66 ( .A1(count[2]), .A2(n34), .ZN(n82) );
  xn02d1 U68 ( .A1(count[1]), .A2(n36), .ZN(n83) );
  xn02d1 U71 ( .A1(count[0]), .A2(n29), .ZN(n84) );
  aor22d1 U74 ( .A1(start), .A2(n180), .B1(cur_state[0]), .B2(n38), .Z(N14) );
  an02d1 U50 ( .A1(B[7]), .A2(n31), .Z(n19) );
  an02d1 U64 ( .A1(A[7]), .A2(n31), .Z(n32) );
  an03d1 U73 ( .A1(cur_state[0]), .A2(n35), .A3(count[2]), .Z(N15) );
  an02d1 U76 ( .A1(count[1]), .A2(count[0]), .Z(n35) );
  mulitiplier_DW01_add_0 add_72 ( .A({1'b0, product[14:8]}), .B(multiplicand), 
        .CI(1'b0), .SUM({N85, N84, N83, N82, N81, N80, N79, N78}) );
  mulitiplier_DW01_inc_2 add_0_root_add_82_ni ( .A({1'b1, N100, N101, N102, 
        N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113, n39}), .SUM({N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, N120, N119, 
        N118, N117, N116, N115}) );
  mulitiplier_DW01_inc_0 add_0_root_add_61_ni ( .A({N27, N28, N29, N30, N31, 
        N32, N33, N34}), .SUM({N42, N41, N40, N39, N38, N37, N36, N35}) );
  mulitiplier_DW01_inc_1 add_0_root_add_63_ni ( .A({N52, N53, N54, N55, N56, 
        N57, N58, N59}), .SUM({N67, N66, N65, N64, N63, N62, N61, N60}) );
  decrq1 signed_bit_reg ( .D(n42), .ENN(n178), .CP(n172), .CDN(n171), .Q(
        signed_bit) );
  dfcrq1 \multiplicand_reg[7]  ( .D(n80), .CP(n175), .CDN(n170), .Q(
        multiplicand[7]) );
  dfcrq1 \count_reg[1]  ( .D(n83), .CP(n174), .CDN(n170), .Q(count[1]) );
  dfcrq1 \cur_state_reg[0]  ( .D(next_state[0]), .CP(n175), .CDN(n171), .Q(
        cur_state[0]) );
  dfcrq1 \multiplicand_reg[1]  ( .D(n74), .CP(n175), .CDN(n171), .Q(
        multiplicand[1]) );
  dfcrq1 \multiplicand_reg[2]  ( .D(n75), .CP(n175), .CDN(n171), .Q(
        multiplicand[2]) );
  dfcrq1 \multiplicand_reg[3]  ( .D(n76), .CP(n175), .CDN(n171), .Q(
        multiplicand[3]) );
  dfcrq1 \multiplicand_reg[4]  ( .D(n77), .CP(n175), .CDN(n171), .Q(
        multiplicand[4]) );
  dfcrq1 \multiplicand_reg[5]  ( .D(n78), .CP(n175), .CDN(n171), .Q(
        multiplicand[5]) );
  dfcrq1 \multiplicand_reg[6]  ( .D(n79), .CP(n175), .CDN(n171), .Q(
        multiplicand[6]) );
  dfcrq1 \count_reg[2]  ( .D(n82), .CP(n175), .CDN(n171), .Q(count[2]) );
  dfcrq1 \multiplicand_reg[0]  ( .D(n81), .CP(n174), .CDN(n170), .Q(
        multiplicand[0]) );
  dfcrq1 \count_reg[0]  ( .D(n84), .CP(n172), .CDN(n168), .Q(count[0]) );
  dfcrq1 \product_reg[7]  ( .D(n59), .CP(n173), .CDN(n169), .Q(product[7]) );
  dfcrq1 \product_reg[6]  ( .D(n60), .CP(n173), .CDN(n169), .Q(product[6]) );
  dfcrq1 \product_reg[5]  ( .D(n61), .CP(n173), .CDN(n169), .Q(product[5]) );
  dfcrq1 \product_reg[4]  ( .D(n62), .CP(n173), .CDN(n168), .Q(product[4]) );
  dfcrq1 \product_reg[3]  ( .D(n63), .CP(n172), .CDN(n168), .Q(product[3]) );
  dfcrq1 \product_reg[2]  ( .D(n64), .CP(n172), .CDN(n168), .Q(product[2]) );
  dfcrq1 \product_reg[1]  ( .D(n65), .CP(n172), .CDN(n168), .Q(product[1]) );
  dfcrq1 \product_reg[14]  ( .D(n72), .CP(n174), .CDN(n170), .Q(product[14])
         );
  dfcrq1 \product_reg[13]  ( .D(n71), .CP(n174), .CDN(n170), .Q(product[13])
         );
  dfcrq1 \product_reg[12]  ( .D(n70), .CP(n174), .CDN(n170), .Q(product[12])
         );
  dfcrq1 \product_reg[11]  ( .D(n69), .CP(n174), .CDN(n170), .Q(product[11])
         );
  dfcrq1 \product_reg[10]  ( .D(n68), .CP(n174), .CDN(n170), .Q(product[10])
         );
  dfcrq1 \product_reg[9]  ( .D(n67), .CP(n174), .CDN(n170), .Q(product[9]) );
  dfcrq1 \product_reg[8]  ( .D(n66), .CP(n174), .CDN(n169), .Q(product[8]) );
  dfcrq1 \cur_state_reg[1]  ( .D(next_state[1]), .CP(n175), .CDN(n171), .Q(
        cur_state[1]) );
  dfcrb2 \M_reg[6]  ( .D(n52), .CP(n172), .CDN(n168), .Q(n104), .QN(n132) );
  dfcrb2 \M_reg[5]  ( .D(n53), .CP(n172), .CDN(n168), .Q(n103), .QN(n130) );
  dfcrb2 \M_reg[4]  ( .D(n54), .CP(n172), .CDN(n168), .Q(n102), .QN(n128) );
  dfcrb2 \M_reg[3]  ( .D(n55), .CP(n172), .CDN(n168), .Q(n101), .QN(n126) );
  dfcrb2 \M_reg[15]  ( .D(n43), .CP(n174), .CDN(n170), .Q(n98), .QN(n124) );
  dfcrb2 \M_reg[1]  ( .D(n57), .CP(n172), .CDN(n168), .Q(n99), .QN(n122) );
  dfcrb2 \M_reg[13]  ( .D(n45), .CP(n173), .CDN(n169), .Q(n96), .QN(n120) );
  dfcrb2 \M_reg[12]  ( .D(n46), .CP(n173), .CDN(n169), .Q(n95), .QN(n118) );
  dfcrb2 \M_reg[11]  ( .D(n47), .CP(n173), .CDN(n169), .Q(n94), .QN(n116) );
  dfcrb2 \M_reg[2]  ( .D(n56), .CP(n172), .CDN(n168), .Q(n100), .QN(n114) );
  dfcrb2 \M_reg[10]  ( .D(n48), .CP(n173), .CDN(n169), .Q(n93), .QN(n112) );
  dfcrb2 \M_reg[9]  ( .D(n49), .CP(n173), .CDN(n169), .Q(n92), .QN(n110) );
  dfcrb2 \M_reg[8]  ( .D(n50), .CP(n173), .CDN(n169), .Q(n91), .QN(n108) );
  dfcrb2 \M_reg[0]  ( .D(n58), .CP(n174), .CDN(n170), .Q(n90), .QN(n106) );
  dfcrq4 \M_reg[14]  ( .D(n44), .CP(n87), .CDN(n169), .Q(n97) );
  dfcrq4 \M_reg[7]  ( .D(n51), .CP(n87), .CDN(n168), .Q(n105) );
  dfcrq4 done_reg ( .D(n40), .CP(n87), .CDN(n170), .Q(n89) );
  invbd7 U79 ( .I(n89), .ZN(n88) );
  invbd7 U80 ( .I(n105), .ZN(n166) );
  invbd7 U81 ( .I(n97), .ZN(n153) );
  invbdk U82 ( .I(n166), .ZN(M[7]) );
  clk2d2 U83 ( .CLK(n166), .CN(n167) );
  invbdk U84 ( .I(n153), .ZN(M[14]) );
  clk2d2 U85 ( .CLK(n153), .CN(n138) );
  bufbd1 U86 ( .I(clk), .Z(n87) );
  invbdk U87 ( .I(n88), .ZN(net1493) );
  nd02d0 U88 ( .A1(n88), .A2(net1402), .ZN(n40) );
  invbd2 U89 ( .I(n106), .ZN(n107) );
  invbd2 U90 ( .I(n108), .ZN(n109) );
  invbd2 U91 ( .I(n110), .ZN(n111) );
  invbd2 U92 ( .I(n112), .ZN(n113) );
  invbd2 U93 ( .I(n114), .ZN(n115) );
  invbd2 U94 ( .I(n116), .ZN(n117) );
  invbd2 U95 ( .I(n118), .ZN(n119) );
  invbd2 U96 ( .I(n120), .ZN(n121) );
  invbd2 U97 ( .I(n122), .ZN(n123) );
  invbd2 U98 ( .I(n124), .ZN(n125) );
  invbd2 U99 ( .I(n126), .ZN(n127) );
  invbd2 U100 ( .I(n128), .ZN(n129) );
  invbd2 U101 ( .I(n130), .ZN(n131) );
  invbd2 U102 ( .I(n132), .ZN(n133) );
  invbdk U103 ( .I(n149), .ZN(M[10]) );
  invbd7 U104 ( .I(n113), .ZN(n149) );
  invbdk U105 ( .I(n150), .ZN(M[11]) );
  invbd7 U106 ( .I(n117), .ZN(n150) );
  invbdk U107 ( .I(n151), .ZN(M[12]) );
  invbd7 U108 ( .I(n119), .ZN(n151) );
  invbdk U109 ( .I(n152), .ZN(M[13]) );
  invbd7 U110 ( .I(n121), .ZN(n152) );
  invbdk U111 ( .I(n157), .ZN(M[2]) );
  invbd7 U112 ( .I(n115), .ZN(n157) );
  invbd7 U113 ( .I(n125), .ZN(n154) );
  invbd7 U114 ( .I(n127), .ZN(n158) );
  invbd7 U115 ( .I(n129), .ZN(n160) );
  invbd7 U116 ( .I(n131), .ZN(n162) );
  invbd7 U117 ( .I(n133), .ZN(n164) );
  invbdk U118 ( .I(n156), .ZN(M[1]) );
  invbd7 U119 ( .I(n123), .ZN(n156) );
  invbd7 U120 ( .I(n111), .ZN(n148) );
  invbdk U121 ( .I(n146), .ZN(M[0]) );
  invbd7 U122 ( .I(n107), .ZN(n146) );
  invbdk U123 ( .I(n147), .ZN(M[8]) );
  invbd7 U124 ( .I(n109), .ZN(n147) );
  invbdk U125 ( .I(n148), .ZN(M[9]) );
  invbdk U126 ( .I(n158), .ZN(M[3]) );
  invbdk U127 ( .I(n160), .ZN(M[4]) );
  invbdk U128 ( .I(n162), .ZN(M[5]) );
  invbdk U129 ( .I(n164), .ZN(M[6]) );
  invbdk U130 ( .I(n154), .ZN(M[15]) );
  inv0d1 U131 ( .I(n31), .ZN(n178) );
  inv0d1 U132 ( .I(n29), .ZN(n179) );
  nd02d1 U133 ( .A1(next_state[1]), .A2(n176), .ZN(net1402) );
  nd12d0 U134 ( .A1(next_state[1]), .A2(next_state[0]), .ZN(n29) );
  an02d1 U135 ( .A1(signed_bit), .A2(net1405), .Z(n141) );
  an12d1 U136 ( .A2(net1405), .A1(signed_bit), .Z(n142) );
  inv0d1 U137 ( .I(B[1]), .ZN(N58) );
  inv0d1 U138 ( .I(A[1]), .ZN(N33) );
  inv0d1 U139 ( .I(B[2]), .ZN(N57) );
  inv0d1 U140 ( .I(A[2]), .ZN(N32) );
  inv0d1 U141 ( .I(B[3]), .ZN(N56) );
  inv0d1 U142 ( .I(A[3]), .ZN(N31) );
  inv0d1 U143 ( .I(B[4]), .ZN(N55) );
  inv0d1 U144 ( .I(A[4]), .ZN(N30) );
  inv0d1 U145 ( .I(B[5]), .ZN(N54) );
  inv0d1 U146 ( .I(A[5]), .ZN(N29) );
  inv0d1 U147 ( .I(B[6]), .ZN(N53) );
  inv0d1 U148 ( .I(A[6]), .ZN(N28) );
  bufbd1 U149 ( .I(rst_n), .Z(n168) );
  bufbd1 U150 ( .I(rst_n), .Z(n169) );
  bufbd1 U151 ( .I(rst_n), .Z(n170) );
  bufbd1 U152 ( .I(rst_n), .Z(n171) );
  bufbd1 U153 ( .I(clk), .Z(n172) );
  bufbd1 U154 ( .I(clk), .Z(n174) );
  bufbd1 U155 ( .I(clk), .Z(n173) );
  bufbd1 U156 ( .I(n87), .Z(n175) );
  nd02d1 U157 ( .A1(count[0]), .A2(n179), .ZN(n36) );
  nd02d1 U158 ( .A1(n35), .A2(n179), .ZN(n34) );
  inv0d1 U159 ( .I(A[7]), .ZN(N27) );
  inv0d1 U160 ( .I(cur_state[0]), .ZN(n180) );
  nd02d1 U161 ( .A1(count[2]), .A2(n35), .ZN(n38) );
  inv0d1 U162 ( .I(B[7]), .ZN(N52) );
  aor22d1 U163 ( .A1(N85), .A2(n17), .B1(n29), .B2(product[14]), .Z(n72) );
  aor222d1 U164 ( .A1(n29), .A2(product[13]), .B1(N84), .B2(n17), .C1(n16), 
        .C2(product[14]), .Z(n71) );
  aor222d1 U165 ( .A1(n29), .A2(product[12]), .B1(N83), .B2(n17), .C1(n16), 
        .C2(product[13]), .Z(n70) );
  aor222d1 U166 ( .A1(n29), .A2(product[11]), .B1(N82), .B2(n17), .C1(n16), 
        .C2(product[12]), .Z(n69) );
  aor222d1 U167 ( .A1(n29), .A2(product[10]), .B1(N81), .B2(n17), .C1(n16), 
        .C2(product[11]), .Z(n68) );
  aor222d1 U168 ( .A1(n29), .A2(product[9]), .B1(N80), .B2(n17), .C1(n16), 
        .C2(product[10]), .Z(n67) );
  aor222d1 U169 ( .A1(n29), .A2(product[8]), .B1(N79), .B2(n17), .C1(n16), 
        .C2(product[9]), .Z(n66) );
  aor221d1 U170 ( .B1(n20), .B2(product[1]), .C1(B[1]), .C2(n21), .A(n28), .Z(
        n65) );
  inv0d1 U171 ( .I(n39), .ZN(n177) );
  aor221d1 U172 ( .B1(B[0]), .B2(n21), .C1(n20), .C2(n177), .A(n30), .Z(n73)
         );
  aor221d1 U173 ( .B1(n20), .B2(product[2]), .C1(B[2]), .C2(n21), .A(n27), .Z(
        n64) );
  aor221d1 U174 ( .B1(n20), .B2(product[3]), .C1(B[3]), .C2(n21), .A(n26), .Z(
        n63) );
  aor221d1 U175 ( .B1(n20), .B2(product[4]), .C1(B[4]), .C2(n21), .A(n25), .Z(
        n62) );
  aor221d1 U176 ( .B1(n20), .B2(product[5]), .C1(B[5]), .C2(n21), .A(n24), .Z(
        n61) );
  aor221d1 U177 ( .B1(n20), .B2(product[6]), .C1(B[6]), .C2(n21), .A(n22), .Z(
        n60) );
  aor221d1 U178 ( .B1(N78), .B2(n17), .C1(n16), .C2(product[8]), .A(n18), .Z(
        n59) );
  inv0d1 U179 ( .I(next_state[0]), .ZN(n176) );
  inv0d1 U180 ( .I(product[14]), .ZN(N100) );
  inv0d1 U181 ( .I(product[13]), .ZN(N101) );
  inv0d1 U182 ( .I(product[12]), .ZN(N102) );
  inv0d1 U183 ( .I(product[11]), .ZN(N103) );
  inv0d1 U184 ( .I(product[10]), .ZN(N104) );
  inv0d1 U185 ( .I(product[9]), .ZN(N105) );
  inv0d1 U186 ( .I(product[8]), .ZN(N106) );
  inv0d1 U187 ( .I(product[7]), .ZN(N107) );
  inv0d1 U188 ( .I(product[6]), .ZN(N108) );
  inv0d1 U189 ( .I(product[5]), .ZN(N109) );
  inv0d1 U190 ( .I(product[4]), .ZN(N110) );
  inv0d1 U191 ( .I(product[3]), .ZN(N111) );
  inv0d1 U192 ( .I(product[2]), .ZN(N112) );
  inv0d1 U193 ( .I(product[1]), .ZN(N113) );
  inv0d1 U194 ( .I(net1402), .ZN(net1405) );
  aor222d1 U195 ( .A1(N115), .A2(n141), .B1(n142), .B2(n177), .C1(n90), .C2(
        net1402), .Z(n58) );
  aor222d1 U196 ( .A1(N116), .A2(n141), .B1(n142), .B2(product[1]), .C1(n99), 
        .C2(net1402), .Z(n57) );
  aor222d1 U197 ( .A1(N117), .A2(n141), .B1(n142), .B2(product[2]), .C1(n100), 
        .C2(net1402), .Z(n56) );
  aor222d1 U198 ( .A1(N118), .A2(n141), .B1(n142), .B2(product[3]), .C1(n101), 
        .C2(net1402), .Z(n55) );
  aor222d1 U199 ( .A1(N119), .A2(n141), .B1(n142), .B2(product[4]), .C1(n102), 
        .C2(net1402), .Z(n54) );
  aor222d1 U200 ( .A1(N120), .A2(n141), .B1(n142), .B2(product[5]), .C1(n103), 
        .C2(net1402), .Z(n53) );
  aor222d1 U201 ( .A1(N121), .A2(n141), .B1(n142), .B2(product[6]), .C1(n104), 
        .C2(net1402), .Z(n52) );
  aor222d1 U202 ( .A1(N122), .A2(n141), .B1(n142), .B2(product[7]), .C1(n167), 
        .C2(net1402), .Z(n51) );
  aor222d1 U203 ( .A1(N123), .A2(n141), .B1(n142), .B2(product[8]), .C1(n91), 
        .C2(net1402), .Z(n50) );
  aor222d1 U204 ( .A1(N124), .A2(n141), .B1(n142), .B2(product[9]), .C1(n92), 
        .C2(net1402), .Z(n49) );
  aor222d1 U205 ( .A1(N125), .A2(n141), .B1(n142), .B2(product[10]), .C1(n93), 
        .C2(net1402), .Z(n48) );
  aor222d1 U206 ( .A1(N126), .A2(n141), .B1(n142), .B2(product[11]), .C1(n94), 
        .C2(net1402), .Z(n47) );
  aor222d1 U207 ( .A1(N127), .A2(n141), .B1(n142), .B2(product[12]), .C1(n95), 
        .C2(net1402), .Z(n46) );
  aor222d1 U208 ( .A1(N128), .A2(n141), .B1(n142), .B2(product[13]), .C1(n96), 
        .C2(net1402), .Z(n45) );
  aor222d1 U209 ( .A1(N129), .A2(n141), .B1(n142), .B2(product[14]), .C1(n138), 
        .C2(net1402), .Z(n44) );
  aor22d1 U210 ( .A1(N130), .A2(n141), .B1(n98), .B2(net1402), .Z(n43) );
  inv0d0 U211 ( .I(B[0]), .ZN(N59) );
  inv0d0 U212 ( .I(A[0]), .ZN(N34) );
endmodule

