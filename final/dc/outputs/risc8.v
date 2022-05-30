/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Mon May 30 13:42:41 2022
/////////////////////////////////////////////////////////////


module rbcla_adder_width8_bits_per_block4 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62;

  nd02d1 U1 ( .A1(B[5]), .A2(A[5]), .ZN(n1) );
  nd02d1 U2 ( .A1(n38), .A2(n9), .ZN(n2) );
  nd02d1 U3 ( .A1(n1), .A2(n2), .ZN(n51) );
  inv0d1 U4 ( .I(n51), .ZN(n62) );
  nd02d1 U5 ( .A1(n29), .A2(n28), .ZN(n3) );
  nd02d1 U6 ( .A1(n21), .A2(n4), .ZN(n30) );
  invbd2 U7 ( .I(n3), .ZN(n4) );
  inv0d4 U8 ( .I(A[3]), .ZN(n11) );
  an02d2 U9 ( .A1(n14), .A2(n46), .Z(n26) );
  cg01d4 U10 ( .A(CI), .B(A[0]), .CI(B[0]), .CO(n43) );
  invbd2 U11 ( .I(B[2]), .ZN(n34) );
  inv0d4 U12 ( .I(A[5]), .ZN(n40) );
  nd02d1 U13 ( .A1(n35), .A2(n34), .ZN(n46) );
  cg01d1 U14 ( .A(A[7]), .B(B[7]), .CI(n42), .CO(CO) );
  nd02d1 U15 ( .A1(n22), .A2(n23), .ZN(n55) );
  inv0d1 U16 ( .I(n5), .ZN(n29) );
  nd02d2 U17 ( .A1(n20), .A2(n19), .ZN(n45) );
  nd02d1 U18 ( .A1(n36), .A2(n6), .ZN(n38) );
  xn02d1 U19 ( .A1(n52), .A2(B[7]), .ZN(n5) );
  inv0d1 U20 ( .I(A[7]), .ZN(n52) );
  an02d1 U21 ( .A1(n37), .A2(n47), .Z(n6) );
  an02d1 U22 ( .A1(n51), .A2(n13), .Z(n8) );
  inv0d1 U23 ( .I(B[6]), .ZN(n31) );
  nd02d1 U24 ( .A1(n15), .A2(n52), .ZN(n22) );
  cg01d0 U25 ( .A(n43), .B(B[1]), .CI(A[1]), .CO(n16) );
  nd02d1 U26 ( .A1(A[4]), .A2(B[4]), .ZN(n37) );
  inv0d1 U27 ( .I(n25), .ZN(n9) );
  inv0d1 U28 ( .I(n59), .ZN(n28) );
  xr03d1 U29 ( .A1(n18), .A2(A[5]), .A3(n39), .Z(SUM[5]) );
  inv0d0 U30 ( .I(n11), .ZN(n10) );
  inv0d0 U31 ( .I(n47), .ZN(n49) );
  inv0d0 U32 ( .I(n10), .ZN(n32) );
  nd02d0 U33 ( .A1(n33), .A2(n32), .ZN(n12) );
  invbd2 U34 ( .I(B[5]), .ZN(n39) );
  invbd2 U35 ( .I(n44), .ZN(n20) );
  nd02d2 U36 ( .A1(n40), .A2(n39), .ZN(n13) );
  nd02d1 U37 ( .A1(n40), .A2(n39), .ZN(n53) );
  nd02d0 U38 ( .A1(n19), .A2(n20), .ZN(n14) );
  nd02d1 U39 ( .A1(B[6]), .A2(A[6]), .ZN(n15) );
  nd02d1 U40 ( .A1(B[6]), .A2(A[6]), .ZN(n61) );
  nd02d1 U41 ( .A1(n54), .A2(n53), .ZN(n59) );
  nd02d1 U42 ( .A1(A[3]), .A2(B[3]), .ZN(n47) );
  nd02d2 U43 ( .A1(n33), .A2(n11), .ZN(n48) );
  nd12d1 U44 ( .A1(n25), .A2(n38), .ZN(n17) );
  nd12d0 U45 ( .A1(n25), .A2(n38), .ZN(n18) );
  nd12d1 U46 ( .A1(n34), .A2(A[2]), .ZN(n19) );
  xr03d1 U47 ( .A1(n10), .A2(B[3]), .A3(n26), .Z(SUM[3]) );
  nd12d1 U48 ( .A1(n61), .A2(A[7]), .ZN(n23) );
  nd12d1 U49 ( .A1(A[6]), .A2(n31), .ZN(n54) );
  clk2d2 U50 ( .CLK(n15), .CN(n41), .C(n7) );
  bufbd2 U51 ( .I(A[4]), .Z(n27) );
  ora21d1 U52 ( .B1(A[7]), .B2(n59), .A(n55), .Z(n56) );
  nd02d1 U53 ( .A1(n21), .A2(n13), .ZN(n24) );
  oaim21d2 U54 ( .B1(B[5]), .B2(A[5]), .A(n17), .ZN(n21) );
  xr03d2 U55 ( .A1(n24), .A2(A[6]), .A3(n31), .Z(SUM[6]) );
  nr02d0 U56 ( .A1(A[4]), .A2(B[4]), .ZN(n25) );
  xr03d2 U57 ( .A1(n50), .A2(n27), .A3(B[4]), .Z(SUM[4]) );
  xr03d1 U58 ( .A1(B[0]), .A2(CI), .A3(A[0]), .Z(SUM[0]) );
  oaim3m11d2 U59 ( .C1(n62), .C2(n7), .C3(n5), .B(n60), .A(n30), .ZN(SUM[7])
         );
  cg01d1 U60 ( .A(n43), .B(B[1]), .CI(A[1]), .CO(n44) );
  inv0d1 U61 ( .I(B[3]), .ZN(n33) );
  inv0d1 U62 ( .I(A[2]), .ZN(n35) );
  nd03d0 U63 ( .A1(n45), .A2(n48), .A3(n46), .ZN(n36) );
  aor21d1 U64 ( .B1(n8), .B2(n54), .A(n41), .Z(n42) );
  xr03d1 U65 ( .A1(A[1]), .A2(B[1]), .A3(n43), .Z(SUM[1]) );
  xr03d1 U66 ( .A1(n16), .A2(A[2]), .A3(B[2]), .Z(SUM[2]) );
  ora21d1 U67 ( .B1(n49), .B2(n26), .A(n12), .Z(n50) );
  aor31d1 U68 ( .B1(A[7]), .B2(n54), .B3(n13), .A(n55), .Z(n58) );
  inv0d1 U69 ( .I(B[7]), .ZN(n57) );
  aoim22d1 U70 ( .A1(n58), .A2(n57), .B1(n56), .B2(n57), .Z(n60) );
endmodule


module risc8_alu ( next_psw, alu_out, divide_by_0, clk, rst_n, a_src, b_src, 
        carry_src, alu_cmd, invert_b, lu_op, flag_op, muldiv_op, queue_out, 
        a_data, b_data, psw, scan_mode );
  output [7:0] next_psw;
  output [7:0] alu_out;
  input [1:0] a_src;
  input [1:0] b_src;
  input [2:0] carry_src;
  input [3:0] alu_cmd;
  input [2:0] flag_op;
  input [5:0] muldiv_op;
  input [7:0] queue_out;
  input [7:0] a_data;
  input [7:0] b_data;
  input [7:0] psw;
  input clk, rst_n, invert_b, lu_op, scan_mode;
  output divide_by_0;
  wire   \psw[7] , \psw[6] , \psw[5] , carry_out, carry_in_tmp, save_carry,
         save_a7, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325;
  wire   [7:0] a_alu;
  wire   [8:0] p_reg;
  wire   [7:0] a_reg;
  wire   [7:0] lu_out;
  wire   [7:0] adder_out;
  assign \psw[7]  = psw[7];
  assign next_psw[7] = \psw[7] ;
  assign \psw[6]  = psw[6];
  assign next_psw[6] = \psw[6] ;
  assign \psw[5]  = psw[5];
  assign next_psw[5] = \psw[5] ;

  ora21d1 U69 ( .B1(n318), .B2(n325), .A(psw[4]), .Z(next_psw[4]) );
  rbcla_adder_width8_bits_per_block4 U0 ( .A({n40, n21, n63, a_alu[4:2], n176, 
        a_alu[0]}), .B({n311, n312, n313, n314, n38, n315, n316, n44}), .CI(
        carry_in_tmp), .SUM(adder_out), .CO(carry_out) );
  dfcrq1 \a_reg_reg[4]  ( .D(n322), .CP(clk), .CDN(n179), .Q(a_reg[4]) );
  dfcrq1 save_carry_reg ( .D(n97), .CP(clk), .CDN(n180), .Q(save_carry) );
  dfcrq1 save_a7_reg ( .D(n40), .CP(clk), .CDN(n179), .Q(save_a7) );
  dfcrq1 \a_reg_reg[1]  ( .D(n319), .CP(clk), .CDN(n179), .Q(a_reg[1]) );
  dfcrq1 \a_reg_reg[2]  ( .D(n320), .CP(clk), .CDN(n179), .Q(a_reg[2]) );
  dfcrq1 \a_reg_reg[3]  ( .D(n321), .CP(clk), .CDN(n179), .Q(a_reg[3]) );
  dfcrq1 \a_reg_reg[5]  ( .D(n323), .CP(clk), .CDN(n179), .Q(a_reg[5]) );
  dfcrq1 \a_reg_reg[6]  ( .D(n324), .CP(clk), .CDN(n179), .Q(a_reg[6]) );
  dfcrq1 \p_reg_reg[4]  ( .D(n122), .CP(clk), .CDN(n180), .Q(p_reg[4]) );
  dfcrq1 \p_reg_reg[6]  ( .D(n120), .CP(clk), .CDN(n179), .Q(p_reg[6]) );
  dfcrq1 \p_reg_reg[8]  ( .D(n118), .CP(clk), .CDN(n179), .Q(p_reg[8]) );
  dfcrq1 \p_reg_reg[1]  ( .D(n125), .CP(clk), .CDN(n180), .Q(p_reg[1]) );
  dfcrq1 \p_reg_reg[2]  ( .D(n124), .CP(clk), .CDN(n180), .Q(p_reg[2]) );
  dfcrq1 \p_reg_reg[5]  ( .D(n121), .CP(clk), .CDN(n180), .Q(p_reg[5]) );
  dfcrq1 \p_reg_reg[7]  ( .D(n119), .CP(clk), .CDN(n179), .Q(p_reg[7]) );
  dfcrq1 \p_reg_reg[0]  ( .D(n126), .CP(clk), .CDN(n180), .Q(p_reg[0]) );
  dfcrq1 \a_reg_reg[7]  ( .D(n310), .CP(clk), .CDN(n179), .Q(a_reg[7]) );
  dfcrq1 \p_reg_reg[3]  ( .D(n123), .CP(clk), .CDN(n180), .Q(p_reg[3]) );
  dfcrq1 \a_reg_reg[0]  ( .D(n306), .CP(clk), .CDN(n179), .Q(a_reg[0]) );
  nd02d1 U3 ( .A1(lu_out[3]), .A2(n1), .ZN(n2) );
  nd02d1 U4 ( .A1(adder_out[3]), .A2(n294), .ZN(n3) );
  nd02d1 U5 ( .A1(n2), .A2(n3), .ZN(alu_out[3]) );
  inv0d1 U6 ( .I(n294), .ZN(n1) );
  nd02d1 U7 ( .A1(n254), .A2(n4), .ZN(n5) );
  nd02d1 U8 ( .A1(n253), .A2(b_data[6]), .ZN(n6) );
  nd02d1 U9 ( .A1(n5), .A2(n6), .ZN(n247) );
  inv0d1 U10 ( .I(b_data[6]), .ZN(n4) );
  nd02d1 U11 ( .A1(n93), .A2(n92), .ZN(n7) );
  nd02d1 U12 ( .A1(n91), .A2(n8), .ZN(n218) );
  inv0d1 U13 ( .I(n7), .ZN(n8) );
  nd02d1 U14 ( .A1(n254), .A2(n9), .ZN(n10) );
  nd02d1 U15 ( .A1(n253), .A2(b_data[5]), .ZN(n11) );
  nd02d1 U16 ( .A1(n10), .A2(n11), .ZN(n248) );
  inv0d1 U17 ( .I(b_data[5]), .ZN(n9) );
  nd02d1 U18 ( .A1(n246), .A2(n245), .ZN(n253) );
  nd02d1 U19 ( .A1(n245), .A2(n301), .ZN(n14) );
  nd02d1 U20 ( .A1(n12), .A2(n13), .ZN(n15) );
  nd02d1 U21 ( .A1(n14), .A2(n15), .ZN(n257) );
  inv0d1 U22 ( .I(n245), .ZN(n12) );
  inv0d1 U23 ( .I(n301), .ZN(n13) );
  inv0d1 U24 ( .I(b_data[1]), .ZN(n49) );
  nd02d1 U25 ( .A1(n84), .A2(n83), .ZN(n16) );
  nd02d1 U26 ( .A1(n82), .A2(n17), .ZN(n219) );
  inv0d1 U27 ( .I(n16), .ZN(n17) );
  nd02d1 U28 ( .A1(a_data[6]), .A2(n132), .ZN(n82) );
  or02d1 U29 ( .A1(muldiv_op[5]), .A2(muldiv_op[4]), .Z(n18) );
  or02d2 U30 ( .A1(muldiv_op[0]), .A2(n18), .Z(n215) );
  invbd2 U31 ( .I(n215), .ZN(n217) );
  an02d1 U32 ( .A1(n86), .A2(n85), .Z(n19) );
  an02d2 U33 ( .A1(n42), .A2(n19), .Z(n177) );
  nd02d1 U34 ( .A1(n260), .A2(n177), .ZN(N112) );
  invbd2 U35 ( .I(n177), .ZN(a_alu[4]) );
  nd02d2 U36 ( .A1(a_data[4]), .A2(n132), .ZN(n36) );
  invbd2 U37 ( .I(b_src[0]), .ZN(n233) );
  mx02d2 U38 ( .I0(lu_out[4]), .I1(adder_out[4]), .S(n294), .Z(alu_out[4]) );
  nd12d1 U39 ( .A1(n114), .A2(n129), .ZN(lu_out[2]) );
  aoi222d2 U40 ( .A1(n38), .A2(n31), .B1(N105), .B2(n26), .C1(n22), .C2(
        a_alu[2]), .ZN(n148) );
  inv0d2 U41 ( .I(a_alu[2]), .ZN(n308) );
  mx02d2 U42 ( .I0(lu_out[2]), .I1(adder_out[2]), .S(n294), .Z(alu_out[2]) );
  an02d1 U43 ( .A1(alu_cmd[3]), .A2(n271), .Z(n134) );
  inv0d1 U44 ( .I(n166), .ZN(n141) );
  nd02d1 U45 ( .A1(n256), .A2(n247), .ZN(n258) );
  inv0d1 U46 ( .I(n257), .ZN(n311) );
  inv0d1 U47 ( .I(n63), .ZN(n307) );
  inv0d1 U48 ( .I(n133), .ZN(n67) );
  inv0d1 U49 ( .I(n134), .ZN(n68) );
  nd02d1 U50 ( .A1(a_data[1]), .A2(n132), .ZN(n60) );
  inv0d2 U51 ( .I(n244), .ZN(n256) );
  inv0d2 U52 ( .I(n176), .ZN(n309) );
  nd02d1 U53 ( .A1(lu_out[7]), .A2(n272), .ZN(n128) );
  mx02d0 U54 ( .I0(n170), .I1(n169), .S(n138), .Z(n167) );
  an04d1 U55 ( .A1(n267), .A2(n269), .A3(n268), .A4(n270), .Z(divide_by_0) );
  nr02d0 U56 ( .A1(n286), .A2(n287), .ZN(n109) );
  nd02d1 U57 ( .A1(a_reg[1]), .A2(n27), .ZN(n62) );
  nd02d1 U58 ( .A1(a_reg[4]), .A2(n27), .ZN(n37) );
  nd02d1 U59 ( .A1(n137), .A2(n138), .ZN(n57) );
  mx02d0 U60 ( .I0(n67), .I1(n68), .S(n40), .Z(n69) );
  nd02d1 U61 ( .A1(p_reg[1]), .A2(n25), .ZN(n74) );
  nd02d1 U62 ( .A1(p_reg[5]), .A2(n25), .ZN(n83) );
  nr23d1 U63 ( .A1(n217), .A2(n216), .A3(muldiv_op[1]), .ZN(n135) );
  inv0d1 U64 ( .I(n259), .ZN(n313) );
  nd02d1 U65 ( .A1(n147), .A2(n148), .ZN(lu_out[3]) );
  nr02d0 U66 ( .A1(n309), .A2(n53), .ZN(N107) );
  nd02d1 U67 ( .A1(p_reg[5]), .A2(n130), .ZN(n54) );
  nd02d1 U68 ( .A1(queue_out[5]), .A2(a_src[0]), .ZN(n55) );
  an12d1 U70 ( .A2(n135), .A1(muldiv_op[3]), .Z(n132) );
  nd02d1 U71 ( .A1(n102), .A2(n103), .ZN(alu_out[0]) );
  nr02d0 U72 ( .A1(n294), .A2(n289), .ZN(n292) );
  mx02d0 U73 ( .I0(n303), .I1(n302), .S(n115), .Z(n305) );
  bufbd1 U74 ( .I(adder_out[3]), .Z(n94) );
  an02d1 U75 ( .A1(n215), .A2(n216), .Z(n130) );
  nd02d1 U76 ( .A1(p_reg[6]), .A2(n25), .ZN(n92) );
  xr03d1 U77 ( .A1(carry_out), .A2(p_reg[7]), .A3(carry_in_tmp), .Z(n194) );
  bufbd1 U78 ( .I(carry_out), .Z(n97) );
  inv0d1 U79 ( .I(b_data[2]), .ZN(n46) );
  invbd4 U80 ( .I(n34), .ZN(n38) );
  invbd2 U81 ( .I(a_alu[6]), .ZN(n20) );
  invbd4 U82 ( .I(n20), .ZN(n21) );
  an02d1 U83 ( .A1(n133), .A2(alu_cmd[0]), .Z(n22) );
  bufbd1 U84 ( .I(n308), .Z(n116) );
  an03d1 U85 ( .A1(n54), .A2(n55), .A3(n56), .Z(n23) );
  an03d1 U86 ( .A1(alu_cmd[0]), .A2(alu_cmd[1]), .A3(n141), .Z(n24) );
  an03d1 U87 ( .A1(muldiv_op[1]), .A2(n217), .A3(n216), .Z(n25) );
  an03d1 U88 ( .A1(alu_cmd[0]), .A2(n141), .A3(n271), .Z(n26) );
  an02d1 U89 ( .A1(muldiv_op[3]), .A2(n135), .Z(n27) );
  invbd4 U90 ( .I(n39), .ZN(n40) );
  invbd2 U91 ( .I(n263), .ZN(n316) );
  or03d1 U92 ( .A1(lu_out[4]), .A2(lu_out[3]), .A3(lu_out[5]), .Z(n28) );
  an03d1 U93 ( .A1(n277), .A2(n276), .A3(n278), .Z(n29) );
  nd02d1 U94 ( .A1(p_reg[3]), .A2(n25), .ZN(n30) );
  inv0d1 U95 ( .I(n21), .ZN(n65) );
  invbd2 U96 ( .I(n258), .ZN(n312) );
  an02d1 U97 ( .A1(n134), .A2(alu_cmd[0]), .Z(n31) );
  an02d1 U98 ( .A1(alu_cmd[1]), .A2(n166), .Z(n32) );
  inv0d1 U99 ( .I(n272), .ZN(n294) );
  nd02d0 U100 ( .A1(n173), .A2(n257), .ZN(N109) );
  nd02d0 U101 ( .A1(n308), .A2(n262), .ZN(N114) );
  invbd4 U102 ( .I(n262), .ZN(n315) );
  nd02d1 U103 ( .A1(n47), .A2(n48), .ZN(n251) );
  aor222d1 U104 ( .A1(n41), .A2(n32), .B1(n146), .B2(n138), .C1(N122), .C2(n24), .Z(n114) );
  nd03d0 U105 ( .A1(n107), .A2(n106), .A3(n108), .ZN(n146) );
  aoim3m11d4 U106 ( .C1(a_src[0]), .C2(n217), .C3(n33), .B(n100), .A(n225), 
        .ZN(n43) );
  inv0d1 U107 ( .I(p_reg[1]), .ZN(n33) );
  nd02d2 U108 ( .A1(n250), .A2(n256), .ZN(n34) );
  nd02d2 U109 ( .A1(n35), .A2(n150), .ZN(lu_out[4]) );
  inv0d1 U110 ( .I(n95), .ZN(n35) );
  nd02d1 U111 ( .A1(n116), .A2(n133), .ZN(n108) );
  an03d1 U112 ( .A1(n36), .A2(n30), .A3(n37), .Z(n42) );
  inv0d2 U113 ( .I(a_alu[7]), .ZN(n39) );
  aor221d1 U114 ( .B1(p_reg[7]), .B2(n130), .C1(queue_out[7]), .C2(a_src[0]), 
        .A(n218), .Z(a_alu[7]) );
  bufbd2 U115 ( .I(a_alu[3]), .Z(n41) );
  invbd4 U116 ( .I(n99), .ZN(a_alu[3]) );
  inv0d2 U117 ( .I(n264), .ZN(n44) );
  clk2d2 U118 ( .CLK(n264), .CN(n317) );
  nd02d0 U119 ( .A1(n258), .A2(n65), .ZN(N110) );
  nd02d2 U120 ( .A1(n230), .A2(n45), .ZN(a_alu[0]) );
  an02d2 U121 ( .A1(n66), .A2(n231), .Z(n45) );
  nd02d1 U122 ( .A1(n275), .A2(n29), .ZN(n284) );
  inv0d0 U123 ( .I(lu_out[1]), .ZN(n278) );
  inv0d1 U124 ( .I(lu_out[0]), .ZN(n276) );
  nd02d1 U125 ( .A1(n254), .A2(n46), .ZN(n47) );
  nd02d0 U126 ( .A1(n253), .A2(b_data[2]), .ZN(n48) );
  nd12d1 U127 ( .A1(n245), .A2(n240), .ZN(n254) );
  invbd4 U128 ( .I(n23), .ZN(n63) );
  nd02d2 U129 ( .A1(n263), .A2(n309), .ZN(N115) );
  clk2d2 U130 ( .CLK(b_data[0]), .C(n64) );
  nd02d2 U131 ( .A1(n254), .A2(n49), .ZN(n50) );
  nd02d1 U132 ( .A1(n253), .A2(b_data[1]), .ZN(n51) );
  nd02d2 U133 ( .A1(n50), .A2(n51), .ZN(n252) );
  inv0d0 U134 ( .I(n49), .ZN(n52) );
  nr23d2 U135 ( .A1(n117), .A2(n127), .A3(n221), .ZN(n99) );
  nd02d1 U136 ( .A1(n253), .A2(b_data[0]), .ZN(n81) );
  aoi222d2 U137 ( .A1(n315), .A2(n31), .B1(N106), .B2(n26), .C1(n22), .C2(n176), .ZN(n129) );
  nd02d0 U138 ( .A1(n261), .A2(n99), .ZN(N113) );
  aor222d1 U139 ( .A1(n41), .A2(n134), .B1(N113), .B2(n141), .C1(n99), .C2(
        n133), .Z(n149) );
  nd02d1 U140 ( .A1(a_data[2]), .A2(n132), .ZN(n73) );
  nr02d1 U141 ( .A1(n289), .A2(n264), .ZN(N108) );
  inv0d0 U142 ( .I(n316), .ZN(n53) );
  nd02d2 U143 ( .A1(n256), .A2(n251), .ZN(n262) );
  inv0d1 U144 ( .I(n220), .ZN(n56) );
  nd02d1 U145 ( .A1(alu_cmd[1]), .A2(n139), .ZN(n58) );
  nd02d1 U146 ( .A1(N124), .A2(n24), .ZN(n59) );
  nd03d0 U147 ( .A1(n57), .A2(n58), .A3(n59), .ZN(n136) );
  nd02d1 U148 ( .A1(p_reg[0]), .A2(n25), .ZN(n61) );
  nd03d0 U149 ( .A1(n60), .A2(n61), .A3(n62), .ZN(n225) );
  aor221d1 U150 ( .B1(n130), .B2(p_reg[6]), .C1(queue_out[6]), .C2(a_src[0]), 
        .A(n219), .Z(a_alu[6]) );
  aor222d1 U151 ( .A1(n63), .A2(n32), .B1(n151), .B2(n138), .C1(N120), .C2(n24), .Z(n95) );
  mx02d1 U152 ( .I0(n254), .I1(n253), .S(b_data[3]), .Z(n250) );
  inv0d2 U153 ( .I(n40), .ZN(n173) );
  aor21d1 U154 ( .B1(b_data[7]), .B2(n246), .A(n243), .Z(n301) );
  an02d1 U155 ( .A1(n229), .A2(n228), .Z(n66) );
  clk2d2 U156 ( .CLK(a_data[5]), .CN(n203) );
  nd02d2 U157 ( .A1(a_data[0]), .A2(n132), .ZN(n230) );
  oaim2m11d1 U158 ( .C1(N109), .C2(n141), .B(n174), .A(n69), .ZN(n169) );
  nd02d1 U159 ( .A1(N101), .A2(n26), .ZN(n70) );
  nd02d1 U160 ( .A1(N117), .A2(n24), .ZN(n71) );
  nd02d0 U161 ( .A1(n21), .A2(n22), .ZN(n72) );
  nd03d0 U162 ( .A1(n70), .A2(n71), .A3(n72), .ZN(n168) );
  nd02d1 U163 ( .A1(a_reg[2]), .A2(n27), .ZN(n75) );
  nd03d0 U164 ( .A1(n73), .A2(n74), .A3(n75), .ZN(n222) );
  nd02d0 U165 ( .A1(a_alu[4]), .A2(n32), .ZN(n76) );
  nd02d1 U166 ( .A1(n149), .A2(n138), .ZN(n77) );
  nd02d1 U167 ( .A1(N121), .A2(n24), .ZN(n78) );
  an03d1 U168 ( .A1(n76), .A2(n77), .A3(n78), .Z(n147) );
  inv0d0 U169 ( .I(lu_out[2]), .ZN(n277) );
  clk2d2 U170 ( .CLK(a_data[3]), .CN(n199) );
  nd02d2 U171 ( .A1(n79), .A2(n254), .ZN(n80) );
  nd02d2 U172 ( .A1(n80), .A2(n81), .ZN(n255) );
  inv0d2 U173 ( .I(b_data[0]), .ZN(n79) );
  clk2d2 U174 ( .CLK(a_data[2]), .CN(n197) );
  nd02d2 U175 ( .A1(n252), .A2(n256), .ZN(n263) );
  nd02d1 U176 ( .A1(a_reg[6]), .A2(n27), .ZN(n84) );
  nd02d1 U177 ( .A1(p_reg[4]), .A2(n130), .ZN(n85) );
  nd02d0 U178 ( .A1(queue_out[4]), .A2(a_src[0]), .ZN(n86) );
  nd02d1 U179 ( .A1(n283), .A2(n87), .ZN(n88) );
  nd02d1 U180 ( .A1(n284), .A2(n90), .ZN(n89) );
  nd02d1 U181 ( .A1(n88), .A2(n89), .ZN(n285) );
  inv0d1 U182 ( .I(n90), .ZN(n87) );
  inv0d1 U183 ( .I(n294), .ZN(n90) );
  nd04d0 U184 ( .A1(n152), .A2(n153), .A3(n154), .A4(n155), .ZN(lu_out[5]) );
  bufbd1 U185 ( .I(n65), .Z(n113) );
  nd02d1 U186 ( .A1(a_data[7]), .A2(n132), .ZN(n91) );
  nd02d0 U187 ( .A1(a_reg[7]), .A2(n27), .ZN(n93) );
  nd02d2 U188 ( .A1(n143), .A2(n144), .ZN(lu_out[1]) );
  xr03d1 U189 ( .A1(n97), .A2(p_reg[7]), .A3(carry_in_tmp), .Z(n96) );
  nd12d1 U190 ( .A1(n115), .A2(n109), .ZN(n98) );
  clk2d2 U191 ( .CLK(a_data[6]), .CN(n205) );
  inv0d1 U192 ( .I(adder_out[6]), .ZN(n280) );
  inv0d0 U193 ( .I(a_alu[0]), .ZN(n289) );
  mx02d1 U194 ( .I0(n305), .I1(psw[3]), .S(n304), .Z(next_psw[3]) );
  nd02d0 U195 ( .A1(a_alu[4]), .A2(n22), .ZN(n157) );
  invbd7 U196 ( .I(n43), .ZN(n176) );
  clk2d2 U197 ( .CLK(a_data[7]), .CN(n210) );
  clk2d2 U198 ( .CLK(a_data[4]), .CN(n201) );
  aor222d1 U199 ( .A1(n224), .A2(p_reg[6]), .B1(adder_out[6]), .B2(n131), .C1(
        n223), .C2(n101), .Z(n120) );
  mx02d2 U200 ( .I0(lu_out[1]), .I1(adder_out[1]), .S(n294), .Z(alu_out[1]) );
  nd02d2 U201 ( .A1(adder_out[7]), .A2(n294), .ZN(n112) );
  nd02d0 U202 ( .A1(n289), .A2(n264), .ZN(N116) );
  nd02d0 U203 ( .A1(queue_out[1]), .A2(a_src[0]), .ZN(n100) );
  nd02d2 U204 ( .A1(adder_out[5]), .A2(n294), .ZN(n105) );
  clk2d2 U205 ( .CLK(a_data[1]), .CN(n195) );
  inv0d0 U206 ( .I(adder_out[4]), .ZN(n281) );
  clk2d2 U207 ( .CLK(adder_out[7]), .C(n101) );
  clk2d2 U208 ( .CLK(a_data[0]), .CN(n193) );
  nd02d2 U209 ( .A1(adder_out[6]), .A2(n294), .ZN(n111) );
  nr02d0 U210 ( .A1(lu_out[6]), .A2(n28), .ZN(n275) );
  nd02d1 U211 ( .A1(lu_out[0]), .A2(n272), .ZN(n102) );
  nd02d1 U212 ( .A1(adder_out[0]), .A2(n294), .ZN(n103) );
  nd02d0 U213 ( .A1(lu_out[5]), .A2(n272), .ZN(n104) );
  nd02d2 U214 ( .A1(n104), .A2(n105), .ZN(alu_out[5]) );
  nd02d0 U215 ( .A1(a_alu[2]), .A2(n134), .ZN(n106) );
  nd02d1 U216 ( .A1(N114), .A2(n141), .ZN(n107) );
  nd02d1 U217 ( .A1(n112), .A2(n128), .ZN(n115) );
  nd02d1 U218 ( .A1(lu_out[6]), .A2(n90), .ZN(n110) );
  nd02d2 U219 ( .A1(n111), .A2(n110), .ZN(alu_out[6]) );
  nd02d2 U220 ( .A1(n163), .A2(n164), .ZN(lu_out[6]) );
  nd02d0 U221 ( .A1(p_reg[3]), .A2(n130), .ZN(n117) );
  nd02d0 U222 ( .A1(queue_out[3]), .A2(a_src[0]), .ZN(n127) );
  nr02d0 U223 ( .A1(n98), .A2(n285), .ZN(n288) );
  nd04d0 U224 ( .A1(n138), .A2(n271), .A3(n175), .A4(n290), .ZN(n272) );
  nd02d2 U225 ( .A1(n112), .A2(n128), .ZN(alu_out[7]) );
  nd02d0 U226 ( .A1(queue_out[0]), .A2(a_src[0]), .ZN(n226) );
  nd02d0 U227 ( .A1(a_reg[7]), .A2(n25), .ZN(n228) );
  inv0d1 U228 ( .I(n182), .ZN(n224) );
  nd02d0 U229 ( .A1(n307), .A2(n133), .ZN(n161) );
  nd02d0 U230 ( .A1(n63), .A2(n134), .ZN(n162) );
  nd02d1 U231 ( .A1(N111), .A2(n141), .ZN(n160) );
  inv0d1 U232 ( .I(n40), .ZN(n300) );
  nd02d0 U233 ( .A1(n313), .A2(n31), .ZN(n158) );
  nd02d1 U234 ( .A1(N103), .A2(n26), .ZN(n156) );
  an03d1 U235 ( .A1(n183), .A2(n209), .A3(n182), .Z(n131) );
  bufbd1 U236 ( .I(n211), .Z(n178) );
  nd12d0 U237 ( .A1(n178), .A2(n234), .ZN(n182) );
  inv0d1 U238 ( .I(n181), .ZN(n179) );
  inv0d1 U239 ( .I(n181), .ZN(n180) );
  nd02d0 U240 ( .A1(n21), .A2(n32), .ZN(n154) );
  nd02d1 U241 ( .A1(N119), .A2(n24), .ZN(n153) );
  nd12d0 U242 ( .A1(alu_cmd[0]), .A2(n159), .ZN(n152) );
  an03d1 U243 ( .A1(alu_cmd[2]), .A2(n175), .A3(n271), .Z(n133) );
  nd12d1 U244 ( .A1(invert_b), .A2(n232), .ZN(n245) );
  nd02d1 U245 ( .A1(p_reg[0]), .A2(n130), .ZN(n227) );
  nd02d0 U246 ( .A1(a_reg[0]), .A2(n27), .ZN(n229) );
  nd02d1 U247 ( .A1(alu_cmd[3]), .A2(alu_cmd[0]), .ZN(n265) );
  nd02d1 U248 ( .A1(muldiv_op[2]), .A2(n271), .ZN(n266) );
  nd02d0 U249 ( .A1(muldiv_op[0]), .A2(n209), .ZN(n207) );
  nd03d0 U250 ( .A1(muldiv_op[1]), .A2(n183), .A3(n209), .ZN(n213) );
  inv0d1 U251 ( .I(muldiv_op[2]), .ZN(n209) );
  inv0d1 U252 ( .I(rst_n), .ZN(n181) );
  aor221d1 U253 ( .B1(N108), .B2(n26), .C1(n317), .C2(n31), .A(n136), .Z(
        lu_out[0]) );
  aor22d1 U254 ( .A1(n176), .A2(alu_cmd[3]), .B1(n140), .B2(n176), .Z(n139) );
  oan211d1 U255 ( .C1(alu_cmd[3]), .C2(alu_cmd[0]), .B(n43), .A(n290), .ZN(
        n140) );
  aor21d1 U256 ( .B1(N116), .B2(n141), .A(n142), .Z(n137) );
  mx02d0 U257 ( .I0(n133), .I1(n134), .S(a_alu[0]), .Z(n142) );
  aoi222d1 U258 ( .A1(n316), .A2(n31), .B1(N107), .B2(n26), .C1(a_alu[0]), 
        .C2(n22), .ZN(n144) );
  aoi222d1 U259 ( .A1(a_alu[2]), .A2(n32), .B1(n145), .B2(n138), .C1(N123), 
        .C2(n24), .ZN(n143) );
  aor222d1 U260 ( .A1(n134), .A2(n176), .B1(N115), .B2(n141), .C1(n309), .C2(
        n133), .Z(n145) );
  aoi222d1 U261 ( .A1(n314), .A2(n31), .B1(N104), .B2(n26), .C1(n41), .C2(n22), 
        .ZN(n150) );
  aor222d1 U262 ( .A1(a_alu[4]), .A2(n134), .B1(N112), .B2(n141), .C1(n177), 
        .C2(n133), .Z(n151) );
  an03d1 U263 ( .A1(n156), .A2(n157), .A3(n158), .Z(n155) );
  nd03d0 U264 ( .A1(n160), .A2(n161), .A3(n162), .ZN(n159) );
  aoi222d1 U265 ( .A1(n312), .A2(n31), .B1(N102), .B2(n26), .C1(n63), .C2(n22), 
        .ZN(n164) );
  aoi222d1 U266 ( .A1(n40), .A2(n32), .B1(n165), .B2(n138), .C1(N118), .C2(n24), .ZN(n163) );
  inv0d1 U267 ( .I(alu_cmd[0]), .ZN(n138) );
  aor222d1 U268 ( .A1(n21), .A2(n134), .B1(N110), .B2(n141), .C1(n113), .C2(
        n133), .Z(n165) );
  aor211d1 U269 ( .C1(n311), .C2(n31), .A(n167), .B(n168), .Z(lu_out[7]) );
  an02d1 U270 ( .A1(alu_cmd[1]), .A2(n171), .Z(n170) );
  mx02d0 U271 ( .I0(n172), .I1(psw[1]), .S(alu_cmd[3]), .Z(n171) );
  nr02d0 U272 ( .A1(n290), .A2(n173), .ZN(n172) );
  nr03d0 U273 ( .A1(n289), .A2(n175), .A3(n271), .ZN(n174) );
  nd02d1 U274 ( .A1(n175), .A2(n290), .ZN(n166) );
  inv0d1 U275 ( .I(alu_cmd[3]), .ZN(n175) );
  aor221d2 U276 ( .B1(p_reg[2]), .B2(n130), .C1(queue_out[2]), .C2(a_src[0]), 
        .A(n222), .Z(a_alu[2]) );
  inv0d2 U277 ( .I(n260), .ZN(n314) );
  nd02d2 U278 ( .A1(n255), .A2(n256), .ZN(n264) );
  inv0d1 U279 ( .I(muldiv_op[0]), .ZN(n183) );
  nd03d0 U280 ( .A1(n207), .A2(n209), .A3(n213), .ZN(n211) );
  inv0d1 U281 ( .I(muldiv_op[5]), .ZN(n234) );
  inv0d1 U282 ( .I(n207), .ZN(n223) );
  aor222d1 U283 ( .A1(n224), .A2(p_reg[7]), .B1(n131), .B2(n101), .C1(n223), 
        .C2(n97), .Z(n119) );
  inv0d1 U284 ( .I(carry_src[2]), .ZN(n190) );
  inv0d1 U285 ( .I(carry_src[1]), .ZN(n189) );
  inv0d1 U286 ( .I(carry_src[0]), .ZN(n188) );
  nr02d0 U287 ( .A1(save_carry), .A2(n189), .ZN(n184) );
  mx02d0 U288 ( .I0(psw[1]), .I1(n184), .S(carry_src[0]), .Z(n186) );
  inv0d1 U289 ( .I(psw[1]), .ZN(n185) );
  mx02d0 U290 ( .I0(n186), .I1(n185), .S(carry_src[2]), .Z(n187) );
  aor31d1 U291 ( .B1(n190), .B2(n189), .B3(n188), .A(n187), .Z(n192) );
  inv0d1 U292 ( .I(p_reg[8]), .ZN(n191) );
  nd02d1 U293 ( .A1(muldiv_op[1]), .A2(n191), .ZN(n232) );
  nd02d1 U294 ( .A1(n192), .A2(n232), .ZN(carry_in_tmp) );
  aor22d1 U295 ( .A1(n131), .A2(n96), .B1(p_reg[8]), .B2(n224), .Z(n118) );
  inv0d1 U296 ( .I(a_reg[0]), .ZN(n196) );
  inv0d1 U297 ( .I(a_reg[1]), .ZN(n198) );
  oai2222d1 U298 ( .A1(n196), .A2(n178), .B1(n194), .B2(n213), .C1(n193), .C2(
        n209), .D1(n198), .D2(n207), .ZN(n306) );
  inv0d1 U299 ( .I(a_reg[2]), .ZN(n200) );
  oai2222d1 U300 ( .A1(n196), .A2(n213), .B1(n198), .B2(n178), .C1(n209), .C2(
        n195), .D1(n200), .D2(n207), .ZN(n319) );
  inv0d1 U301 ( .I(a_reg[3]), .ZN(n202) );
  oai2222d1 U302 ( .A1(n198), .A2(n213), .B1(n200), .B2(n178), .C1(n209), .C2(
        n197), .D1(n202), .D2(n207), .ZN(n320) );
  inv0d1 U303 ( .I(a_reg[4]), .ZN(n204) );
  oai2222d1 U304 ( .A1(n200), .A2(n213), .B1(n202), .B2(n178), .C1(n209), .C2(
        n199), .D1(n204), .D2(n207), .ZN(n321) );
  inv0d1 U305 ( .I(a_reg[5]), .ZN(n206) );
  oai2222d1 U306 ( .A1(n202), .A2(n213), .B1(n204), .B2(n178), .C1(n209), .C2(
        n201), .D1(n206), .D2(n207), .ZN(n322) );
  inv0d1 U307 ( .I(a_reg[6]), .ZN(n214) );
  oai2222d1 U308 ( .A1(n204), .A2(n213), .B1(n206), .B2(n178), .C1(n209), .C2(
        n203), .D1(n214), .D2(n207), .ZN(n323) );
  inv0d1 U309 ( .I(a_reg[7]), .ZN(n212) );
  oai2222d1 U310 ( .A1(n206), .A2(n213), .B1(n214), .B2(n178), .C1(n209), .C2(
        n205), .D1(n212), .D2(n207), .ZN(n324) );
  inv0d1 U311 ( .I(adder_out[0]), .ZN(n208) );
  oai2222d1 U312 ( .A1(n214), .A2(n213), .B1(n212), .B2(n178), .C1(n210), .C2(
        n209), .D1(n208), .D2(n207), .ZN(n310) );
  inv0d1 U313 ( .I(a_src[0]), .ZN(n216) );
  aor222d1 U314 ( .A1(n224), .A2(p_reg[5]), .B1(adder_out[5]), .B2(n131), .C1(
        adder_out[6]), .C2(n223), .Z(n121) );
  aor222d1 U315 ( .A1(n224), .A2(p_reg[4]), .B1(adder_out[4]), .B2(n131), .C1(
        adder_out[5]), .C2(n223), .Z(n122) );
  aor222d1 U316 ( .A1(a_data[5]), .A2(n132), .B1(p_reg[4]), .B2(n25), .C1(
        a_reg[5]), .C2(n27), .Z(n220) );
  aor222d1 U317 ( .A1(n224), .A2(p_reg[3]), .B1(n94), .B2(n131), .C1(
        adder_out[4]), .C2(n223), .Z(n123) );
  aor222d1 U318 ( .A1(n224), .A2(p_reg[2]), .B1(adder_out[2]), .B2(n131), .C1(
        n94), .C2(n223), .Z(n124) );
  aor222d1 U319 ( .A1(a_data[3]), .A2(n132), .B1(p_reg[2]), .B2(n25), .C1(
        a_reg[3]), .C2(n27), .Z(n221) );
  aor222d1 U320 ( .A1(n224), .A2(p_reg[1]), .B1(adder_out[1]), .B2(n131), .C1(
        adder_out[2]), .C2(n223), .Z(n125) );
  aor222d1 U321 ( .A1(n224), .A2(p_reg[0]), .B1(adder_out[0]), .B2(n131), .C1(
        adder_out[1]), .C2(n223), .Z(n126) );
  an02d1 U322 ( .A1(n227), .A2(n226), .Z(n231) );
  nd02d1 U323 ( .A1(b_src[1]), .A2(n233), .ZN(n238) );
  inv0d1 U324 ( .I(b_src[1]), .ZN(n235) );
  aoim22d1 U325 ( .A1(b_src[0]), .A2(n235), .B1(p_reg[8]), .B2(n234), .Z(n236)
         );
  mx02d0 U326 ( .I0(n236), .I1(a_reg[0]), .S(muldiv_op[0]), .Z(n237) );
  nd02d1 U327 ( .A1(n238), .A2(n237), .ZN(n241) );
  inv0d1 U328 ( .I(n241), .ZN(n246) );
  inv0d1 U329 ( .I(n238), .ZN(n239) );
  nd02d1 U330 ( .A1(save_a7), .A2(n239), .ZN(n240) );
  inv0d1 U331 ( .I(n240), .ZN(n243) );
  inv0d1 U332 ( .I(n301), .ZN(n299) );
  xr02d1 U333 ( .A1(n257), .A2(n300), .Z(N117) );
  inv0d1 U334 ( .I(n254), .ZN(n242) );
  aor22d1 U335 ( .A1(n243), .A2(n245), .B1(n242), .B2(n241), .Z(n244) );
  xr02d1 U336 ( .A1(n21), .A2(n312), .Z(N118) );
  nd02d1 U337 ( .A1(n256), .A2(n248), .ZN(n259) );
  xr02d1 U338 ( .A1(n63), .A2(n313), .Z(N119) );
  mx02d0 U339 ( .I0(n254), .I1(n253), .S(b_data[4]), .Z(n249) );
  nd02d1 U340 ( .A1(n256), .A2(n249), .ZN(n260) );
  xr02d1 U341 ( .A1(a_alu[4]), .A2(n314), .Z(N120) );
  nd02d1 U342 ( .A1(n256), .A2(n250), .ZN(n261) );
  xr02d1 U343 ( .A1(n41), .A2(n38), .Z(N121) );
  xr02d1 U344 ( .A1(a_alu[2]), .A2(n315), .Z(N122) );
  xr02d1 U345 ( .A1(n176), .A2(n316), .Z(N123) );
  xr02d1 U346 ( .A1(n264), .A2(n289), .Z(N124) );
  nr02d0 U347 ( .A1(n300), .A2(n257), .ZN(N101) );
  nr02d0 U348 ( .A1(n113), .A2(n258), .ZN(N102) );
  nr02d0 U349 ( .A1(n307), .A2(n259), .ZN(N103) );
  nr02d0 U350 ( .A1(n177), .A2(n260), .ZN(N104) );
  nr02d0 U351 ( .A1(n99), .A2(n261), .ZN(N105) );
  nr02d0 U352 ( .A1(n116), .A2(n262), .ZN(N106) );
  nd02d1 U353 ( .A1(n259), .A2(n307), .ZN(N111) );
  inv0d1 U354 ( .I(alu_cmd[1]), .ZN(n271) );
  nr02d0 U355 ( .A1(n266), .A2(n265), .ZN(n270) );
  nr03d0 U356 ( .A1(n52), .A2(n64), .A3(alu_cmd[2]), .ZN(n269) );
  nr03d0 U357 ( .A1(b_data[2]), .A2(b_data[3]), .A3(b_data[4]), .ZN(n268) );
  nr03d0 U358 ( .A1(b_data[6]), .A2(b_data[5]), .A3(b_data[7]), .ZN(n267) );
  inv0d1 U359 ( .I(alu_cmd[2]), .ZN(n290) );
  inv0d1 U360 ( .I(flag_op[1]), .ZN(n296) );
  inv0d1 U361 ( .I(flag_op[0]), .ZN(n273) );
  nd02d1 U362 ( .A1(n296), .A2(n273), .ZN(n318) );
  inv0d1 U363 ( .I(n318), .ZN(n297) );
  inv0d1 U364 ( .I(flag_op[2]), .ZN(n325) );
  nr03d0 U365 ( .A1(n325), .A2(psw[0]), .A3(flag_op[0]), .ZN(n287) );
  xr02d1 U366 ( .A1(n296), .A2(flag_op[0]), .Z(n274) );
  nd02d1 U367 ( .A1(n274), .A2(n318), .ZN(n304) );
  nd02d1 U368 ( .A1(n274), .A2(n304), .ZN(n298) );
  inv0d1 U369 ( .I(n298), .ZN(n286) );
  inv0d1 U370 ( .I(adder_out[5]), .ZN(n282) );
  nr04d0 U371 ( .A1(adder_out[2]), .A2(adder_out[3]), .A3(adder_out[1]), .A4(
        adder_out[0]), .ZN(n279) );
  nd04d0 U372 ( .A1(n282), .A2(n281), .A3(n280), .A4(n279), .ZN(n283) );
  aor21d1 U373 ( .B1(psw[0]), .B2(n297), .A(n288), .Z(next_psw[0]) );
  nr04d0 U374 ( .A1(alu_cmd[1]), .A2(alu_cmd[3]), .A3(n138), .A4(n290), .ZN(
        n291) );
  mx02d0 U375 ( .I0(n292), .I1(n40), .S(n291), .Z(n293) );
  aor21d1 U376 ( .B1(carry_out), .B2(n294), .A(n293), .Z(n295) );
  aor22d1 U377 ( .A1(psw[1]), .A2(n296), .B1(flag_op[1]), .B2(n295), .Z(
        next_psw[1]) );
  aor22d1 U378 ( .A1(n298), .A2(n115), .B1(psw[2]), .B2(n297), .Z(next_psw[2])
         );
  nr02d0 U379 ( .A1(n300), .A2(n299), .ZN(n303) );
  nr02d0 U380 ( .A1(n40), .A2(n301), .ZN(n302) );
endmodule


module risc8_regb_biu_DW01_dec_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33;

  aor21d4 U1 ( .B1(A[1]), .B2(A[0]), .A(n28), .Z(SUM[1]) );
  inv0d1 U2 ( .I(A[12]), .ZN(n6) );
  inv0d1 U3 ( .I(A[13]), .ZN(n4) );
  an12d1 U4 ( .A2(n23), .A1(A[7]), .Z(n22) );
  an02d1 U5 ( .A1(n20), .A2(n2), .Z(n33) );
  inv0d1 U6 ( .I(A[10]), .ZN(n2) );
  an02d1 U7 ( .A1(n33), .A2(n3), .Z(n32) );
  inv0d1 U8 ( .I(A[11]), .ZN(n3) );
  an02d1 U9 ( .A1(n21), .A2(n5), .Z(n20) );
  inv0d1 U10 ( .I(A[9]), .ZN(n5) );
  an02d1 U11 ( .A1(n25), .A2(n1), .Z(n24) );
  inv0d1 U12 ( .I(A[5]), .ZN(n1) );
  inv0d1 U13 ( .I(n22), .ZN(n12) );
  inv0d1 U14 ( .I(n24), .ZN(n14) );
  aor21d1 U15 ( .B1(A[7]), .B2(n13), .A(n22), .Z(SUM[7]) );
  inv0d1 U16 ( .I(n23), .ZN(n13) );
  an12d1 U17 ( .A2(n30), .A1(A[14]), .Z(n29) );
  aor21d1 U18 ( .B1(A[10]), .B2(n10), .A(n33), .Z(SUM[10]) );
  inv0d1 U19 ( .I(n20), .ZN(n10) );
  aor21d1 U20 ( .B1(A[5]), .B2(n15), .A(n24), .Z(SUM[5]) );
  inv0d1 U21 ( .I(n25), .ZN(n15) );
  aor21d1 U22 ( .B1(A[3]), .B2(n17), .A(n26), .Z(SUM[3]) );
  nr02d0 U23 ( .A1(n17), .A2(A[3]), .ZN(n26) );
  aor21d1 U24 ( .B1(A[2]), .B2(n18), .A(n27), .Z(SUM[2]) );
  aor21d4 U25 ( .B1(A[4]), .B2(n16), .A(n25), .Z(SUM[4]) );
  aor21d1 U26 ( .B1(A[6]), .B2(n14), .A(n23), .Z(SUM[6]) );
  aor21d1 U27 ( .B1(A[13]), .B2(n7), .A(n30), .Z(SUM[13]) );
  an02d2 U28 ( .A1(n31), .A2(n4), .Z(n30) );
  clk2d2 U29 ( .CLK(n33), .CN(n9) );
  clk2d2 U30 ( .CLK(n31), .CN(n7) );
  an02d2 U31 ( .A1(n32), .A2(n6), .Z(n31) );
  clk2d2 U32 ( .CLK(n21), .CN(n11) );
  clk2d2 U33 ( .CLK(n32), .CN(n8) );
  inv0d1 U34 ( .I(n28), .ZN(n18) );
  inv0d1 U35 ( .I(n26), .ZN(n16) );
  inv0d1 U36 ( .I(n27), .ZN(n17) );
  aor21d1 U37 ( .B1(A[8]), .B2(n12), .A(n21), .Z(SUM[8]) );
  inv0d0 U38 ( .I(A[0]), .ZN(SUM[0]) );
  aor21d1 U39 ( .B1(A[12]), .B2(n8), .A(n31), .Z(SUM[12]) );
  nr02d0 U40 ( .A1(n14), .A2(A[6]), .ZN(n23) );
  aor21d1 U41 ( .B1(A[9]), .B2(n11), .A(n20), .Z(SUM[9]) );
  xr02d1 U42 ( .A1(A[15]), .A2(n29), .Z(SUM[15]) );
  xr02d1 U43 ( .A1(A[14]), .A2(n30), .Z(SUM[14]) );
  aor21d1 U44 ( .B1(A[11]), .B2(n9), .A(n32), .Z(SUM[11]) );
  nr02d0 U45 ( .A1(n12), .A2(A[8]), .ZN(n21) );
  nr02d0 U46 ( .A1(n16), .A2(A[4]), .ZN(n25) );
  nr02d0 U47 ( .A1(n18), .A2(A[2]), .ZN(n27) );
  nr02d0 U48 ( .A1(A[1]), .A2(A[0]), .ZN(n28) );
endmodule


module risc8_regb_biu_DW01_inc_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2;
  wire   [15:2] carry;

  ah01d1 U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ah01d0 U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ah01d0 U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ah01d0 U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ah01d0 U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ah01d0 U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ah01d0 U1_1_11 ( .A(A[11]), .B(n2), .CO(carry[12]), .S(SUM[11]) );
  ah01d0 U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ah01d0 U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ah01d1 U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ah01d1 U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ah01d1 U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  xr02d2 U1 ( .A1(carry[15]), .A2(A[15]), .Z(SUM[15]) );
  an02d1 U2 ( .A1(A[9]), .A2(carry[9]), .Z(n1) );
  an02d1 U3 ( .A1(A[10]), .A2(n1), .Z(n2) );
  xr02d1 U4 ( .A1(A[10]), .A2(n1), .Z(SUM[10]) );
  xr02d1 U5 ( .A1(A[9]), .A2(carry[9]), .Z(SUM[9]) );
  inv0d0 U6 ( .I(A[0]), .ZN(SUM[0]) );
endmodule


module risc8_regb_biu ( cycle, write, ifetch, iack, ie, address, data_out, psw, 
        a_data, b_data, queue_out, queue_count, data_ready, clk, rst_n, a_addr, 
        b_addr, w_addr, wr_reg, int_type, alu_out, data_op, addr_op, opcode_op, 
        inc_pc, next_psw, data_in, ready );
  output [15:0] address;
  output [7:0] data_out;
  output [7:0] psw;
  output [7:0] a_data;
  output [7:0] b_data;
  output [7:0] queue_out;
  output [2:0] queue_count;
  input [3:0] a_addr;
  input [3:0] b_addr;
  input [3:0] w_addr;
  input [1:0] int_type;
  input [7:0] alu_out;
  input [2:0] data_op;
  input [3:0] addr_op;
  input [4:0] opcode_op;
  input [1:0] inc_pc;
  input [7:0] next_psw;
  input [7:0] data_in;
  input clk, rst_n, wr_reg, ready;
  output cycle, write, ifetch, iack, ie, data_ready;
  wire   N58, N59, N60, N61, N62, N63, N65, n788, n789, n790, ie, opcode_op_0,
         \reg_file[0][7] , \reg_file[0][6] , \reg_file[0][5] ,
         \reg_file[0][4] , \reg_file[0][3] , \reg_file[0][2] ,
         \reg_file[0][1] , \reg_file[0][0] , \reg_file[1][7] ,
         \reg_file[1][6] , \reg_file[1][5] , \reg_file[1][4] ,
         \reg_file[1][3] , \reg_file[1][2] , \reg_file[1][1] ,
         \reg_file[1][0] , \reg_file[2][7] , \reg_file[2][6] ,
         \reg_file[2][5] , \reg_file[2][4] , \reg_file[2][3] ,
         \reg_file[2][2] , \reg_file[2][1] , \reg_file[2][0] ,
         \reg_file[3][7] , \reg_file[3][6] , \reg_file[3][5] ,
         \reg_file[3][4] , \reg_file[3][3] , \reg_file[3][2] ,
         \reg_file[3][1] , \reg_file[3][0] , \reg_file[4][7] ,
         \reg_file[4][6] , \reg_file[4][5] , \reg_file[4][4] ,
         \reg_file[4][3] , \reg_file[4][2] , \reg_file[4][1] ,
         \reg_file[4][0] , \reg_file[5][7] , \reg_file[5][6] ,
         \reg_file[5][5] , \reg_file[5][4] , \reg_file[5][3] ,
         \reg_file[5][2] , \reg_file[5][1] , \reg_file[5][0] ,
         \reg_file[6][7] , \reg_file[6][6] , \reg_file[6][5] ,
         \reg_file[6][4] , \reg_file[6][3] , \reg_file[6][2] ,
         \reg_file[6][1] , \reg_file[6][0] , \reg_file[7][7] ,
         \reg_file[7][6] , \reg_file[7][5] , \reg_file[7][4] ,
         \reg_file[7][3] , \reg_file[7][2] , \reg_file[7][1] ,
         \reg_file[7][0] , N69, N70, N71, N72, N73, N74, N75, N76, N78, N79,
         N80, N81, N82, N83, N84, N85, N108, N109, N110, N111, N112, N113,
         N114, N115, \ins_queue[0][7] , \ins_queue[0][6] , \ins_queue[0][5] ,
         \ins_queue[0][4] , \ins_queue[0][3] , \ins_queue[0][2] ,
         \ins_queue[0][1] , \ins_queue[0][0] , \ins_queue[1][7] ,
         \ins_queue[1][6] , \ins_queue[1][5] , \ins_queue[1][4] ,
         \ins_queue[1][3] , \ins_queue[1][2] , \ins_queue[1][1] ,
         \ins_queue[1][0] , \ins_queue[2][7] , \ins_queue[2][6] ,
         \ins_queue[2][5] , \ins_queue[2][4] , \ins_queue[2][3] ,
         \ins_queue[2][2] , \ins_queue[2][1] , \ins_queue[2][0] ,
         \ins_queue[3][7] , \ins_queue[3][6] , \ins_queue[3][5] ,
         \ins_queue[3][4] , \ins_queue[3][3] , \ins_queue[3][2] ,
         \ins_queue[3][1] , \ins_queue[3][0] , clear_queue, \bus_state[0] ,
         N313, n3, n4, n5, n7, n8, n10, n11, n12, n14, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n34, n35,
         n36, n37, n38, n39, n138, n144, n211, n212, n213, n214, n215, n216,
         n217, n241, n243, n244, n245, n247, n248, n249, n250, n274, n275,
         n276, n277, n278, n279, n280, n281, n283, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n1, n2, n6, n9, n13, n15, n33, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n139, n140, n141, n142, n143, n145, n146,
         n147, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n199, n200, n202, n205, n207, n210,
         n219, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n242,
         n246, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n282, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n340, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n350, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n360, n361, n427, n428, n430, n433, n434, n435, n436,
         n437, n438, n439, n440, n441, n442, n443, n444, n445, n446, n447,
         n448, n449, n450, n451, n452, n453, n454, n455, n456, n457, n458,
         n459, n460, n461, n462, n463, n464, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n491,
         n492, n493, n494, n495, n496, n497, n498, n499, n500, n501, n502,
         n503, n504, n505, n506, n507, n508, n509, n510, n511, n512, n513,
         n514, n515, n516, n517, n518, n519, n520, n521, n522, n523, n524,
         n525, n526, n527, n528, n529, n530, n531, n532, n533, n534, n535,
         n536, n537, n538, n539, n540, n541, n542, n543, n544, n545, n546,
         n547, n548, n549, n550, n551, n552, n553, n554, n555, n556, n557,
         n558, n559, n560, n561, n562, n563, n564, n565, n566, n567, n568,
         n569, n570, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n590,
         n591, n592, n593, n594, n595, n596, n597, n598, n599, n600, n601,
         n602, n603, n604, n605, n606, n607, n608, n609, n610, n611, n612,
         n613, n614, n615, n616, n617, n618, n619, n620, n621, n622, n623,
         n624, n625, n626, n627, n628, n629, n630, n631, n632, n633, n634,
         n635, n636, n637, n638, n639, n640, n641, n642, n643, n644, n645,
         n646, n647, n648, n649, n650, n651, n652, n653, n654, n655, n656,
         n657, n658, n659, n660, n661, n662, n663, n664, n665, n666, n667,
         n668, n669, n670, n671, n672, n673, n674, n675, n676, n677, n678,
         n679, n680, n681, n682, n683, n684, n685, n686, n687, n688, n689,
         n690, n691, n692, n693, n694, n695, n696, n697, n698, n699, n700,
         n701, n702, n703, n704, n705, n706, n707, n708, n709, n710, n711,
         n712, n713, n714, n715, n716, n717, n718, n719, n720, n721, n722,
         n723, n724, n725, n726, n727, n728, n729, n730, n731, n732, n733,
         n734, n735, n736, n737, n738, n739, n740, n741, n742, n743, n744,
         n745, n746, n747, n748, n749, n750, n751, n752, n753, n754, n755,
         n756, n757, n758, n759, n760, n761, n762, n763, n764, n765, n766,
         n767, n768, n769, n770, n771, n772, n773, n774, n775, n776, n777,
         n779, n780, n781, n782, n783, n784, n785, n786;
  wire   [15:0] pc;
  wire   [15:0] sp;
  wire   [15:0] inc_address;
  wire   [15:0] dec_address;
  wire   [15:0] address_save;
  assign N58 = a_addr[0];
  assign N59 = a_addr[1];
  assign N60 = a_addr[2];
  assign N61 = b_addr[0];
  assign N62 = b_addr[1];
  assign N63 = b_addr[2];
  assign psw[4] = ie;
  assign opcode_op_0 = opcode_op[0];

  dfprb1 \sp_reg[12]  ( .D(n367), .CP(clk), .SDN(n448), .Q(sp[12]), .QN(n39)
         );
  dfprb1 \sp_reg[13]  ( .D(n366), .CP(clk), .SDN(n448), .Q(sp[13]), .QN(n38)
         );
  dfprb1 \sp_reg[14]  ( .D(n365), .CP(clk), .SDN(n448), .Q(sp[14]), .QN(n37)
         );
  dfprb1 \sp_reg[15]  ( .D(n364), .CP(clk), .SDN(n449), .Q(sp[15]), .QN(n36)
         );
  aon211d1 U306 ( .C1(n786), .C2(n32), .B(n776), .A(n785), .ZN(n248) );
  nr04d0 U307 ( .A1(n785), .A2(clear_queue), .A3(n776), .A4(n32), .ZN(n247) );
  nr02d0 U309 ( .A1(n32), .A2(n249), .ZN(n250) );
  an12d1 U342 ( .A2(wr_reg), .A1(w_addr[3]), .Z(n283) );
  risc8_regb_biu_DW01_dec_0 sub_549 ( .A({address[15:13], n64, address[11], 
        n72, n779, address[8:6], n783, address[4:2], n780, n427}), .SUM(
        dec_address) );
  risc8_regb_biu_DW01_inc_0 add_548 ( .A({address[15:14], n441, n64, 
        address[11], n72, n779, address[8:6], n783, address[4:2], n780, n427}), 
        .SUM(inc_address) );
  decrq1 \data_out_reg[7]  ( .D(b_data[7]), .ENN(n138), .CP(clk), .CDN(n449), 
        .Q(data_out[7]) );
  decrq1 \data_out_reg[6]  ( .D(b_data[6]), .ENN(n138), .CP(clk), .CDN(n448), 
        .Q(data_out[6]) );
  decrq1 \data_out_reg[5]  ( .D(b_data[5]), .ENN(n138), .CP(clk), .CDN(n449), 
        .Q(data_out[5]) );
  decrq1 \data_out_reg[4]  ( .D(b_data[4]), .ENN(n138), .CP(clk), .CDN(n448), 
        .Q(data_out[4]) );
  decrq1 \data_out_reg[3]  ( .D(b_data[3]), .ENN(n138), .CP(clk), .CDN(n449), 
        .Q(data_out[3]) );
  decrq1 \data_out_reg[2]  ( .D(n80), .ENN(n138), .CP(clk), .CDN(n448), .Q(
        data_out[2]) );
  decrq1 \data_out_reg[0]  ( .D(n83), .ENN(n138), .CP(clk), .CDN(n448), .Q(
        data_out[0]) );
  dfcrq1 \pc_reg[1]  ( .D(n406), .CP(clk), .CDN(rst_n), .Q(pc[1]) );
  dfcrq1 \pc_reg[8]  ( .D(n415), .CP(clk), .CDN(n445), .Q(pc[8]) );
  dfcrq1 \pc_reg[6]  ( .D(n401), .CP(clk), .CDN(n446), .Q(pc[6]) );
  dfcrq1 \pc_reg[13]  ( .D(n410), .CP(clk), .CDN(n445), .Q(pc[13]) );
  dfcrq1 \pc_reg[0]  ( .D(n407), .CP(clk), .CDN(n446), .Q(pc[0]) );
  decrq1 \address_save_reg[0]  ( .D(inc_address[0]), .ENN(n144), .CP(clk), 
        .CDN(n449), .Q(address_save[0]) );
  decrq1 \address_save_reg[1]  ( .D(inc_address[1]), .ENN(n144), .CP(clk), 
        .CDN(n447), .Q(address_save[1]) );
  decrq1 \address_save_reg[4]  ( .D(inc_address[4]), .ENN(n144), .CP(clk), 
        .CDN(n448), .Q(address_save[4]) );
  decrq1 \address_save_reg[5]  ( .D(inc_address[5]), .ENN(n144), .CP(clk), 
        .CDN(n448), .Q(address_save[5]) );
  decrq1 \address_save_reg[6]  ( .D(inc_address[6]), .ENN(n144), .CP(clk), 
        .CDN(n448), .Q(address_save[6]) );
  decrq1 \address_save_reg[10]  ( .D(inc_address[10]), .ENN(n144), .CP(clk), 
        .CDN(n449), .Q(address_save[10]) );
  decrq1 \address_save_reg[11]  ( .D(inc_address[11]), .ENN(n144), .CP(clk), 
        .CDN(n447), .Q(address_save[11]) );
  decrq1 \address_save_reg[12]  ( .D(inc_address[12]), .ENN(n144), .CP(clk), 
        .CDN(n449), .Q(address_save[12]) );
  decrq1 \address_save_reg[13]  ( .D(inc_address[13]), .ENN(n144), .CP(clk), 
        .CDN(n447), .Q(address_save[13]) );
  decrq1 \address_save_reg[14]  ( .D(inc_address[14]), .ENN(n144), .CP(clk), 
        .CDN(n449), .Q(address_save[14]) );
  decrq1 \address_save_reg[15]  ( .D(inc_address[15]), .ENN(n144), .CP(clk), 
        .CDN(n449), .Q(address_save[15]) );
  decrq1 \address_save_reg[7]  ( .D(inc_address[7]), .ENN(n144), .CP(clk), 
        .CDN(n447), .Q(address_save[7]) );
  decrq1 \address_save_reg[3]  ( .D(inc_address[3]), .ENN(n144), .CP(clk), 
        .CDN(n447), .Q(address_save[3]) );
  decrq1 \address_save_reg[8]  ( .D(inc_address[8]), .ENN(n144), .CP(clk), 
        .CDN(n448), .Q(address_save[8]) );
  decrq1 \address_save_reg[9]  ( .D(inc_address[9]), .ENN(n144), .CP(clk), 
        .CDN(n447), .Q(address_save[9]) );
  dfcrq1 clear_queue_reg ( .D(n424), .CP(clk), .CDN(n447), .Q(clear_queue) );
  denrq1 \ins_queue_reg[1][5]  ( .D(data_in[5]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][5] ) );
  denrq1 \ins_queue_reg[1][4]  ( .D(data_in[4]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][4] ) );
  denrq1 \ins_queue_reg[1][3]  ( .D(data_in[3]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][3] ) );
  denrq1 \ins_queue_reg[1][7]  ( .D(data_in[7]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][7] ) );
  denrq1 \ins_queue_reg[1][6]  ( .D(data_in[6]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][6] ) );
  denrq1 \ins_queue_reg[0][5]  ( .D(data_in[5]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][5] ) );
  denrq1 \ins_queue_reg[0][4]  ( .D(data_in[4]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][4] ) );
  denrq1 \ins_queue_reg[2][5]  ( .D(data_in[5]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][5] ) );
  denrq1 \ins_queue_reg[2][4]  ( .D(data_in[4]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][4] ) );
  denrq1 \ins_queue_reg[3][5]  ( .D(data_in[5]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][5] ) );
  denrq1 \ins_queue_reg[3][4]  ( .D(data_in[4]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][4] ) );
  denrq1 \ins_queue_reg[0][3]  ( .D(data_in[3]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][3] ) );
  denrq1 \ins_queue_reg[2][3]  ( .D(data_in[3]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][3] ) );
  denrq1 \ins_queue_reg[3][3]  ( .D(data_in[3]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][3] ) );
  denrq1 \ins_queue_reg[0][7]  ( .D(data_in[7]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][7] ) );
  denrq1 \ins_queue_reg[0][6]  ( .D(data_in[6]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][6] ) );
  denrq1 \ins_queue_reg[2][7]  ( .D(data_in[7]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][7] ) );
  denrq1 \ins_queue_reg[3][7]  ( .D(data_in[7]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][7] ) );
  denrq1 \ins_queue_reg[2][6]  ( .D(data_in[6]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][6] ) );
  denrq1 \ins_queue_reg[3][6]  ( .D(data_in[6]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][6] ) );
  denrq1 \ins_queue_reg[3][1]  ( .D(data_in[1]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][1] ) );
  denrq1 \ins_queue_reg[1][1]  ( .D(data_in[1]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][1] ) );
  denrq1 \ins_queue_reg[2][1]  ( .D(data_in[1]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][1] ) );
  denrq1 \ins_queue_reg[0][1]  ( .D(data_in[1]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][1] ) );
  denrq1 \ins_queue_reg[3][2]  ( .D(data_in[2]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][2] ) );
  denrq1 \ins_queue_reg[1][2]  ( .D(data_in[2]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][2] ) );
  denrq1 \ins_queue_reg[2][2]  ( .D(data_in[2]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][2] ) );
  denrq1 \ins_queue_reg[0][2]  ( .D(data_in[2]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][2] ) );
  denrq1 \ins_queue_reg[3][0]  ( .D(data_in[0]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][0] ) );
  denrq1 \ins_queue_reg[2][0]  ( .D(data_in[0]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][0] ) );
  denrq1 \ins_queue_reg[0][0]  ( .D(data_in[0]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][0] ) );
  denrq1 \ins_queue_reg[1][0]  ( .D(data_in[0]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][0] ) );
  denrq1 \reg_file_reg[3][0]  ( .D(n217), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][0] ) );
  denrq1 \reg_file_reg[2][0]  ( .D(n217), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][0] ) );
  denrq1 \reg_file_reg[1][0]  ( .D(n217), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][0] ) );
  denrq1 \reg_file_reg[5][0]  ( .D(n217), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][0] ) );
  denrq1 \reg_file_reg[0][0]  ( .D(n217), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][0] ) );
  denrq1 \reg_file_reg[0][1]  ( .D(n116), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][1] ) );
  denrq1 \reg_file_reg[7][4]  ( .D(n213), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][4] ) );
  denrq1 \reg_file_reg[6][4]  ( .D(n213), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][4] ) );
  denrq1 \reg_file_reg[3][4]  ( .D(n213), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][4] ) );
  denrq1 \reg_file_reg[2][4]  ( .D(n213), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][4] ) );
  denrq1 \reg_file_reg[5][4]  ( .D(n213), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][4] ) );
  denrq1 \reg_file_reg[1][4]  ( .D(n213), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][4] ) );
  denrq1 \reg_file_reg[4][4]  ( .D(n213), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][4] ) );
  denrq1 \reg_file_reg[0][4]  ( .D(n213), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][4] ) );
  denrq1 \reg_file_reg[7][3]  ( .D(n233), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][3] ) );
  denrq1 \reg_file_reg[6][3]  ( .D(n233), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][3] ) );
  denrq1 \reg_file_reg[3][3]  ( .D(n233), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][3] ) );
  denrq1 \reg_file_reg[2][3]  ( .D(n233), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][3] ) );
  denrq1 \reg_file_reg[7][5]  ( .D(n212), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][5] ) );
  denrq1 \reg_file_reg[6][5]  ( .D(n212), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][5] ) );
  denrq1 \reg_file_reg[3][5]  ( .D(n212), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][5] ) );
  denrq1 \reg_file_reg[2][5]  ( .D(n212), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][5] ) );
  denrq1 \reg_file_reg[5][3]  ( .D(n233), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][3] ) );
  denrq1 \reg_file_reg[1][3]  ( .D(n233), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][3] ) );
  denrq1 \reg_file_reg[4][3]  ( .D(n233), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][3] ) );
  denrq1 \reg_file_reg[0][3]  ( .D(n233), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][3] ) );
  denrq1 \reg_file_reg[5][5]  ( .D(n212), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][5] ) );
  denrq1 \reg_file_reg[1][5]  ( .D(n212), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][5] ) );
  denrq1 \reg_file_reg[4][5]  ( .D(n212), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][5] ) );
  denrq1 \reg_file_reg[0][5]  ( .D(n212), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][5] ) );
  denrq1 \reg_file_reg[7][2]  ( .D(n215), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][2] ) );
  denrq1 \reg_file_reg[6][2]  ( .D(n215), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][2] ) );
  denrq1 \reg_file_reg[3][2]  ( .D(n215), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][2] ) );
  denrq1 \reg_file_reg[2][2]  ( .D(n215), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][2] ) );
  denrq1 \reg_file_reg[5][2]  ( .D(n215), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][2] ) );
  denrq1 \reg_file_reg[1][2]  ( .D(n215), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][2] ) );
  denrq1 \reg_file_reg[4][2]  ( .D(n215), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][2] ) );
  denrq1 \reg_file_reg[0][2]  ( .D(n215), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][2] ) );
  denrq1 \reg_file_reg[7][6]  ( .D(n211), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][6] ) );
  denrq1 \reg_file_reg[6][6]  ( .D(n211), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][6] ) );
  denrq1 \reg_file_reg[3][6]  ( .D(n211), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][6] ) );
  denrq1 \reg_file_reg[2][6]  ( .D(n211), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][6] ) );
  denrq1 \reg_file_reg[5][6]  ( .D(n211), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][6] ) );
  denrq1 \reg_file_reg[1][6]  ( .D(n211), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][6] ) );
  denrq1 \reg_file_reg[4][6]  ( .D(n211), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][6] ) );
  denrq1 \reg_file_reg[0][6]  ( .D(n211), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][6] ) );
  denrq1 \reg_file_reg[5][1]  ( .D(n116), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][1] ) );
  denrq1 \reg_file_reg[4][1]  ( .D(n116), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][1] ) );
  denrq1 \reg_file_reg[1][1]  ( .D(n116), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][1] ) );
  dfcrq1 iack_reg ( .D(N313), .CP(clk), .CDN(n446), .Q(n790) );
  dfcrq1 \psw_reg[5]  ( .D(N113), .CP(clk), .CDN(n446), .Q(psw[5]) );
  dfcrq1 \psw_reg[6]  ( .D(N114), .CP(clk), .CDN(n445), .Q(psw[6]) );
  dfcrq1 \pc_reg[5]  ( .D(n402), .CP(clk), .CDN(n445), .Q(pc[5]) );
  dfcrq1 \pc_reg[9]  ( .D(n414), .CP(clk), .CDN(n445), .Q(pc[9]) );
  dfcrq1 \pc_reg[14]  ( .D(n409), .CP(clk), .CDN(n445), .Q(pc[14]) );
  dfcrq1 \psw_reg[3]  ( .D(N111), .CP(clk), .CDN(n445), .Q(psw[3]) );
  dfcrq1 \psw_reg[2]  ( .D(N110), .CP(clk), .CDN(n447), .Q(psw[2]) );
  dfcrq1 \pc_reg[12]  ( .D(n411), .CP(clk), .CDN(n445), .Q(pc[12]) );
  dfcrq1 \pc_reg[10]  ( .D(n413), .CP(clk), .CDN(n444), .Q(pc[10]) );
  dfcrq1 \pc_reg[11]  ( .D(n412), .CP(clk), .CDN(n445), .Q(pc[11]) );
  dfcrq1 \pc_reg[3]  ( .D(n404), .CP(clk), .CDN(n445), .Q(pc[3]) );
  dfcrq1 \queue_count_reg[1]  ( .D(n420), .CP(clk), .CDN(n446), .Q(
        queue_count[1]) );
  dfcrq1 \psw_reg[1]  ( .D(N109), .CP(clk), .CDN(n446), .Q(psw[1]) );
  dfcrn1 \address_reg[4]  ( .D(n383), .CP(clk), .CDN(n443), .QN(n19) );
  denrq1 \reg_file_reg[6][7]  ( .D(n230), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][7] ) );
  denrq1 \reg_file_reg[2][7]  ( .D(n230), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][7] ) );
  denrq1 \reg_file_reg[7][7]  ( .D(n230), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][7] ) );
  denrq1 \reg_file_reg[3][7]  ( .D(n230), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][7] ) );
  denrq1 \reg_file_reg[4][7]  ( .D(n230), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][7] ) );
  denrq1 \reg_file_reg[0][7]  ( .D(n230), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][7] ) );
  denrq1 \reg_file_reg[5][7]  ( .D(n230), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][7] ) );
  denrq1 \reg_file_reg[1][7]  ( .D(n230), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][7] ) );
  dfcrn4 \psw_reg[0]  ( .D(N108), .CP(clk), .CDN(n447), .QN(n160) );
  dfcrb1 \out_pointer_reg[0]  ( .D(n397), .CP(clk), .CDN(rst_n), .Q(n246), 
        .QN(n251) );
  dfcrn4 \queue_count_reg[2]  ( .D(n423), .CP(clk), .CDN(n444), .QN(n35) );
  dfcrq4 \queue_count_reg[0]  ( .D(n421), .CP(clk), .CDN(n447), .Q(
        queue_count[0]) );
  dfcrq4 \bus_state_reg[0]  ( .D(n418), .CP(clk), .CDN(n445), .Q(
        \bus_state[0] ) );
  dfcrq4 cycle_reg ( .D(n417), .CP(clk), .CDN(n447), .Q(n788) );
  dfcrq4 write_reg ( .D(n416), .CP(clk), .CDN(n446), .Q(write) );
  dfcrq4 \address_reg[6]  ( .D(n381), .CP(clk), .CDN(rst_n), .Q(n84) );
  dfcrq4 \pc_reg[4]  ( .D(n403), .CP(clk), .CDN(n446), .Q(pc[4]) );
  mx02d0 \address_save_reg[2]/U4  ( .I0(inc_address[2]), .I1(address_save[2]), 
        .S(n144), .Z(n77) );
  dfcrq1 \address_save_reg[2]  ( .D(n77), .CP(clk), .CDN(n448), .Q(
        address_save[2]) );
  dfcrb1 \in_pointer_reg[0]  ( .D(n399), .CP(clk), .CDN(n442), .Q(n528), .QN(
        n32) );
  dfcrb1 \in_pointer_reg[1]  ( .D(n398), .CP(clk), .CDN(n442), .Q(n785), .QN(
        n31) );
  dfcrb1 \address_reg[8]  ( .D(n379), .CP(clk), .CDN(n442), .Q(n777), .QN(n28)
         );
  dfcrb1 \sp_reg[0]  ( .D(n394), .CP(clk), .CDN(n442), .Q(n756), .QN(n29) );
  dfcrb1 \sp_reg[5]  ( .D(n389), .CP(clk), .CDN(n443), .Q(n680), .QN(n18) );
  dfcrb1 \address_reg[5]  ( .D(n382), .CP(clk), .CDN(n443), .Q(address[5]), 
        .QN(n17) );
  dfcrb1 \address_reg[0]  ( .D(n395), .CP(clk), .CDN(n442), .Q(address[0]), 
        .QN(n30) );
  dfcrb1 \sp_reg[8]  ( .D(n371), .CP(clk), .CDN(n444), .Q(n760), .QN(n3) );
  dfcrb1 \address_reg[14]  ( .D(n373), .CP(clk), .CDN(n444), .Q(n784), .QN(n4)
         );
  dfcrb1 \address_reg[9]  ( .D(n378), .CP(clk), .CDN(n443), .Q(address[9]), 
        .QN(n11) );
  dfcrb1 \sp_reg[11]  ( .D(n368), .CP(clk), .CDN(n444), .Q(n704), .QN(n8) );
  dfcrb1 \sp_reg[3]  ( .D(n391), .CP(clk), .CDN(n443), .Q(n703), .QN(n21) );
  dfcrb1 \sp_reg[9]  ( .D(n370), .CP(clk), .CDN(n443), .Q(n729), .QN(n12) );
  dfcrb1 \sp_reg[1]  ( .D(n393), .CP(clk), .CDN(n442), .Q(n728), .QN(n26) );
  dfcrb1 \sp_reg[10]  ( .D(n369), .CP(clk), .CDN(n444), .Q(n718), .QN(n10) );
  dfcrb1 \sp_reg[2]  ( .D(n392), .CP(clk), .CDN(n442), .Q(n716), .QN(n24) );
  dfcrb1 \sp_reg[4]  ( .D(n390), .CP(clk), .CDN(n443), .Q(n692), .QN(n20) );
  dfcrb1 \address_reg[13]  ( .D(n374), .CP(clk), .CDN(n444), .Q(n441), .QN(n5)
         );
  dfcrb1 \sp_reg[6]  ( .D(n388), .CP(clk), .CDN(n443), .Q(n660), .QN(n16) );
  dfcrb1 \sp_reg[7]  ( .D(n387), .CP(clk), .CDN(n443), .Q(n750), .QN(n14) );
  dfcrb1 \bus_state_reg[1]  ( .D(n419), .CP(clk), .CDN(n442), .Q(n458), .QN(
        n34) );
  dfcrb1 \address_reg[11]  ( .D(n376), .CP(clk), .CDN(rst_n), .Q(n781), .QN(n7) );
  dfcrb2 \out_pointer_reg[1]  ( .D(n396), .CP(clk), .CDN(rst_n), .Q(N65), .QN(
        n536) );
  dfcrq1 \address_reg[10]  ( .D(n377), .CP(clk), .CDN(n444), .Q(address[10])
         );
  dfcrq1 \address_reg[12]  ( .D(n375), .CP(clk), .CDN(n444), .Q(address[12])
         );
  dfcrb4 \address_reg[7]  ( .D(n380), .CP(clk), .CDN(rst_n), .Q(n86), .QN(n200) );
  denrq1 \reg_file_reg[4][0]  ( .D(n217), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][0] ) );
  denrq1 \reg_file_reg[7][0]  ( .D(n217), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][0] ) );
  denrq1 \reg_file_reg[6][0]  ( .D(n217), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][0] ) );
  denrq1 \reg_file_reg[3][1]  ( .D(n116), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][1] ) );
  denrq1 \reg_file_reg[7][1]  ( .D(n116), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][1] ) );
  denrq1 \reg_file_reg[2][1]  ( .D(n116), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][1] ) );
  denrq1 \reg_file_reg[6][1]  ( .D(n116), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][1] ) );
  dfcrq1 \psw_reg[7]  ( .D(N115), .CP(clk), .CDN(n446), .Q(psw[7]) );
  dfcrq1 \pc_reg[7]  ( .D(n400), .CP(clk), .CDN(n445), .Q(pc[7]) );
  dfcrq1 ifetch_reg ( .D(n422), .CP(clk), .CDN(n446), .Q(n789) );
  dfcrq1 \psw_reg[4]  ( .D(N112), .CP(clk), .CDN(n447), .Q(ie) );
  dfcrn1 \address_reg[15]  ( .D(n372), .CP(clk), .CDN(n442), .QN(n27) );
  dfcrn1 \address_reg[1]  ( .D(n386), .CP(clk), .CDN(n442), .QN(n25) );
  dfcrb2 \address_reg[3]  ( .D(n384), .CP(clk), .CDN(n443), .Q(address[3]), 
        .QN(n22) );
  dfcrb2 \address_reg[2]  ( .D(n385), .CP(clk), .CDN(n442), .Q(address[2]), 
        .QN(n23) );
  dfcrq4 \pc_reg[2]  ( .D(n405), .CP(clk), .CDN(n446), .Q(pc[2]) );
  dfcrq4 \pc_reg[15]  ( .D(n408), .CP(clk), .CDN(n444), .Q(pc[15]) );
  decrq2 \data_out_reg[1]  ( .D(b_data[1]), .ENN(n138), .CP(clk), .CDN(n449), 
        .Q(data_out[1]) );
  aor221d1 U3 ( .B1(pc[6]), .B2(n636), .C1(psw[6]), .C2(n635), .A(n625), .Z(
        b_data[6]) );
  an03d1 U4 ( .A1(n478), .A2(queue_count[2]), .A3(n455), .Z(n1) );
  or02d1 U5 ( .A1(n1), .A2(n471), .Z(n501) );
  nd02d1 U6 ( .A1(n501), .A2(n229), .ZN(n142) );
  nd02d1 U7 ( .A1(n301), .A2(n2), .ZN(n6) );
  nd02d1 U8 ( .A1(n302), .A2(N58), .ZN(n9) );
  nd02d1 U9 ( .A1(n6), .A2(n9), .ZN(N75) );
  inv0d1 U10 ( .I(N58), .ZN(n2) );
  nd02d0 U11 ( .A1(n590), .A2(n357), .ZN(n13) );
  nd02d1 U12 ( .A1(n591), .A2(n15), .ZN(n588) );
  inv0d1 U13 ( .I(n13), .ZN(n15) );
  aor221d1 U14 ( .B1(pc[5]), .B2(n636), .C1(psw[5]), .C2(n635), .A(n619), .Z(
        b_data[5]) );
  nd02d0 U15 ( .A1(n357), .A2(N61), .ZN(n33) );
  an02d2 U16 ( .A1(n591), .A2(n40), .Z(n636) );
  inv0d1 U17 ( .I(n33), .ZN(n40) );
  inv0d1 U18 ( .I(n589), .ZN(n591) );
  an02d1 U19 ( .A1(n296), .A2(N58), .Z(n41) );
  an02d2 U20 ( .A1(n287), .A2(n41), .Z(n282) );
  aor222d1 U21 ( .A1(psw[3]), .A2(n65), .B1(pc[3]), .B2(n282), .C1(pc[11]), 
        .C2(n270), .Z(n108) );
  aoi222d1 U22 ( .A1(psw[6]), .A2(n65), .B1(pc[6]), .B2(n282), .C1(pc[14]), 
        .C2(n270), .ZN(n662) );
  aor222d4 U23 ( .A1(ie), .A2(n65), .B1(pc[4]), .B2(n282), .C1(pc[12]), .C2(
        n270), .Z(n179) );
  an02d1 U24 ( .A1(\ins_queue[0][3] ), .A2(n437), .Z(n42) );
  an02d1 U25 ( .A1(\ins_queue[1][3] ), .A2(n546), .Z(n43) );
  or03d2 U26 ( .A1(n42), .A2(n43), .A3(n539), .Z(queue_out[3]) );
  or02d1 U27 ( .A1(n143), .A2(n145), .Z(n44) );
  or02d2 U28 ( .A1(n601), .A2(n44), .Z(b_data[1]) );
  nd02d1 U29 ( .A1(n170), .A2(n171), .ZN(n45) );
  nd02d1 U30 ( .A1(n172), .A2(n46), .ZN(n408) );
  inv0d1 U31 ( .I(n45), .ZN(n46) );
  nd02d0 U32 ( .A1(n629), .A2(n230), .ZN(n172) );
  an02d1 U33 ( .A1(pc[2]), .A2(n636), .Z(n47) );
  an02d1 U34 ( .A1(psw[2]), .A2(n635), .Z(n48) );
  or03d1 U35 ( .A1(n47), .A2(n48), .A3(n605), .Z(b_data[2]) );
  bufbd1 U36 ( .I(b_data[2]), .Z(n80) );
  nd02d1 U37 ( .A1(n223), .A2(n221), .ZN(n49) );
  nd02d1 U38 ( .A1(n222), .A2(n50), .ZN(n259) );
  inv0d1 U39 ( .I(n49), .ZN(n50) );
  nd12d0 U40 ( .A1(n259), .A2(n734), .ZN(n735) );
  nd02d1 U41 ( .A1(n328), .A2(n51), .ZN(n52) );
  nd02d1 U42 ( .A1(n329), .A2(N61), .ZN(n53) );
  nd02d1 U43 ( .A1(n52), .A2(n53), .ZN(N85) );
  inv0d1 U44 ( .I(N61), .ZN(n51) );
  invbd4 U45 ( .I(n88), .ZN(n54) );
  invbdk U46 ( .I(n54), .ZN(address[1]) );
  invbd2 U47 ( .I(n58), .ZN(n88) );
  invbd2 U48 ( .I(n789), .ZN(n428) );
  invbd2 U49 ( .I(n790), .ZN(n516) );
  invbd2 U50 ( .I(n84), .ZN(n85) );
  invbdf U51 ( .I(n27), .ZN(address[15]) );
  invbda U52 ( .I(n149), .ZN(n326) );
  or02d2 U53 ( .A1(n289), .A2(n179), .Z(a_data[4]) );
  invbd7 U54 ( .I(n334), .ZN(n189) );
  bufbd1 U55 ( .I(n738), .Z(n56) );
  invbd2 U56 ( .I(n30), .ZN(n427) );
  nd02d1 U57 ( .A1(b_addr[3]), .A2(n360), .ZN(n589) );
  inv0d2 U58 ( .I(n25), .ZN(n57) );
  invbd7 U59 ( .I(n57), .ZN(n58) );
  inv0d4 U60 ( .I(n58), .ZN(n780) );
  nd03d1 U61 ( .A1(n773), .A2(n770), .A3(n769), .ZN(n772) );
  nd04d1 U62 ( .A1(w_addr[2]), .A2(n264), .A3(n256), .A4(data_ready), .ZN(n770) );
  mi02d2 U63 ( .I0(alu_out[2]), .I1(data_in[2]), .S(n272), .ZN(n715) );
  invbd2 U64 ( .I(n622), .ZN(n631) );
  nd04d4 U65 ( .A1(n667), .A2(data_ready), .A3(n550), .A4(n68), .ZN(n622) );
  inv0d1 U66 ( .I(n160), .ZN(psw[0]) );
  inv0d1 U67 ( .I(N61), .ZN(n590) );
  mi02d1 U68 ( .I0(alu_out[0]), .I1(data_in[0]), .S(n272), .ZN(n771) );
  aor21d1 U69 ( .B1(n91), .B2(N61), .A(n589), .Z(n633) );
  nd02d1 U70 ( .A1(n676), .A2(n675), .ZN(n677) );
  an03d1 U71 ( .A1(n167), .A2(n168), .A3(n169), .Z(n676) );
  inv0d1 U72 ( .I(data_in[2]), .ZN(n75) );
  bufbd2 U73 ( .I(n214), .Z(n233) );
  invbd2 U74 ( .I(n691), .ZN(n213) );
  nd02d1 U75 ( .A1(n335), .A2(\reg_file[0][0] ), .ZN(n340) );
  inv0d1 U76 ( .I(\reg_file[4][0] ), .ZN(n97) );
  nd02d1 U77 ( .A1(n335), .A2(\reg_file[1][0] ), .ZN(n332) );
  nd02d1 U78 ( .A1(address_save[7]), .A2(n292), .ZN(n221) );
  nr02d0 U79 ( .A1(n737), .A2(n771), .ZN(n740) );
  aor22d1 U80 ( .A1(n639), .A2(n641), .B1(addr_op[1]), .B2(n638), .Z(n743) );
  inv0d1 U81 ( .I(n702), .ZN(n214) );
  nd02d1 U82 ( .A1(n235), .A2(n236), .ZN(n702) );
  nd02d1 U83 ( .A1(n518), .A2(n234), .ZN(n235) );
  inv0d1 U84 ( .I(n597), .ZN(n629) );
  mi02d1 U85 ( .I0(n342), .I1(n343), .S(N61), .ZN(N84) );
  nd04d1 U86 ( .A1(addr_op[1]), .A2(n638), .A3(n664), .A4(n255), .ZN(n773) );
  aoi222d1 U87 ( .A1(psw[7]), .A2(n65), .B1(pc[7]), .B2(n282), .C1(pc[15]), 
        .C2(n270), .ZN(n751) );
  aoi222d1 U88 ( .A1(psw[5]), .A2(n65), .B1(pc[5]), .B2(n282), .C1(pc[13]), 
        .C2(n270), .ZN(n681) );
  nd02d1 U89 ( .A1(n69), .A2(n717), .ZN(a_data[2]) );
  aoi222d1 U90 ( .A1(psw[2]), .A2(n65), .B1(pc[2]), .B2(n282), .C1(pc[10]), 
        .C2(n270), .ZN(n717) );
  an03d1 U91 ( .A1(n162), .A2(n163), .A3(n164), .Z(n93) );
  aoi222d1 U92 ( .A1(psw[1]), .A2(n65), .B1(pc[1]), .B2(n282), .C1(pc[9]), 
        .C2(n270), .ZN(n94) );
  invbdf U93 ( .I(n85), .ZN(address[6]) );
  invbda U94 ( .I(n200), .ZN(address[7]) );
  invbd2 U95 ( .I(n441), .ZN(n219) );
  invbdf U96 ( .I(n516), .ZN(iack) );
  invbdf U97 ( .I(n430), .ZN(cycle) );
  aor221d1 U98 ( .B1(\ins_queue[0][4] ), .B2(n437), .C1(\ins_queue[1][4] ), 
        .C2(n546), .A(n540), .Z(queue_out[4]) );
  aor221d1 U99 ( .B1(\ins_queue[0][7] ), .B2(n437), .C1(\ins_queue[1][7] ), 
        .C2(n546), .A(n545), .Z(queue_out[7]) );
  nd02d1 U100 ( .A1(n146), .A2(n147), .ZN(n376) );
  nd02d1 U101 ( .A1(n706), .A2(n705), .ZN(n707) );
  nd12d0 U102 ( .A1(n199), .A2(n671), .ZN(n673) );
  nd02d1 U103 ( .A1(n159), .A2(n158), .ZN(n423) );
  mx02d0 U104 ( .I0(n217), .I1(next_psw[0]), .S(n606), .Z(N108) );
  invbd2 U105 ( .I(n715), .ZN(n215) );
  invbd2 U106 ( .I(n771), .ZN(n217) );
  aor221d1 U107 ( .B1(pc[3]), .B2(n636), .C1(psw[3]), .C2(n635), .A(n610), .Z(
        b_data[3]) );
  aor221d1 U108 ( .B1(pc[4]), .B2(n636), .C1(ie), .C2(n635), .A(n615), .Z(
        b_data[4]) );
  mi02d0 U109 ( .I0(n348), .I1(n349), .S(N61), .ZN(N81) );
  or03d1 U110 ( .A1(n135), .A2(n136), .A3(n634), .Z(b_data[7]) );
  invbd2 U111 ( .I(n749), .ZN(n230) );
  inv0d4 U112 ( .I(n185), .ZN(n658) );
  nd02d0 U113 ( .A1(n299), .A2(n296), .ZN(n111) );
  nd02d0 U114 ( .A1(n295), .A2(n296), .ZN(n137) );
  invbd7 U115 ( .I(n189), .ZN(n190) );
  invbd7 U116 ( .I(n156), .ZN(n225) );
  invbd2 U117 ( .I(n149), .ZN(n327) );
  invbda U118 ( .I(N59), .ZN(n296) );
  invbd7 U119 ( .I(n189), .ZN(n191) );
  an12d2 U120 ( .A2(a_addr[3]), .A1(N60), .Z(n287) );
  oaim21d1 U121 ( .B1(n325), .B2(n659), .A(a_addr[3]), .ZN(n755) );
  an02d1 U122 ( .A1(n296), .A2(n298), .Z(n59) );
  invbdf U123 ( .I(n428), .ZN(ifetch) );
  an02d1 U124 ( .A1(n709), .A2(n649), .Z(n60) );
  an02d1 U125 ( .A1(n669), .A2(n672), .Z(n61) );
  an02d1 U126 ( .A1(n507), .A2(ready), .Z(n62) );
  clk2d2 U127 ( .CLK(address[12]), .CN(n63), .C(n64) );
  an03d1 U128 ( .A1(n287), .A2(n661), .A3(n296), .Z(n65) );
  an03d1 U129 ( .A1(n91), .A2(n591), .A3(n590), .Z(n66) );
  an04d1 U130 ( .A1(n652), .A2(n653), .A3(n646), .A4(n645), .Z(n67) );
  an02d1 U131 ( .A1(n597), .A2(n580), .Z(n68) );
  an03d1 U132 ( .A1(n105), .A2(n106), .A3(n107), .Z(n69) );
  nd02d1 U133 ( .A1(n257), .A2(n552), .ZN(n606) );
  an03d1 U134 ( .A1(n449), .A2(n786), .A3(n521), .Z(n70) );
  clk2d2 U135 ( .CLK(address[10]), .CN(n71), .C(n72) );
  an02d1 U136 ( .A1(data_ready), .A2(n775), .Z(n73) );
  an02d1 U137 ( .A1(n469), .A2(n468), .Z(n74) );
  aor221d1 U138 ( .B1(\ins_queue[0][5] ), .B2(n290), .C1(\ins_queue[1][5] ), 
        .C2(n546), .A(n541), .Z(queue_out[5]) );
  aor221d1 U139 ( .B1(\ins_queue[0][6] ), .B2(n437), .C1(\ins_queue[1][6] ), 
        .C2(n546), .A(n542), .Z(queue_out[6]) );
  invbd7 U140 ( .I(N62), .ZN(n357) );
  nd02d1 U141 ( .A1(\reg_file[6][0] ), .A2(n190), .ZN(n341) );
  aoi222d1 U142 ( .A1(psw[0]), .A2(n65), .B1(pc[0]), .B2(n282), .C1(pc[8]), 
        .C2(n270), .ZN(n757) );
  oai221d1 U143 ( .B1(n595), .B2(n75), .C1(n580), .C2(n691), .A(n76), .ZN(n403) );
  mi02d0 U144 ( .I0(n564), .I1(n565), .S(pc[4]), .ZN(n76) );
  nd02d2 U145 ( .A1(n183), .A2(n184), .ZN(n185) );
  invbd2 U146 ( .I(N60), .ZN(n298) );
  inv0d2 U147 ( .I(n464), .ZN(n480) );
  nd12d1 U148 ( .A1(n78), .A2(n656), .ZN(n439) );
  nd02d1 U149 ( .A1(N75), .A2(n755), .ZN(n164) );
  invbd2 U150 ( .I(n727), .ZN(n216) );
  nd12d1 U151 ( .A1(n78), .A2(n689), .ZN(n434) );
  inv0d1 U152 ( .I(n269), .ZN(n78) );
  aor21d1 U153 ( .B1(n518), .B2(n234), .A(n79), .Z(n228) );
  inv0d1 U154 ( .I(n236), .ZN(n79) );
  inv0d1 U155 ( .I(alu_out[3]), .ZN(n518) );
  nd04d0 U156 ( .A1(n306), .A2(n304), .A3(n303), .A4(n305), .ZN(n302) );
  nd02d2 U157 ( .A1(n544), .A2(\ins_queue[2][0] ), .ZN(n531) );
  nd04d0 U158 ( .A1(n310), .A2(n311), .A3(n308), .A4(n309), .ZN(n301) );
  nd02d1 U159 ( .A1(n337), .A2(\reg_file[2][0] ), .ZN(n338) );
  aor222d1 U160 ( .A1(N73), .A2(n755), .B1(n284), .B2(n703), .C1(n285), .C2(
        n704), .Z(n129) );
  an03d2 U161 ( .A1(n287), .A2(N59), .A3(n661), .Z(n270) );
  inv0d4 U162 ( .I(n240), .ZN(n117) );
  aoi2222d1 U163 ( .A1(\reg_file[2][3] ), .A2(n118), .B1(\reg_file[0][3] ), 
        .B2(n225), .C1(\reg_file[6][3] ), .C2(n326), .D1(\reg_file[4][3] ), 
        .D2(n307), .ZN(n314) );
  mi02d2 U164 ( .I0(data_in[4]), .I1(alu_out[4]), .S(n234), .ZN(n691) );
  invbd4 U165 ( .I(n117), .ZN(n118) );
  invbd2 U166 ( .I(n298), .ZN(n92) );
  nd02d2 U167 ( .A1(n456), .A2(n457), .ZN(n81) );
  nd02d0 U168 ( .A1(n456), .A2(n457), .ZN(n82) );
  clk2d2 U169 ( .CLK(b_data[0]), .C(n83) );
  mi02d2 U170 ( .I0(data_in[7]), .I1(alu_out[7]), .S(n234), .ZN(n749) );
  inv0d1 U171 ( .I(n86), .ZN(n87) );
  nd02d0 U172 ( .A1(n237), .A2(n238), .ZN(n89) );
  nd02d0 U173 ( .A1(n237), .A2(n238), .ZN(n90) );
  nd02d2 U174 ( .A1(n517), .A2(n234), .ZN(n237) );
  inv0d0 U175 ( .I(n357), .ZN(n91) );
  bufbd2 U176 ( .I(N60), .Z(n325) );
  invbd2 U177 ( .I(n192), .ZN(n193) );
  mi02d2 U178 ( .I0(n314), .I1(n315), .S(N58), .ZN(N73) );
  nd02d2 U179 ( .A1(n688), .A2(n687), .ZN(n689) );
  aoi2222d1 U180 ( .A1(n118), .A2(\reg_file[3][3] ), .B1(\reg_file[1][3] ), 
        .B2(n225), .C1(\reg_file[7][3] ), .C2(n326), .D1(\reg_file[5][3] ), 
        .D2(n307), .ZN(n315) );
  nd02d1 U181 ( .A1(N69), .A2(n755), .ZN(n133) );
  mi02d2 U182 ( .I0(n322), .I1(n323), .S(N58), .ZN(N69) );
  mi02d2 U183 ( .I0(n352), .I1(n353), .S(N61), .ZN(N79) );
  nd02d2 U184 ( .A1(n93), .A2(n94), .ZN(a_data[1]) );
  nd02d2 U185 ( .A1(n61), .A2(n695), .ZN(n95) );
  nd02d1 U186 ( .A1(n767), .A2(n64), .ZN(n96) );
  nd02d2 U187 ( .A1(n95), .A2(n96), .ZN(n375) );
  nd12d1 U188 ( .A1(n97), .A2(n336), .ZN(n339) );
  nd02d1 U189 ( .A1(\ins_queue[2][5] ), .A2(n544), .ZN(n152) );
  nd02d2 U190 ( .A1(n246), .A2(N65), .ZN(n529) );
  nd02d1 U191 ( .A1(n61), .A2(n707), .ZN(n146) );
  bufbd2 U192 ( .I(n326), .Z(n98) );
  nd02d1 U193 ( .A1(n284), .A2(n680), .ZN(n99) );
  nd02d1 U194 ( .A1(sp[13]), .A2(n285), .ZN(n100) );
  nd02d1 U195 ( .A1(N71), .A2(n755), .ZN(n101) );
  an03d1 U196 ( .A1(n99), .A2(n100), .A3(n101), .Z(n682) );
  nr23d1 U197 ( .A1(a_addr[3]), .A2(n325), .A3(n659), .ZN(n285) );
  mi02d0 U198 ( .I0(n318), .I1(n319), .S(N58), .ZN(N71) );
  nd02d1 U199 ( .A1(n682), .A2(n681), .ZN(a_data[5]) );
  invbd4 U200 ( .I(N63), .ZN(n360) );
  aoi2222d1 U201 ( .A1(\reg_file[3][2] ), .A2(n119), .B1(\reg_file[1][2] ), 
        .B2(n225), .C1(\reg_file[7][2] ), .C2(n326), .D1(\reg_file[5][2] ), 
        .D2(n307), .ZN(n313) );
  aoi2222d1 U202 ( .A1(\reg_file[3][5] ), .A2(n119), .B1(\reg_file[1][5] ), 
        .B2(n59), .C1(\reg_file[7][5] ), .C2(n98), .D1(\reg_file[5][5] ), .D2(
        n307), .ZN(n319) );
  nd02d2 U203 ( .A1(\reg_file[3][0] ), .A2(n337), .ZN(n330) );
  mi02d1 U204 ( .I0(n316), .I1(n317), .S(N58), .ZN(N72) );
  or02d2 U205 ( .A1(n129), .A2(n108), .Z(a_data[3]) );
  aor21d1 U206 ( .B1(n546), .B2(n525), .A(n544), .Z(n527) );
  nd02d1 U207 ( .A1(\reg_file[7][0] ), .A2(n190), .ZN(n333) );
  aoi2222d1 U208 ( .A1(\reg_file[2][1] ), .A2(n337), .B1(\reg_file[0][1] ), 
        .B2(n335), .C1(\reg_file[6][1] ), .C2(n191), .D1(\reg_file[4][1] ), 
        .D2(n336), .ZN(n342) );
  nd02d0 U209 ( .A1(n475), .A2(n81), .ZN(n102) );
  nd02d0 U210 ( .A1(ifetch), .A2(n513), .ZN(n103) );
  nd02d1 U211 ( .A1(n102), .A2(n103), .ZN(n422) );
  nd02d2 U212 ( .A1(n498), .A2(n81), .ZN(n104) );
  nd02d1 U213 ( .A1(n284), .A2(n716), .ZN(n105) );
  nd02d0 U214 ( .A1(n285), .A2(n718), .ZN(n106) );
  nd02d1 U215 ( .A1(N74), .A2(n755), .ZN(n107) );
  mi02d0 U216 ( .I0(n313), .I1(n312), .S(n661), .ZN(N74) );
  invbd7 U217 ( .I(N58), .ZN(n661) );
  nd02d0 U218 ( .A1(\reg_file[3][0] ), .A2(n242), .ZN(n109) );
  nd02d0 U219 ( .A1(\reg_file[7][0] ), .A2(n325), .ZN(n110) );
  nd02d1 U220 ( .A1(n109), .A2(n110), .ZN(n300) );
  nd02d0 U221 ( .A1(N59), .A2(n300), .ZN(n112) );
  nd02d1 U222 ( .A1(n111), .A2(n112), .ZN(n293) );
  invbd2 U223 ( .I(n436), .ZN(n437) );
  nd02d0 U224 ( .A1(\reg_file[1][1] ), .A2(n225), .ZN(n305) );
  an12d2 U225 ( .A2(N59), .A1(N60), .Z(n240) );
  nd02d1 U226 ( .A1(N85), .A2(n633), .ZN(n120) );
  bufbd2 U227 ( .I(n298), .Z(n242) );
  nd02d1 U228 ( .A1(address_save[10]), .A2(n292), .ZN(n113) );
  nd02d1 U229 ( .A1(inc_address[10]), .A2(n758), .ZN(n114) );
  nd02d0 U230 ( .A1(alu_out[2]), .A2(n759), .ZN(n115) );
  an03d1 U231 ( .A1(n113), .A2(n114), .A3(n115), .Z(n720) );
  inv0d1 U232 ( .I(n670), .ZN(n759) );
  nd02d1 U233 ( .A1(n720), .A2(n719), .ZN(n721) );
  inv0d1 U234 ( .I(n727), .ZN(n116) );
  mi02d2 U235 ( .I0(alu_out[1]), .I1(data_in[1]), .S(n272), .ZN(n727) );
  inv0d2 U236 ( .I(n251), .ZN(n192) );
  invbd7 U237 ( .I(n117), .ZN(n119) );
  mi02d2 U238 ( .I0(n142), .I1(ready), .S(n458), .ZN(n456) );
  nd02d0 U239 ( .A1(n66), .A2(pc[8]), .ZN(n121) );
  an02d2 U240 ( .A1(n120), .A2(n121), .Z(n127) );
  nd02d1 U241 ( .A1(n284), .A2(n660), .ZN(n122) );
  nd02d0 U242 ( .A1(sp[14]), .A2(n285), .ZN(n123) );
  nd02d1 U243 ( .A1(N70), .A2(n755), .ZN(n124) );
  an03d2 U244 ( .A1(n122), .A2(n123), .A3(n124), .Z(n663) );
  nd02d1 U245 ( .A1(\ins_queue[1][0] ), .A2(n546), .ZN(n532) );
  nd02d1 U246 ( .A1(alu_out[6]), .A2(n234), .ZN(n184) );
  invbd2 U247 ( .I(n325), .ZN(n195) );
  clk2d2 U248 ( .CLK(n11), .CN(n779) );
  nd02d1 U249 ( .A1(N65), .A2(n535), .ZN(n125) );
  nd02d1 U250 ( .A1(n534), .A2(n536), .ZN(n126) );
  nd02d2 U251 ( .A1(n125), .A2(n126), .ZN(queue_out[1]) );
  nd02d2 U252 ( .A1(n127), .A2(n128), .ZN(b_data[0]) );
  nr02d2 U253 ( .A1(n197), .A2(n196), .ZN(n128) );
  nd12d1 U254 ( .A1(n134), .A2(n786), .ZN(n483) );
  buffd1 U255 ( .I(n134), .Z(n140) );
  mx02d1 U256 ( .I0(n479), .I1(n480), .S(n478), .Z(n466) );
  invbd2 U257 ( .I(n358), .ZN(n334) );
  nd02d1 U258 ( .A1(N63), .A2(N62), .ZN(n358) );
  nd02d2 U259 ( .A1(n130), .A2(n786), .ZN(n141) );
  mi02d2 U260 ( .I0(n231), .I1(n464), .S(queue_count[0]), .ZN(n130) );
  invbd4 U261 ( .I(n529), .ZN(n543) );
  inv0d1 U262 ( .I(n501), .ZN(n487) );
  nd02d1 U263 ( .A1(n284), .A2(n750), .ZN(n131) );
  nd02d0 U264 ( .A1(sp[15]), .A2(n285), .ZN(n132) );
  nd03d0 U265 ( .A1(n131), .A2(n132), .A3(n133), .ZN(n288) );
  an03d1 U266 ( .A1(N59), .A2(N58), .A3(n287), .Z(n284) );
  an03d2 U267 ( .A1(n464), .A2(n231), .A3(n786), .Z(n134) );
  an02d1 U268 ( .A1(n636), .A2(pc[7]), .Z(n135) );
  an02d1 U269 ( .A1(n635), .A2(psw[7]), .Z(n136) );
  mi02d1 U270 ( .I0(n344), .I1(n345), .S(N61), .ZN(N83) );
  nd02d0 U271 ( .A1(N59), .A2(n297), .ZN(n139) );
  nd02d1 U272 ( .A1(n137), .A2(n139), .ZN(n294) );
  nd02d1 U273 ( .A1(\ins_queue[3][5] ), .A2(n543), .ZN(n153) );
  aor221d1 U274 ( .B1(n74), .B2(n501), .C1(\bus_state[0] ), .C2(n500), .A(n499), .Z(n503) );
  an02d1 U275 ( .A1(pc[1]), .A2(n636), .Z(n143) );
  an02d1 U276 ( .A1(psw[1]), .A2(n635), .Z(n145) );
  inv0d2 U277 ( .I(n588), .ZN(n635) );
  nd02d1 U278 ( .A1(\reg_file[3][1] ), .A2(n119), .ZN(n303) );
  nd02d1 U279 ( .A1(\ins_queue[3][0] ), .A2(n543), .ZN(n530) );
  nd02d0 U280 ( .A1(n767), .A2(address[11]), .ZN(n147) );
  nd02d0 U281 ( .A1(\reg_file[5][1] ), .A2(n307), .ZN(n304) );
  nd02d0 U282 ( .A1(\reg_file[4][1] ), .A2(n307), .ZN(n309) );
  nd02d1 U283 ( .A1(inc_address[15]), .A2(n758), .ZN(n187) );
  nd02d0 U284 ( .A1(n242), .A2(n239), .ZN(n308) );
  nr02d0 U285 ( .A1(n483), .A2(n484), .ZN(n485) );
  buffd4 U286 ( .I(n324), .Z(n149) );
  invbd4 U287 ( .I(n524), .ZN(n544) );
  nd02d0 U288 ( .A1(N59), .A2(N60), .ZN(n324) );
  nd02d2 U289 ( .A1(n477), .A2(n786), .ZN(n150) );
  invbd2 U290 ( .I(n476), .ZN(n151) );
  nd02d2 U291 ( .A1(n151), .A2(n150), .ZN(n486) );
  nd02d1 U292 ( .A1(n152), .A2(n153), .ZN(n541) );
  mx02d0 U293 ( .I0(n480), .I1(n479), .S(queue_count[1]), .Z(n477) );
  clk2d2 U294 ( .CLK(n194), .C(n154) );
  nd02d1 U295 ( .A1(n104), .A2(n458), .ZN(n459) );
  nd02d2 U296 ( .A1(n155), .A2(n757), .ZN(a_data[0]) );
  an03d2 U297 ( .A1(n180), .A2(n181), .A3(n182), .Z(n155) );
  nd02d2 U298 ( .A1(n360), .A2(N62), .ZN(n361) );
  inv0d2 U299 ( .I(n479), .ZN(n231) );
  nd02d2 U300 ( .A1(n296), .A2(n298), .ZN(n156) );
  nd02d2 U301 ( .A1(n92), .A2(n296), .ZN(n176) );
  nd02d1 U302 ( .A1(n485), .A2(n157), .ZN(n158) );
  nd02d2 U303 ( .A1(n486), .A2(queue_count[2]), .ZN(n159) );
  inv0d0 U304 ( .I(queue_count[2]), .ZN(n157) );
  aor21d4 U305 ( .B1(opcode_op_0), .B2(data_ready), .A(clear_queue), .Z(n525)
         );
  mx02d1 U308 ( .I0(next_psw[7]), .I1(n230), .S(n626), .Z(N115) );
  nd02d0 U310 ( .A1(n284), .A2(n728), .ZN(n162) );
  nd02d0 U311 ( .A1(n285), .A2(n729), .ZN(n163) );
  aoi222d1 U312 ( .A1(n762), .A2(a_data[6]), .B1(dec_address[14]), .B2(n273), 
        .C1(sp[14]), .C2(n761), .ZN(n671) );
  aor21d2 U313 ( .B1(n466), .B2(n786), .A(n134), .Z(n476) );
  mi02d1 U314 ( .I0(n320), .I1(n321), .S(N58), .ZN(N70) );
  nd02d1 U315 ( .A1(alu_out[7]), .A2(n743), .ZN(n222) );
  nd02d0 U316 ( .A1(n626), .A2(n233), .ZN(n165) );
  nd02d2 U317 ( .A1(next_psw[3]), .A2(n606), .ZN(n166) );
  nd02d2 U318 ( .A1(n165), .A2(n166), .ZN(N111) );
  clk2d2 U319 ( .CLK(n606), .CN(n626) );
  nd02d1 U320 ( .A1(address_save[5]), .A2(n292), .ZN(n167) );
  nd02d0 U321 ( .A1(alu_out[5]), .A2(n743), .ZN(n168) );
  nd02d1 U322 ( .A1(inc_address[5]), .A2(n758), .ZN(n169) );
  an03d1 U323 ( .A1(addr_op[1]), .A2(addr_op[0]), .A3(n260), .Z(n292) );
  nd02d1 U324 ( .A1(n651), .A2(n650), .ZN(n758) );
  inv0d0 U325 ( .I(alu_out[5]), .ZN(n517) );
  nd02d1 U326 ( .A1(pc[15]), .A2(n632), .ZN(n170) );
  nd02d1 U327 ( .A1(n631), .A2(n630), .ZN(n171) );
  nd02d1 U328 ( .A1(address_save[14]), .A2(n292), .ZN(n173) );
  nd02d0 U329 ( .A1(inc_address[14]), .A2(n758), .ZN(n174) );
  nd02d0 U330 ( .A1(alu_out[6]), .A2(n759), .ZN(n175) );
  nd03d0 U331 ( .A1(n173), .A2(n174), .A3(n175), .ZN(n199) );
  nd02d1 U332 ( .A1(N76), .A2(n755), .ZN(n181) );
  inv0d1 U333 ( .I(n193), .ZN(n232) );
  or02d2 U334 ( .A1(opcode_op_0), .A2(n267), .Z(n464) );
  invbd7 U335 ( .I(n176), .ZN(n307) );
  nd12d1 U336 ( .A1(n177), .A2(n654), .ZN(n656) );
  aor222d1 U337 ( .A1(address_save[6]), .A2(n292), .B1(alu_out[6]), .B2(n743), 
        .C1(inc_address[6]), .C2(n758), .Z(n177) );
  nd02d2 U338 ( .A1(n663), .A2(n662), .ZN(a_data[6]) );
  or02d1 U339 ( .A1(n638), .A2(n639), .Z(n178) );
  or02d1 U340 ( .A1(opcode_op[4]), .A2(n178), .Z(n471) );
  nd02d1 U341 ( .A1(opcode_op_0), .A2(n73), .ZN(n465) );
  nd02d2 U343 ( .A1(n357), .A2(N63), .ZN(n356) );
  nd02d2 U344 ( .A1(n357), .A2(n360), .ZN(n359) );
  nd02d0 U345 ( .A1(n284), .A2(n756), .ZN(n180) );
  nd02d0 U346 ( .A1(n285), .A2(n760), .ZN(n182) );
  nd02d1 U347 ( .A1(data_in[6]), .A2(n272), .ZN(n183) );
  nd02d1 U348 ( .A1(address_save[15]), .A2(n292), .ZN(n186) );
  nd02d0 U349 ( .A1(alu_out[7]), .A2(n759), .ZN(n188) );
  an03d1 U350 ( .A1(n187), .A2(n186), .A3(n188), .Z(n753) );
  nd02d1 U351 ( .A1(n753), .A2(n752), .ZN(n754) );
  invbd4 U352 ( .I(n192), .ZN(n194) );
  an02d2 U353 ( .A1(n194), .A2(n536), .Z(n290) );
  an02d1 U354 ( .A1(n636), .A2(pc[0]), .Z(n196) );
  an02d1 U355 ( .A1(n635), .A2(psw[0]), .Z(n197) );
  an03d2 U356 ( .A1(n530), .A2(n531), .A3(n533), .Z(n224) );
  aor222d1 U357 ( .A1(n284), .A2(n692), .B1(sp[12]), .B2(n285), .C1(N72), .C2(
        n755), .Z(n289) );
  nd02d2 U358 ( .A1(n694), .A2(n693), .ZN(n695) );
  invbd7 U359 ( .I(n782), .ZN(n202) );
  invbdk U360 ( .I(n202), .ZN(address[4]) );
  invbd2 U361 ( .I(n19), .ZN(n782) );
  invbd7 U362 ( .I(n777), .ZN(n205) );
  invbdk U363 ( .I(n205), .ZN(address[8]) );
  invbd7 U364 ( .I(n781), .ZN(n207) );
  invbdk U365 ( .I(n207), .ZN(address[11]) );
  invbd7 U366 ( .I(n784), .ZN(n210) );
  invbdk U367 ( .I(n210), .ZN(address[14]) );
  invbdk U368 ( .I(n219), .ZN(address[13]) );
  nd02d1 U369 ( .A1(inc_address[7]), .A2(n758), .ZN(n223) );
  nd12d1 U370 ( .A1(n536), .A2(n194), .ZN(n524) );
  inv0d0 U371 ( .I(N65), .ZN(n226) );
  inv0d1 U372 ( .I(n226), .ZN(n227) );
  invbd7 U373 ( .I(n658), .ZN(n211) );
  nr02d7 U374 ( .A1(data_op[2]), .A2(data_op[1]), .ZN(n229) );
  aor22d2 U375 ( .A1(n538), .A2(n227), .B1(n537), .B2(n536), .Z(queue_out[2])
         );
  nd02d1 U376 ( .A1(\ins_queue[0][0] ), .A2(n290), .ZN(n533) );
  nd02d2 U377 ( .A1(n224), .A2(n532), .ZN(queue_out[0]) );
  nd02d1 U378 ( .A1(n568), .A2(n272), .ZN(n236) );
  inv0d1 U379 ( .I(n272), .ZN(n234) );
  nd02d0 U380 ( .A1(n246), .A2(n536), .ZN(n523) );
  nd02d1 U381 ( .A1(n579), .A2(n272), .ZN(n238) );
  nd02d2 U382 ( .A1(n237), .A2(n238), .ZN(n679) );
  invbd4 U383 ( .I(n679), .ZN(n212) );
  an02d1 U384 ( .A1(N59), .A2(\reg_file[2][1] ), .Z(n239) );
  an02d1 U385 ( .A1(n253), .A2(n580), .Z(n268) );
  an03d1 U386 ( .A1(data_ready), .A2(n552), .A3(n264), .Z(n271) );
  inv0d1 U387 ( .I(w_addr[2]), .ZN(n552) );
  inv0d1 U388 ( .I(addr_op[2]), .ZN(n666) );
  an03d1 U389 ( .A1(n709), .A2(n669), .A3(n68), .Z(n252) );
  aoi211d1 U390 ( .C1(n252), .C2(n648), .A(n631), .B(n587), .ZN(n253) );
  invbd2 U391 ( .I(n465), .ZN(n479) );
  inv0d1 U392 ( .I(n521), .ZN(n267) );
  an02d1 U393 ( .A1(n253), .A2(n597), .Z(n254) );
  inv0d0 U394 ( .I(n580), .ZN(n575) );
  aor31d2 U395 ( .B1(ifetch), .B2(n462), .B3(n461), .A(n774), .Z(data_ready)
         );
  an02d1 U396 ( .A1(n737), .A2(n770), .Z(n255) );
  inv0d0 U397 ( .I(n462), .ZN(n638) );
  nd02d0 U398 ( .A1(n667), .A2(n774), .ZN(n668) );
  an02d1 U399 ( .A1(n520), .A2(n519), .Z(n256) );
  an02d1 U400 ( .A1(n264), .A2(n256), .Z(n257) );
  inv0d0 U401 ( .I(n461), .ZN(n639) );
  an02d1 U402 ( .A1(n283), .A2(n552), .Z(n258) );
  inv0d0 U403 ( .I(n471), .ZN(n473) );
  invbd4 U404 ( .I(n788), .ZN(n430) );
  inv0d0 U405 ( .I(addr_op[0]), .ZN(n664) );
  inv0d0 U406 ( .I(n17), .ZN(n783) );
  inv0d0 U407 ( .I(addr_op[3]), .ZN(n665) );
  an02d1 U408 ( .A1(addr_op[2]), .A2(n665), .Z(n260) );
  an02d1 U409 ( .A1(w_addr[0]), .A2(w_addr[1]), .Z(n261) );
  an02d1 U410 ( .A1(w_addr[1]), .A2(n519), .Z(n262) );
  an02d1 U411 ( .A1(w_addr[0]), .A2(n520), .Z(n263) );
  an02d1 U412 ( .A1(wr_reg), .A2(w_addr[3]), .Z(n264) );
  mx02d0 U413 ( .I0(clear_queue), .I1(opcode_op[3]), .S(data_ready), .Z(n424)
         );
  nd02d0 U414 ( .A1(n790), .A2(n547), .ZN(n667) );
  an02d1 U415 ( .A1(addr_op[0]), .A2(n641), .Z(n265) );
  nd02d0 U416 ( .A1(data_op[0]), .A2(n774), .ZN(n138) );
  an02d1 U417 ( .A1(n283), .A2(w_addr[2]), .Z(n266) );
  inv0d1 U418 ( .I(n653), .ZN(n761) );
  inv0d1 U419 ( .I(n655), .ZN(n746) );
  an02d1 U420 ( .A1(n669), .A2(n655), .Z(n269) );
  aor21d1 U421 ( .B1(n269), .B2(n60), .A(n765), .Z(n736) );
  nd02d1 U422 ( .A1(n271), .A2(n261), .ZN(n737) );
  aon211d1 U423 ( .C1(n265), .C2(n638), .B(n709), .A(n255), .ZN(n769) );
  nd02d1 U424 ( .A1(n263), .A2(n271), .ZN(n580) );
  nd02d1 U425 ( .A1(cycle), .A2(n500), .ZN(n774) );
  an04d1 U426 ( .A1(cycle), .A2(n516), .A3(n428), .A4(n515), .Z(n272) );
  inv0d1 U427 ( .I(n652), .ZN(n762) );
  an03d1 U428 ( .A1(n260), .A2(n664), .A3(n641), .Z(n273) );
  bufbd1 U429 ( .I(rst_n), .Z(n445) );
  bufbd1 U430 ( .I(rst_n), .Z(n447) );
  bufbd1 U431 ( .I(rst_n), .Z(n448) );
  bufbd1 U432 ( .I(rst_n), .Z(n444) );
  bufbd1 U433 ( .I(rst_n), .Z(n443) );
  bufbd1 U434 ( .I(rst_n), .Z(n442) );
  bufbd1 U435 ( .I(rst_n), .Z(n446) );
  bufbd1 U436 ( .I(rst_n), .Z(n449) );
  nd02d1 U437 ( .A1(\reg_file[6][1] ), .A2(n327), .ZN(n311) );
  nd02d1 U438 ( .A1(\reg_file[7][1] ), .A2(n327), .ZN(n306) );
  inv0d1 U439 ( .I(write), .ZN(n515) );
  an02d1 U440 ( .A1(inc_pc[0]), .A2(pc[0]), .Z(n286) );
  aoi222d1 U441 ( .A1(n762), .A2(a_data[0]), .B1(dec_address[8]), .B2(n273), 
        .C1(n761), .C2(n760), .ZN(n763) );
  nd12d1 U442 ( .A1(n288), .A2(n751), .ZN(a_data[7]) );
  nd02d1 U443 ( .A1(n742), .A2(n741), .ZN(n394) );
  mx02d0 U444 ( .I0(n773), .I1(n769), .S(n30), .Z(n741) );
  an04d1 U445 ( .A1(n505), .A2(ready), .A3(n473), .A4(n472), .Z(n291) );
  nd02d1 U446 ( .A1(n639), .A2(addr_op[1]), .ZN(n144) );
  inv0d1 U447 ( .I(clear_queue), .ZN(n786) );
  nd12d0 U448 ( .A1(n247), .A2(n248), .ZN(n398) );
  aor22d1 U449 ( .A1(N58), .A2(n293), .B1(n294), .B2(n661), .Z(N76) );
  aor22d1 U450 ( .A1(\reg_file[2][0] ), .A2(n242), .B1(\reg_file[6][0] ), .B2(
        n325), .Z(n297) );
  aor22d1 U451 ( .A1(\reg_file[0][0] ), .A2(n195), .B1(\reg_file[4][0] ), .B2(
        n325), .Z(n295) );
  aor22d1 U452 ( .A1(\reg_file[1][0] ), .A2(n195), .B1(\reg_file[5][0] ), .B2(
        n325), .Z(n299) );
  aoi2222d1 U453 ( .A1(\reg_file[2][2] ), .A2(n119), .B1(\reg_file[0][2] ), 
        .B2(n225), .C1(\reg_file[6][2] ), .C2(n326), .D1(\reg_file[4][2] ), 
        .D2(n307), .ZN(n312) );
  aoi2222d1 U454 ( .A1(\reg_file[3][4] ), .A2(n118), .B1(\reg_file[1][4] ), 
        .B2(n225), .C1(\reg_file[7][4] ), .C2(n326), .D1(\reg_file[5][4] ), 
        .D2(n307), .ZN(n317) );
  aoi2222d1 U455 ( .A1(\reg_file[2][4] ), .A2(n119), .B1(\reg_file[0][4] ), 
        .B2(n225), .C1(\reg_file[6][4] ), .C2(n326), .D1(\reg_file[4][4] ), 
        .D2(n307), .ZN(n316) );
  aoi2222d1 U456 ( .A1(\reg_file[2][5] ), .A2(n119), .B1(\reg_file[0][5] ), 
        .B2(n59), .C1(\reg_file[6][5] ), .C2(n98), .D1(\reg_file[4][5] ), .D2(
        n307), .ZN(n318) );
  aoi2222d1 U457 ( .A1(\reg_file[3][6] ), .A2(n119), .B1(\reg_file[1][6] ), 
        .B2(n225), .C1(\reg_file[7][6] ), .C2(n327), .D1(\reg_file[5][6] ), 
        .D2(n307), .ZN(n321) );
  aoi2222d1 U458 ( .A1(\reg_file[2][6] ), .A2(n119), .B1(\reg_file[0][6] ), 
        .B2(n225), .C1(\reg_file[6][6] ), .C2(n326), .D1(\reg_file[4][6] ), 
        .D2(n307), .ZN(n320) );
  aoi2222d1 U459 ( .A1(\reg_file[3][7] ), .A2(n119), .B1(\reg_file[1][7] ), 
        .B2(n225), .C1(\reg_file[7][7] ), .C2(n326), .D1(\reg_file[5][7] ), 
        .D2(n307), .ZN(n323) );
  aoi2222d1 U460 ( .A1(\reg_file[2][7] ), .A2(n119), .B1(\reg_file[0][7] ), 
        .B2(n225), .C1(\reg_file[6][7] ), .C2(n326), .D1(\reg_file[4][7] ), 
        .D2(n307), .ZN(n322) );
  nd02d1 U461 ( .A1(\reg_file[0][1] ), .A2(n59), .ZN(n310) );
  nd04d0 U462 ( .A1(n330), .A2(n331), .A3(n332), .A4(n333), .ZN(n329) );
  nd04d0 U463 ( .A1(n338), .A2(n339), .A3(n340), .A4(n341), .ZN(n328) );
  aoi2222d1 U464 ( .A1(\reg_file[3][1] ), .A2(n337), .B1(\reg_file[1][1] ), 
        .B2(n335), .C1(\reg_file[7][1] ), .C2(n191), .D1(\reg_file[5][1] ), 
        .D2(n336), .ZN(n343) );
  aoi2222d1 U465 ( .A1(\reg_file[3][2] ), .A2(n337), .B1(\reg_file[1][2] ), 
        .B2(n335), .C1(\reg_file[7][2] ), .C2(n191), .D1(\reg_file[5][2] ), 
        .D2(n336), .ZN(n345) );
  aoi2222d1 U466 ( .A1(\reg_file[2][2] ), .A2(n337), .B1(\reg_file[0][2] ), 
        .B2(n335), .C1(\reg_file[6][2] ), .C2(n191), .D1(\reg_file[4][2] ), 
        .D2(n336), .ZN(n344) );
  mi02d0 U467 ( .I0(n346), .I1(n347), .S(N61), .ZN(N82) );
  aoi2222d1 U468 ( .A1(\reg_file[3][3] ), .A2(n337), .B1(\reg_file[1][3] ), 
        .B2(n335), .C1(\reg_file[7][3] ), .C2(n191), .D1(\reg_file[5][3] ), 
        .D2(n336), .ZN(n347) );
  aoi2222d1 U469 ( .A1(\reg_file[2][3] ), .A2(n337), .B1(\reg_file[0][3] ), 
        .B2(n335), .C1(\reg_file[6][3] ), .C2(n191), .D1(\reg_file[4][3] ), 
        .D2(n336), .ZN(n346) );
  aoi2222d1 U470 ( .A1(\reg_file[3][4] ), .A2(n337), .B1(\reg_file[1][4] ), 
        .B2(n335), .C1(\reg_file[7][4] ), .C2(n191), .D1(\reg_file[5][4] ), 
        .D2(n336), .ZN(n349) );
  aoi2222d1 U471 ( .A1(\reg_file[2][4] ), .A2(n337), .B1(\reg_file[0][4] ), 
        .B2(n335), .C1(\reg_file[6][4] ), .C2(n191), .D1(\reg_file[4][4] ), 
        .D2(n336), .ZN(n348) );
  mi02d0 U472 ( .I0(n350), .I1(n351), .S(N61), .ZN(N80) );
  aoi2222d1 U473 ( .A1(\reg_file[3][5] ), .A2(n337), .B1(\reg_file[1][5] ), 
        .B2(n335), .C1(\reg_file[7][5] ), .C2(n191), .D1(\reg_file[5][5] ), 
        .D2(n336), .ZN(n351) );
  aoi2222d1 U474 ( .A1(\reg_file[2][5] ), .A2(n337), .B1(\reg_file[0][5] ), 
        .B2(n335), .C1(\reg_file[6][5] ), .C2(n190), .D1(\reg_file[4][5] ), 
        .D2(n336), .ZN(n350) );
  aoi2222d1 U475 ( .A1(\reg_file[3][6] ), .A2(n337), .B1(\reg_file[1][6] ), 
        .B2(n335), .C1(\reg_file[7][6] ), .C2(n191), .D1(\reg_file[5][6] ), 
        .D2(n336), .ZN(n353) );
  aoi2222d1 U476 ( .A1(\reg_file[2][6] ), .A2(n337), .B1(\reg_file[0][6] ), 
        .B2(n335), .C1(\reg_file[6][6] ), .C2(n191), .D1(\reg_file[4][6] ), 
        .D2(n336), .ZN(n352) );
  mi02d0 U477 ( .I0(n354), .I1(n355), .S(N61), .ZN(N78) );
  aoi2222d1 U478 ( .A1(\reg_file[3][7] ), .A2(n337), .B1(\reg_file[1][7] ), 
        .B2(n335), .C1(\reg_file[7][7] ), .C2(n190), .D1(\reg_file[5][7] ), 
        .D2(n336), .ZN(n355) );
  aoi2222d1 U479 ( .A1(\reg_file[2][7] ), .A2(n337), .B1(n335), .B2(
        \reg_file[0][7] ), .C1(\reg_file[6][7] ), .C2(n191), .D1(
        \reg_file[4][7] ), .D2(n336), .ZN(n354) );
  nd02d1 U480 ( .A1(\reg_file[5][0] ), .A2(n336), .ZN(n331) );
  invbd7 U481 ( .I(n361), .ZN(n337) );
  invbd7 U482 ( .I(n359), .ZN(n335) );
  invbd7 U483 ( .I(n356), .ZN(n336) );
  mx02d0 U484 ( .I0(n526), .I1(n522), .S(n154), .Z(n397) );
  inv0d1 U485 ( .I(n290), .ZN(n436) );
  nd02d0 U486 ( .A1(data_in[2]), .A2(n736), .ZN(n433) );
  nd02d0 U487 ( .A1(n746), .A2(address[4]), .ZN(n435) );
  nd03d0 U488 ( .A1(n433), .A2(n434), .A3(n435), .ZN(n383) );
  nd02d0 U489 ( .A1(data_in[4]), .A2(n736), .ZN(n438) );
  nd02d0 U490 ( .A1(n746), .A2(address[6]), .ZN(n440) );
  nd03d0 U491 ( .A1(n438), .A2(n439), .A3(n440), .ZN(n381) );
  invbd2 U492 ( .I(n523), .ZN(n546) );
  nd02d2 U493 ( .A1(n498), .A2(n495), .ZN(n513) );
  nd02d2 U494 ( .A1(n456), .A2(n457), .ZN(n495) );
  nd02d0 U495 ( .A1(n479), .A2(n478), .ZN(n482) );
  inv0d1 U496 ( .I(\bus_state[0] ), .ZN(n450) );
  nd02d1 U497 ( .A1(n34), .A2(n450), .ZN(n493) );
  inv0d1 U498 ( .I(n493), .ZN(n469) );
  nd02d1 U499 ( .A1(data_op[2]), .A2(ready), .ZN(n506) );
  inv0d1 U500 ( .I(n506), .ZN(n451) );
  nd02d1 U501 ( .A1(n458), .A2(n450), .ZN(n453) );
  inv0d1 U502 ( .I(n453), .ZN(n507) );
  nd02d1 U503 ( .A1(n451), .A2(n507), .ZN(n491) );
  inv0d1 U504 ( .I(n491), .ZN(n452) );
  aor21d1 U505 ( .B1(data_op[2]), .B2(n469), .A(n452), .Z(n502) );
  inv0d1 U506 ( .I(n502), .ZN(n460) );
  nd02d1 U507 ( .A1(data_op[1]), .A2(ready), .ZN(n488) );
  inv0d1 U508 ( .I(n488), .ZN(n512) );
  nd02d1 U509 ( .A1(\bus_state[0] ), .A2(n34), .ZN(n470) );
  nd02d1 U510 ( .A1(n453), .A2(n470), .ZN(n454) );
  nd02d1 U511 ( .A1(n512), .A2(n454), .ZN(n492) );
  inv0d1 U512 ( .I(ready), .ZN(n500) );
  nd02d1 U513 ( .A1(n454), .A2(n500), .ZN(n498) );
  inv0d1 U514 ( .I(n454), .ZN(n457) );
  inv0d1 U515 ( .I(queue_count[0]), .ZN(n478) );
  inv0d1 U516 ( .I(n35), .ZN(queue_count[2]) );
  inv0d1 U517 ( .I(queue_count[1]), .ZN(n455) );
  nd02d1 U518 ( .A1(addr_op[0]), .A2(n666), .ZN(n461) );
  nd02d1 U519 ( .A1(addr_op[3]), .A2(n666), .ZN(n462) );
  nd02d1 U520 ( .A1(data_op[1]), .A2(n469), .ZN(n508) );
  nd04d0 U521 ( .A1(n460), .A2(n492), .A3(n459), .A4(n508), .ZN(n419) );
  nd03d0 U522 ( .A1(ifetch), .A2(ready), .A3(cycle), .ZN(n775) );
  inv0d1 U523 ( .I(n775), .ZN(n521) );
  inv0d1 U524 ( .I(n483), .ZN(n463) );
  mx02d0 U525 ( .I0(n463), .I1(n140), .S(queue_count[0]), .Z(n421) );
  nr02d0 U526 ( .A1(n140), .A2(n141), .ZN(n467) );
  mx02d0 U527 ( .I0(n467), .I1(n476), .S(queue_count[1]), .Z(n420) );
  inv0d1 U528 ( .I(data_op[1]), .ZN(n468) );
  inv0d1 U529 ( .I(data_op[2]), .ZN(n509) );
  inv0d1 U530 ( .I(n470), .ZN(n505) );
  nd03d0 U531 ( .A1(queue_count[0]), .A2(n35), .A3(queue_count[1]), .ZN(n472)
         );
  aor31d1 U532 ( .B1(n487), .B2(n506), .B3(n62), .A(n291), .Z(n474) );
  aor22d1 U533 ( .A1(n74), .A2(n509), .B1(n474), .B2(n488), .Z(n475) );
  nd02d1 U534 ( .A1(n480), .A2(queue_count[0]), .ZN(n481) );
  mx02d0 U535 ( .I0(n482), .I1(n481), .S(queue_count[1]), .Z(n484) );
  aor21d1 U536 ( .B1(n487), .B2(n62), .A(n291), .Z(n490) );
  aor211d1 U537 ( .C1(n490), .C2(n488), .A(n74), .B(n502), .Z(n489) );
  aor22d1 U538 ( .A1(n489), .A2(n82), .B1(\bus_state[0] ), .B2(n104), .Z(n418)
         );
  inv0d1 U539 ( .I(n490), .ZN(n494) );
  nd04d0 U540 ( .A1(n494), .A2(n493), .A3(n492), .A4(n491), .ZN(n496) );
  aor22d1 U541 ( .A1(n496), .A2(n82), .B1(cycle), .B2(n513), .Z(n417) );
  inv0d1 U542 ( .I(addr_op[1]), .ZN(n641) );
  nd03d0 U543 ( .A1(n638), .A2(n664), .A3(n641), .ZN(n646) );
  inv0d1 U544 ( .I(n646), .ZN(n709) );
  nd02d1 U545 ( .A1(n709), .A2(n774), .ZN(n550) );
  inv0d1 U546 ( .I(n550), .ZN(n504) );
  inv0d1 U547 ( .I(int_type[1]), .ZN(n497) );
  nd02d1 U548 ( .A1(int_type[0]), .A2(n497), .ZN(n549) );
  inv0d1 U549 ( .I(n549), .ZN(n710) );
  inv0d1 U550 ( .I(n498), .ZN(n499) );
  aor221d1 U551 ( .B1(n504), .B2(n710), .C1(iack), .C2(n503), .A(n502), .Z(
        N313) );
  aor21d1 U552 ( .B1(n507), .B2(n506), .A(n505), .Z(n511) );
  inv0d1 U553 ( .I(n508), .ZN(n510) );
  aor22d1 U554 ( .A1(n512), .A2(n511), .B1(n510), .B2(n509), .Z(n514) );
  aor22d1 U555 ( .A1(data_op[0]), .A2(n514), .B1(write), .B2(n513), .Z(n416)
         );
  inv0d1 U556 ( .I(data_in[7]), .ZN(n596) );
  nd02d1 U557 ( .A1(n261), .A2(n266), .ZN(n281) );
  inv0d1 U558 ( .I(data_in[5]), .ZN(n579) );
  inv0d1 U559 ( .I(data_in[3]), .ZN(n568) );
  inv0d1 U560 ( .I(w_addr[0]), .ZN(n519) );
  nd02d1 U561 ( .A1(n262), .A2(n266), .ZN(n280) );
  inv0d1 U562 ( .I(w_addr[1]), .ZN(n520) );
  nd02d1 U563 ( .A1(n263), .A2(n266), .ZN(n279) );
  nd02d1 U564 ( .A1(n256), .A2(n266), .ZN(n278) );
  nd02d1 U565 ( .A1(n261), .A2(n258), .ZN(n277) );
  nd02d1 U566 ( .A1(n262), .A2(n258), .ZN(n276) );
  nd02d1 U567 ( .A1(n263), .A2(n258), .ZN(n275) );
  nd02d1 U568 ( .A1(n256), .A2(n258), .ZN(n274) );
  aor31d1 U569 ( .B1(n32), .B2(n786), .B3(n521), .A(n250), .Z(n399) );
  nd03d0 U570 ( .A1(n32), .A2(n31), .A3(n70), .ZN(n241) );
  inv0d1 U571 ( .I(n525), .ZN(n526) );
  nr02d0 U572 ( .A1(clear_queue), .A2(n526), .ZN(n522) );
  aor22d1 U573 ( .A1(n527), .A2(n786), .B1(n526), .B2(n227), .Z(n396) );
  nd03d0 U574 ( .A1(n70), .A2(n31), .A3(n528), .ZN(n243) );
  nd03d0 U575 ( .A1(n70), .A2(n785), .A3(n528), .ZN(n245) );
  nd03d0 U576 ( .A1(n32), .A2(n785), .A3(n70), .ZN(n244) );
  aor22d1 U577 ( .A1(\ins_queue[3][1] ), .A2(n232), .B1(\ins_queue[2][1] ), 
        .B2(n194), .Z(n535) );
  aor22d1 U578 ( .A1(\ins_queue[1][1] ), .A2(n232), .B1(\ins_queue[0][1] ), 
        .B2(n194), .Z(n534) );
  aor22d1 U579 ( .A1(\ins_queue[3][2] ), .A2(n246), .B1(\ins_queue[2][2] ), 
        .B2(n194), .Z(n538) );
  aor22d1 U580 ( .A1(n246), .A2(\ins_queue[1][2] ), .B1(n193), .B2(
        \ins_queue[0][2] ), .Z(n537) );
  aor22d1 U581 ( .A1(\ins_queue[2][3] ), .A2(n544), .B1(\ins_queue[3][3] ), 
        .B2(n543), .Z(n539) );
  aor22d1 U582 ( .A1(\ins_queue[2][4] ), .A2(n544), .B1(\ins_queue[3][4] ), 
        .B2(n543), .Z(n540) );
  aor22d1 U583 ( .A1(\ins_queue[2][6] ), .A2(n544), .B1(\ins_queue[3][6] ), 
        .B2(n543), .Z(n542) );
  aor22d1 U584 ( .A1(\ins_queue[2][7] ), .A2(n544), .B1(\ins_queue[3][7] ), 
        .B2(n543), .Z(n545) );
  nd02d1 U585 ( .A1(cycle), .A2(ready), .ZN(n642) );
  inv0d1 U586 ( .I(n642), .ZN(n547) );
  inv0d1 U587 ( .I(n668), .ZN(n669) );
  nd02d1 U588 ( .A1(n262), .A2(n271), .ZN(n597) );
  inv0d1 U589 ( .I(int_type[0]), .ZN(n548) );
  nd02d1 U590 ( .A1(int_type[1]), .A2(n548), .ZN(n557) );
  nd02d1 U591 ( .A1(n557), .A2(n549), .ZN(n648) );
  inv0d1 U592 ( .I(n667), .ZN(n765) );
  nd03d0 U593 ( .A1(n765), .A2(n580), .A3(n597), .ZN(n595) );
  inv0d1 U594 ( .I(n595), .ZN(n587) );
  xr02d1 U595 ( .A1(pc[0]), .A2(inc_pc[0]), .Z(n551) );
  aor222d1 U596 ( .A1(n268), .A2(pc[0]), .B1(n631), .B2(n551), .C1(n575), .C2(
        n217), .Z(n407) );
  xr03d1 U597 ( .A1(pc[1]), .A2(inc_pc[1]), .A3(n286), .Z(n553) );
  aor222d1 U598 ( .A1(n268), .A2(pc[1]), .B1(n631), .B2(n553), .C1(n575), .C2(
        n216), .Z(n406) );
  cg01d1 U599 ( .A(n286), .B(pc[1]), .CI(inc_pc[1]), .CO(n563) );
  inv0d1 U600 ( .I(n563), .ZN(n558) );
  nr02d0 U601 ( .A1(n558), .A2(n622), .ZN(n554) );
  aor21d1 U602 ( .B1(n558), .B2(n631), .A(n268), .Z(n560) );
  mx02d0 U603 ( .I0(n554), .I1(n560), .S(pc[2]), .Z(n556) );
  aor22d1 U604 ( .A1(n587), .A2(data_in[0]), .B1(n252), .B2(n710), .Z(n555) );
  aor211d1 U605 ( .C1(n575), .C2(n215), .A(n556), .B(n555), .Z(n405) );
  inv0d1 U606 ( .I(n557), .ZN(n697) );
  nr02d0 U607 ( .A1(pc[3]), .A2(n558), .ZN(n559) );
  mx02d0 U608 ( .I0(pc[3]), .I1(n559), .S(pc[2]), .Z(n561) );
  aor222d1 U609 ( .A1(n252), .A2(n697), .B1(n631), .B2(n561), .C1(pc[3]), .C2(
        n560), .Z(n562) );
  aor221d1 U610 ( .B1(n587), .B2(data_in[1]), .C1(n575), .C2(n214), .A(n562), 
        .Z(n404) );
  nd03d0 U611 ( .A1(pc[3]), .A2(pc[2]), .A3(n563), .ZN(n566) );
  nr02d0 U612 ( .A1(n566), .A2(n622), .ZN(n564) );
  aor21d1 U613 ( .B1(n631), .B2(n566), .A(n268), .Z(n565) );
  inv0d1 U614 ( .I(n565), .ZN(n571) );
  inv0d1 U615 ( .I(pc[5]), .ZN(n570) );
  inv0d1 U616 ( .I(n566), .ZN(n572) );
  nd02d1 U617 ( .A1(n572), .A2(n570), .ZN(n567) );
  mx02d0 U618 ( .I0(n570), .I1(n567), .S(pc[4]), .Z(n569) );
  oai2222d1 U619 ( .A1(n571), .A2(n570), .B1(n569), .B2(n622), .C1(n89), .C2(
        n580), .D1(n568), .D2(n595), .ZN(n402) );
  nd03d0 U620 ( .A1(pc[5]), .A2(pc[4]), .A3(n572), .ZN(n577) );
  nr02d0 U621 ( .A1(n577), .A2(n622), .ZN(n573) );
  aor21d1 U622 ( .B1(n631), .B2(n577), .A(n268), .Z(n576) );
  mx02d0 U623 ( .I0(n573), .I1(n576), .S(pc[6]), .Z(n574) );
  aor221d1 U624 ( .B1(n587), .B2(data_in[4]), .C1(n211), .C2(n575), .A(n574), 
        .Z(n401) );
  inv0d1 U625 ( .I(n576), .ZN(n583) );
  inv0d1 U626 ( .I(pc[7]), .ZN(n582) );
  inv0d1 U627 ( .I(n577), .ZN(n584) );
  nd02d1 U628 ( .A1(n584), .A2(n582), .ZN(n578) );
  mx02d0 U629 ( .I0(n582), .I1(n578), .S(pc[6]), .Z(n581) );
  oai2222d1 U630 ( .A1(n583), .A2(n582), .B1(n581), .B2(n622), .C1(n749), .C2(
        n580), .D1(n579), .D2(n595), .ZN(n400) );
  nd03d0 U631 ( .A1(pc[6]), .A2(pc[7]), .A3(n584), .ZN(n593) );
  nr02d0 U632 ( .A1(n593), .A2(n622), .ZN(n585) );
  aor21d1 U633 ( .B1(n631), .B2(n593), .A(n254), .Z(n592) );
  mx02d0 U634 ( .I0(n585), .I1(n592), .S(pc[8]), .Z(n586) );
  aor221d1 U635 ( .B1(n587), .B2(data_in[6]), .C1(n629), .C2(n217), .A(n586), 
        .Z(n415) );
  mx02d0 U636 ( .I0(next_psw[1]), .I1(n116), .S(n626), .Z(N109) );
  inv0d1 U637 ( .I(n592), .ZN(n600) );
  inv0d1 U638 ( .I(pc[9]), .ZN(n599) );
  inv0d1 U639 ( .I(n593), .ZN(n602) );
  nd02d1 U640 ( .A1(n602), .A2(n599), .ZN(n594) );
  mx02d0 U641 ( .I0(n599), .I1(n594), .S(pc[8]), .Z(n598) );
  oai2222d1 U642 ( .A1(n600), .A2(n599), .B1(n598), .B2(n622), .C1(n727), .C2(
        n597), .D1(n596), .D2(n595), .ZN(n414) );
  aor22d1 U643 ( .A1(N84), .A2(n633), .B1(pc[9]), .B2(n66), .Z(n601) );
  mx02d0 U644 ( .I0(next_psw[2]), .I1(n215), .S(n626), .Z(N110) );
  nd03d0 U645 ( .A1(pc[9]), .A2(pc[8]), .A3(n602), .ZN(n611) );
  nr02d0 U646 ( .A1(n611), .A2(n622), .ZN(n603) );
  aor21d1 U647 ( .B1(n631), .B2(n611), .A(n254), .Z(n609) );
  mx02d0 U648 ( .I0(n603), .I1(n609), .S(pc[10]), .Z(n604) );
  aor21d1 U649 ( .B1(n629), .B2(n215), .A(n604), .Z(n413) );
  aor22d1 U650 ( .A1(N83), .A2(n633), .B1(pc[10]), .B2(n66), .Z(n605) );
  nr02d0 U651 ( .A1(pc[11]), .A2(n611), .ZN(n607) );
  mx02d0 U652 ( .I0(pc[11]), .I1(n607), .S(pc[10]), .Z(n608) );
  aor222d1 U653 ( .A1(pc[11]), .A2(n609), .B1(n631), .B2(n608), .C1(n629), 
        .C2(n214), .Z(n412) );
  aor22d1 U654 ( .A1(N82), .A2(n633), .B1(pc[11]), .B2(n66), .Z(n610) );
  mx02d0 U655 ( .I0(next_psw[4]), .I1(n213), .S(n626), .Z(N112) );
  inv0d1 U656 ( .I(n611), .ZN(n612) );
  nd03d0 U657 ( .A1(pc[11]), .A2(pc[10]), .A3(n612), .ZN(n620) );
  nr02d0 U658 ( .A1(n620), .A2(n622), .ZN(n613) );
  aor21d1 U659 ( .B1(n631), .B2(n620), .A(n254), .Z(n618) );
  mx02d0 U660 ( .I0(n613), .I1(n618), .S(pc[12]), .Z(n614) );
  aor21d1 U661 ( .B1(n629), .B2(n213), .A(n614), .Z(n411) );
  aor22d1 U662 ( .A1(N81), .A2(n633), .B1(pc[12]), .B2(n66), .Z(n615) );
  mx02d0 U663 ( .I0(next_psw[5]), .I1(n212), .S(n626), .Z(N113) );
  nr02d0 U664 ( .A1(pc[13]), .A2(n620), .ZN(n616) );
  mx02d0 U665 ( .I0(pc[13]), .I1(n616), .S(pc[12]), .Z(n617) );
  aor222d1 U666 ( .A1(pc[13]), .A2(n618), .B1(n631), .B2(n617), .C1(n629), 
        .C2(n212), .Z(n410) );
  aor22d1 U667 ( .A1(N80), .A2(n633), .B1(pc[13]), .B2(n66), .Z(n619) );
  mx02d0 U668 ( .I0(next_psw[6]), .I1(n211), .S(n626), .Z(N114) );
  inv0d1 U669 ( .I(n620), .ZN(n621) );
  nd03d0 U670 ( .A1(pc[13]), .A2(pc[12]), .A3(n621), .ZN(n627) );
  nr02d0 U671 ( .A1(n627), .A2(n622), .ZN(n623) );
  aor21d1 U672 ( .B1(n631), .B2(n627), .A(n254), .Z(n632) );
  mx02d0 U673 ( .I0(n623), .I1(n632), .S(pc[14]), .Z(n624) );
  aor21d1 U674 ( .B1(n629), .B2(n211), .A(n624), .Z(n409) );
  aor22d1 U675 ( .A1(N79), .A2(n633), .B1(pc[14]), .B2(n66), .Z(n625) );
  nr02d0 U676 ( .A1(pc[15]), .A2(n627), .ZN(n628) );
  mx02d0 U677 ( .I0(pc[15]), .I1(n628), .S(pc[14]), .Z(n630) );
  aor22d1 U678 ( .A1(N78), .A2(n633), .B1(n66), .B2(pc[15]), .Z(n634) );
  inv0d1 U679 ( .I(inc_address[14]), .ZN(n637) );
  oai2222d1 U680 ( .A1(n4), .A2(n773), .B1(n37), .B2(n772), .C1(n658), .C2(
        n770), .D1(n769), .D2(n637), .ZN(n365) );
  inv0d1 U681 ( .I(n743), .ZN(n647) );
  nd03d0 U682 ( .A1(n260), .A2(addr_op[1]), .A3(n664), .ZN(n652) );
  inv0d1 U683 ( .I(n144), .ZN(n640) );
  nd02d1 U684 ( .A1(n640), .A2(n665), .ZN(n653) );
  nd04d0 U685 ( .A1(n666), .A2(n664), .A3(n665), .A4(n641), .ZN(n650) );
  nr02d0 U686 ( .A1(n642), .A2(n650), .ZN(n644) );
  nd02d1 U687 ( .A1(n260), .A2(n265), .ZN(n651) );
  inv0d1 U688 ( .I(n651), .ZN(n643) );
  nr04d0 U689 ( .A1(n292), .A2(n273), .A3(n644), .A4(n643), .ZN(n645) );
  aon211d1 U690 ( .C1(n647), .C2(n67), .B(n668), .A(n667), .ZN(n655) );
  inv0d1 U691 ( .I(n648), .ZN(n649) );
  aoi222d1 U692 ( .A1(n762), .A2(b_data[6]), .B1(dec_address[6]), .B2(n273), 
        .C1(n761), .C2(n660), .ZN(n654) );
  nd03d0 U693 ( .A1(n773), .A2(n737), .A3(n769), .ZN(n738) );
  inv0d1 U694 ( .I(inc_address[6]), .ZN(n657) );
  oai2222d1 U695 ( .A1(n85), .A2(n773), .B1(n16), .B2(n56), .C1(n658), .C2(
        n737), .D1(n769), .D2(n657), .ZN(n388) );
  nd02d1 U696 ( .A1(n661), .A2(n296), .ZN(n659) );
  nd04d0 U697 ( .A1(addr_op[1]), .A2(n666), .A3(n665), .A4(n664), .ZN(n670) );
  aon211d1 U698 ( .C1(n67), .C2(n670), .B(n668), .A(n667), .ZN(n672) );
  inv0d1 U699 ( .I(n672), .ZN(n767) );
  aor22d1 U700 ( .A1(n673), .A2(n61), .B1(n767), .B2(address[14]), .Z(n373) );
  inv0d1 U701 ( .I(inc_address[13]), .ZN(n674) );
  oai2222d1 U702 ( .A1(n5), .A2(n773), .B1(n38), .B2(n772), .C1(n89), .C2(n770), .D1(n769), .D2(n674), .ZN(n366) );
  aoi222d1 U703 ( .A1(n762), .A2(b_data[5]), .B1(dec_address[5]), .B2(n273), 
        .C1(n761), .C2(n680), .ZN(n675) );
  aor222d1 U704 ( .A1(data_in[3]), .A2(n736), .B1(n269), .B2(n677), .C1(n746), 
        .C2(n783), .Z(n382) );
  inv0d1 U705 ( .I(inc_address[5]), .ZN(n678) );
  oai2222d1 U706 ( .A1(n17), .A2(n773), .B1(n18), .B2(n56), .C1(n90), .C2(n737), .D1(n769), .D2(n678), .ZN(n389) );
  aoi222d1 U707 ( .A1(address_save[13]), .A2(n292), .B1(inc_address[13]), .B2(
        n758), .C1(alu_out[5]), .C2(n759), .ZN(n684) );
  aoi222d1 U708 ( .A1(n762), .A2(a_data[5]), .B1(dec_address[13]), .B2(n273), 
        .C1(sp[13]), .C2(n761), .ZN(n683) );
  nd02d1 U709 ( .A1(n684), .A2(n683), .ZN(n685) );
  aor22d1 U710 ( .A1(n61), .A2(n685), .B1(n767), .B2(address[13]), .Z(n374) );
  inv0d1 U711 ( .I(inc_address[12]), .ZN(n686) );
  oai2222d1 U712 ( .A1(n63), .A2(n773), .B1(n39), .B2(n772), .C1(n691), .C2(
        n770), .D1(n769), .D2(n686), .ZN(n367) );
  aoi222d1 U713 ( .A1(address_save[4]), .A2(n292), .B1(alu_out[4]), .B2(n743), 
        .C1(inc_address[4]), .C2(n758), .ZN(n688) );
  aoi222d1 U714 ( .A1(n762), .A2(b_data[4]), .B1(dec_address[4]), .B2(n273), 
        .C1(n761), .C2(n692), .ZN(n687) );
  inv0d1 U715 ( .I(inc_address[4]), .ZN(n690) );
  oai2222d1 U716 ( .A1(n19), .A2(n773), .B1(n20), .B2(n56), .C1(n691), .C2(
        n737), .D1(n769), .D2(n690), .ZN(n390) );
  aoi222d1 U717 ( .A1(address_save[12]), .A2(n292), .B1(inc_address[12]), .B2(
        n758), .C1(alu_out[4]), .C2(n759), .ZN(n694) );
  aoi222d1 U718 ( .A1(n762), .A2(a_data[4]), .B1(dec_address[12]), .B2(n273), 
        .C1(sp[12]), .C2(n761), .ZN(n693) );
  inv0d1 U719 ( .I(inc_address[11]), .ZN(n696) );
  oai2222d1 U720 ( .A1(n7), .A2(n773), .B1(n8), .B2(n772), .C1(n228), .C2(n770), .D1(n769), .D2(n696), .ZN(n368) );
  aoi2222d1 U721 ( .A1(data_in[1]), .A2(n60), .B1(inc_address[3]), .B2(n758), 
        .C1(n697), .C2(n709), .D1(alu_out[3]), .D2(n743), .ZN(n699) );
  aoi2222d1 U722 ( .A1(n761), .A2(n703), .B1(n762), .B2(b_data[3]), .C1(
        address_save[3]), .C2(n292), .D1(dec_address[3]), .D2(n273), .ZN(n698)
         );
  nd02d1 U723 ( .A1(n699), .A2(n698), .ZN(n700) );
  aor222d1 U724 ( .A1(n746), .A2(address[3]), .B1(n269), .B2(n700), .C1(
        data_in[1]), .C2(n765), .Z(n384) );
  inv0d1 U725 ( .I(inc_address[3]), .ZN(n701) );
  oai2222d1 U726 ( .A1(n22), .A2(n773), .B1(n21), .B2(n56), .C1(n228), .C2(
        n737), .D1(n769), .D2(n701), .ZN(n391) );
  aoi222d1 U727 ( .A1(address_save[11]), .A2(n292), .B1(inc_address[11]), .B2(
        n758), .C1(alu_out[3]), .C2(n759), .ZN(n706) );
  aoi222d1 U728 ( .A1(n762), .A2(a_data[3]), .B1(dec_address[11]), .B2(n273), 
        .C1(n761), .C2(n704), .ZN(n705) );
  inv0d1 U729 ( .I(inc_address[10]), .ZN(n708) );
  oai2222d1 U730 ( .A1(n71), .A2(n773), .B1(n10), .B2(n772), .C1(n715), .C2(
        n770), .D1(n769), .D2(n708), .ZN(n369) );
  aoi2222d1 U731 ( .A1(data_in[0]), .A2(n60), .B1(inc_address[2]), .B2(n758), 
        .C1(n710), .C2(n709), .D1(alu_out[2]), .D2(n743), .ZN(n712) );
  aoi2222d1 U732 ( .A1(n761), .A2(n716), .B1(n762), .B2(n80), .C1(
        address_save[2]), .C2(n292), .D1(dec_address[2]), .D2(n273), .ZN(n711)
         );
  nd02d1 U733 ( .A1(n712), .A2(n711), .ZN(n713) );
  aor222d1 U734 ( .A1(n746), .A2(address[2]), .B1(n269), .B2(n713), .C1(
        data_in[0]), .C2(n765), .Z(n385) );
  inv0d1 U735 ( .I(inc_address[2]), .ZN(n714) );
  oai2222d1 U736 ( .A1(n23), .A2(n773), .B1(n24), .B2(n56), .C1(n715), .C2(
        n737), .D1(n769), .D2(n714), .ZN(n392) );
  aoi222d1 U737 ( .A1(n762), .A2(a_data[2]), .B1(dec_address[10]), .B2(n273), 
        .C1(n761), .C2(n718), .ZN(n719) );
  aor22d1 U738 ( .A1(n61), .A2(n721), .B1(n767), .B2(n72), .Z(n377) );
  inv0d1 U739 ( .I(inc_address[9]), .ZN(n722) );
  oai2222d1 U740 ( .A1(n11), .A2(n773), .B1(n12), .B2(n772), .C1(n727), .C2(
        n770), .D1(n769), .D2(n722), .ZN(n370) );
  aoi222d1 U741 ( .A1(address_save[1]), .A2(n292), .B1(alu_out[1]), .B2(n743), 
        .C1(inc_address[1]), .C2(n758), .ZN(n724) );
  aoi222d1 U742 ( .A1(n762), .A2(b_data[1]), .B1(dec_address[1]), .B2(n273), 
        .C1(n761), .C2(n728), .ZN(n723) );
  nd02d1 U743 ( .A1(n724), .A2(n723), .ZN(n725) );
  aor22d1 U744 ( .A1(n269), .A2(n725), .B1(n746), .B2(address[1]), .Z(n386) );
  inv0d1 U745 ( .I(inc_address[1]), .ZN(n726) );
  oai2222d1 U746 ( .A1(n58), .A2(n773), .B1(n26), .B2(n56), .C1(n727), .C2(
        n737), .D1(n769), .D2(n726), .ZN(n393) );
  aoi2222d1 U747 ( .A1(alu_out[1]), .A2(n759), .B1(address_save[9]), .B2(n292), 
        .C1(data_in[7]), .C2(n60), .D1(inc_address[9]), .D2(n758), .ZN(n731)
         );
  aoi222d1 U748 ( .A1(n762), .A2(a_data[1]), .B1(dec_address[9]), .B2(n273), 
        .C1(n761), .C2(n729), .ZN(n730) );
  nd02d1 U749 ( .A1(n731), .A2(n730), .ZN(n732) );
  aor222d1 U750 ( .A1(n767), .A2(n779), .B1(n61), .B2(n732), .C1(data_in[7]), 
        .C2(n765), .Z(n378) );
  inv0d1 U751 ( .I(inc_address[7]), .ZN(n733) );
  oai2222d1 U752 ( .A1(n87), .A2(n773), .B1(n14), .B2(n56), .C1(n749), .C2(
        n737), .D1(n769), .D2(n733), .ZN(n387) );
  aoi222d1 U753 ( .A1(n762), .A2(b_data[7]), .B1(dec_address[7]), .B2(n273), 
        .C1(n761), .C2(n750), .ZN(n734) );
  aor222d1 U754 ( .A1(data_in[5]), .A2(n736), .B1(n269), .B2(n735), .C1(n746), 
        .C2(address[7]), .Z(n380) );
  nr02d0 U755 ( .A1(n56), .A2(n29), .ZN(n739) );
  nr02d0 U756 ( .A1(n740), .A2(n739), .ZN(n742) );
  aoi222d1 U757 ( .A1(address_save[0]), .A2(n292), .B1(alu_out[0]), .B2(n743), 
        .C1(inc_address[0]), .C2(n758), .ZN(n745) );
  aoi222d1 U758 ( .A1(n762), .A2(n83), .B1(dec_address[0]), .B2(n273), .C1(
        n761), .C2(n756), .ZN(n744) );
  nd02d1 U759 ( .A1(n745), .A2(n744), .ZN(n747) );
  aor22d1 U760 ( .A1(n269), .A2(n747), .B1(n746), .B2(n427), .Z(n395) );
  inv0d1 U761 ( .I(inc_address[15]), .ZN(n748) );
  oai2222d1 U762 ( .A1(n27), .A2(n773), .B1(n36), .B2(n772), .C1(n749), .C2(
        n770), .D1(n769), .D2(n748), .ZN(n364) );
  aoi222d1 U763 ( .A1(n762), .A2(a_data[7]), .B1(dec_address[15]), .B2(n273), 
        .C1(sp[15]), .C2(n761), .ZN(n752) );
  aor22d1 U764 ( .A1(n754), .A2(n61), .B1(n767), .B2(address[15]), .Z(n372) );
  aoi2222d1 U765 ( .A1(alu_out[0]), .A2(n759), .B1(address_save[8]), .B2(n292), 
        .C1(data_in[6]), .C2(n60), .D1(inc_address[8]), .D2(n758), .ZN(n764)
         );
  nd02d1 U766 ( .A1(n764), .A2(n763), .ZN(n766) );
  aor222d1 U767 ( .A1(n767), .A2(address[8]), .B1(n61), .B2(n766), .C1(n765), 
        .C2(data_in[6]), .Z(n379) );
  inv0d1 U768 ( .I(inc_address[8]), .ZN(n768) );
  oai2222d1 U769 ( .A1(n28), .A2(n773), .B1(n3), .B2(n772), .C1(n771), .C2(
        n770), .D1(n769), .D2(n768), .ZN(n371) );
  nd02d1 U770 ( .A1(n775), .A2(n786), .ZN(n249) );
  inv0d1 U771 ( .I(n249), .ZN(n776) );
endmodule


module risc8_control ( alu_cmd, carry_src, a_addr, b_addr, w_addr, wr_reg, 
        a_src, b_src, muldiv_op, flag_op, data_op, addr_op, invert_b, lu_op, 
        inc_pc, opcode_op, int_type, clk, rst_n, nmi, int, queue_out, psw, 
        data_ready, queue_count, divide_by_0 );
  output [3:0] alu_cmd;
  output [2:0] carry_src;
  output [3:0] a_addr;
  output [3:0] b_addr;
  output [3:0] w_addr;
  output [1:0] a_src;
  output [1:0] b_src;
  output [5:0] muldiv_op;
  output [2:0] flag_op;
  output [2:0] data_op;
  output [3:0] addr_op;
  output [1:0] inc_pc;
  output [4:0] opcode_op;
  output [1:0] int_type;
  input [7:0] queue_out;
  input [7:0] psw;
  input [2:0] queue_count;
  input clk, rst_n, nmi, int, data_ready, divide_by_0;
  output wr_reg, invert_b, lu_op;
  wire   decode_6, decode_5, decode_4, decode_3, decode_2, decode_1, decode_0,
         int_reg, div_reg, N162, N165, N168, int_processing,
         next_int_processing, N440, N441, N442, N443, N444, N445, N446, N447,
         N582, N583, N587, N588, N589, N590, N591, N592, N593, N594, N639,
         N640, N644, N645, N646, N647, N652, N653, N654, N655, N718, N719,
         N720, N721, N818, N819, N820, N821, N826, N827, N828, N829, N848,
         N849, N850, N851, N852, N853, N854, N855, N863, N929, N930, N934,
         N935, N936, N937, N1020, N1021, N1025, N1026, N1027, N1028, N1087,
         N1088, N1089, N1090, N1110, N1111, N1114, N1115, N1116, N1117, N1118,
         N1119, N1120, N1121, N1188, N1189, N1202, N1203, N1204, N1205, N1233,
         N1234, N1235, N1236, N1297, N1298, N1302, N1303, N1304, N1305, N1310,
         N1311, N1312, N1313, N1363, n6, n7, n8, n181, n211, n237, n240, n244,
         n245, n248, n251, n422, n552, n553, n554, n555, n556, n557, n558, n1,
         n2, n3, n4, n5, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n161, n162, n163, n164, n165, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n238, n239, n241,
         n242, n243, n246, n247, n249, n250, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n416, n417, n418, n419, n420, n421,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n559, n560, n561,
         n562, n563, n564, n565, n566, n567, n568, n569, n570, n571, n572,
         n573, n574, n575, n576, n577, n578, n579, n580, n581, n582, n583,
         n584, n585, n586, n587, n588, n589, n590, n591, n592, n593, n594,
         n595, n596, n597, n598, n599, n600, n601, n602, n603, n604, n605,
         n606, n607, n608, n609, n610, n611, n612, n613, n614, n615, n616,
         n617, n618, n619, n620, n621, n622, n623, n624, n625, n626, n627,
         n628, n629, n630, n631, n632, n633, n634, n635, n636, n637, n638,
         n639, n640, n641, n642, n643, n644, n645, n646, n647, n648, n649,
         n650, n651, n652, n653, n654, n655, n656, n657, n658, n659, n660,
         n661, n662, n663, n664, n665, n666, n667, n668, n669, n670, n671,
         n672, n673, n674, n675, n676, n677, n678, n679, n680, n681, n682,
         n683, n684, n685, n686, n687, n688, n689, n690, n691, n692, n693,
         n694, n695, n696, n697, n698, n699, n700, n701, n702, n703, n704,
         n705, n706, n707, n708, n709, n710, n711, n712, n713, n714, n715,
         n716, n717, n718, n719, n720, n721, n722, n723, n724, n725, n726,
         n727, n728, n729, n730, n731, n732, n733, n734, n735, n736, n737,
         n738, n739, n740, n741, n742, n743, n744, n745, n746, n747, n748,
         n749, n750, n751, n752, n753, n754, n755, n756, n757, n758, n759,
         n760, n761, n762, n763, n764, n765, n766, n767, n768, n769, n770,
         n771, n772, n773, n774, n775, n776, n777, n778, n779, n780, n781,
         n782, n783, n784, n785, n786, n787, n788, n789, n790, n791, n792,
         n793, n794, n795, n796, n797, n798, n799, n800, n801, n802, n803,
         n804, n805, n806, n807, n808, n809, n810, n811, n812, n813, n814,
         n815, n816, n817, n818, n819, n820, n821, n822, n823, n824, n825,
         n826, n827, n828, n829, n830, n831, n832, n833, n834, n835, n836,
         n837, n838, n839, n840, n841, n842, n843, n844, n845, n846, n847,
         n848, n849, n850, n851, n852, n853, n854, n855, n856, n857, n858,
         n859, n860, n861, n862, n863, n864, n865, n866, n867, n868, n869,
         n870, n871, n872, n873, n874, n875, n876, n877, n878, n879, n880,
         n881, n882, n883, n884, n885, n886, n887, n888, n889, n890, n891,
         n892, n893, n894, n895, n896, n897, n898, n899, n900, n901, n902,
         n903, n904, n905, n906, n907, n908, n909, n910, n911, n912, n913,
         n914, n915, n916, n917, n918, n919, n920, n921, n922, n923, n924,
         n926, n927, n928, n929, n930, n932;
  wire   [51:12] decode;
  wire   [3:2] opcode_op_d;
  wire   [7:3] opcode;
  wire   [2:0] operan;
  wire   [3:0] state;
  wire   [7:0] opcode_tmp;
  assign a_src[1] = 1'b0;

  dfprb1 lu_op_reg ( .D(N1363), .CP(clk), .SDN(n380), .Q(lu_op) );
  aoim22d1 U557 ( .A1(int_type[0]), .A2(int_type[1]), .B1(int), .B2(int_reg), 
        .Z(N168) );
  aoim22d1 U558 ( .A1(n8), .A2(int_type[1]), .B1(divide_by_0), .B2(div_reg), 
        .Z(N165) );
  aoim22d1 U559 ( .A1(int_type[0]), .A2(n6), .B1(nmi), .B2(n932), .Z(N162) );
  nr02d0 U590 ( .A1(n932), .A2(div_reg), .ZN(n422) );
  decrq2 \b_addr_reg[3]  ( .D(decode[35]), .ENN(n375), .CP(clk), .CDN(n381), 
        .Q(b_addr[3]) );
  decrq4 \state_reg[0]  ( .D(decode[48]), .ENN(n377), .CP(clk), .CDN(n379), 
        .Q(N863) );
  decrq1 \opcode_tmp_reg[3]  ( .D(queue_out[3]), .ENN(n251), .CP(clk), .CDN(
        n383), .Q(opcode_tmp[3]) );
  decrq1 \opcode_tmp_reg[2]  ( .D(n370), .ENN(n251), .CP(clk), .CDN(n383), .Q(
        opcode_tmp[2]) );
  mx02d0 \a_addr_reg[0]/U4  ( .I0(n245), .I1(n59), .S(n928), .Z(n241) );
  dfcrq4 \a_addr_reg[0]  ( .D(n241), .CP(clk), .CDN(rst_n), .Q(a_addr[0]) );
  decrq1 \flag_op_reg[2]  ( .D(decode[22]), .ENN(n376), .CP(clk), .CDN(n381), 
        .Q(flag_op[2]) );
  decrq1 \flag_op_reg[1]  ( .D(decode[21]), .ENN(n376), .CP(clk), .CDN(n382), 
        .Q(flag_op[1]) );
  decrq1 \data_op_reg[0]  ( .D(decode_4), .ENN(n376), .CP(clk), .CDN(n382), 
        .Q(data_op[0]) );
  decrq1 \flag_op_reg[0]  ( .D(decode[20]), .ENN(n376), .CP(clk), .CDN(n382), 
        .Q(flag_op[0]) );
  decrq1 \data_op_reg[1]  ( .D(decode_5), .ENN(n376), .CP(clk), .CDN(n382), 
        .Q(data_op[1]) );
  decrq1 \data_op_reg[2]  ( .D(decode_6), .ENN(n377), .CP(clk), .CDN(n381), 
        .Q(data_op[2]) );
  decrq1 wr_reg_reg ( .D(decode[27]), .ENN(n375), .CP(clk), .CDN(n380), .Q(
        wr_reg) );
  decrq1 \addr_op_reg[1]  ( .D(decode_1), .ENN(n377), .CP(clk), .CDN(n381), 
        .Q(addr_op[1]) );
  decrq1 \w_addr_reg[0]  ( .D(n237), .ENN(n928), .CP(clk), .CDN(n380), .Q(
        w_addr[0]) );
  decrq1 \opcode_tmp_reg[5]  ( .D(queue_out[5]), .ENN(n251), .CP(clk), .CDN(
        n383), .Q(opcode_tmp[5]) );
  decrq1 \opcode_tmp_reg[7]  ( .D(queue_out[7]), .ENN(n251), .CP(clk), .CDN(
        n383), .Q(opcode_tmp[7]) );
  decrq1 \opcode_tmp_reg[4]  ( .D(queue_out[4]), .ENN(n251), .CP(clk), .CDN(
        n383), .Q(opcode_tmp[4]) );
  decrq1 \opcode_tmp_reg[6]  ( .D(queue_out[6]), .ENN(n251), .CP(clk), .CDN(
        n383), .Q(opcode_tmp[6]) );
  decrq1 \opcode_tmp_reg[1]  ( .D(queue_out[1]), .ENN(n251), .CP(clk), .CDN(
        n383), .Q(opcode_tmp[1]) );
  decrq1 \opcode_tmp_reg[0]  ( .D(n369), .ENN(n251), .CP(clk), .CDN(n382), .Q(
        opcode_tmp[0]) );
  decrq1 int_processing_reg ( .D(next_int_processing), .ENN(n378), .CP(clk), 
        .CDN(n384), .Q(int_processing) );
  decrq1 \muldiv_op_reg[4]  ( .D(decode[18]), .ENN(n376), .CP(clk), .CDN(n382), 
        .Q(muldiv_op[4]) );
  decrq1 \opcode_op_d_reg[3]  ( .D(opcode_op[3]), .ENN(n378), .CP(clk), .CDN(
        n384), .Q(opcode_op_d[3]) );
  dfcrq1 int_reg_reg ( .D(N168), .CP(clk), .CDN(n379), .Q(int_reg) );
  decrq1 \addr_op_reg[2]  ( .D(decode_2), .ENN(n377), .CP(clk), .CDN(n382), 
        .Q(addr_op[2]) );
  decrq1 \inc_pc_reg[1]  ( .D(decode[13]), .ENN(n377), .CP(clk), .CDN(n381), 
        .Q(inc_pc[1]) );
  decrq1 \addr_op_reg[3]  ( .D(decode_3), .ENN(n377), .CP(clk), .CDN(n381), 
        .Q(addr_op[3]) );
  dfcrq1 \carry_src_reg[1]  ( .D(n554), .CP(clk), .CDN(n379), .Q(carry_src[1])
         );
  decrq1 \inc_pc_reg[0]  ( .D(decode[12]), .ENN(n377), .CP(clk), .CDN(n382), 
        .Q(inc_pc[0]) );
  dfcrq1 \carry_src_reg[0]  ( .D(n555), .CP(clk), .CDN(n379), .Q(carry_src[0])
         );
  decrq1 \carry_src_reg[2]  ( .D(n211), .ENN(n927), .CP(clk), .CDN(n381), .Q(
        carry_src[2]) );
  dfcrq1 div_reg_reg ( .D(N165), .CP(clk), .CDN(n379), .Q(div_reg) );
  decrq1 \addr_op_reg[0]  ( .D(decode_0), .ENN(n377), .CP(clk), .CDN(n382), 
        .Q(addr_op[0]) );
  decrq1 \alu_cmd_reg[2]  ( .D(decode[46]), .ENN(n375), .CP(clk), .CDN(n381), 
        .Q(alu_cmd[2]) );
  decrq1 \muldiv_op_reg[2]  ( .D(decode[16]), .ENN(n376), .CP(clk), .CDN(n382), 
        .Q(muldiv_op[2]) );
  dfcrq1 \w_addr_reg[2]  ( .D(n556), .CP(clk), .CDN(n379), .Q(w_addr[2]) );
  decrq1 \alu_cmd_reg[1]  ( .D(decode[45]), .ENN(n375), .CP(clk), .CDN(n381), 
        .Q(alu_cmd[1]) );
  decrq1 \w_addr_reg[3]  ( .D(n244), .ENN(n928), .CP(clk), .CDN(n380), .Q(
        w_addr[3]) );
  decrq1 \alu_cmd_reg[3]  ( .D(decode[47]), .ENN(n375), .CP(clk), .CDN(n381), 
        .Q(alu_cmd[3]) );
  dfcrb2 \a_addr_reg[1]  ( .D(n557), .CP(clk), .CDN(n379), .Q(n179), .QN(n180)
         );
  dfcrq4 \b_addr_reg[1]  ( .D(n239), .CP(clk), .CDN(rst_n), .Q(b_addr[1]) );
  dfcrb1 \a_addr_reg[2]  ( .D(n558), .CP(clk), .CDN(n379), .Q(n167), .QN(n165)
         );
  decrq1 \state_reg[2]  ( .D(decode[50]), .ENN(n377), .CP(clk), .CDN(n384), 
        .Q(state[2]) );
  dfcrb1 nmi_reg_reg ( .D(N162), .CP(clk), .CDN(n379), .Q(n932), .QN(n7) );
  dfcrb1 \int_type_reg[1]  ( .D(n552), .CP(clk), .CDN(n379), .Q(int_type[1]), 
        .QN(n6) );
  dfcrb1 \int_type_reg[0]  ( .D(n553), .CP(clk), .CDN(n379), .Q(int_type[0]), 
        .QN(n8) );
  decrq4 \b_addr_reg[2]  ( .D(decode[34]), .ENN(n924), .CP(clk), .CDN(rst_n), 
        .Q(b_addr[2]) );
  decrq4 \b_addr_reg[0]  ( .D(decode[32]), .ENN(n375), .CP(clk), .CDN(n381), 
        .Q(b_addr[0]) );
  decrq1 \opcode_op_d_reg[2]  ( .D(opcode_op[2]), .ENN(n378), .CP(clk), .CDN(
        n383), .Q(opcode_op_d[2]) );
  decrq1 \state_reg[3]  ( .D(decode[51]), .ENN(n378), .CP(clk), .CDN(n383), 
        .Q(state[3]) );
  decrq4 \a_addr_reg[3]  ( .D(n248), .ENN(n928), .CP(clk), .CDN(n380), .Q(
        a_addr[3]) );
  decrq1 \muldiv_op_reg[5]  ( .D(n38), .ENN(n376), .CP(clk), .CDN(n383), .Q(
        muldiv_op[5]) );
  decrq1 \muldiv_op_reg[0]  ( .D(decode[14]), .ENN(n376), .CP(clk), .CDN(n382), 
        .Q(muldiv_op[0]) );
  decrq1 \muldiv_op_reg[1]  ( .D(decode[15]), .ENN(n376), .CP(clk), .CDN(n382), 
        .Q(muldiv_op[1]) );
  decrq1 invert_b_reg ( .D(decode[40]), .ENN(n377), .CP(clk), .CDN(n380), .Q(
        invert_b) );
  decrq1 \b_src_reg[1]  ( .D(N1298), .ENN(n926), .CP(clk), .CDN(n380), .Q(
        b_src[1]) );
  decrq1 \muldiv_op_reg[3]  ( .D(decode[17]), .ENN(n376), .CP(clk), .CDN(n383), 
        .Q(muldiv_op[3]) );
  decrq1 \a_src_reg[0]  ( .D(decode[25]), .ENN(n375), .CP(clk), .CDN(n380), 
        .Q(a_src[0]) );
  decrq1 \alu_cmd_reg[0]  ( .D(decode[44]), .ENN(n375), .CP(clk), .CDN(n381), 
        .Q(alu_cmd[0]) );
  decrq2 \w_addr_reg[1]  ( .D(n240), .ENN(n928), .CP(clk), .CDN(rst_n), .Q(
        w_addr[1]) );
  decrq4 \state_reg[1]  ( .D(decode[49]), .ENN(n377), .CP(clk), .CDN(n383), 
        .Q(state[1]) );
  decrq2 \b_src_reg[0]  ( .D(N1297), .ENN(n926), .CP(clk), .CDN(n379), .Q(
        b_src[0]) );
  an02d1 U4 ( .A1(n790), .A2(n722), .Z(n1) );
  or02d1 U5 ( .A1(n1), .A2(n215), .Z(n696) );
  nd02d1 U6 ( .A1(n767), .A2(n860), .ZN(n2) );
  nd02d1 U7 ( .A1(n766), .A2(n815), .ZN(n3) );
  inv0d1 U8 ( .I(n765), .ZN(n4) );
  nd03d0 U9 ( .A1(n2), .A2(n3), .A3(n4), .ZN(n120) );
  nd02d0 U10 ( .A1(n222), .A2(n367), .ZN(n767) );
  inv0d1 U11 ( .I(n891), .ZN(n815) );
  nd02d1 U12 ( .A1(N828), .A2(n203), .ZN(n5) );
  nd02d1 U13 ( .A1(N1089), .A2(n205), .ZN(n9) );
  nd02d1 U14 ( .A1(N854), .A2(n193), .ZN(n10) );
  nd03d0 U15 ( .A1(n5), .A2(n9), .A3(n10), .ZN(n358) );
  nd02d1 U16 ( .A1(queue_out[4]), .A2(n11), .ZN(n12) );
  nd02d0 U17 ( .A1(opcode_tmp[4]), .A2(opcode_op_d[2]), .ZN(n13) );
  nd02d2 U18 ( .A1(n12), .A2(n13), .ZN(n150) );
  clk2d2 U19 ( .CLK(opcode_op_d[2]), .CN(n11) );
  nd02d1 U20 ( .A1(n260), .A2(n314), .ZN(n14) );
  nd02d1 U21 ( .A1(n297), .A2(n315), .ZN(n15) );
  inv0d1 U22 ( .I(n316), .ZN(n16) );
  nd03d0 U23 ( .A1(n14), .A2(n15), .A3(n16), .ZN(N1304) );
  nd02d1 U24 ( .A1(n40), .A2(n57), .ZN(n17) );
  nd02d1 U25 ( .A1(n76), .A2(n18), .ZN(n121) );
  inv0d1 U26 ( .I(n17), .ZN(n18) );
  aor21d1 U27 ( .B1(n372), .B2(n121), .A(n799), .Z(n781) );
  nd02d1 U28 ( .A1(n565), .A2(n566), .ZN(n19) );
  nd02d1 U29 ( .A1(n564), .A2(n20), .ZN(n837) );
  inv0d1 U30 ( .I(n19), .ZN(n20) );
  inv0d1 U31 ( .I(n146), .ZN(n564) );
  aor21d1 U32 ( .B1(n576), .B2(n575), .A(n837), .Z(n727) );
  nd02d2 U33 ( .A1(queue_out[7]), .A2(n21), .ZN(n22) );
  nd02d0 U34 ( .A1(opcode_tmp[7]), .A2(opcode_op_d[2]), .ZN(n23) );
  nd02d2 U35 ( .A1(n22), .A2(n23), .ZN(n24) );
  inv0d0 U36 ( .I(opcode_op_d[2]), .ZN(n21) );
  inv0d1 U37 ( .I(n24), .ZN(n563) );
  nd02d1 U38 ( .A1(n43), .A2(n563), .ZN(n568) );
  invbd2 U39 ( .I(n563), .ZN(opcode[7]) );
  nd02d2 U40 ( .A1(n52), .A2(n819), .ZN(n25) );
  nd02d2 U41 ( .A1(n596), .A2(n26), .ZN(n649) );
  inv0d2 U42 ( .I(n25), .ZN(n26) );
  an03d2 U43 ( .A1(n103), .A2(n104), .A3(n105), .Z(n52) );
  nd02d4 U44 ( .A1(n758), .A2(n642), .ZN(n819) );
  aor31d2 U45 ( .B1(n595), .B2(n653), .B3(n594), .A(n611), .Z(n596) );
  inv0d2 U46 ( .I(n649), .ZN(n597) );
  nd02d1 U47 ( .A1(n498), .A2(n515), .ZN(n27) );
  nd02d1 U48 ( .A1(n501), .A2(n28), .ZN(n859) );
  inv0d1 U49 ( .I(n27), .ZN(n28) );
  nd02d1 U50 ( .A1(n115), .A2(n114), .ZN(n29) );
  nd02d1 U51 ( .A1(n116), .A2(n30), .ZN(n858) );
  inv0d1 U52 ( .I(n29), .ZN(n30) );
  nd02d1 U53 ( .A1(n146), .A2(n566), .ZN(n31) );
  nd02d1 U54 ( .A1(n150), .A2(n32), .ZN(n843) );
  inv0d1 U55 ( .I(n31), .ZN(n32) );
  nd02d1 U56 ( .A1(n146), .A2(n565), .ZN(n33) );
  nd02d1 U57 ( .A1(opcode[5]), .A2(n34), .ZN(n873) );
  inv0d1 U58 ( .I(n33), .ZN(n34) );
  clk2d2 U59 ( .CLK(b_src[0]), .CN(n559) );
  aor21d4 U60 ( .B1(n200), .B2(n632), .A(b_src[0]), .Z(N582) );
  aor21d4 U61 ( .B1(b_src[0]), .B2(n548), .A(n547), .Z(N1188) );
  nd02d0 U62 ( .A1(n870), .A2(n612), .ZN(n613) );
  aor222d4 U63 ( .A1(n374), .A2(n666), .B1(n665), .B2(n794), .C1(n870), .C2(
        n792), .Z(decode_2) );
  nd02d0 U64 ( .A1(n96), .A2(n870), .ZN(n468) );
  invbd7 U65 ( .I(n180), .ZN(a_addr[1]) );
  invbd2 U66 ( .I(n742), .ZN(n623) );
  nd04d1 U67 ( .A1(n745), .A2(n743), .A3(n742), .A4(n741), .ZN(n769) );
  nd02d2 U68 ( .A1(n495), .A2(n745), .ZN(n742) );
  inv0d4 U69 ( .I(state[1]), .ZN(n406) );
  nd02d2 U70 ( .A1(n504), .A2(n490), .ZN(n491) );
  nd02d0 U71 ( .A1(n504), .A2(state[3]), .ZN(n745) );
  nd02d0 U72 ( .A1(n438), .A2(n504), .ZN(n439) );
  inv0d4 U73 ( .I(n437), .ZN(n504) );
  nd02d2 U74 ( .A1(n844), .A2(n746), .ZN(n702) );
  nd02d2 U75 ( .A1(n503), .A2(state[2]), .ZN(n714) );
  inv0d4 U76 ( .I(n502), .ZN(n503) );
  bufbd1 U77 ( .I(n861), .Z(n158) );
  an02d2 U78 ( .A1(n51), .A2(n136), .Z(n200) );
  nd12d0 U79 ( .A1(n726), .A2(n583), .ZN(n586) );
  inv0d4 U80 ( .I(N863), .ZN(n929) );
  aor221d1 U81 ( .B1(n870), .B2(n869), .C1(n868), .C2(n374), .A(n912), .Z(n886) );
  nd02d1 U82 ( .A1(n50), .A2(n73), .ZN(n74) );
  nd02d0 U83 ( .A1(opcode_tmp[2]), .A2(opcode_op_d[2]), .ZN(n163) );
  inv0d1 U84 ( .I(n766), .ZN(n856) );
  nd02d1 U85 ( .A1(n505), .A2(n46), .ZN(n617) );
  nd04d0 U86 ( .A1(n518), .A2(n653), .A3(n517), .A4(n516), .ZN(n813) );
  nd02d1 U87 ( .A1(n655), .A2(n891), .ZN(n450) );
  nd04d0 U88 ( .A1(n638), .A2(n527), .A3(n526), .A4(n602), .ZN(N718) );
  invbd2 U89 ( .I(n576), .ZN(n454) );
  inv0d1 U90 ( .I(n831), .ZN(n673) );
  nd02d1 U91 ( .A1(n568), .A2(n567), .ZN(n849) );
  nd02d0 U92 ( .A1(opcode_tmp[6]), .A2(opcode_op_d[2]), .ZN(n145) );
  nd02d1 U93 ( .A1(queue_out[6]), .A2(n174), .ZN(n144) );
  inv0d0 U94 ( .I(n43), .ZN(n258) );
  an04d1 U95 ( .A1(n579), .A2(n578), .A3(n577), .A4(n727), .Z(n204) );
  nd02d1 U96 ( .A1(n454), .A2(n368), .ZN(n652) );
  inv0d0 U97 ( .I(n69), .ZN(n653) );
  aor21d1 U98 ( .B1(n806), .B2(n812), .A(n648), .Z(n724) );
  nr02d0 U99 ( .A1(n714), .A2(n153), .ZN(n656) );
  nr04d0 U100 ( .A1(n724), .A2(n723), .A3(n788), .A4(n749), .ZN(n725) );
  or02d1 U101 ( .A1(n156), .A2(n734), .Z(n723) );
  aor22d1 U102 ( .A1(alu_cmd[1]), .A2(n886), .B1(n372), .B2(n882), .Z(
        decode[45]) );
  aor22d1 U103 ( .A1(alu_cmd[2]), .A2(n886), .B1(n373), .B2(n885), .Z(
        decode[46]) );
  inv0d1 U104 ( .I(n137), .ZN(n132) );
  inv0d0 U105 ( .I(n751), .ZN(n884) );
  inv0d1 U106 ( .I(psw[1]), .ZN(n139) );
  nd02d0 U107 ( .A1(opcode_tmp[1]), .A2(opcode_op_d[2]), .ZN(n169) );
  aor21d1 U108 ( .B1(N855), .B2(n42), .A(n811), .Z(N849) );
  nd02d1 U109 ( .A1(opcode_tmp[0]), .A2(opcode_op_d[2]), .ZN(n176) );
  nd02d1 U110 ( .A1(n523), .A2(n619), .ZN(n861) );
  nd02d1 U111 ( .A1(n140), .A2(n515), .ZN(n599) );
  aor21d1 U112 ( .B1(w_addr[0]), .B2(n859), .A(n500), .Z(N644) );
  aor21d1 U113 ( .B1(n59), .B2(n840), .A(n69), .Z(N1118) );
  inv0d1 U114 ( .I(n735), .ZN(n495) );
  an02d1 U115 ( .A1(n219), .A2(n564), .Z(n159) );
  nd02d1 U116 ( .A1(n463), .A2(n368), .ZN(n420) );
  aor21d1 U117 ( .B1(n588), .B2(n562), .A(n816), .Z(n601) );
  aon211d1 U118 ( .C1(n404), .C2(n408), .B(opcode_op_d[3]), .A(n174), .ZN(n487) );
  nd02d1 U119 ( .A1(n403), .A2(n760), .ZN(n404) );
  inv0d1 U120 ( .I(n421), .ZN(n147) );
  nd02d1 U121 ( .A1(n612), .A2(n490), .ZN(n743) );
  aor21d1 U122 ( .B1(N851), .B2(n42), .A(n529), .Z(N853) );
  aor21d1 U123 ( .B1(n905), .B2(n904), .A(n195), .Z(n908) );
  inv0d1 U124 ( .I(n569), .ZN(n615) );
  nd12d1 U125 ( .A1(n506), .A2(N863), .ZN(n428) );
  bufbd1 U126 ( .I(n159), .Z(n149) );
  oaim21d1 U127 ( .B1(n159), .B2(n881), .A(n751), .ZN(n156) );
  nd02d1 U128 ( .A1(n571), .A2(n871), .ZN(n734) );
  nr04d0 U129 ( .A1(n749), .A2(n748), .A3(n862), .A4(n905), .ZN(n764) );
  an02d1 U130 ( .A1(n147), .A2(n574), .Z(n215) );
  aor22d1 U131 ( .A1(n623), .A2(n790), .B1(n123), .B2(n147), .Z(n789) );
  nd02d1 U132 ( .A1(N863), .A2(n406), .ZN(n502) );
  invbd2 U133 ( .I(n420), .ZN(n790) );
  an02d1 U134 ( .A1(n133), .A2(n768), .Z(n85) );
  an02d1 U135 ( .A1(n790), .A2(n769), .Z(n84) );
  an02d1 U136 ( .A1(n905), .A2(n136), .Z(n217) );
  inv0d1 U137 ( .I(n743), .ZN(n875) );
  nr02d0 U138 ( .A1(n183), .A2(n708), .ZN(N654) );
  bufbd1 U139 ( .I(opcode[7]), .Z(n101) );
  aor21d1 U140 ( .B1(w_addr[2]), .B2(n595), .A(n535), .Z(N1235) );
  nd12d0 U141 ( .A1(n226), .A2(n318), .ZN(n317) );
  aor221d1 U142 ( .B1(n811), .B2(n905), .C1(n673), .C2(n69), .A(n212), .Z(n643) );
  nr04d0 U143 ( .A1(n617), .A2(n87), .A3(n891), .A4(n616), .ZN(n621) );
  inv0d1 U144 ( .I(n568), .ZN(n881) );
  inv0d1 U145 ( .I(n812), .ZN(n840) );
  aor222d1 U146 ( .A1(n905), .A2(n851), .B1(n850), .B2(n849), .C1(carry_src[2]), .C2(n848), .Z(n852) );
  an02d1 U147 ( .A1(n590), .A2(n589), .Z(n117) );
  nd02d1 U148 ( .A1(n673), .A2(n642), .ZN(n590) );
  aor222d1 U149 ( .A1(n814), .A2(n847), .B1(n862), .B2(n813), .C1(n841), .C2(
        n812), .Z(n822) );
  inv0d2 U150 ( .I(n702), .ZN(n611) );
  nd12d0 U151 ( .A1(n282), .A2(n283), .ZN(n278) );
  aor22d1 U152 ( .A1(n580), .A2(n929), .B1(n414), .B2(n69), .Z(n572) );
  inv0d1 U153 ( .I(n282), .ZN(n259) );
  aor21d1 U154 ( .B1(n504), .B2(n367), .A(n616), .Z(n792) );
  an02d1 U155 ( .A1(n790), .A2(n875), .Z(n66) );
  aor31d1 U156 ( .B1(n374), .B2(n616), .B3(n152), .A(n667), .Z(n451) );
  nr04d0 U157 ( .A1(n649), .A2(n724), .A3(n803), .A4(n650), .ZN(n661) );
  aor222d1 U158 ( .A1(n712), .A2(n711), .B1(n710), .B2(n709), .C1(n841), .C2(
        n708), .Z(n731) );
  nr02d0 U159 ( .A1(n684), .A2(n910), .ZN(decode[20]) );
  nr02d0 U160 ( .A1(n691), .A2(n910), .ZN(decode[21]) );
  aor31d1 U161 ( .B1(n374), .B2(N863), .B3(n810), .A(n692), .Z(decode[22]) );
  inv0d1 U162 ( .I(decode[45]), .ZN(n916) );
  invbd2 U163 ( .I(n165), .ZN(a_addr[2]) );
  nd02d0 U164 ( .A1(state[1]), .A2(n929), .ZN(n35) );
  nd02d0 U165 ( .A1(state[1]), .A2(n929), .ZN(n36) );
  nd02d2 U166 ( .A1(state[1]), .A2(n929), .ZN(n595) );
  invbd7 U167 ( .I(n595), .ZN(n708) );
  invbd4 U168 ( .I(n566), .ZN(opcode[5]) );
  mi02d4 U169 ( .I0(queue_out[5]), .I1(opcode_tmp[5]), .S(opcode_op_d[2]), 
        .ZN(n566) );
  inv0d4 U170 ( .I(n164), .ZN(n930) );
  an02d1 U171 ( .A1(n424), .A2(n720), .Z(n38) );
  inv0d0 U172 ( .I(a_addr[0]), .ZN(n93) );
  xr02d1 U173 ( .A1(psw[3]), .A2(psw[2]), .Z(n39) );
  nd02d1 U174 ( .A1(n133), .A2(n768), .ZN(n40) );
  bufbd2 U175 ( .I(n108), .Z(n374) );
  inv0d1 U176 ( .I(n108), .ZN(n910) );
  an02d1 U177 ( .A1(n866), .A2(n920), .Z(n41) );
  mx02d2 U178 ( .I0(queue_out[3]), .I1(opcode_tmp[3]), .S(opcode_op_d[2]), .Z(
        n43) );
  an03d1 U179 ( .A1(opcode[5]), .A2(n565), .A3(n564), .Z(n44) );
  or02d1 U180 ( .A1(queue_count[0]), .A2(n405), .Z(n760) );
  inv0d1 U181 ( .I(n135), .ZN(n136) );
  an03d1 U182 ( .A1(n733), .A2(n688), .A3(n802), .Z(n45) );
  inv0d1 U183 ( .I(n686), .ZN(n810) );
  an02d1 U184 ( .A1(n506), .A2(n898), .Z(n46) );
  aoi221d1 U185 ( .B1(n373), .B2(n676), .C1(n870), .C2(n675), .A(n674), .ZN(
        n47) );
  an02d1 U186 ( .A1(n914), .A2(n915), .Z(n48) );
  an02d1 U187 ( .A1(n513), .A2(n638), .Z(n49) );
  or02d1 U188 ( .A1(n137), .A2(n88), .Z(n50) );
  or03d1 U189 ( .A1(n908), .A2(n197), .A3(n907), .Z(n53) );
  an03d1 U190 ( .A1(n492), .A2(n491), .A3(n493), .Z(n54) );
  inv0d1 U191 ( .I(n705), .ZN(n580) );
  nd02d1 U192 ( .A1(n745), .A2(n744), .ZN(n55) );
  an02d1 U193 ( .A1(n149), .A2(n874), .Z(n56) );
  nd02d1 U194 ( .A1(n204), .A2(n593), .ZN(n609) );
  nd02d1 U195 ( .A1(n790), .A2(n769), .ZN(n57) );
  an02d1 U196 ( .A1(n141), .A2(n143), .Z(n58) );
  clk2d2 U197 ( .CLK(n93), .CN(n59), .C(n60) );
  an02d2 U198 ( .A1(n800), .A2(n487), .Z(n108) );
  bufbd1 U199 ( .I(n108), .Z(n372) );
  nd02d0 U200 ( .A1(n626), .A2(n860), .ZN(n838) );
  bufbd1 U201 ( .I(n43), .Z(n184) );
  an02d1 U202 ( .A1(n100), .A2(n43), .Z(n201) );
  inv0d0 U203 ( .I(n746), .ZN(n672) );
  nd02d1 U204 ( .A1(n454), .A2(n573), .ZN(n891) );
  nd02d1 U205 ( .A1(n200), .A2(n905), .ZN(n655) );
  inv0d1 U206 ( .I(n497), .ZN(n498) );
  nd03d2 U207 ( .A1(n366), .A2(n503), .A3(n760), .ZN(n515) );
  an02d1 U208 ( .A1(n564), .A2(n150), .Z(n154) );
  nd02d0 U209 ( .A1(n150), .A2(n276), .ZN(n257) );
  nd02d2 U210 ( .A1(n602), .A2(n49), .ZN(n605) );
  nr02d1 U211 ( .A1(n619), .A2(n892), .ZN(n620) );
  an02d1 U212 ( .A1(n128), .A2(n129), .Z(n64) );
  an02d1 U213 ( .A1(n127), .A2(n64), .Z(n102) );
  or04d1 U214 ( .A1(n120), .A2(n788), .A3(n65), .A4(n66), .Z(n793) );
  nd02d1 U215 ( .A1(n192), .A2(n602), .ZN(n608) );
  nd02d2 U216 ( .A1(n407), .A2(n428), .ZN(n675) );
  nd02d1 U217 ( .A1(N1302), .A2(n373), .ZN(n67) );
  nd02d1 U218 ( .A1(w_addr[0]), .A2(n799), .ZN(n68) );
  nd03d0 U219 ( .A1(n67), .A2(n68), .A3(n41), .ZN(n237) );
  bufbd1 U220 ( .I(n108), .Z(n373) );
  an02d4 U221 ( .A1(n929), .A2(n406), .Z(n69) );
  inv0d1 U222 ( .I(decode[47]), .ZN(n918) );
  nd02d1 U223 ( .A1(N935), .A2(n194), .ZN(n70) );
  nd02d1 U224 ( .A1(N719), .A2(n291), .ZN(n71) );
  nd02d1 U225 ( .A1(n231), .A2(n261), .ZN(n72) );
  nd03d0 U226 ( .A1(n70), .A2(n71), .A3(n72), .ZN(n311) );
  inv0d1 U227 ( .I(n254), .ZN(n291) );
  inv0d1 U228 ( .I(n320), .ZN(n261) );
  aor311d1 U229 ( .C1(N819), .C2(n270), .C3(n43), .A(n311), .B(n312), .Z(n308)
         );
  aor221d1 U230 ( .B1(b_addr[1]), .B2(n781), .C1(n782), .C2(n870), .A(n780), 
        .Z(decode[33]) );
  inv0d1 U231 ( .I(n467), .ZN(n870) );
  nd02d1 U232 ( .A1(n860), .A2(n500), .ZN(n698) );
  nd03d0 U233 ( .A1(n286), .A2(n285), .A3(n287), .ZN(n227) );
  nd03d0 U234 ( .A1(n510), .A2(n509), .A3(n508), .ZN(n512) );
  invbd2 U235 ( .I(n617), .ZN(n510) );
  invbd2 U236 ( .I(n155), .ZN(n73) );
  invbd2 U237 ( .I(n74), .ZN(n172) );
  nd04d0 U238 ( .A1(n597), .A2(n827), .A3(n593), .A4(n204), .ZN(n598) );
  aor21d1 U239 ( .B1(queue_out[0]), .B2(n174), .A(n75), .Z(operan[0]) );
  inv0d1 U240 ( .I(n176), .ZN(n75) );
  inv0d1 U241 ( .I(opcode_op_d[2]), .ZN(n174) );
  nd03d0 U242 ( .A1(n521), .A2(n522), .A3(N863), .ZN(n619) );
  inv0d1 U243 ( .I(n520), .ZN(n521) );
  an02d1 U244 ( .A1(n81), .A2(n785), .Z(n138) );
  inv0d0 U245 ( .I(n120), .ZN(n76) );
  nd12d1 U246 ( .A1(n282), .A2(n308), .ZN(n127) );
  aor221d1 U247 ( .B1(n108), .B2(N1303), .C1(n799), .C2(w_addr[1]), .A(n474), 
        .Z(n240) );
  aor222d1 U248 ( .A1(N820), .A2(n203), .B1(n232), .B2(n205), .C1(n193), .C2(
        N850), .Z(n226) );
  nd03d0 U249 ( .A1(n800), .A2(n815), .A3(n487), .ZN(n467) );
  inv0d1 U250 ( .I(n794), .ZN(n800) );
  clk2d2 U251 ( .CLK(n522), .CN(n77) );
  inv0d1 U252 ( .I(n856), .ZN(n78) );
  nr02d0 U253 ( .A1(n164), .A2(n785), .ZN(n79) );
  clk2d2 U254 ( .CLK(operan[0]), .CN(n80), .C(n42) );
  invbd2 U255 ( .I(n177), .ZN(n902) );
  nd02d2 U256 ( .A1(n175), .A2(n176), .ZN(n81) );
  an02d1 U257 ( .A1(n766), .A2(n82), .Z(N828) );
  nr03d0 U258 ( .A1(n84), .A2(n85), .A3(n787), .ZN(n83) );
  or03d1 U259 ( .A1(n367), .A2(n36), .A3(n157), .Z(n140) );
  nd04d0 U260 ( .A1(n498), .A2(n595), .A3(n767), .A4(n515), .ZN(n501) );
  inv0d0 U261 ( .I(n515), .ZN(n588) );
  inv0d0 U262 ( .I(n508), .ZN(n87) );
  clk2d2 U263 ( .CLK(n890), .CN(n51), .C(n99) );
  nd02d1 U264 ( .A1(n397), .A2(n396), .ZN(n155) );
  invbd2 U265 ( .I(n390), .ZN(n88) );
  invbd2 U266 ( .I(n785), .ZN(n390) );
  inv0d2 U267 ( .I(n170), .ZN(n785) );
  invbd4 U268 ( .I(n930), .ZN(n715) );
  nd02d1 U269 ( .A1(psw[0]), .A2(n930), .ZN(n388) );
  nd02d1 U270 ( .A1(N1310), .A2(n373), .ZN(n89) );
  nd02d1 U271 ( .A1(n59), .A2(n799), .ZN(n90) );
  inv0d1 U272 ( .I(n224), .ZN(n91) );
  nd03d0 U273 ( .A1(n89), .A2(n90), .A3(n91), .ZN(n245) );
  nd02d1 U274 ( .A1(n830), .A2(n471), .ZN(n799) );
  invbd2 U275 ( .I(n750), .ZN(n806) );
  nd02d1 U276 ( .A1(n79), .A2(n113), .ZN(n397) );
  nd12d1 U277 ( .A1(n92), .A2(n98), .ZN(n607) );
  aor222d1 U278 ( .A1(n862), .A2(n605), .B1(n905), .B2(n604), .C1(n603), .C2(
        n860), .Z(n92) );
  invbd7 U279 ( .I(n366), .ZN(n367) );
  nd02d1 U280 ( .A1(n260), .A2(n307), .ZN(n130) );
  inv0d0 U281 ( .I(n859), .ZN(n499) );
  nd02d0 U282 ( .A1(n507), .A2(n505), .ZN(n409) );
  nd02d1 U283 ( .A1(n517), .A2(n515), .ZN(n94) );
  nd02d2 U284 ( .A1(n94), .A2(n562), .ZN(n505) );
  nd02d1 U285 ( .A1(n507), .A2(N863), .ZN(n618) );
  nd02d2 U286 ( .A1(n142), .A2(n58), .ZN(opcode_op[0]) );
  inv0d1 U287 ( .I(n110), .ZN(n95) );
  an02d1 U288 ( .A1(n77), .A2(n562), .Z(n96) );
  invbd2 U289 ( .I(state[2]), .ZN(n562) );
  nd02d0 U290 ( .A1(n806), .A2(n503), .ZN(n678) );
  nd02d0 U291 ( .A1(n698), .A2(n606), .ZN(n97) );
  inv0d1 U292 ( .I(n97), .ZN(n98) );
  nd02d1 U293 ( .A1(n747), .A2(n367), .ZN(n638) );
  nd23d4 U294 ( .A1(n405), .A2(n366), .A3(n222), .ZN(n602) );
  nd02d1 U295 ( .A1(n785), .A2(n902), .ZN(n890) );
  inv0d1 U296 ( .I(n566), .ZN(n100) );
  invbd2 U297 ( .I(n630), .ZN(n878) );
  nd02d1 U298 ( .A1(n715), .A2(operan[0]), .ZN(n137) );
  clk2d2 U299 ( .CLK(n101), .CN(n276) );
  nd02d0 U300 ( .A1(opcode[7]), .A2(n565), .ZN(n282) );
  nd02d0 U301 ( .A1(n150), .A2(n101), .ZN(n266) );
  nd02d2 U302 ( .A1(n109), .A2(n45), .ZN(n151) );
  nd02d1 U303 ( .A1(n149), .A2(n874), .ZN(n733) );
  nd02d1 U304 ( .A1(n881), .A2(n570), .ZN(n751) );
  nd02d1 U305 ( .A1(n570), .A2(n874), .ZN(n871) );
  invbd2 U306 ( .I(n400), .ZN(n860) );
  mx02d0 U307 ( .I0(n118), .I1(decode[33]), .S(data_ready), .Z(n239) );
  nd02d0 U308 ( .A1(n525), .A2(n862), .ZN(n103) );
  nd02d1 U309 ( .A1(n818), .A2(n450), .ZN(n104) );
  inv0d2 U310 ( .I(n804), .ZN(n105) );
  inv0d0 U311 ( .I(n513), .ZN(n525) );
  clk2d2 U312 ( .CLK(n481), .CN(n818) );
  nd02d1 U313 ( .A1(n219), .A2(n106), .ZN(n421) );
  an02d1 U314 ( .A1(n146), .A2(n874), .Z(n106) );
  nr02d0 U315 ( .A1(n930), .A2(n902), .ZN(n107) );
  clk2d2 U316 ( .CLK(n88), .CN(operan[1]) );
  nd02d1 U317 ( .A1(n366), .A2(n210), .ZN(n516) );
  nr02d0 U318 ( .A1(n156), .A2(n734), .ZN(n109) );
  bufbd2 U319 ( .I(n715), .Z(n110) );
  nd02d0 U320 ( .A1(n403), .A2(n760), .ZN(n111) );
  aon211d1 U321 ( .C1(n408), .C2(n111), .B(opcode_op_d[3]), .A(n174), .ZN(n112) );
  nr03d0 U322 ( .A1(n81), .A2(n39), .A3(psw[0]), .ZN(n113) );
  an03d1 U323 ( .A1(n566), .A2(n146), .A3(n565), .Z(n368) );
  nd02d0 U324 ( .A1(n625), .A2(n673), .ZN(n114) );
  nd02d0 U325 ( .A1(n840), .A2(n702), .ZN(n115) );
  inv0d1 U326 ( .I(n834), .ZN(n116) );
  clk2d2 U327 ( .CLK(n651), .CN(n625) );
  an02d1 U328 ( .A1(n117), .A2(n173), .Z(n593) );
  clk2d2 U329 ( .CLK(b_addr[1]), .C(n118) );
  clk2d2 U330 ( .CLK(divide_by_0), .CN(n426) );
  invbd4 U331 ( .I(n888), .ZN(n905) );
  nd02d1 U332 ( .A1(n881), .A2(n44), .ZN(n688) );
  aor21d1 U333 ( .B1(n810), .B2(N863), .A(n883), .Z(n833) );
  invbd7 U334 ( .I(n435), .ZN(n366) );
  nd12d1 U335 ( .A1(n910), .A2(n600), .ZN(n142) );
  nd04d0 U336 ( .A1(n865), .A2(n198), .A3(n864), .A4(n863), .ZN(n868) );
  clk2d2 U337 ( .CLK(b_addr[2]), .CN(n62), .C(n119) );
  aor221d1 U338 ( .B1(n860), .B2(n767), .C1(n815), .C2(n766), .A(n765), .Z(
        n787) );
  inv0d0 U339 ( .I(n858), .ZN(n628) );
  mi02d2 U340 ( .I0(queue_out[4]), .I1(opcode_tmp[4]), .S(opcode_op_d[2]), 
        .ZN(n565) );
  aor222d1 U341 ( .A1(n627), .A2(n179), .B1(n200), .B2(n479), .C1(n95), .C2(
        n42), .Z(N592) );
  nd02d0 U342 ( .A1(n503), .A2(n930), .ZN(n757) );
  inv0d1 U343 ( .I(n110), .ZN(n135) );
  clk2d2 U344 ( .CLK(n572), .CN(n416) );
  oaim311d2 U345 ( .C1(n222), .C2(n408), .C3(n367), .A(n527), .B(n516), .ZN(
        n519) );
  inv0d0 U346 ( .I(n527), .ZN(n603) );
  inv0d0 U347 ( .I(n519), .ZN(n522) );
  invbd2 U348 ( .I(n618), .ZN(n508) );
  invbd2 U349 ( .I(n403), .ZN(n385) );
  nd02d2 U350 ( .A1(n206), .A2(opcode[7]), .ZN(n403) );
  inv0d1 U351 ( .I(n123), .ZN(n122) );
  nr02d0 U352 ( .A1(n735), .A2(n55), .ZN(n123) );
  nd02d2 U353 ( .A1(n913), .A2(n48), .ZN(decode[47]) );
  nr02d0 U354 ( .A1(n909), .A2(n53), .ZN(n911) );
  nd02d0 U355 ( .A1(n188), .A2(n875), .ZN(n914) );
  clk2d2 U356 ( .CLK(n738), .C(n124) );
  nd02d1 U357 ( .A1(n423), .A2(n490), .ZN(n125) );
  nd02d0 U358 ( .A1(n639), .A2(state[3]), .ZN(n126) );
  nd02d1 U359 ( .A1(n125), .A2(n126), .ZN(n492) );
  nd02d0 U360 ( .A1(n539), .A2(n595), .ZN(N655) );
  nd02d1 U361 ( .A1(n860), .A2(n708), .ZN(n606) );
  nd02d0 U362 ( .A1(n708), .A2(n367), .ZN(n513) );
  nd02d4 U363 ( .A1(n708), .A2(n930), .ZN(n707) );
  nd02d0 U364 ( .A1(n69), .A2(n641), .ZN(n668) );
  nd02d0 U365 ( .A1(n69), .A2(n702), .ZN(n415) );
  nd02d0 U366 ( .A1(n714), .A2(n639), .ZN(n480) );
  nd02d1 U367 ( .A1(n297), .A2(n309), .ZN(n128) );
  inv0d1 U368 ( .I(n310), .ZN(n129) );
  nd02d0 U369 ( .A1(n390), .A2(n281), .ZN(n131) );
  nd03d0 U370 ( .A1(n130), .A2(n131), .A3(n102), .ZN(N1303) );
  clk2d2 U371 ( .CLK(n147), .C(n133) );
  nd02d0 U372 ( .A1(n133), .A2(n372), .ZN(n694) );
  mx02d0 U373 ( .I0(n423), .I1(n639), .S(state[3]), .Z(n134) );
  clk2d2 U374 ( .CLK(n134), .CN(n63) );
  nd02d0 U375 ( .A1(n708), .A2(n715), .ZN(n541) );
  nd02d0 U376 ( .A1(n136), .A2(n929), .ZN(n783) );
  clk2d2 U377 ( .CLK(n789), .C(n65) );
  clk2d2 U378 ( .CLK(n138), .CN(n61), .C(n371) );
  nd12d1 U379 ( .A1(n139), .A2(n715), .ZN(n387) );
  invbd4 U380 ( .I(n616), .ZN(n509) );
  nd02d2 U381 ( .A1(n449), .A2(n776), .ZN(n616) );
  nd02d0 U382 ( .A1(n664), .A2(n639), .ZN(n632) );
  aor21d4 U383 ( .B1(w_addr[0]), .B2(n78), .A(n647), .Z(N818) );
  clk2d2 U384 ( .CLK(queue_out[0]), .C(n369) );
  an04d2 U385 ( .A1(n394), .A2(n392), .A3(n395), .A4(n393), .Z(n171) );
  nd02d0 U386 ( .A1(n495), .A2(n122), .ZN(n496) );
  nd02d0 U387 ( .A1(n209), .A2(n742), .ZN(n550) );
  nd02d0 U388 ( .A1(n870), .A2(n601), .ZN(n141) );
  inv0d1 U389 ( .I(n797), .ZN(n143) );
  nd02d2 U390 ( .A1(n144), .A2(n145), .ZN(n146) );
  clk2d2 U391 ( .CLK(queue_out[2]), .C(n370) );
  nd02d0 U392 ( .A1(n136), .A2(N863), .ZN(n582) );
  nd02d0 U393 ( .A1(n400), .A2(n892), .ZN(n148) );
  nd02d0 U394 ( .A1(n881), .A2(n206), .ZN(n889) );
  clk2d2 U395 ( .CLK(n871), .CN(n879) );
  nd02d1 U396 ( .A1(n387), .A2(n388), .ZN(n389) );
  nd02d2 U397 ( .A1(n385), .A2(n418), .ZN(n844) );
  nd02d0 U398 ( .A1(n421), .A2(n420), .ZN(n721) );
  nd02d2 U399 ( .A1(n209), .A2(n741), .ZN(n735) );
  an02d2 U400 ( .A1(n695), .A2(n743), .Z(n209) );
  nd02d2 U401 ( .A1(n400), .A2(n892), .ZN(n413) );
  nd02d0 U402 ( .A1(n570), .A2(n463), .ZN(n705) );
  nd02d0 U403 ( .A1(n573), .A2(n849), .ZN(n687) );
  clk2d2 U404 ( .CLK(n450), .C(n152) );
  nd02d1 U405 ( .A1(n200), .A2(n905), .ZN(n153) );
  aor21d4 U406 ( .B1(n760), .B2(N863), .A(n705), .Z(n717) );
  nd02d0 U407 ( .A1(N863), .A2(n205), .ZN(n305) );
  nd02d0 U408 ( .A1(n502), .A2(n653), .ZN(n633) );
  nd02d0 U409 ( .A1(n648), .A2(N863), .ZN(n827) );
  nd02d2 U410 ( .A1(n210), .A2(n367), .ZN(n527) );
  nd02d2 U411 ( .A1(n708), .A2(n562), .ZN(n437) );
  an12d2 U412 ( .A2(n154), .A1(n566), .Z(n223) );
  an02d2 U413 ( .A1(n219), .A2(n146), .Z(n206) );
  invbd2 U414 ( .I(n567), .ZN(n874) );
  nd02d0 U415 ( .A1(n52), .A2(n654), .ZN(n417) );
  invbd2 U416 ( .I(n606), .ZN(n804) );
  nd02d2 U417 ( .A1(n570), .A2(n454), .ZN(n400) );
  nd04d4 U418 ( .A1(n639), .A2(n512), .A3(n511), .A4(n561), .ZN(n766) );
  invbd4 U419 ( .I(n575), .ZN(n463) );
  nd02d2 U420 ( .A1(n418), .A2(opcode[7]), .ZN(n575) );
  nd02d2 U421 ( .A1(n573), .A2(n463), .ZN(n892) );
  invbd2 U422 ( .I(n873), .ZN(n573) );
  nd02d0 U423 ( .A1(n530), .A2(n905), .ZN(n654) );
  aor31d4 U424 ( .B1(n374), .B2(n473), .B3(n152), .A(n922), .Z(n667) );
  nd02d0 U425 ( .A1(n612), .A2(n152), .ZN(n453) );
  nd02d0 U426 ( .A1(n627), .A2(n905), .ZN(n863) );
  clk2d2 U427 ( .CLK(n153), .CN(n814) );
  nd02d2 U428 ( .A1(n385), .A2(n43), .ZN(n746) );
  inv0d1 U429 ( .I(n760), .ZN(n157) );
  nd02d2 U430 ( .A1(n494), .A2(n54), .ZN(n738) );
  aor21d2 U431 ( .B1(n509), .B2(n898), .A(state[3]), .Z(n494) );
  nd02d2 U432 ( .A1(n447), .A2(n490), .ZN(n493) );
  nd02d2 U433 ( .A1(n519), .A2(n562), .ZN(n507) );
  nd02d2 U434 ( .A1(queue_out[2]), .A2(n161), .ZN(n162) );
  nd02d2 U435 ( .A1(n162), .A2(n163), .ZN(n164) );
  inv0d1 U436 ( .I(opcode_op_d[2]), .ZN(n161) );
  nd02d0 U437 ( .A1(n95), .A2(n929), .ZN(n531) );
  nd02d0 U438 ( .A1(n95), .A2(N863), .ZN(n581) );
  nd02d2 U439 ( .A1(queue_out[1]), .A2(n161), .ZN(n168) );
  nd02d2 U440 ( .A1(n168), .A2(n169), .ZN(n170) );
  nd02d0 U441 ( .A1(n95), .A2(n88), .ZN(n701) );
  nd02d2 U442 ( .A1(n171), .A2(n172), .ZN(n435) );
  inv0d1 U443 ( .I(n253), .ZN(n306) );
  clk2d2 U444 ( .CLK(n146), .CN(n37), .C(n178) );
  nr02d0 U445 ( .A1(n592), .A2(n591), .ZN(n173) );
  nd02d2 U446 ( .A1(queue_out[0]), .A2(n174), .ZN(n175) );
  nd02d2 U447 ( .A1(n175), .A2(n176), .ZN(n177) );
  aor222d1 U448 ( .A1(n478), .A2(n179), .B1(N1311), .B2(n186), .C1(n224), .C2(
        n477), .Z(n557) );
  clk2d2 U449 ( .CLK(n167), .CN(n183), .C(n82) );
  inv0d1 U450 ( .I(n179), .ZN(n182) );
  invbd2 U451 ( .I(n892), .ZN(n862) );
  an02d1 U452 ( .A1(n201), .A2(n37), .Z(n193) );
  inv0d0 U453 ( .I(n151), .ZN(n684) );
  an02d2 U454 ( .A1(opcode[5]), .A2(n150), .Z(n219) );
  mi02d2 U455 ( .I0(queue_out[3]), .I1(opcode_tmp[3]), .S(opcode_op_d[2]), 
        .ZN(n418) );
  inv0d0 U456 ( .I(n865), .ZN(n680) );
  an02d2 U457 ( .A1(n857), .A2(n898), .Z(n192) );
  nd02d2 U458 ( .A1(n43), .A2(opcode[7]), .ZN(n576) );
  invbd2 U459 ( .I(n738), .ZN(n695) );
  invbd4 U460 ( .I(n697), .ZN(n898) );
  or03d0 U461 ( .A1(n461), .A2(n643), .A3(n462), .Z(n465) );
  an02d1 U462 ( .A1(n921), .A2(data_ready), .Z(n185) );
  nd02d0 U463 ( .A1(n148), .A2(n497), .ZN(n399) );
  nd02d0 U464 ( .A1(N848), .A2(n193), .ZN(n287) );
  nd02d0 U465 ( .A1(n234), .A2(n205), .ZN(n285) );
  nd02d0 U466 ( .A1(n234), .A2(n261), .ZN(n290) );
  nd02d0 U467 ( .A1(w_addr[0]), .A2(n191), .ZN(n296) );
  inv0d0 U468 ( .I(w_addr[1]), .ZN(n488) );
  nd02d0 U469 ( .A1(N1233), .A2(n291), .ZN(n301) );
  nd02d0 U470 ( .A1(N934), .A2(n194), .ZN(n289) );
  nd02d0 U471 ( .A1(N587), .A2(n193), .ZN(n303) );
  nd02d0 U472 ( .A1(N440), .A2(n201), .ZN(n295) );
  inv0d0 U473 ( .I(w_addr[0]), .ZN(n489) );
  inv0d1 U474 ( .I(int_processing), .ZN(n230) );
  inv0d0 U475 ( .I(w_addr[3]), .ZN(n549) );
  inv0d0 U476 ( .I(w_addr[2]), .ZN(n524) );
  an02d1 U477 ( .A1(n372), .A2(n477), .Z(n186) );
  an03d1 U478 ( .A1(n306), .A2(n271), .A3(n351), .Z(n187) );
  an02d1 U479 ( .A1(n372), .A2(n721), .Z(n188) );
  an02d1 U480 ( .A1(n291), .A2(n271), .Z(n189) );
  nd12d0 U481 ( .A1(n605), .A2(n527), .ZN(n699) );
  nd12d0 U482 ( .A1(n791), .A2(n893), .ZN(n700) );
  an02d1 U483 ( .A1(n372), .A2(n823), .Z(n190) );
  inv0d0 U484 ( .I(n638), .ZN(n640) );
  an02d1 U485 ( .A1(n258), .A2(n37), .Z(n191) );
  nd12d0 U486 ( .A1(n900), .A2(n200), .ZN(n476) );
  inv0d1 U487 ( .I(n266), .ZN(n260) );
  nd12d0 U488 ( .A1(n759), .A2(n538), .ZN(n542) );
  an02d1 U489 ( .A1(n273), .A2(n258), .Z(n194) );
  an02d1 U490 ( .A1(n673), .A2(n651), .Z(n195) );
  an03d1 U491 ( .A1(n727), .A2(n726), .A3(n705), .Z(n196) );
  an02d1 U492 ( .A1(n702), .A2(n812), .Z(n197) );
  nd02d0 U493 ( .A1(n153), .A2(n436), .ZN(n438) );
  aoi211d1 U494 ( .C1(n860), .C2(n859), .A(n214), .B(n858), .ZN(n198) );
  nd12d0 U495 ( .A1(n667), .A2(n670), .ZN(decode_3) );
  nd02d0 U496 ( .A1(n588), .A2(n860), .ZN(n589) );
  inv0d1 U497 ( .I(n849), .ZN(n685) );
  bufbd1 U498 ( .I(n924), .Z(n375) );
  bufbd1 U499 ( .I(n924), .Z(n376) );
  bufbd1 U500 ( .I(n924), .Z(n377) );
  bufbd1 U501 ( .I(n924), .Z(n378) );
  an02d1 U502 ( .A1(n272), .A2(n184), .Z(n199) );
  nd12d0 U503 ( .A1(n805), .A2(n653), .ZN(n812) );
  an02d1 U504 ( .A1(n178), .A2(n258), .Z(n202) );
  an02d1 U505 ( .A1(n270), .A2(n184), .Z(n203) );
  aor31d1 U506 ( .B1(n416), .B2(n453), .B3(n415), .A(n910), .Z(n251) );
  an02d1 U507 ( .A1(n191), .A2(n100), .Z(n205) );
  an12d1 U508 ( .A2(n696), .A1(n910), .Z(decode[18]) );
  an12d1 U509 ( .A2(n721), .A1(n639), .Z(n464) );
  nd12d0 U510 ( .A1(n152), .A2(n430), .ZN(n457) );
  an02d1 U511 ( .A1(n800), .A2(n746), .Z(n207) );
  aoi211d1 U512 ( .C1(n790), .C2(n124), .A(n737), .B(n736), .ZN(n208) );
  an02d1 U513 ( .A1(n157), .A2(n503), .Z(n210) );
  an03d1 U514 ( .A1(n408), .A2(n503), .A3(n702), .Z(n212) );
  an02d1 U515 ( .A1(n42), .A2(n205), .Z(n213) );
  oaim21d1 U516 ( .B1(n752), .B2(n673), .A(n739), .ZN(n676) );
  an02d1 U517 ( .A1(n711), .A2(n701), .Z(n214) );
  aoi22d1 U518 ( .A1(n615), .A2(n874), .B1(n149), .B2(n849), .ZN(n216) );
  nd02d0 U519 ( .A1(n722), .A2(n133), .ZN(n433) );
  aoi211d1 U520 ( .C1(n806), .C2(n805), .A(n804), .B(n803), .ZN(n218) );
  aor21d1 U521 ( .B1(n840), .B2(n82), .A(n805), .Z(N1120) );
  nd02d1 U522 ( .A1(n440), .A2(n439), .ZN(n462) );
  aoi222d1 U523 ( .A1(N446), .A2(n187), .B1(n335), .B2(n136), .C1(n82), .C2(
        n336), .ZN(n350) );
  an02d1 U524 ( .A1(n743), .A2(n82), .Z(n220) );
  nd12d0 U525 ( .A1(n472), .A2(n794), .ZN(n471) );
  an02d1 U526 ( .A1(n297), .A2(n293), .Z(n221) );
  nd02d0 U527 ( .A1(n580), .A2(n760), .ZN(n587) );
  nd12d0 U528 ( .A1(n112), .A2(n800), .ZN(n830) );
  an02d1 U529 ( .A1(n503), .A2(n760), .Z(n222) );
  nd02d1 U530 ( .A1(n301), .A2(n302), .ZN(n300) );
  an12d1 U531 ( .A2(n158), .A1(n524), .Z(N720) );
  an12d1 U532 ( .A2(n542), .A1(n539), .Z(N1205) );
  nd12d0 U533 ( .A1(n505), .A2(n815), .ZN(n445) );
  an02d1 U534 ( .A1(n472), .A2(n794), .Z(n224) );
  an12d1 U535 ( .A2(n486), .A1(n524), .Z(N589) );
  nd12d0 U536 ( .A1(n602), .A2(n862), .ZN(n398) );
  nd12d0 U537 ( .A1(n428), .A2(n815), .ZN(n429) );
  nd12d1 U538 ( .A1(n413), .A2(n652), .ZN(n414) );
  an02d1 U539 ( .A1(n772), .A2(n794), .Z(n225) );
  nd02d1 U540 ( .A1(n582), .A2(n581), .ZN(n583) );
  an12d1 U541 ( .A2(n536), .A1(n539), .Z(N1090) );
  or02d1 U542 ( .A1(n284), .A2(n227), .Z(n283) );
  an12d1 U543 ( .A2(n550), .A1(n549), .Z(N937) );
  nd04d0 U544 ( .A1(n406), .A2(n562), .A3(n367), .A4(n405), .ZN(n506) );
  nd02d1 U545 ( .A1(n432), .A2(n431), .ZN(n434) );
  nd02d0 U546 ( .A1(n481), .A2(n437), .ZN(n432) );
  inv0d1 U547 ( .I(n430), .ZN(n431) );
  an02d1 U548 ( .A1(n437), .A2(n449), .Z(n228) );
  an02d1 U549 ( .A1(n743), .A2(n179), .Z(n229) );
  bufbd1 U550 ( .I(rst_n), .Z(n379) );
  bufbd1 U551 ( .I(rst_n), .Z(n383) );
  bufbd1 U552 ( .I(rst_n), .Z(n381) );
  bufbd1 U553 ( .I(rst_n), .Z(n382) );
  bufbd1 U554 ( .I(rst_n), .Z(n380) );
  bufbd1 U555 ( .I(rst_n), .Z(n384) );
  nd02d2 U556 ( .A1(n230), .A2(n402), .ZN(n794) );
  inv0d0 U560 ( .I(psw[0]), .ZN(n391) );
  nd02d1 U561 ( .A1(N718), .A2(n291), .ZN(n288) );
  nd02d1 U562 ( .A1(N1114), .A2(n199), .ZN(n302) );
  aor221d1 U563 ( .B1(w_addr[0]), .B2(n840), .C1(n708), .C2(n42), .A(n69), .Z(
        N1114) );
  an02d1 U564 ( .A1(w_addr[1]), .A2(n707), .Z(n231) );
  an12d1 U565 ( .A2(n496), .A1(n549), .Z(N1028) );
  oaim21d1 U566 ( .B1(a_addr[3]), .B2(n200), .A(n851), .ZN(N594) );
  nd02d0 U567 ( .A1(n42), .A2(n281), .ZN(n279) );
  nd02d1 U568 ( .A1(N644), .A2(n306), .ZN(n304) );
  an02d1 U569 ( .A1(w_addr[2]), .A2(n707), .Z(n232) );
  an02d1 U570 ( .A1(w_addr[3]), .A2(n707), .Z(n233) );
  nd02d1 U571 ( .A1(N1025), .A2(n202), .ZN(n294) );
  nd02d1 U572 ( .A1(N818), .A2(n203), .ZN(n286) );
  an02d1 U573 ( .A1(w_addr[0]), .A2(n707), .Z(n234) );
  an02d1 U574 ( .A1(n59), .A2(n743), .Z(n235) );
  an02d1 U575 ( .A1(a_addr[3]), .A2(n743), .Z(n236) );
  mi02d0 U576 ( .I0(n6), .I1(n238), .S(n185), .ZN(n552) );
  or02d1 U577 ( .A1(n920), .A2(n932), .Z(n238) );
  nd02d1 U578 ( .A1(div_reg), .A2(n7), .ZN(n181) );
  aor222d1 U579 ( .A1(N929), .A2(n194), .B1(N1188), .B2(n261), .C1(b_src[0]), 
        .C2(n255), .Z(n252) );
  aor222d1 U580 ( .A1(N639), .A2(n261), .B1(N582), .B2(n201), .C1(N1110), .C2(
        n199), .Z(n242) );
  aor211d1 U581 ( .C1(b_src[0]), .C2(n258), .A(n191), .B(n242), .Z(n250) );
  aoim22d1 U582 ( .A1(N1020), .A2(n258), .B1(n258), .B2(n559), .Z(n243) );
  aor211d1 U583 ( .C1(n254), .C2(n253), .A(n257), .B(n243), .Z(n247) );
  aor211d1 U584 ( .C1(n559), .C2(n178), .A(n101), .B(n256), .Z(n246) );
  nd02d0 U585 ( .A1(n247), .A2(n246), .ZN(n249) );
  aor221d1 U586 ( .B1(n252), .B2(n259), .C1(n250), .C2(n260), .A(n249), .Z(
        N1297) );
  aor221d1 U587 ( .B1(n259), .B2(n262), .C1(b_src[1]), .C2(n263), .A(n264), 
        .Z(N1298) );
  oan211d1 U588 ( .C1(n265), .C2(n266), .B(n267), .A(n268), .ZN(n264) );
  inv0d1 U589 ( .I(n269), .ZN(n268) );
  nd03d0 U591 ( .A1(N1021), .A2(n270), .A3(n271), .ZN(n267) );
  aoi222d1 U592 ( .A1(N583), .A2(n100), .B1(N1111), .B2(n272), .C1(N640), .C2(
        n273), .ZN(n265) );
  aor21d1 U593 ( .B1(n259), .B2(n255), .A(n274), .Z(n263) );
  mx02d0 U594 ( .I0(n270), .I1(n275), .S(n150), .Z(n274) );
  nr02d0 U595 ( .A1(n269), .A2(n37), .ZN(n275) );
  xr02d1 U596 ( .A1(n276), .A2(n184), .Z(n269) );
  aor22d1 U597 ( .A1(N1189), .A2(n261), .B1(N930), .B2(n194), .Z(n262) );
  nd04d0 U598 ( .A1(n277), .A2(n278), .A3(n279), .A4(n280), .ZN(N1302) );
  nd03d0 U599 ( .A1(n288), .A2(n289), .A3(n290), .ZN(n284) );
  nr02d0 U600 ( .A1(n292), .A2(n221), .ZN(n277) );
  nd03d0 U601 ( .A1(n294), .A2(n295), .A3(n296), .ZN(n293) );
  nr02d0 U602 ( .A1(n298), .A2(n266), .ZN(n292) );
  nr02d0 U603 ( .A1(n299), .A2(n300), .ZN(n298) );
  nd03d0 U604 ( .A1(n303), .A2(n304), .A3(n305), .ZN(n299) );
  inv0d1 U605 ( .I(n280), .ZN(n310) );
  aor222d1 U606 ( .A1(w_addr[1]), .A2(n191), .B1(N1026), .B2(n202), .C1(N441), 
        .C2(n201), .Z(n309) );
  aor22d1 U607 ( .A1(n231), .A2(n205), .B1(N849), .B2(n193), .Z(n312) );
  aor221d1 U608 ( .B1(N1234), .B2(n291), .C1(N1115), .C2(n199), .A(n313), .Z(
        n307) );
  aor221d1 U609 ( .B1(N588), .B2(n193), .C1(N645), .C2(n306), .A(n213), .Z(
        n313) );
  aor22d1 U610 ( .A1(n281), .A2(n136), .B1(n259), .B2(n317), .Z(n316) );
  aoi222d1 U611 ( .A1(n232), .A2(n261), .B1(N720), .B2(n291), .C1(N936), .C2(
        n194), .ZN(n318) );
  aor221d1 U612 ( .B1(n199), .B2(n259), .C1(n260), .C2(n194), .A(n319), .Z(
        n281) );
  oan211d1 U613 ( .C1(n320), .C2(n565), .B(n256), .A(n101), .ZN(n319) );
  aor222d1 U614 ( .A1(w_addr[2]), .A2(n191), .B1(N1027), .B2(n202), .C1(N442), 
        .C2(n201), .Z(n315) );
  an02d1 U615 ( .A1(n321), .A2(n271), .Z(n297) );
  aor221d1 U616 ( .B1(N1235), .B2(n291), .C1(N1116), .C2(n199), .A(n322), .Z(
        n314) );
  aor221d1 U617 ( .B1(N589), .B2(n193), .C1(N646), .C2(n306), .A(n323), .Z(
        n322) );
  aor22d1 U618 ( .A1(n150), .A2(n324), .B1(n259), .B2(n325), .Z(N1305) );
  nd02d1 U619 ( .A1(n326), .A2(n327), .ZN(n325) );
  aoi222d1 U620 ( .A1(n233), .A2(n261), .B1(N721), .B2(n291), .C1(N937), .C2(
        n194), .ZN(n327) );
  aoi222d1 U621 ( .A1(N851), .A2(n193), .B1(n233), .B2(n205), .C1(N821), .C2(
        n203), .ZN(n326) );
  mx02d0 U622 ( .I0(n328), .I1(n329), .S(n101), .Z(n324) );
  aor221d1 U623 ( .B1(N590), .B2(n201), .C1(N647), .C2(n261), .A(n330), .Z(
        n329) );
  aor221d1 U624 ( .B1(N1117), .B2(n272), .C1(N1236), .C2(n270), .A(n331), .Z(
        n330) );
  aor222d1 U625 ( .A1(N443), .A2(n203), .B1(w_addr[3]), .B2(n205), .C1(N1028), 
        .C2(n291), .Z(n328) );
  nd04d0 U626 ( .A1(n332), .A2(n280), .A3(n333), .A4(n334), .ZN(N1310) );
  aoi222d1 U627 ( .A1(N444), .A2(n187), .B1(n42), .B2(n335), .C1(n59), .C2(
        n336), .ZN(n334) );
  aoi22d1 U628 ( .A1(n260), .A2(n337), .B1(n259), .B2(n338), .ZN(n333) );
  aor221d1 U629 ( .B1(n235), .B2(n194), .C1(N1202), .C2(n261), .A(n339), .Z(
        n338) );
  aor222d1 U630 ( .A1(N826), .A2(n203), .B1(N1087), .B2(n205), .C1(N852), .C2(
        n193), .Z(n339) );
  aor211d1 U631 ( .C1(N591), .C2(n193), .A(n340), .B(n341), .Z(n337) );
  aor22d1 U632 ( .A1(N1118), .A2(n199), .B1(N652), .B2(n306), .Z(n341) );
  inv0d1 U633 ( .I(n305), .ZN(n340) );
  nd02d1 U634 ( .A1(n235), .A2(n189), .ZN(n332) );
  nd04d0 U635 ( .A1(n342), .A2(n280), .A3(n343), .A4(n344), .ZN(N1311) );
  aoi222d1 U636 ( .A1(N445), .A2(n187), .B1(operan[1]), .B2(n335), .C1(n179), 
        .C2(n336), .ZN(n344) );
  aoi22d1 U637 ( .A1(n260), .A2(n345), .B1(n259), .B2(n346), .ZN(n343) );
  aor221d1 U638 ( .B1(n229), .B2(n194), .C1(N1203), .C2(n261), .A(n347), .Z(
        n346) );
  aor222d1 U639 ( .A1(N827), .A2(n203), .B1(N1088), .B2(n205), .C1(N853), .C2(
        n193), .Z(n347) );
  aor211d1 U640 ( .C1(N592), .C2(n193), .A(n213), .B(n348), .Z(n345) );
  aor22d1 U641 ( .A1(N1119), .A2(n199), .B1(N653), .B2(n306), .Z(n348) );
  nd03d0 U642 ( .A1(n331), .A2(n260), .A3(n929), .ZN(n280) );
  nd02d1 U643 ( .A1(n229), .A2(n189), .ZN(n342) );
  nd02d1 U644 ( .A1(n349), .A2(n350), .ZN(N1312) );
  aor22d1 U645 ( .A1(n259), .A2(n291), .B1(n202), .B2(n260), .Z(n336) );
  oai322d1 U646 ( .C1(n351), .C2(n258), .C3(n257), .A1(n282), .A2(n352), .B1(
        n101), .B2(n256), .ZN(n335) );
  nd02d1 U647 ( .A1(n353), .A2(n354), .ZN(n351) );
  aoi222d1 U648 ( .A1(n355), .A2(n259), .B1(n260), .B2(n356), .C1(n220), .C2(
        n189), .ZN(n349) );
  aor211d1 U649 ( .C1(N593), .C2(n193), .A(n323), .B(n357), .Z(n356) );
  aor22d1 U650 ( .A1(N1120), .A2(n199), .B1(N654), .B2(n306), .Z(n357) );
  aor22d1 U651 ( .A1(N863), .A2(n331), .B1(operan[1]), .B2(n205), .Z(n323) );
  aor221d1 U652 ( .B1(n220), .B2(n194), .C1(N1204), .C2(n261), .A(n358), .Z(
        n355) );
  aor221d1 U653 ( .B1(n259), .B2(n359), .C1(n260), .C2(n360), .A(n361), .Z(
        N1313) );
  aor311d1 U654 ( .C1(N447), .C2(n271), .C3(n203), .A(n362), .B(n363), .Z(n361) );
  an02d1 U655 ( .A1(n236), .A2(n189), .Z(n363) );
  nr03d0 U656 ( .A1(n254), .A2(n276), .A3(n539), .ZN(n362) );
  inv0d1 U657 ( .I(n257), .ZN(n271) );
  aor221d1 U658 ( .B1(N1121), .B2(n272), .C1(N655), .C2(n306), .A(n364), .Z(
        n360) );
  aor221d1 U659 ( .B1(a_addr[3]), .B2(n202), .C1(N594), .C2(n193), .A(n331), 
        .Z(n364) );
  inv0d1 U660 ( .I(n352), .ZN(n331) );
  nd02d1 U661 ( .A1(n191), .A2(n566), .ZN(n352) );
  aor221d1 U662 ( .B1(n236), .B2(n194), .C1(N1205), .C2(n261), .A(n365), .Z(
        n359) );
  aor222d1 U663 ( .A1(N829), .A2(n203), .B1(N1090), .B2(n205), .C1(N855), .C2(
        n193), .Z(n365) );
  inv0d1 U664 ( .I(n353), .ZN(n272) );
  nd02d1 U665 ( .A1(n566), .A2(n37), .ZN(n353) );
  inv0d1 U666 ( .I(n255), .ZN(n273) );
  nd02d1 U667 ( .A1(n270), .A2(n258), .ZN(n254) );
  inv0d1 U668 ( .I(n354), .ZN(n270) );
  nd02d1 U669 ( .A1(n100), .A2(n565), .ZN(n256) );
  nd02d0 U670 ( .A1(n184), .A2(n273), .ZN(n320) );
  nd02d0 U671 ( .A1(n178), .A2(n184), .ZN(n253) );
  mx02d0 U672 ( .I0(n100), .I1(n178), .S(n184), .Z(n321) );
  nd02d0 U673 ( .A1(n146), .A2(n566), .ZN(n255) );
  nd02d0 U674 ( .A1(n100), .A2(n146), .ZN(n354) );
  nd02d2 U675 ( .A1(n223), .A2(n454), .ZN(n888) );
  invbd2 U676 ( .I(n843), .ZN(n570) );
  nd02d0 U677 ( .A1(n182), .A2(n595), .ZN(N653) );
  nd02d0 U678 ( .A1(n182), .A2(n192), .ZN(N827) );
  nd02d0 U679 ( .A1(n815), .A2(n367), .ZN(n436) );
  aor31d1 U680 ( .B1(n837), .B2(n872), .B3(n569), .A(n685), .Z(n571) );
  nd02d0 U681 ( .A1(n503), .A2(n110), .ZN(n671) );
  nd02d0 U682 ( .A1(w_addr[0]), .A2(n158), .ZN(n526) );
  nd02d0 U683 ( .A1(n862), .A2(n158), .ZN(n864) );
  nd02d2 U684 ( .A1(n708), .A2(state[2]), .ZN(n481) );
  nd02d2 U685 ( .A1(n481), .A2(n714), .ZN(n697) );
  nd02d0 U686 ( .A1(n482), .A2(n481), .ZN(n485) );
  nd02d0 U687 ( .A1(n481), .A2(n639), .ZN(n479) );
  nd02d1 U688 ( .A1(n107), .A2(psw[2]), .ZN(n395) );
  nd02d0 U689 ( .A1(n88), .A2(n61), .ZN(n713) );
  nd02d0 U690 ( .A1(n35), .A2(n502), .ZN(n805) );
  nd02d0 U691 ( .A1(n843), .A2(n872), .ZN(n850) );
  nd02d0 U692 ( .A1(n873), .A2(n872), .ZN(n880) );
  nd02d2 U693 ( .A1(n69), .A2(n562), .ZN(n639) );
  or02d1 U694 ( .A1(queue_count[2]), .A2(queue_count[1]), .Z(n405) );
  inv0d1 U695 ( .I(n405), .ZN(n408) );
  inv0d1 U696 ( .I(n415), .ZN(n386) );
  aor211d1 U697 ( .C1(n814), .C2(n480), .A(n212), .B(n386), .Z(n401) );
  nd03d0 U698 ( .A1(state[1]), .A2(N863), .A3(n562), .ZN(n449) );
  nd02d1 U699 ( .A1(state[2]), .A2(n69), .ZN(n776) );
  nd02d1 U700 ( .A1(n509), .A2(n437), .ZN(n425) );
  nd02d1 U701 ( .A1(n814), .A2(n425), .ZN(n865) );
  nd12d1 U702 ( .A1(n890), .A2(n389), .ZN(n394) );
  nd03d0 U703 ( .A1(operan[0]), .A2(n170), .A3(n39), .ZN(n393) );
  nd03d0 U704 ( .A1(n138), .A2(n391), .A3(n930), .ZN(n392) );
  nd03d0 U705 ( .A1(n170), .A2(n715), .A3(psw[3]), .ZN(n396) );
  nd03d0 U706 ( .A1(n527), .A2(n653), .A3(n516), .ZN(n497) );
  nd03d0 U707 ( .A1(n566), .A2(n146), .A3(n565), .ZN(n872) );
  inv0d1 U708 ( .I(n652), .ZN(n758) );
  nd02d1 U709 ( .A1(n671), .A2(n757), .ZN(n534) );
  aor21d1 U710 ( .B1(n157), .B2(n534), .A(n69), .Z(n537) );
  nd02d1 U711 ( .A1(n758), .A2(n537), .ZN(n784) );
  nd04d0 U712 ( .A1(n399), .A2(n717), .A3(n398), .A4(n784), .ZN(n461) );
  nd02d1 U713 ( .A1(n503), .A2(n405), .ZN(n594) );
  inv0d1 U714 ( .I(n594), .ZN(n747) );
  nd03d0 U715 ( .A1(n708), .A2(n157), .A3(n366), .ZN(n517) );
  nd03d0 U716 ( .A1(n515), .A2(n638), .A3(n517), .ZN(n520) );
  inv0d1 U717 ( .I(n767), .ZN(n500) );
  inv0d1 U718 ( .I(n698), .ZN(n740) );
  nd02d1 U719 ( .A1(n534), .A2(n760), .ZN(n540) );
  inv0d1 U720 ( .I(n540), .ZN(n547) );
  nd02d1 U721 ( .A1(n503), .A2(n562), .ZN(n664) );
  inv0d1 U722 ( .I(n664), .ZN(n447) );
  aor22d1 U723 ( .A1(n547), .A2(n758), .B1(n814), .B2(n447), .Z(n803) );
  aor21d1 U724 ( .B1(n747), .B2(n702), .A(n803), .Z(n679) );
  aor211d1 U725 ( .C1(n862), .C2(n520), .A(n740), .B(n679), .Z(n441) );
  nr04d0 U726 ( .A1(n401), .A2(n680), .A3(n461), .A4(n441), .ZN(n412) );
  inv0d1 U727 ( .I(n422), .ZN(n560) );
  inv0d1 U728 ( .I(n639), .ZN(n612) );
  inv0d1 U729 ( .I(state[3]), .ZN(n490) );
  aon211d1 U730 ( .C1(int_reg), .C2(psw[4]), .B(n560), .A(n875), .ZN(n402) );
  inv0d1 U731 ( .I(n480), .ZN(n410) );
  inv0d1 U732 ( .I(n792), .ZN(n407) );
  inv0d1 U733 ( .I(n675), .ZN(n857) );
  inv0d1 U734 ( .I(n409), .ZN(n511) );
  nd03d0 U735 ( .A1(n410), .A2(n857), .A3(n511), .ZN(n817) );
  inv0d1 U736 ( .I(n817), .ZN(n411) );
  inv0d1 U737 ( .I(n776), .ZN(n458) );
  nd02d1 U738 ( .A1(n458), .A2(n794), .ZN(n920) );
  oai221d1 U739 ( .B1(n412), .B2(n910), .C1(n411), .C2(n467), .A(n920), .ZN(
        opcode_op[2]) );
  inv0d1 U740 ( .I(data_ready), .ZN(n924) );
  inv0d1 U741 ( .I(n581), .ZN(n530) );
  aor22d1 U742 ( .A1(n372), .A2(n417), .B1(n480), .B2(n794), .Z(opcode_op[3])
         );
  nd02d1 U743 ( .A1(n418), .A2(n563), .ZN(n567) );
  inv0d1 U744 ( .I(n694), .ZN(n424) );
  inv0d1 U745 ( .I(n745), .ZN(n722) );
  nd02d1 U746 ( .A1(n790), .A2(n372), .ZN(n693) );
  inv0d1 U747 ( .I(n693), .ZN(n419) );
  nd02d1 U748 ( .A1(n447), .A2(state[3]), .ZN(n741) );
  inv0d1 U749 ( .I(n741), .ZN(n720) );
  aor22d1 U750 ( .A1(n424), .A2(n722), .B1(n419), .B2(n720), .Z(decode[17]) );
  nd03d0 U751 ( .A1(state[2]), .A2(N863), .A3(state[1]), .ZN(n423) );
  aor211d1 U752 ( .C1(n188), .C2(n63), .A(decode[17]), .B(n38), .Z(decode[51])
         );
  inv0d1 U753 ( .I(n632), .ZN(n482) );
  inv0d1 U754 ( .I(n425), .ZN(n901) );
  nd03d0 U755 ( .A1(n482), .A2(n901), .A3(n714), .ZN(n472) );
  aor21d1 U756 ( .B1(n228), .B2(n482), .A(n800), .Z(n866) );
  nd02d1 U757 ( .A1(n471), .A2(n41), .ZN(next_int_processing) );
  nd03d0 U758 ( .A1(n566), .A2(n150), .A3(n564), .ZN(n569) );
  nd02d1 U759 ( .A1(n615), .A2(n454), .ZN(n750) );
  inv0d1 U760 ( .I(n534), .ZN(n532) );
  nd02d1 U761 ( .A1(n44), .A2(n463), .ZN(n831) );
  aoim22d1 U762 ( .A1(n720), .A2(n721), .B1(n532), .B2(n831), .Z(n444) );
  inv0d1 U763 ( .I(n714), .ZN(n473) );
  nd02d1 U764 ( .A1(n721), .A2(n490), .ZN(n430) );
  inv0d1 U765 ( .I(n493), .ZN(n584) );
  aor21d1 U766 ( .B1(n133), .B2(n426), .A(n790), .Z(n427) );
  aor22d1 U767 ( .A1(n473), .A2(n457), .B1(n584), .B2(n427), .Z(n442) );
  inv0d1 U768 ( .I(n429), .ZN(n650) );
  an02d1 U769 ( .A1(n434), .A2(n433), .Z(n440) );
  nr04d0 U770 ( .A1(n442), .A2(n650), .A3(n462), .A4(n441), .ZN(n443) );
  nd04d0 U771 ( .A1(n445), .A2(n678), .A3(n444), .A4(n443), .ZN(n448) );
  nd02d1 U772 ( .A1(n504), .A2(n794), .ZN(n774) );
  inv0d1 U773 ( .I(n774), .ZN(n446) );
  aor221d1 U774 ( .B1(n373), .B2(n448), .C1(n447), .C2(n794), .A(n446), .Z(
        decode[49]) );
  inv0d1 U775 ( .I(n494), .ZN(n452) );
  inv0d1 U776 ( .I(n449), .ZN(n772) );
  inv0d1 U777 ( .I(n920), .ZN(n922) );
  aor211d1 U778 ( .C1(n452), .C2(n188), .A(n225), .B(n451), .Z(decode[50]) );
  nd02d1 U779 ( .A1(n612), .A2(n794), .ZN(n659) );
  nd02d1 U780 ( .A1(n159), .A2(n463), .ZN(n686) );
  inv0d1 U781 ( .I(n453), .ZN(n460) );
  nd02d1 U782 ( .A1(n454), .A2(n44), .ZN(n726) );
  inv0d1 U783 ( .I(n726), .ZN(n456) );
  nd02d1 U784 ( .A1(n783), .A2(n531), .ZN(n455) );
  aor22d1 U785 ( .A1(n458), .A2(n457), .B1(n456), .B2(n455), .Z(n459) );
  aor211d1 U786 ( .C1(n810), .C2(n929), .A(n460), .B(n459), .Z(n466) );
  inv0d1 U787 ( .I(n531), .ZN(n811) );
  nd02d1 U788 ( .A1(n611), .A2(n750), .ZN(n641) );
  nd02d1 U789 ( .A1(n615), .A2(n463), .ZN(n807) );
  inv0d1 U790 ( .I(n807), .ZN(n648) );
  nd02d1 U791 ( .A1(n648), .A2(n929), .ZN(n739) );
  nd02d1 U792 ( .A1(n668), .A2(n739), .ZN(n610) );
  nr04d0 U793 ( .A1(n466), .A2(n465), .A3(n464), .A4(n610), .ZN(n469) );
  ora211d1 U794 ( .C1(n469), .C2(n910), .A(n920), .B(n468), .Z(n470) );
  nd03d0 U795 ( .A1(n659), .A2(n774), .A3(n470), .ZN(decode[48]) );
  aor221d1 U796 ( .B1(N1305), .B2(n373), .C1(w_addr[3]), .C2(n799), .A(n224), 
        .Z(n244) );
  aor21d1 U797 ( .B1(n672), .B2(n373), .A(n375), .Z(n928) );
  nr02d0 U798 ( .A1(n708), .A2(n549), .ZN(N1236) );
  inv0d1 U799 ( .I(n928), .ZN(n477) );
  inv0d1 U800 ( .I(n799), .ZN(n867) );
  nd02d1 U801 ( .A1(n867), .A2(n477), .ZN(n478) );
  aor22d1 U802 ( .A1(N1304), .A2(n186), .B1(w_addr[2]), .B2(n478), .Z(n556) );
  inv0d1 U803 ( .I(n541), .ZN(n535) );
  nd02d1 U804 ( .A1(n473), .A2(n794), .ZN(n921) );
  nd02d1 U805 ( .A1(n866), .A2(n921), .ZN(n474) );
  mx02d0 U806 ( .I0(w_addr[1]), .I1(operan[1]), .S(n708), .Z(N1234) );
  mx02d0 U807 ( .I0(w_addr[0]), .I1(n42), .S(n708), .Z(N1233) );
  aor221d1 U808 ( .B1(N1313), .B2(n373), .C1(a_addr[3]), .C2(n799), .A(n224), 
        .Z(n248) );
  nd02d1 U809 ( .A1(n901), .A2(n898), .ZN(n847) );
  inv0d1 U810 ( .I(n847), .ZN(n475) );
  nd02d1 U811 ( .A1(n482), .A2(n475), .ZN(n900) );
  nd02d1 U812 ( .A1(n200), .A2(n900), .ZN(n851) );
  aor22d1 U813 ( .A1(N1312), .A2(n186), .B1(n478), .B2(n82), .Z(n558) );
  nd02d1 U814 ( .A1(n901), .A2(n664), .ZN(n795) );
  inv0d1 U815 ( .I(n476), .ZN(n627) );
  aor221d1 U816 ( .B1(n200), .B2(n795), .C1(n627), .C2(n82), .A(n79), .Z(N593)
         );
  aor221d1 U817 ( .B1(n200), .B2(n480), .C1(n59), .C2(n627), .A(n530), .Z(N591) );
  inv0d1 U818 ( .I(n485), .ZN(n483) );
  aor21d1 U819 ( .B1(n483), .B2(n900), .A(n549), .Z(n484) );
  aon211d1 U820 ( .C1(n901), .C2(n484), .B(n99), .A(n136), .ZN(N590) );
  aor21d1 U821 ( .B1(n200), .B2(n485), .A(n627), .Z(n486) );
  aor221d1 U822 ( .B1(w_addr[1]), .B2(n486), .C1(n200), .C2(n504), .A(n530), 
        .Z(N588) );
  aor221d1 U823 ( .B1(w_addr[0]), .B2(n486), .C1(n200), .C2(n772), .A(n811), 
        .Z(N587) );
  nd03d0 U824 ( .A1(n112), .A2(data_ready), .A3(n207), .ZN(n926) );
  ora21d1 U825 ( .B1(n847), .B2(n851), .A(b_src[1]), .Z(N583) );
  aor22d1 U826 ( .A1(a_addr[3]), .A2(n701), .B1(n371), .B2(n95), .Z(N447) );
  inv0d1 U827 ( .I(n701), .ZN(n712) );
  nr02d0 U828 ( .A1(n183), .A2(n712), .ZN(N446) );
  nr02d0 U829 ( .A1(n182), .A2(n712), .ZN(N445) );
  nr02d0 U830 ( .A1(n712), .A2(n60), .ZN(N444) );
  aor22d1 U831 ( .A1(w_addr[3]), .A2(n701), .B1(n51), .B2(n95), .Z(N443) );
  nr02d0 U832 ( .A1(n712), .A2(n524), .ZN(N442) );
  nr02d0 U833 ( .A1(n712), .A2(n488), .ZN(N441) );
  nr02d0 U834 ( .A1(n712), .A2(n489), .ZN(N440) );
  nd02d1 U835 ( .A1(state[3]), .A2(n772), .ZN(n744) );
  inv0d1 U836 ( .I(n744), .ZN(n574) );
  aor22d1 U837 ( .A1(w_addr[2]), .A2(n496), .B1(n574), .B2(n136), .Z(N1027) );
  aor22d1 U838 ( .A1(w_addr[1]), .A2(n496), .B1(n574), .B2(n390), .Z(N1026) );
  aor22d1 U839 ( .A1(w_addr[0]), .A2(n496), .B1(n574), .B2(n42), .Z(N1025) );
  inv0d1 U840 ( .I(b_src[1]), .ZN(n551) );
  nr02d0 U841 ( .A1(n122), .A2(n551), .ZN(N1021) );
  nr02d0 U842 ( .A1(n122), .A2(n559), .ZN(N1020) );
  inv0d1 U843 ( .I(a_addr[3]), .ZN(n539) );
  nr02d0 U844 ( .A1(n708), .A2(n60), .ZN(N652) );
  nd03d0 U845 ( .A1(n767), .A2(n595), .A3(n549), .ZN(N647) );
  nr02d0 U846 ( .A1(n499), .A2(n524), .ZN(N646) );
  aor21d1 U847 ( .B1(w_addr[1]), .B2(n859), .A(n708), .Z(N645) );
  inv0d1 U848 ( .I(n501), .ZN(n626) );
  aor21d1 U849 ( .B1(b_src[1]), .B2(n626), .A(n708), .Z(N640) );
  nr02d0 U850 ( .A1(n501), .A2(n559), .ZN(N639) );
  nd02d1 U851 ( .A1(n539), .A2(n840), .ZN(N1121) );
  aor21d1 U852 ( .B1(n840), .B2(n179), .A(n69), .Z(N1119) );
  aor21d1 U853 ( .B1(w_addr[3]), .B2(n840), .A(n633), .Z(N1117) );
  aor211d1 U854 ( .C1(w_addr[2]), .C2(n840), .A(n503), .B(n535), .Z(N1116) );
  aor221d1 U855 ( .B1(w_addr[1]), .B2(n840), .C1(n708), .C2(n390), .A(n69), 
        .Z(N1115) );
  nr02d0 U856 ( .A1(n812), .A2(n551), .ZN(N1111) );
  nd02d1 U857 ( .A1(n559), .A2(n840), .ZN(N1110) );
  nd02d1 U858 ( .A1(n539), .A2(n192), .ZN(N829) );
  nd03d0 U859 ( .A1(n366), .A2(n504), .A3(n760), .ZN(n561) );
  nd02d1 U860 ( .A1(n60), .A2(n192), .ZN(N826) );
  nd02d1 U861 ( .A1(n549), .A2(n192), .ZN(N821) );
  nr02d0 U862 ( .A1(n856), .A2(n524), .ZN(N820) );
  aor211d1 U863 ( .C1(n766), .C2(w_addr[1]), .A(n818), .B(n675), .Z(N819) );
  nd02d1 U864 ( .A1(n857), .A2(n714), .ZN(n647) );
  inv0d1 U865 ( .I(n699), .ZN(n514) );
  nd02d1 U866 ( .A1(n549), .A2(n514), .ZN(N721) );
  inv0d1 U867 ( .I(n599), .ZN(n518) );
  inv0d1 U868 ( .I(n813), .ZN(n523) );
  aor21d1 U869 ( .B1(w_addr[1]), .B2(n861), .A(n525), .Z(N719) );
  nd02d1 U870 ( .A1(n582), .A2(n783), .ZN(N855) );
  nd02d1 U871 ( .A1(n581), .A2(n531), .ZN(N851) );
  inv0d1 U872 ( .I(n582), .ZN(n528) );
  aor21d1 U873 ( .B1(N851), .B2(operan[1]), .A(n528), .Z(N854) );
  inv0d1 U874 ( .I(n783), .ZN(n529) );
  nd02d1 U875 ( .A1(n783), .A2(n581), .ZN(N852) );
  aor21d1 U876 ( .B1(N855), .B2(operan[1]), .A(n530), .Z(N850) );
  nd02d1 U877 ( .A1(n531), .A2(n582), .ZN(N848) );
  nd02d1 U878 ( .A1(n707), .A2(n541), .ZN(n642) );
  inv0d1 U879 ( .I(n642), .ZN(n545) );
  nd03d0 U880 ( .A1(n532), .A2(n545), .A3(n653), .ZN(n651) );
  nd02d1 U881 ( .A1(n651), .A2(n707), .ZN(n536) );
  nd03d0 U882 ( .A1(n532), .A2(n653), .A3(n541), .ZN(n533) );
  aor22d1 U883 ( .A1(n533), .A2(operan[1]), .B1(n536), .B2(n82), .Z(N1089) );
  aor22d1 U884 ( .A1(n533), .A2(n42), .B1(n536), .B2(n179), .Z(N1088) );
  aor211d1 U885 ( .C1(n59), .C2(n536), .A(n535), .B(n534), .Z(N1087) );
  inv0d1 U886 ( .I(n537), .ZN(n538) );
  nd03d0 U887 ( .A1(n538), .A2(n545), .A3(n540), .ZN(n622) );
  nd02d1 U888 ( .A1(n622), .A2(n707), .ZN(n759) );
  nd02d1 U889 ( .A1(n541), .A2(n540), .ZN(n543) );
  aor22d1 U890 ( .A1(n543), .A2(operan[1]), .B1(n542), .B2(n82), .Z(N1204) );
  aor22d1 U891 ( .A1(n543), .A2(n42), .B1(n542), .B2(n179), .Z(N1203) );
  inv0d1 U892 ( .I(n543), .ZN(n544) );
  nd02d1 U893 ( .A1(n60), .A2(n544), .ZN(N1202) );
  nd02d1 U894 ( .A1(n545), .A2(n622), .ZN(n548) );
  inv0d1 U895 ( .I(n548), .ZN(n546) );
  nr02d0 U896 ( .A1(n546), .A2(n551), .ZN(N1189) );
  aor22d1 U897 ( .A1(w_addr[2]), .A2(n550), .B1(n722), .B2(n136), .Z(N936) );
  aor22d1 U898 ( .A1(w_addr[1]), .A2(n550), .B1(n722), .B2(operan[1]), .Z(N935) );
  aor22d1 U899 ( .A1(w_addr[0]), .A2(n550), .B1(n722), .B2(n42), .Z(N934) );
  nr02d0 U900 ( .A1(n742), .A2(n551), .ZN(N930) );
  nr02d0 U901 ( .A1(n742), .A2(n559), .ZN(N929) );
  nr02d0 U902 ( .A1(n560), .A2(n920), .ZN(decode_6) );
  inv0d1 U903 ( .I(n561), .ZN(n816) );
  nd02d1 U904 ( .A1(n44), .A2(n874), .ZN(n802) );
  nr02d0 U905 ( .A1(n572), .A2(n151), .ZN(n579) );
  inv0d1 U906 ( .I(n687), .ZN(n883) );
  nr02d0 U907 ( .A1(n833), .A2(n696), .ZN(n578) );
  nd02d1 U908 ( .A1(n217), .A2(n713), .ZN(n630) );
  inv0d1 U909 ( .I(n889), .ZN(n711) );
  nr02d0 U910 ( .A1(n878), .A2(n711), .ZN(n577) );
  nd03d0 U911 ( .A1(n584), .A2(n147), .A3(divide_by_0), .ZN(n585) );
  nd03d0 U912 ( .A1(n587), .A2(n586), .A3(n585), .ZN(n592) );
  nr02d0 U913 ( .A1(n639), .A2(n891), .ZN(n591) );
  aor221d1 U914 ( .B1(n806), .B2(n708), .C1(n862), .C2(n599), .A(n598), .Z(
        n600) );
  inv0d1 U915 ( .I(n921), .ZN(n797) );
  inv0d1 U916 ( .I(n251), .ZN(opcode_op[1]) );
  aor21d1 U917 ( .B1(n51), .B2(n900), .A(n95), .Z(n604) );
  aor221d1 U918 ( .B1(n870), .B2(n608), .C1(n374), .C2(n607), .A(n224), .Z(
        opcode_op[4]) );
  ora21d1 U919 ( .B1(n610), .B2(n609), .A(n374), .Z(decode[12]) );
  aor211d1 U920 ( .C1(n611), .C2(n892), .A(n653), .B(n910), .Z(n614) );
  nd02d1 U921 ( .A1(n614), .A2(n613), .ZN(decode[13]) );
  nd02d1 U922 ( .A1(n615), .A2(n881), .ZN(n826) );
  nd02d1 U923 ( .A1(n216), .A2(n826), .ZN(n689) );
  inv0d1 U924 ( .I(n689), .ZN(n636) );
  nr02d0 U925 ( .A1(n621), .A2(n620), .ZN(n832) );
  inv0d1 U926 ( .I(n622), .ZN(n624) );
  aor221d1 U927 ( .B1(n624), .B2(n758), .C1(n840), .C2(n806), .A(n789), .Z(
        n834) );
  nd04d0 U928 ( .A1(n832), .A2(n628), .A3(n838), .A4(n863), .ZN(n703) );
  inv0d1 U929 ( .I(n703), .ZN(n631) );
  nd02d1 U930 ( .A1(n196), .A2(n889), .ZN(n756) );
  inv0d1 U931 ( .I(n756), .ZN(n835) );
  inv0d1 U932 ( .I(invert_b), .ZN(n629) );
  aor31d1 U933 ( .B1(n631), .B2(n835), .B3(n630), .A(n629), .Z(n635) );
  aoi222d1 U934 ( .A1(n810), .A2(N855), .B1(n806), .B2(n633), .C1(n814), .C2(
        n632), .ZN(n634) );
  nd04d0 U935 ( .A1(n636), .A2(n688), .A3(n635), .A4(n634), .ZN(n637) );
  aor22d1 U936 ( .A1(n373), .A2(n637), .B1(invert_b), .B2(n799), .Z(decode[40]) );
  aoim22d1 U937 ( .A1(n640), .A2(n862), .B1(n639), .B2(n153), .Z(n645) );
  inv0d1 U938 ( .I(n784), .ZN(n778) );
  nd02d1 U939 ( .A1(n831), .A2(n652), .ZN(n709) );
  aor22d1 U940 ( .A1(n709), .A2(n642), .B1(n708), .B2(n641), .Z(n662) );
  nr04d0 U941 ( .A1(n740), .A2(n778), .A3(n662), .A4(n643), .ZN(n644) );
  nd04d0 U942 ( .A1(n668), .A2(n807), .A3(n645), .A4(n644), .ZN(n646) );
  inv0d1 U943 ( .I(n866), .ZN(n674) );
  aor221d1 U944 ( .B1(n870), .B2(n647), .C1(n374), .C2(n646), .A(n674), .Z(
        decode_0) );
  nr02d0 U945 ( .A1(n653), .A2(n652), .ZN(n658) );
  inv0d1 U946 ( .I(n654), .ZN(n657) );
  nr04d0 U947 ( .A1(n195), .A2(n658), .A3(n657), .A4(n656), .ZN(n660) );
  aon211d1 U948 ( .C1(n661), .C2(n660), .B(n910), .A(n659), .ZN(decode_1) );
  inv0d1 U949 ( .I(n662), .ZN(n663) );
  nd03d0 U950 ( .A1(n663), .A2(n865), .A3(n827), .ZN(n666) );
  nd02d1 U951 ( .A1(n228), .A2(n664), .ZN(n665) );
  inv0d1 U952 ( .I(n668), .ZN(n669) );
  aon211d1 U953 ( .C1(n69), .C2(n709), .B(n669), .A(n373), .ZN(n670) );
  inv0d1 U954 ( .I(n671), .ZN(n752) );
  nd03d0 U955 ( .A1(n752), .A2(n758), .A3(n760), .ZN(n677) );
  nd02d1 U956 ( .A1(n672), .A2(n747), .ZN(n732) );
  aon211d1 U957 ( .C1(n677), .C2(n732), .B(n910), .A(n47), .ZN(decode_4) );
  inv0d1 U958 ( .I(n678), .ZN(n682) );
  nr02d0 U959 ( .A1(n831), .A2(n757), .ZN(n681) );
  nr04d0 U960 ( .A1(n682), .A2(n681), .A3(n680), .A4(n679), .ZN(n683) );
  oai21d1 U961 ( .B1(n683), .B2(n910), .A(n47), .ZN(decode_5) );
  nr02d0 U962 ( .A1(n685), .A2(n837), .ZN(n690) );
  nd04d0 U963 ( .A1(n688), .A2(n687), .A3(n802), .A4(n686), .ZN(n749) );
  nr04d0 U964 ( .A1(n878), .A2(n690), .A3(n749), .A4(n689), .ZN(n691) );
  nr02d0 U965 ( .A1(n422), .A2(n920), .ZN(n692) );
  nr02d0 U966 ( .A1(n695), .A2(n693), .ZN(decode[14]) );
  nr02d0 U967 ( .A1(n695), .A2(n694), .ZN(decode[15]) );
  inv0d1 U968 ( .I(n914), .ZN(decode[16]) );
  nd02d1 U969 ( .A1(n815), .A2(n697), .ZN(n906) );
  nd02d1 U970 ( .A1(n698), .A2(n906), .ZN(n791) );
  nd02d1 U971 ( .A1(n862), .A2(n699), .ZN(n893) );
  inv0d1 U972 ( .I(n700), .ZN(n728) );
  oan211d1 U973 ( .C1(n214), .C2(n703), .B(a_src[0]), .A(n197), .ZN(n704) );
  nd04d0 U974 ( .A1(n728), .A2(n705), .A3(n784), .A4(n704), .ZN(n706) );
  nd02d1 U975 ( .A1(n920), .A2(n921), .ZN(n887) );
  aor221d1 U976 ( .B1(n373), .B2(n706), .C1(a_src[0]), .C2(n799), .A(n887), 
        .Z(decode[25]) );
  inv0d1 U977 ( .I(n707), .ZN(n710) );
  inv0d1 U978 ( .I(n844), .ZN(n841) );
  inv0d1 U979 ( .I(n713), .ZN(n716) );
  nd04d0 U980 ( .A1(n716), .A2(n901), .A3(n136), .A4(n714), .ZN(n719) );
  inv0d1 U981 ( .I(n717), .ZN(n718) );
  aor211d1 U982 ( .C1(n905), .C2(n719), .A(n804), .B(n718), .Z(n730) );
  aor221d1 U983 ( .B1(n722), .B2(n721), .C1(n790), .C2(n720), .A(n215), .Z(
        n788) );
  nd04d0 U984 ( .A1(n728), .A2(n727), .A3(n726), .A4(n725), .ZN(n729) );
  ora31d1 U985 ( .B1(n731), .B2(n730), .B3(n729), .A(n374), .Z(decode[27]) );
  inv0d1 U986 ( .I(n732), .ZN(n737) );
  aor211d1 U987 ( .C1(n147), .C2(n735), .A(n56), .B(n734), .Z(n736) );
  nd02d1 U988 ( .A1(n208), .A2(n739), .ZN(n777) );
  aon211d1 U989 ( .C1(n777), .C2(n42), .B(n740), .A(n373), .ZN(n775) );
  nd03d0 U990 ( .A1(n745), .A2(n744), .A3(n122), .ZN(n768) );
  nr02d0 U991 ( .A1(n747), .A2(n746), .ZN(n748) );
  nd03d0 U992 ( .A1(n751), .A2(n750), .A3(n844), .ZN(n755) );
  inv0d1 U993 ( .I(n827), .ZN(n754) );
  nr02d0 U994 ( .A1(n752), .A2(n831), .ZN(n753) );
  nr04d0 U995 ( .A1(n756), .A2(n755), .A3(n754), .A4(n753), .ZN(n763) );
  inv0d1 U996 ( .I(n757), .ZN(n761) );
  aon211d1 U997 ( .C1(n761), .C2(n760), .B(n759), .A(n758), .ZN(n762) );
  nd03d0 U998 ( .A1(n764), .A2(n763), .A3(n762), .ZN(n765) );
  inv0d1 U999 ( .I(n781), .ZN(n771) );
  inv0d1 U1000 ( .I(b_addr[0]), .ZN(n770) );
  aoim22d1 U1001 ( .A1(n870), .A2(n772), .B1(n771), .B2(n770), .Z(n773) );
  nd03d0 U1002 ( .A1(n775), .A2(n774), .A3(n773), .ZN(decode[32]) );
  nd02d1 U1003 ( .A1(n898), .A2(n776), .ZN(n782) );
  aor22d1 U1004 ( .A1(n778), .A2(n42), .B1(n777), .B2(operan[1]), .Z(n779) );
  aor211d1 U1005 ( .C1(n374), .C2(n779), .A(n225), .B(n887), .Z(n780) );
  oai2222d1 U1006 ( .A1(n83), .A2(n62), .B1(n95), .B2(n208), .C1(n88), .C2(
        n784), .D1(n807), .D2(n783), .ZN(n786) );
  aor22d1 U1007 ( .A1(n372), .A2(n786), .B1(n119), .B2(n799), .Z(decode[34])
         );
  inv0d1 U1008 ( .I(n788), .ZN(n894) );
  aor221d1 U1009 ( .B1(b_addr[3]), .B2(n793), .C1(n815), .C2(n792), .A(n791), 
        .Z(n798) );
  aor22d1 U1010 ( .A1(b_addr[3]), .A2(n799), .B1(n795), .B2(n794), .Z(n796) );
  aor211d1 U1011 ( .C1(n372), .C2(n798), .A(n797), .B(n796), .Z(decode[35]) );
  aor211d1 U1012 ( .C1(n840), .C2(n800), .A(n207), .B(n799), .Z(n801) );
  nd02d1 U1013 ( .A1(n801), .A2(data_ready), .ZN(n927) );
  inv0d1 U1014 ( .I(n927), .ZN(n823) );
  inv0d1 U1015 ( .I(n802), .ZN(n809) );
  nd03d0 U1016 ( .A1(n216), .A2(n218), .A3(n807), .ZN(n808) );
  aor211d1 U1017 ( .C1(n811), .C2(n810), .A(n809), .B(n808), .Z(n825) );
  ora31d1 U1018 ( .B1(n818), .B2(n817), .B3(n816), .A(n815), .Z(n821) );
  inv0d1 U1019 ( .I(n893), .ZN(n820) );
  inv0d1 U1020 ( .I(n819), .ZN(n846) );
  nr04d0 U1021 ( .A1(n822), .A2(n821), .A3(n820), .A4(n846), .ZN(n824) );
  oai21d1 U1022 ( .B1(n824), .B2(n910), .A(n823), .ZN(n828) );
  aor22d1 U1023 ( .A1(n190), .A2(n825), .B1(carry_src[0]), .B2(n828), .Z(n555)
         );
  nd03d0 U1024 ( .A1(n218), .A2(n827), .A3(n826), .ZN(n829) );
  aor22d1 U1025 ( .A1(n190), .A2(n829), .B1(carry_src[1]), .B2(n828), .Z(n554)
         );
  nd03d0 U1026 ( .A1(n832), .A2(n831), .A3(n830), .ZN(n855) );
  inv0d1 U1027 ( .I(n833), .ZN(n836) );
  nd04d0 U1028 ( .A1(n836), .A2(n116), .A3(n207), .A4(n835), .ZN(n854) );
  inv0d1 U1029 ( .I(n837), .ZN(n842) );
  inv0d1 U1030 ( .I(n838), .ZN(n839) );
  aor221d1 U1031 ( .B1(n881), .B2(n842), .C1(n841), .C2(n840), .A(n839), .Z(
        n853) );
  nd03d0 U1032 ( .A1(n891), .A2(n892), .A3(n844), .ZN(n845) );
  aor211d1 U1033 ( .C1(n905), .C2(n847), .A(n846), .B(n845), .Z(n848) );
  or04d1 U1034 ( .A1(n855), .A2(n854), .A3(n853), .A4(n852), .Z(n211) );
  nd02d1 U1035 ( .A1(n857), .A2(n856), .ZN(n869) );
  nd02d1 U1036 ( .A1(n867), .A2(n866), .ZN(n912) );
  aor22d1 U1037 ( .A1(n133), .A2(n875), .B1(n874), .B2(n880), .Z(n876) );
  aor211d1 U1038 ( .C1(n217), .C2(operan[1]), .A(n879), .B(n876), .Z(n877) );
  aor22d1 U1039 ( .A1(alu_cmd[0]), .A2(n886), .B1(n372), .B2(n877), .Z(
        decode[44]) );
  aor211d1 U1040 ( .C1(n881), .C2(n880), .A(n879), .B(n878), .Z(n882) );
  aor311d1 U1041 ( .C1(n905), .C2(n132), .C3(operan[1]), .A(n884), .B(n883), 
        .Z(n885) );
  inv0d1 U1042 ( .I(n887), .ZN(n915) );
  aon211d1 U1043 ( .C1(n99), .C2(n61), .B(n889), .A(n888), .ZN(n897) );
  nd03d0 U1044 ( .A1(n198), .A2(n892), .A3(n891), .ZN(n896) );
  nd03d0 U1045 ( .A1(n894), .A2(n196), .A3(n893), .ZN(n895) );
  aor221d1 U1046 ( .B1(n95), .B2(n897), .C1(alu_cmd[3]), .C2(n896), .A(n895), 
        .Z(n909) );
  inv0d1 U1047 ( .I(alu_cmd[3]), .ZN(n899) );
  aon211d1 U1048 ( .C1(n901), .C2(n900), .B(n899), .A(n898), .ZN(n903) );
  aor221d1 U1049 ( .B1(n51), .B2(n903), .C1(n390), .C2(n80), .A(n371), .Z(n904) );
  inv0d1 U1050 ( .I(n906), .ZN(n907) );
  aoim22d1 U1051 ( .A1(alu_cmd[3]), .A2(n912), .B1(n910), .B2(n911), .Z(n913)
         );
  inv0d1 U1052 ( .I(decode[46]), .ZN(n919) );
  inv0d1 U1053 ( .I(decode[44]), .ZN(n917) );
  nd04d0 U1054 ( .A1(n919), .A2(n918), .A3(n917), .A4(n916), .ZN(N1363) );
  an02d1 U1055 ( .A1(n181), .A2(n922), .Z(n923) );
  mx02d0 U1056 ( .I0(int_type[0]), .I1(n923), .S(n185), .Z(n553) );
endmodule


module risc8 ( cycle, write, ifetch, iack, ie, address, data_out, clk, rst_n, 
        nmi, int, ready, data_in, scan_in, scan_en, scan_mode );
  output [15:0] address;
  output [7:0] data_out;
  input [7:0] data_in;
  input clk, rst_n, nmi, int, ready, scan_in, scan_en, scan_mode;
  output cycle, write, ifetch, iack, ie;
  wire   n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, divide_by_0, invert_b, lu_op, data_ready, wr_reg, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n13, n15, n17, n19, n21,
         n23, n25, n36, n37, n38;
  wire   [7:0] next_psw;
  wire   [7:0] alu_out;
  wire   [1:0] a_src;
  wire   [1:0] b_src;
  wire   [2:0] carry_src;
  wire   [3:0] alu_cmd;
  wire   [2:0] flag_op;
  wire   [5:0] muldiv_op;
  wire   [7:0] queue_out;
  wire   [7:0] a_data;
  wire   [7:0] b_data;
  wire   [7:0] psw;
  wire   [2:0] queue_count;
  wire   [3:0] a_addr;
  wire   [3:0] b_addr;
  wire   [3:0] w_addr;
  wire   [1:0] int_type;
  wire   [2:0] data_op;
  wire   [3:0] addr_op;
  wire   [4:0] opcode_op;
  wire   [1:0] inc_pc;
  wire   SYNOPSYS_UNCONNECTED__0;

  risc8_alu U_alu ( .next_psw(next_psw), .alu_out(alu_out), .divide_by_0(
        divide_by_0), .clk(clk), .rst_n(n38), .a_src({1'b0, a_src[0]}), 
        .b_src(b_src), .carry_src(carry_src), .alu_cmd(alu_cmd), .invert_b(
        invert_b), .lu_op(lu_op), .flag_op(flag_op), .muldiv_op(muldiv_op), 
        .queue_out({queue_out[7:6], n10, queue_out[4:3], n36, queue_out[1:0]}), 
        .a_data(a_data), .b_data(b_data), .psw(psw), .scan_mode(scan_mode) );
  risc8_regb_biu U_regb_biu ( .cycle(cycle), .write(n39), .ifetch(ifetch), 
        .iack(iack), .ie(n40), .address({address[15:13], n41, address[11], n42, 
        n43, address[8:6], n44, address[4], n45, n46, address[1], n47}), 
        .data_out({n48, n49, n50, n51, n52, n53, n54, n55}), .psw(psw), 
        .a_data(a_data), .b_data(b_data), .queue_out(queue_out), .queue_count(
        queue_count), .data_ready(data_ready), .clk(clk), .rst_n(n37), 
        .a_addr(a_addr), .b_addr(b_addr), .w_addr(w_addr), .wr_reg(wr_reg), 
        .int_type(int_type), .alu_out(alu_out), .data_op(data_op), .addr_op(
        addr_op), .opcode_op(opcode_op), .inc_pc(inc_pc), .next_psw(next_psw), 
        .data_in({n6, n2, n9, n7, n8, n1, n4, n5}), .ready(n3) );
  risc8_control U_control ( .alu_cmd(alu_cmd), .carry_src(carry_src), .a_addr(
        a_addr), .b_addr(b_addr), .w_addr(w_addr), .wr_reg(wr_reg), .a_src({
        SYNOPSYS_UNCONNECTED__0, a_src[0]}), .b_src(b_src), .muldiv_op(
        muldiv_op), .flag_op(flag_op), .data_op(data_op), .addr_op(addr_op), 
        .invert_b(invert_b), .lu_op(lu_op), .inc_pc(inc_pc), .opcode_op(
        opcode_op), .int_type(int_type), .clk(clk), .rst_n(n38), .nmi(nmi), 
        .int(int), .queue_out(queue_out), .psw(psw), .data_ready(data_ready), 
        .queue_count(queue_count), .divide_by_0(divide_by_0) );
  invbd4 U1 ( .I(n46), .ZN(n25) );
  invbd4 U2 ( .I(n45), .ZN(n19) );
  bufbda U3 ( .I(n55), .Z(data_out[0]) );
  bufbda U4 ( .I(n54), .Z(data_out[1]) );
  bufbda U5 ( .I(n53), .Z(data_out[2]) );
  bufbda U6 ( .I(n52), .Z(data_out[3]) );
  bufbda U7 ( .I(n51), .Z(data_out[4]) );
  bufbda U8 ( .I(n50), .Z(data_out[5]) );
  bufbda U9 ( .I(n49), .Z(data_out[6]) );
  bufbda U10 ( .I(n48), .Z(data_out[7]) );
  bufbd1 U11 ( .I(data_in[2]), .Z(n1) );
  bufbd1 U12 ( .I(data_in[6]), .Z(n2) );
  bufbd1 U13 ( .I(ready), .Z(n3) );
  bufbd1 U14 ( .I(data_in[1]), .Z(n4) );
  bufbd1 U15 ( .I(data_in[0]), .Z(n5) );
  bufbd1 U16 ( .I(data_in[7]), .Z(n6) );
  bufbd1 U17 ( .I(data_in[4]), .Z(n7) );
  bufbd1 U18 ( .I(data_in[3]), .Z(n8) );
  bufbd1 U19 ( .I(data_in[5]), .Z(n9) );
  clk2d2 U20 ( .CLK(queue_out[5]), .C(n10) );
  clk2d2 U21 ( .CLK(queue_out[2]), .C(n36) );
  invbd7 U22 ( .I(n44), .ZN(n11) );
  invbdk U23 ( .I(n11), .ZN(address[5]) );
  invbd7 U24 ( .I(n43), .ZN(n13) );
  invbdk U25 ( .I(n13), .ZN(address[9]) );
  invbd7 U26 ( .I(n42), .ZN(n15) );
  invbdk U27 ( .I(n15), .ZN(address[10]) );
  invbd7 U28 ( .I(n41), .ZN(n17) );
  invbdk U29 ( .I(n17), .ZN(address[12]) );
  invbdk U30 ( .I(n19), .ZN(address[3]) );
  invbd7 U31 ( .I(n39), .ZN(n21) );
  invbdk U32 ( .I(n21), .ZN(write) );
  invbd2 U33 ( .I(n47), .ZN(n23) );
  invbdk U34 ( .I(n23), .ZN(address[0]) );
  invbdk U35 ( .I(n25), .ZN(address[2]) );
  bufbdk U36 ( .I(n40), .Z(ie) );
  bufbd1 U37 ( .I(rst_n), .Z(n38) );
  bufbd1 U38 ( .I(rst_n), .Z(n37) );
endmodule

