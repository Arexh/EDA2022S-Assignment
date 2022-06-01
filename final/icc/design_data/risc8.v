/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Wed Jun  1 18:46:25 2022
/////////////////////////////////////////////////////////////


module rbcla_adder_width8_bits_per_block4 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n1, n2, n3, n4, n5, n6, n7;

  or02d1 U9 ( .A1(A[7]), .A2(n8), .Z(n14) );
  cg01d1 U16 ( .A(CI), .B(A[0]), .CI(B[0]), .CO(n21) );
  aor22d1 U24 ( .A1(A[7]), .A2(n8), .B1(B[7]), .B2(n14), .Z(CO) );
  oaim22d1 U25 ( .A1(n1), .A2(n9), .B1(B[6]), .B2(n15), .ZN(n8) );
  aoim22d1 U26 ( .A1(B[5]), .A2(n16), .B1(n2), .B2(n10), .Z(n9) );
  aoim22d1 U27 ( .A1(B[4]), .A2(n17), .B1(n3), .B2(n11), .Z(n10) );
  aoim22d1 U28 ( .A1(B[3]), .A2(n18), .B1(n4), .B2(n12), .Z(n11) );
  aoim22d1 U29 ( .A1(B[2]), .A2(n19), .B1(n5), .B2(n13), .Z(n12) );
  aoim22d1 U30 ( .A1(B[1]), .A2(n20), .B1(n6), .B2(n7), .Z(n13) );
  nd02d1 U1 ( .A1(n10), .A2(n2), .ZN(n16) );
  nd02d1 U2 ( .A1(n11), .A2(n3), .ZN(n17) );
  nd02d1 U3 ( .A1(n7), .A2(n6), .ZN(n20) );
  nd02d1 U4 ( .A1(n9), .A2(n1), .ZN(n15) );
  xr03d1 U5 ( .A1(n9), .A2(B[6]), .A3(n1), .Z(SUM[6]) );
  nd02d1 U6 ( .A1(n13), .A2(n5), .ZN(n19) );
  nd02d1 U7 ( .A1(n12), .A2(n4), .ZN(n18) );
  xr03d1 U8 ( .A1(n10), .A2(B[5]), .A3(n2), .Z(SUM[5]) );
  xr03d1 U10 ( .A1(n11), .A2(B[4]), .A3(n3), .Z(SUM[4]) );
  xr03d1 U11 ( .A1(n12), .A2(B[3]), .A3(n4), .Z(SUM[3]) );
  xr03d1 U12 ( .A1(n13), .A2(B[2]), .A3(n5), .Z(SUM[2]) );
  xr03d1 U13 ( .A1(n7), .A2(B[1]), .A3(n6), .Z(SUM[1]) );
  inv0d1 U14 ( .I(A[1]), .ZN(n6) );
  xr03d1 U15 ( .A1(n8), .A2(B[7]), .A3(A[7]), .Z(SUM[7]) );
  inv0d1 U17 ( .I(n21), .ZN(n7) );
  inv0d1 U18 ( .I(A[2]), .ZN(n5) );
  inv0d1 U19 ( .I(A[3]), .ZN(n4) );
  inv0d1 U20 ( .I(A[4]), .ZN(n3) );
  inv0d1 U21 ( .I(A[6]), .ZN(n1) );
  inv0d1 U22 ( .I(A[5]), .ZN(n2) );
  xr03d1 U23 ( .A1(CI), .A2(B[0]), .A3(A[0]), .Z(SUM[0]) );
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
         N122, N123, N124, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175;
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

  an02d1 U5 ( .A1(n45), .A2(psw[0]), .Z(n54) );
  or03d1 U12 ( .A1(alu_cmd[2]), .A2(b_data[0]), .A3(alu_cmd[1]), .Z(n77) );
  or03d1 U13 ( .A1(b_data[2]), .A2(b_data[3]), .A3(b_data[1]), .Z(n76) );
  or04d1 U14 ( .A1(b_data[4]), .A2(b_data[5]), .A3(b_data[6]), .A4(b_data[7]), 
        .Z(n75) );
  or03d1 U15 ( .A1(carry_src[1]), .A2(carry_src[2]), .A3(carry_src[0]), .Z(n80) );
  an02d1 U25 ( .A1(save_a7), .A2(n112), .Z(n94) );
  an02d1 U26 ( .A1(b_src[1]), .A2(n175), .Z(n112) );
  an02d1 U28 ( .A1(muldiv_op[3]), .A2(n116), .Z(n97) );
  ora21d1 U69 ( .B1(n161), .B2(n170), .A(psw[4]), .Z(next_psw[4]) );
  aor22d1 U70 ( .A1(psw[3]), .A2(n41), .B1(n160), .B2(n42), .Z(next_psw[3]) );
  aor31d1 U71 ( .B1(a_alu[7]), .B2(n137), .B3(n43), .A(n44), .Z(n42) );
  aor22d1 U73 ( .A1(psw[2]), .A2(n45), .B1(n46), .B2(alu_out[7]), .Z(
        next_psw[2]) );
  aor22d1 U74 ( .A1(n47), .A2(n48), .B1(psw[1]), .B2(n49), .Z(next_psw[1]) );
  oai322d1 U75 ( .C1(n51), .C2(n52), .C3(n149), .A1(n141), .A2(n171), .B1(n172), .B2(n140), .ZN(n47) );
  nr04d0 U76 ( .A1(n173), .A2(n131), .A3(alu_cmd[1]), .A4(alu_cmd[3]), .ZN(n51) );
  aor31d1 U77 ( .B1(n46), .B2(n137), .B3(n53), .A(n54), .Z(next_psw[0]) );
  ora31d1 U78 ( .B1(psw[0]), .B2(n170), .B3(n55), .A(n56), .Z(n53) );
  aor22d1 U79 ( .A1(n57), .A2(n58), .B1(n59), .B2(n60), .Z(n56) );
  nr04d0 U80 ( .A1(adder_out[6]), .A2(adder_out[5]), .A3(adder_out[4]), .A4(
        adder_out[3]), .ZN(n60) );
  nr04d0 U81 ( .A1(adder_out[2]), .A2(adder_out[1]), .A3(adder_out[0]), .A4(
        n172), .ZN(n59) );
  nr04d0 U82 ( .A1(lu_out[6]), .A2(lu_out[5]), .A3(lu_out[4]), .A4(lu_out[3]), 
        .ZN(n58) );
  nr04d0 U83 ( .A1(lu_out[2]), .A2(lu_out[1]), .A3(lu_out[0]), .A4(n52), .ZN(
        n57) );
  nd03d0 U84 ( .A1(n50), .A2(n161), .A3(n55), .ZN(n41) );
  nr02d0 U85 ( .A1(flag_op[1]), .A2(flag_op[0]), .ZN(n45) );
  aoi2222d1 U86 ( .A1(a_reg[7]), .A2(n62), .B1(a_data[7]), .B2(muldiv_op[2]), 
        .C1(n63), .C2(adder_out[0]), .D1(n64), .D2(a_reg[6]), .ZN(n61) );
  aoi2222d1 U87 ( .A1(a_reg[6]), .A2(n62), .B1(muldiv_op[2]), .B2(a_data[6]), 
        .C1(a_reg[7]), .C2(n63), .D1(n64), .D2(a_reg[5]), .ZN(n65) );
  aoi2222d1 U88 ( .A1(n62), .A2(a_reg[5]), .B1(muldiv_op[2]), .B2(a_data[5]), 
        .C1(a_reg[6]), .C2(n63), .D1(n64), .D2(a_reg[4]), .ZN(n66) );
  aoi2222d1 U89 ( .A1(n62), .A2(a_reg[4]), .B1(muldiv_op[2]), .B2(a_data[4]), 
        .C1(n63), .C2(a_reg[5]), .D1(n64), .D2(a_reg[3]), .ZN(n67) );
  aoi2222d1 U90 ( .A1(n62), .A2(a_reg[3]), .B1(muldiv_op[2]), .B2(a_data[3]), 
        .C1(n63), .C2(a_reg[4]), .D1(n64), .D2(a_reg[2]), .ZN(n68) );
  aoi2222d1 U91 ( .A1(n62), .A2(a_reg[2]), .B1(muldiv_op[2]), .B2(a_data[2]), 
        .C1(n63), .C2(a_reg[3]), .D1(n64), .D2(a_reg[1]), .ZN(n69) );
  aoi2222d1 U92 ( .A1(n62), .A2(a_reg[1]), .B1(muldiv_op[2]), .B2(a_data[1]), 
        .C1(n63), .C2(a_reg[2]), .D1(a_reg[0]), .D2(n64), .ZN(n70) );
  aoi2222d1 U93 ( .A1(a_reg[0]), .A2(n62), .B1(a_data[0]), .B2(muldiv_op[2]), 
        .C1(n63), .C2(a_reg[1]), .D1(n72), .D2(n64), .ZN(n71) );
  aor22d1 U94 ( .A1(p_reg[8]), .A2(n73), .B1(n74), .B2(n138), .Z(n118) );
  aor222d1 U95 ( .A1(n74), .A2(adder_out[7]), .B1(n63), .B2(carry_out), .C1(
        n73), .C2(p_reg[7]), .Z(n119) );
  aor222d1 U96 ( .A1(adder_out[6]), .A2(n74), .B1(n63), .B2(adder_out[7]), 
        .C1(n73), .C2(p_reg[6]), .Z(n120) );
  aor222d1 U97 ( .A1(adder_out[5]), .A2(n74), .B1(adder_out[6]), .B2(n63), 
        .C1(p_reg[5]), .C2(n73), .Z(n121) );
  aor222d1 U98 ( .A1(adder_out[4]), .A2(n74), .B1(adder_out[5]), .B2(n63), 
        .C1(p_reg[4]), .C2(n73), .Z(n122) );
  aor222d1 U99 ( .A1(adder_out[3]), .A2(n74), .B1(adder_out[4]), .B2(n63), 
        .C1(p_reg[3]), .C2(n73), .Z(n123) );
  aor222d1 U100 ( .A1(adder_out[2]), .A2(n74), .B1(adder_out[3]), .B2(n63), 
        .C1(p_reg[2]), .C2(n73), .Z(n124) );
  aor222d1 U101 ( .A1(adder_out[1]), .A2(n74), .B1(adder_out[2]), .B2(n63), 
        .C1(p_reg[1]), .C2(n73), .Z(n125) );
  aor222d1 U102 ( .A1(n74), .A2(adder_out[0]), .B1(adder_out[1]), .B2(n63), 
        .C1(n73), .C2(p_reg[0]), .Z(n126) );
  nr04d0 U107 ( .A1(n75), .A2(n76), .A3(n77), .A4(n78), .ZN(divide_by_0) );
  nd03d0 U108 ( .A1(muldiv_op[2]), .A2(alu_cmd[0]), .A3(alu_cmd[3]), .ZN(n78)
         );
  oaim22d1 U109 ( .A1(n169), .A2(p_reg[8]), .B1(n79), .B2(n80), .ZN(
        carry_in_tmp) );
  aor22d1 U110 ( .A1(n81), .A2(n174), .B1(carry_src[2]), .B2(psw[1]), .Z(n79)
         );
  oaim22d1 U111 ( .A1(carry_src[0]), .A2(psw[1]), .B1(carry_src[0]), .B2(n82), 
        .ZN(n81) );
  aor22d1 U113 ( .A1(lu_out[6]), .A2(n172), .B1(adder_out[6]), .B2(n52), .Z(
        alu_out[6]) );
  aor22d1 U114 ( .A1(lu_out[5]), .A2(n172), .B1(adder_out[5]), .B2(n52), .Z(
        alu_out[5]) );
  aor22d1 U115 ( .A1(lu_out[4]), .A2(n172), .B1(adder_out[4]), .B2(n52), .Z(
        alu_out[4]) );
  aor22d1 U116 ( .A1(lu_out[3]), .A2(n172), .B1(adder_out[3]), .B2(n52), .Z(
        alu_out[3]) );
  aor22d1 U117 ( .A1(lu_out[2]), .A2(n172), .B1(adder_out[2]), .B2(n52), .Z(
        alu_out[2]) );
  aor22d1 U118 ( .A1(lu_out[1]), .A2(n172), .B1(adder_out[1]), .B2(n52), .Z(
        alu_out[1]) );
  aor22d1 U119 ( .A1(lu_out[0]), .A2(n172), .B1(adder_out[0]), .B2(n52), .Z(
        alu_out[0]) );
  xr02d1 U121 ( .A1(n4), .A2(n157), .Z(N124) );
  xr02d1 U122 ( .A1(a_alu[1]), .A2(n156), .Z(N123) );
  xr02d1 U123 ( .A1(a_alu[2]), .A2(n155), .Z(N122) );
  xr02d1 U124 ( .A1(a_alu[3]), .A2(n154), .Z(N121) );
  xr02d1 U125 ( .A1(a_alu[4]), .A2(n153), .Z(N120) );
  xr02d1 U126 ( .A1(a_alu[5]), .A2(n152), .Z(N119) );
  xr02d1 U127 ( .A1(a_alu[6]), .A2(n151), .Z(N118) );
  xr02d1 U128 ( .A1(a_alu[7]), .A2(n150), .Z(N117) );
  nr02d0 U129 ( .A1(n149), .A2(n83), .ZN(N108) );
  xr02d1 U130 ( .A1(n91), .A2(n92), .Z(n83) );
  aor21d1 U131 ( .B1(b_data[0]), .B2(n93), .A(n94), .Z(n91) );
  aor222d1 U133 ( .A1(a_reg[0]), .A2(n97), .B1(a_data[0]), .B2(n98), .C1(n99), 
        .C2(a_reg[7]), .Z(n96) );
  nr02d0 U134 ( .A1(n147), .A2(n84), .ZN(N107) );
  xr02d1 U135 ( .A1(n100), .A2(n92), .Z(n84) );
  aor21d1 U136 ( .B1(b_data[1]), .B2(n93), .A(n94), .Z(n100) );
  aor222d1 U138 ( .A1(a_reg[1]), .A2(n97), .B1(a_data[1]), .B2(n98), .C1(
        p_reg[0]), .C2(n99), .Z(n101) );
  nr02d0 U139 ( .A1(n146), .A2(n85), .ZN(N106) );
  xr02d1 U140 ( .A1(n102), .A2(n92), .Z(n85) );
  aor21d1 U141 ( .B1(b_data[2]), .B2(n93), .A(n94), .Z(n102) );
  aor221d1 U142 ( .B1(p_reg[2]), .B2(n95), .C1(queue_out[2]), .C2(a_src[0]), 
        .A(n103), .Z(a_alu[2]) );
  aor222d1 U143 ( .A1(a_reg[2]), .A2(n97), .B1(a_data[2]), .B2(n98), .C1(
        p_reg[1]), .C2(n99), .Z(n103) );
  nr02d0 U144 ( .A1(n145), .A2(n86), .ZN(N105) );
  xr02d1 U145 ( .A1(n104), .A2(n92), .Z(n86) );
  aor21d1 U146 ( .B1(b_data[3]), .B2(n93), .A(n94), .Z(n104) );
  aor221d1 U147 ( .B1(p_reg[3]), .B2(n95), .C1(queue_out[3]), .C2(a_src[0]), 
        .A(n105), .Z(a_alu[3]) );
  aor222d1 U148 ( .A1(a_reg[3]), .A2(n97), .B1(a_data[3]), .B2(n98), .C1(
        p_reg[2]), .C2(n99), .Z(n105) );
  nr02d0 U149 ( .A1(n144), .A2(n87), .ZN(N104) );
  xr02d1 U150 ( .A1(n106), .A2(n92), .Z(n87) );
  aor21d1 U151 ( .B1(b_data[4]), .B2(n93), .A(n94), .Z(n106) );
  aor221d1 U152 ( .B1(p_reg[4]), .B2(n95), .C1(queue_out[4]), .C2(a_src[0]), 
        .A(n107), .Z(a_alu[4]) );
  aor222d1 U153 ( .A1(a_reg[4]), .A2(n97), .B1(a_data[4]), .B2(n98), .C1(
        p_reg[3]), .C2(n99), .Z(n107) );
  nr02d0 U154 ( .A1(n143), .A2(n88), .ZN(N103) );
  xr02d1 U155 ( .A1(n108), .A2(n92), .Z(n88) );
  aor21d1 U156 ( .B1(b_data[5]), .B2(n93), .A(n94), .Z(n108) );
  aor221d1 U157 ( .B1(p_reg[5]), .B2(n95), .C1(queue_out[5]), .C2(a_src[0]), 
        .A(n109), .Z(a_alu[5]) );
  aor222d1 U158 ( .A1(a_reg[5]), .A2(n97), .B1(a_data[5]), .B2(n98), .C1(
        p_reg[4]), .C2(n99), .Z(n109) );
  nr02d0 U159 ( .A1(n142), .A2(n89), .ZN(N102) );
  xr02d1 U160 ( .A1(n110), .A2(n92), .Z(n89) );
  aor21d1 U161 ( .B1(b_data[6]), .B2(n93), .A(n94), .Z(n110) );
  aor221d1 U162 ( .B1(n95), .B2(p_reg[6]), .C1(queue_out[6]), .C2(a_src[0]), 
        .A(n111), .Z(a_alu[6]) );
  aor222d1 U163 ( .A1(a_reg[6]), .A2(n97), .B1(a_data[6]), .B2(n98), .C1(
        p_reg[5]), .C2(n99), .Z(n111) );
  nr02d0 U164 ( .A1(n141), .A2(n90), .ZN(N101) );
  xr02d1 U165 ( .A1(n43), .A2(n92), .Z(n90) );
  aoim21d1 U166 ( .B1(n169), .B2(p_reg[8]), .A(invert_b), .ZN(n92) );
  aor21d1 U167 ( .B1(b_data[7]), .B2(n93), .A(n94), .Z(n43) );
  aoi21d1 U168 ( .B1(n113), .B2(n114), .A(n112), .ZN(n93) );
  oai221d1 U169 ( .B1(n175), .B2(b_src[1]), .C1(n158), .C2(p_reg[8]), .A(n168), 
        .ZN(n114) );
  aor221d1 U170 ( .B1(p_reg[7]), .B2(n95), .C1(queue_out[7]), .C2(a_src[0]), 
        .A(n115), .Z(a_alu[7]) );
  aor222d1 U171 ( .A1(a_reg[7]), .A2(n97), .B1(a_data[7]), .B2(n98), .C1(
        p_reg[6]), .C2(n99), .Z(n115) );
  nr03d0 U172 ( .A1(n159), .A2(a_src[0]), .A3(n169), .ZN(n99) );
  an12d1 U173 ( .A2(n116), .A1(muldiv_op[3]), .Z(n98) );
  nr03d0 U174 ( .A1(a_src[0]), .A2(muldiv_op[1]), .A3(n159), .ZN(n116) );
  nr02d0 U175 ( .A1(n117), .A2(a_src[0]), .ZN(n95) );
  nr03d0 U176 ( .A1(muldiv_op[5]), .A2(muldiv_op[4]), .A3(muldiv_op[0]), .ZN(
        n117) );
  rbcla_adder_width8_bits_per_block4 U0 ( .A(a_alu), .B({n150, n151, n152, 
        n153, n154, n155, n156, n157}), .CI(carry_in_tmp), .SUM(adder_out), 
        .CO(carry_out) );
  dfcrq1 \p_reg_reg[5]  ( .D(n121), .CP(clk), .CDN(n135), .Q(p_reg[5]) );
  dfcrq1 \p_reg_reg[6]  ( .D(n120), .CP(clk), .CDN(n134), .Q(p_reg[6]) );
  dfcrq1 \p_reg_reg[7]  ( .D(n119), .CP(clk), .CDN(n134), .Q(p_reg[7]) );
  dfcrq1 \a_reg_reg[5]  ( .D(n166), .CP(clk), .CDN(n134), .Q(a_reg[5]) );
  dfcrq1 \a_reg_reg[6]  ( .D(n167), .CP(clk), .CDN(n134), .Q(a_reg[6]) );
  dfcrq1 \p_reg_reg[2]  ( .D(n124), .CP(clk), .CDN(n135), .Q(p_reg[2]) );
  dfcrq1 \p_reg_reg[3]  ( .D(n123), .CP(clk), .CDN(n135), .Q(p_reg[3]) );
  dfcrq1 \p_reg_reg[4]  ( .D(n122), .CP(clk), .CDN(n135), .Q(p_reg[4]) );
  dfcrq1 \a_reg_reg[3]  ( .D(n164), .CP(clk), .CDN(n134), .Q(a_reg[3]) );
  dfcrq1 \a_reg_reg[4]  ( .D(n165), .CP(clk), .CDN(n134), .Q(a_reg[4]) );
  dfcrq1 save_carry_reg ( .D(carry_out), .CP(clk), .CDN(n135), .Q(save_carry)
         );
  dfcrq1 save_a7_reg ( .D(a_alu[7]), .CP(clk), .CDN(n134), .Q(save_a7) );
  dfcrq1 \p_reg_reg[1]  ( .D(n125), .CP(clk), .CDN(n135), .Q(p_reg[1]) );
  dfcrq1 \p_reg_reg[0]  ( .D(n126), .CP(clk), .CDN(n135), .Q(p_reg[0]) );
  dfcrq1 \a_reg_reg[7]  ( .D(n148), .CP(clk), .CDN(n134), .Q(a_reg[7]) );
  dfcrq1 \a_reg_reg[1]  ( .D(n162), .CP(clk), .CDN(n134), .Q(a_reg[1]) );
  dfcrq1 \a_reg_reg[2]  ( .D(n163), .CP(clk), .CDN(n134), .Q(a_reg[2]) );
  dfcrq1 \a_reg_reg[0]  ( .D(n139), .CP(clk), .CDN(n134), .Q(a_reg[0]) );
  dfcrq1 \p_reg_reg[8]  ( .D(n118), .CP(clk), .CDN(n134), .Q(p_reg[8]) );
  aor22d1 U3 ( .A1(lu_out[7]), .A2(n172), .B1(adder_out[7]), .B2(n52), .Z(
        alu_out[7]) );
  or02d1 U4 ( .A1(a_alu[7]), .A2(n43), .Z(n1) );
  or03d1 U6 ( .A1(n2), .A2(n3), .A3(n96), .Z(a_alu[0]) );
  aor221d1 U7 ( .B1(p_reg[1]), .B2(n95), .C1(queue_out[1]), .C2(a_src[0]), .A(
        n101), .Z(a_alu[1]) );
  bufbd1 U8 ( .I(a_alu[0]), .Z(n4) );
  nr02d0 U9 ( .A1(n137), .A2(n1), .ZN(n44) );
  inv0d0 U10 ( .I(alu_out[7]), .ZN(n137) );
  an02d1 U11 ( .A1(p_reg[0]), .A2(n95), .Z(n2) );
  an02d1 U16 ( .A1(queue_out[0]), .A2(a_src[0]), .Z(n3) );
  nr04d0 U17 ( .A1(alu_cmd[0]), .A2(alu_cmd[1]), .A3(alu_cmd[2]), .A4(
        alu_cmd[3]), .ZN(n52) );
  inv0d1 U18 ( .I(carry_out), .ZN(n140) );
  inv0d1 U19 ( .I(n85), .ZN(n155) );
  inv0d1 U20 ( .I(n84), .ZN(n156) );
  inv0d1 U21 ( .I(n83), .ZN(n157) );
  inv0d1 U22 ( .I(n88), .ZN(n152) );
  inv0d1 U23 ( .I(n87), .ZN(n153) );
  inv0d1 U24 ( .I(n86), .ZN(n154) );
  nd02d1 U27 ( .A1(n85), .A2(n146), .ZN(N114) );
  nd02d1 U29 ( .A1(n84), .A2(n147), .ZN(N115) );
  nd02d1 U30 ( .A1(n87), .A2(n144), .ZN(N112) );
  nd02d1 U31 ( .A1(n88), .A2(n143), .ZN(N111) );
  nd02d1 U32 ( .A1(n89), .A2(n142), .ZN(N110) );
  nd02d1 U33 ( .A1(n86), .A2(n145), .ZN(N113) );
  nd02d1 U34 ( .A1(n90), .A2(n141), .ZN(N109) );
  inv0d1 U35 ( .I(n90), .ZN(n150) );
  inv0d1 U36 ( .I(n89), .ZN(n151) );
  inv0d1 U37 ( .I(n136), .ZN(n134) );
  inv0d1 U38 ( .I(n136), .ZN(n135) );
  inv0d1 U39 ( .I(n117), .ZN(n159) );
  inv0d1 U40 ( .I(a_alu[7]), .ZN(n141) );
  inv0d1 U41 ( .I(a_alu[1]), .ZN(n147) );
  inv0d1 U42 ( .I(n4), .ZN(n149) );
  inv0d1 U43 ( .I(a_alu[6]), .ZN(n142) );
  inv0d1 U44 ( .I(a_alu[2]), .ZN(n146) );
  inv0d1 U45 ( .I(a_alu[4]), .ZN(n144) );
  inv0d1 U46 ( .I(a_alu[5]), .ZN(n143) );
  inv0d1 U47 ( .I(a_alu[3]), .ZN(n145) );
  nd02d1 U48 ( .A1(n83), .A2(n149), .ZN(N116) );
  an02d1 U49 ( .A1(n62), .A2(n158), .Z(n73) );
  inv0d1 U50 ( .I(n52), .ZN(n172) );
  inv0d1 U51 ( .I(n51), .ZN(n171) );
  nd02d1 U52 ( .A1(n55), .A2(n41), .ZN(n48) );
  nd12d0 U53 ( .A1(n48), .A2(n50), .ZN(n46) );
  inv0d1 U54 ( .I(n45), .ZN(n161) );
  inv0d1 U55 ( .I(rst_n), .ZN(n136) );
  xr03d1 U56 ( .A1(carry_in_tmp), .A2(p_reg[7]), .A3(n140), .Z(n72) );
  inv0d1 U57 ( .I(n41), .ZN(n160) );
  nd02d1 U58 ( .A1(n161), .A2(n50), .ZN(n49) );
  inv0d1 U59 ( .I(n72), .ZN(n138) );
  inv0d1 U60 ( .I(n71), .ZN(n139) );
  nd02d1 U61 ( .A1(muldiv_op[0]), .A2(a_reg[0]), .ZN(n113) );
  inv0d1 U62 ( .I(muldiv_op[1]), .ZN(n169) );
  inv0d1 U63 ( .I(b_src[0]), .ZN(n175) );
  inv0d1 U64 ( .I(muldiv_op[0]), .ZN(n168) );
  inv0d1 U65 ( .I(muldiv_op[5]), .ZN(n158) );
  inv0d1 U66 ( .I(carry_src[2]), .ZN(n174) );
  nd12d0 U67 ( .A1(save_carry), .A2(carry_src[1]), .ZN(n82) );
  inv0d1 U68 ( .I(n61), .ZN(n148) );
  nr02d0 U72 ( .A1(alu_cmd[3]), .A2(alu_cmd[2]), .ZN(n32) );
  nr02d0 U103 ( .A1(n133), .A2(alu_cmd[1]), .ZN(n33) );
  inv0d1 U104 ( .I(alu_cmd[1]), .ZN(n132) );
  inv0d1 U105 ( .I(alu_cmd[3]), .ZN(n133) );
  inv0d1 U106 ( .I(alu_cmd[2]), .ZN(n173) );
  nr02d0 U112 ( .A1(n168), .A2(muldiv_op[2]), .ZN(n63) );
  nr03d0 U120 ( .A1(n63), .A2(muldiv_op[2]), .A3(n64), .ZN(n62) );
  nr03d0 U132 ( .A1(muldiv_op[0]), .A2(muldiv_op[2]), .A3(n169), .ZN(n64) );
  nr03d0 U137 ( .A1(muldiv_op[0]), .A2(muldiv_op[2]), .A3(n73), .ZN(n74) );
  inv0d1 U177 ( .I(n67), .ZN(n165) );
  inv0d1 U178 ( .I(n68), .ZN(n164) );
  inv0d1 U179 ( .I(n69), .ZN(n163) );
  inv0d1 U180 ( .I(n70), .ZN(n162) );
  inv0d1 U181 ( .I(alu_cmd[0]), .ZN(n131) );
  inv0d1 U182 ( .I(n65), .ZN(n167) );
  inv0d1 U183 ( .I(n66), .ZN(n166) );
  nd12d0 U184 ( .A1(flag_op[1]), .A2(flag_op[0]), .ZN(n50) );
  nd12d0 U185 ( .A1(flag_op[0]), .A2(flag_op[1]), .ZN(n55) );
  inv0d1 U186 ( .I(flag_op[2]), .ZN(n170) );
  nd03d0 U187 ( .A1(alu_cmd[1]), .A2(alu_cmd[3]), .A3(a_alu[1]), .ZN(n11) );
  nd02d0 U188 ( .A1(alu_cmd[2]), .A2(n133), .ZN(n35) );
  nd02d0 U189 ( .A1(a_alu[1]), .A2(alu_cmd[1]), .ZN(n5) );
  aor22d1 U190 ( .A1(alu_cmd[0]), .A2(n5), .B1(alu_cmd[1]), .B2(n147), .Z(n6)
         );
  aor211d1 U191 ( .C1(n4), .C2(n132), .A(n35), .B(n6), .Z(n10) );
  aor22d1 U192 ( .A1(N116), .A2(n32), .B1(n33), .B2(n4), .Z(n7) );
  nd02d0 U193 ( .A1(n7), .A2(n131), .ZN(n9) );
  an02d0 U194 ( .A1(alu_cmd[0]), .A2(n32), .Z(n37) );
  an02d0 U195 ( .A1(n37), .A2(n132), .Z(n39) );
  an02d0 U196 ( .A1(alu_cmd[1]), .A2(n37), .Z(n27) );
  an02d0 U197 ( .A1(n33), .A2(alu_cmd[0]), .Z(n127) );
  aoi222d1 U198 ( .A1(N108), .A2(n39), .B1(N124), .B2(n27), .C1(n157), .C2(
        n127), .ZN(n8) );
  nd04d0 U199 ( .A1(n11), .A2(n10), .A3(n9), .A4(n8), .ZN(lu_out[0]) );
  nr02d0 U200 ( .A1(n35), .A2(alu_cmd[1]), .ZN(n34) );
  aor222d1 U201 ( .A1(n34), .A2(n147), .B1(a_alu[1]), .B2(n33), .C1(N115), 
        .C2(n32), .Z(n14) );
  aor22d1 U202 ( .A1(N107), .A2(n39), .B1(n156), .B2(n127), .Z(n13) );
  an02d0 U203 ( .A1(n34), .A2(alu_cmd[0]), .Z(n40) );
  nr02d0 U204 ( .A1(n132), .A2(n32), .ZN(n28) );
  aor222d1 U205 ( .A1(n40), .A2(n4), .B1(a_alu[2]), .B2(n28), .C1(N123), .C2(
        n27), .Z(n12) );
  aor211d1 U206 ( .C1(n14), .C2(n131), .A(n13), .B(n12), .Z(lu_out[1]) );
  aor222d1 U207 ( .A1(n34), .A2(n146), .B1(a_alu[2]), .B2(n33), .C1(N114), 
        .C2(n32), .Z(n17) );
  aor22d1 U208 ( .A1(N106), .A2(n39), .B1(n155), .B2(n127), .Z(n16) );
  aor222d1 U209 ( .A1(a_alu[1]), .A2(n40), .B1(a_alu[3]), .B2(n28), .C1(N122), 
        .C2(n27), .Z(n15) );
  aor211d1 U210 ( .C1(n17), .C2(n131), .A(n16), .B(n15), .Z(lu_out[2]) );
  aor222d1 U211 ( .A1(n34), .A2(n145), .B1(a_alu[3]), .B2(n33), .C1(N113), 
        .C2(n32), .Z(n20) );
  aor22d1 U212 ( .A1(N105), .A2(n39), .B1(n154), .B2(n127), .Z(n19) );
  aor222d1 U213 ( .A1(a_alu[2]), .A2(n40), .B1(a_alu[4]), .B2(n28), .C1(N121), 
        .C2(n27), .Z(n18) );
  aor211d1 U214 ( .C1(n20), .C2(n131), .A(n19), .B(n18), .Z(lu_out[3]) );
  aor222d1 U215 ( .A1(n34), .A2(n144), .B1(a_alu[4]), .B2(n33), .C1(N112), 
        .C2(n32), .Z(n23) );
  aor22d1 U216 ( .A1(N104), .A2(n39), .B1(n153), .B2(n127), .Z(n22) );
  aor222d1 U217 ( .A1(a_alu[3]), .A2(n40), .B1(a_alu[5]), .B2(n28), .C1(N120), 
        .C2(n27), .Z(n21) );
  aor211d1 U218 ( .C1(n23), .C2(n131), .A(n22), .B(n21), .Z(lu_out[4]) );
  aor222d1 U219 ( .A1(n34), .A2(n143), .B1(a_alu[5]), .B2(n33), .C1(N111), 
        .C2(n32), .Z(n26) );
  aor22d1 U220 ( .A1(N103), .A2(n39), .B1(n152), .B2(n127), .Z(n25) );
  aor222d1 U221 ( .A1(a_alu[4]), .A2(n40), .B1(n28), .B2(a_alu[6]), .C1(N119), 
        .C2(n27), .Z(n24) );
  aor211d1 U222 ( .C1(n26), .C2(n131), .A(n25), .B(n24), .Z(lu_out[5]) );
  aor222d1 U223 ( .A1(n34), .A2(n142), .B1(a_alu[6]), .B2(n33), .C1(N110), 
        .C2(n32), .Z(n31) );
  aor22d1 U224 ( .A1(N102), .A2(n39), .B1(n151), .B2(n127), .Z(n30) );
  aor222d1 U225 ( .A1(a_alu[5]), .A2(n40), .B1(n28), .B2(a_alu[7]), .C1(N118), 
        .C2(n27), .Z(n29) );
  aor211d1 U226 ( .C1(n31), .C2(n131), .A(n30), .B(n29), .Z(lu_out[6]) );
  aor222d1 U227 ( .A1(n34), .A2(n141), .B1(n33), .B2(a_alu[7]), .C1(N109), 
        .C2(n32), .Z(n130) );
  aor22d1 U228 ( .A1(psw[1]), .A2(alu_cmd[0]), .B1(n4), .B2(n131), .Z(n38) );
  nr03d0 U229 ( .A1(n141), .A2(n131), .A3(n35), .ZN(n36) );
  aor221d1 U230 ( .B1(n38), .B2(alu_cmd[3]), .C1(N117), .C2(n37), .A(n36), .Z(
        n129) );
  aor222d1 U231 ( .A1(n150), .A2(n127), .B1(a_alu[6]), .B2(n40), .C1(N101), 
        .C2(n39), .Z(n128) );
  aor221d1 U232 ( .B1(n130), .B2(n131), .C1(alu_cmd[1]), .C2(n129), .A(n128), 
        .Z(lu_out[7]) );
endmodule


module risc8_regb_biu_DW01_dec_0 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27;

  inv0d1 U1 ( .I(n22), .ZN(n12) );
  inv0d1 U2 ( .I(n15), .ZN(n5) );
  inv0d1 U3 ( .I(n14), .ZN(n4) );
  inv0d1 U4 ( .I(n21), .ZN(n11) );
  inv0d1 U5 ( .I(n20), .ZN(n10) );
  inv0d1 U6 ( .I(n19), .ZN(n9) );
  inv0d1 U7 ( .I(n18), .ZN(n8) );
  inv0d1 U8 ( .I(n17), .ZN(n7) );
  inv0d1 U9 ( .I(n27), .ZN(n3) );
  inv0d1 U10 ( .I(n26), .ZN(n2) );
  inv0d1 U11 ( .I(n25), .ZN(n1) );
  inv0d1 U12 ( .I(n16), .ZN(n6) );
  aor21d1 U13 ( .B1(A[1]), .B2(A[0]), .A(n22), .Z(SUM[1]) );
  inv0d1 U14 ( .I(A[0]), .ZN(SUM[0]) );
  aor21d1 U15 ( .B1(A[9]), .B2(n5), .A(n14), .Z(SUM[9]) );
  aor21d1 U16 ( .B1(A[8]), .B2(n6), .A(n15), .Z(SUM[8]) );
  aor21d1 U17 ( .B1(A[7]), .B2(n7), .A(n16), .Z(SUM[7]) );
  aor21d1 U18 ( .B1(A[6]), .B2(n8), .A(n17), .Z(SUM[6]) );
  aor21d1 U19 ( .B1(A[5]), .B2(n9), .A(n18), .Z(SUM[5]) );
  aor21d1 U20 ( .B1(A[4]), .B2(n10), .A(n19), .Z(SUM[4]) );
  aor21d1 U21 ( .B1(A[3]), .B2(n11), .A(n20), .Z(SUM[3]) );
  aor21d1 U22 ( .B1(A[2]), .B2(n12), .A(n21), .Z(SUM[2]) );
  xr02d1 U23 ( .A1(A[15]), .A2(n23), .Z(SUM[15]) );
  an12d1 U24 ( .A2(n24), .A1(A[14]), .Z(n23) );
  xr02d1 U25 ( .A1(A[14]), .A2(n24), .Z(SUM[14]) );
  aor21d1 U26 ( .B1(A[13]), .B2(n1), .A(n24), .Z(SUM[13]) );
  nr02d0 U27 ( .A1(n1), .A2(A[13]), .ZN(n24) );
  aor21d1 U28 ( .B1(A[12]), .B2(n2), .A(n25), .Z(SUM[12]) );
  nr02d0 U29 ( .A1(n2), .A2(A[12]), .ZN(n25) );
  aor21d1 U30 ( .B1(A[11]), .B2(n3), .A(n26), .Z(SUM[11]) );
  nr02d0 U31 ( .A1(n3), .A2(A[11]), .ZN(n26) );
  aor21d1 U32 ( .B1(A[10]), .B2(n4), .A(n27), .Z(SUM[10]) );
  nr02d0 U33 ( .A1(n4), .A2(A[10]), .ZN(n27) );
  nr02d0 U34 ( .A1(n5), .A2(A[9]), .ZN(n14) );
  nr02d0 U35 ( .A1(n6), .A2(A[8]), .ZN(n15) );
  nr02d0 U36 ( .A1(n7), .A2(A[7]), .ZN(n16) );
  nr02d0 U37 ( .A1(n8), .A2(A[6]), .ZN(n17) );
  nr02d0 U38 ( .A1(n9), .A2(A[5]), .ZN(n18) );
  nr02d0 U39 ( .A1(n10), .A2(A[4]), .ZN(n19) );
  nr02d0 U40 ( .A1(n11), .A2(A[3]), .ZN(n20) );
  nr02d0 U41 ( .A1(n12), .A2(A[2]), .ZN(n21) );
  nr02d0 U42 ( .A1(A[1]), .A2(A[0]), .ZN(n22) );
endmodule


module risc8_regb_biu_DW01_inc_0 ( A, SUM );
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
  inv0d1 U1 ( .I(A[0]), .ZN(SUM[0]) );
  xr02d1 U2 ( .A1(carry[15]), .A2(A[15]), .Z(SUM[15]) );
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
  wire   N58, N59, N60, N61, N62, N63, N65, n520, n521, n522, n523, psw_4,
         opcode_op_0, \reg_file[0][7] , \reg_file[0][6] , \reg_file[0][5] ,
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
         N114, N115, N128, N129, N130, N131, N132, N133, N134, N135, N136,
         N137, N138, N139, N140, N141, N142, N143, \ins_queue[0][7] ,
         \ins_queue[0][6] , \ins_queue[0][5] , \ins_queue[0][4] ,
         \ins_queue[0][3] , \ins_queue[0][2] , \ins_queue[0][1] ,
         \ins_queue[0][0] , \ins_queue[1][7] , \ins_queue[1][6] ,
         \ins_queue[1][5] , \ins_queue[1][4] , \ins_queue[1][3] ,
         \ins_queue[1][2] , \ins_queue[1][1] , \ins_queue[1][0] ,
         \ins_queue[2][7] , \ins_queue[2][6] , \ins_queue[2][5] ,
         \ins_queue[2][4] , \ins_queue[2][3] , \ins_queue[2][2] ,
         \ins_queue[2][1] , \ins_queue[2][0] , \ins_queue[3][7] ,
         \ins_queue[3][6] , \ins_queue[3][5] , \ins_queue[3][4] ,
         \ins_queue[3][3] , \ins_queue[3][2] , \ins_queue[3][1] ,
         \ins_queue[3][0] , clear_queue, \bus_state[0] , N313, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, \add_377/carry[15] ,
         \add_377/carry[14] , \add_377/carry[13] , \add_377/carry[12] ,
         \add_377/carry[11] , \add_377/carry[10] , \add_377/carry[9] ,
         \add_377/carry[8] , \add_377/carry[7] , \add_377/carry[6] ,
         \add_377/carry[5] , \add_377/carry[4] , \add_377/carry[3] ,
         \add_377/carry[2] , \add_377/carry[1] , n1, n2, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71,
         n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85,
         n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99,
         n100, n101, n102, n103, n104, n105, n106, ie, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n465, n466, n467, n468, n469,
         n470, n471, n472, n473, n474, n475, n476, n477, n478, n479, n480,
         n481, n482, n483, n484, n485, n486, n487, n488, n489, n490, n492,
         n495, n497, n500, n501, n503, n505, n507, n509, n511, n513, n518,
         n519;
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
  assign opcode_op_0 = opcode_op[0];
  assign psw[4] = ie;

  dfcrn1 \queue_count_reg[2]  ( .D(n423), .CP(clk), .CDN(n117), .QN(n35) );
  dfcrn1 \bus_state_reg[1]  ( .D(n419), .CP(clk), .CDN(n112), .QN(n34) );
  dfcrn1 \out_pointer_reg[0]  ( .D(n397), .CP(clk), .CDN(n112), .QN(n33) );
  dfcrn1 \in_pointer_reg[0]  ( .D(n399), .CP(clk), .CDN(n112), .QN(n32) );
  dfcrn1 \in_pointer_reg[1]  ( .D(n398), .CP(clk), .CDN(n112), .QN(n31) );
  dfcrn1 \address_reg[0]  ( .D(n395), .CP(clk), .CDN(n112), .QN(n30) );
  dfcrn1 \sp_reg[0]  ( .D(n394), .CP(clk), .CDN(n112), .QN(n29) );
  dfcrn1 \address_reg[8]  ( .D(n379), .CP(clk), .CDN(n112), .QN(n28) );
  dfcrn1 \sp_reg[1]  ( .D(n393), .CP(clk), .CDN(n112), .QN(n26) );
  dfcrn1 \address_reg[1]  ( .D(n386), .CP(clk), .CDN(n112), .QN(n25) );
  dfcrn1 \sp_reg[2]  ( .D(n392), .CP(clk), .CDN(n112), .QN(n24) );
  dfcrn1 \address_reg[2]  ( .D(n385), .CP(clk), .CDN(n113), .QN(n23) );
  dfcrn1 \address_reg[3]  ( .D(n384), .CP(clk), .CDN(n113), .QN(n22) );
  dfcrn1 \sp_reg[3]  ( .D(n391), .CP(clk), .CDN(n113), .QN(n21) );
  dfcrn1 \sp_reg[4]  ( .D(n390), .CP(clk), .CDN(n113), .QN(n20) );
  dfcrn1 \address_reg[4]  ( .D(n383), .CP(clk), .CDN(n113), .QN(n19) );
  dfcrn1 \sp_reg[5]  ( .D(n389), .CP(clk), .CDN(n113), .QN(n18) );
  dfcrn1 \address_reg[5]  ( .D(n382), .CP(clk), .CDN(n113), .QN(n17) );
  dfcrn1 \sp_reg[6]  ( .D(n388), .CP(clk), .CDN(n113), .QN(n16) );
  dfcrn1 \address_reg[6]  ( .D(n381), .CP(clk), .CDN(n113), .QN(n15) );
  dfcrn1 \sp_reg[7]  ( .D(n387), .CP(clk), .CDN(n113), .QN(n14) );
  dfcrn1 \sp_reg[9]  ( .D(n370), .CP(clk), .CDN(n113), .QN(n12) );
  dfcrn1 \address_reg[9]  ( .D(n378), .CP(clk), .CDN(n114), .QN(n11) );
  dfcrn1 \sp_reg[10]  ( .D(n369), .CP(clk), .CDN(n116), .QN(n10) );
  dfcrn1 \address_reg[10]  ( .D(n377), .CP(clk), .CDN(n115), .QN(n9) );
  dfcrn1 \sp_reg[11]  ( .D(n368), .CP(clk), .CDN(n112), .QN(n8) );
  dfcrn1 \address_reg[11]  ( .D(n376), .CP(clk), .CDN(n113), .QN(n7) );
  dfprb1 \sp_reg[12]  ( .D(n367), .CP(clk), .SDN(n117), .Q(sp[12]), .QN(n39)
         );
  dfcrn1 \address_reg[12]  ( .D(n375), .CP(clk), .CDN(n114), .QN(n6) );
  dfprb1 \sp_reg[13]  ( .D(n366), .CP(clk), .SDN(n113), .Q(sp[13]), .QN(n38)
         );
  dfcrn1 \address_reg[13]  ( .D(n374), .CP(clk), .CDN(n115), .QN(n5) );
  dfprb1 \sp_reg[14]  ( .D(n365), .CP(clk), .SDN(n112), .Q(sp[14]), .QN(n37)
         );
  dfcrn1 \address_reg[14]  ( .D(n373), .CP(clk), .CDN(n116), .QN(n4) );
  dfprb1 \sp_reg[15]  ( .D(n364), .CP(clk), .SDN(n117), .Q(sp[15]), .QN(n36)
         );
  dfcrn1 \sp_reg[8]  ( .D(n371), .CP(clk), .CDN(rst_n), .QN(n3) );
  or03d1 U45 ( .A1(n451), .A2(int_type[0]), .A3(n199), .Z(n195) );
  an03d1 U49 ( .A1(w_addr[2]), .A2(data_ready), .A3(n221), .Z(n220) );
  an02d1 U54 ( .A1(n235), .A2(n224), .Z(n230) );
  an02d1 U58 ( .A1(n225), .A2(n177), .Z(n218) );
  or04d1 U60 ( .A1(n33), .A2(n426), .A3(clear_queue), .A4(N65), .Z(n238) );
  an02d1 U63 ( .A1(n262), .A2(n263), .Z(n251) );
  an02d1 U64 ( .A1(n262), .A2(n267), .Z(n264) );
  an02d1 U71 ( .A1(n273), .A2(data_ready), .Z(n223) );
  an02d1 U76 ( .A1(n283), .A2(n459), .Z(n282) );
  an02d1 U81 ( .A1(n283), .A2(w_addr[2]), .Z(n284) );
  an03d1 U85 ( .A1(n308), .A2(queue_count[0]), .A3(queue_count[1]), .Z(n323)
         );
  an03d1 U86 ( .A1(data_ready), .A2(n246), .A3(opcode_op_0), .Z(n309) );
  an03d1 U97 ( .A1(a_addr[3]), .A2(N60), .A3(n359), .Z(n341) );
  an03d1 U98 ( .A1(N58), .A2(n360), .A3(N59), .Z(n339) );
  an03d1 U99 ( .A1(n360), .A2(n456), .A3(N58), .Z(n344) );
  an02d1 U102 ( .A1(n287), .A2(n447), .Z(n299) );
  an02d1 U103 ( .A1(int_type[0]), .A2(n451), .Z(n203) );
  an03d1 U107 ( .A1(w_addr[3]), .A2(n459), .A3(wr_reg), .Z(n273) );
  oai2222d1 U206 ( .A1(n140), .A2(n36), .B1(n141), .B2(n476), .C1(n142), .C2(
        n27), .D1(n428), .D2(n143), .ZN(n364) );
  oai2222d1 U207 ( .A1(n140), .A2(n37), .B1(n141), .B2(n477), .C1(n142), .C2(
        n4), .D1(n429), .D2(n143), .ZN(n365) );
  oai2222d1 U208 ( .A1(n140), .A2(n38), .B1(n141), .B2(n478), .C1(n142), .C2(
        n5), .D1(n430), .D2(n143), .ZN(n366) );
  oai2222d1 U209 ( .A1(n140), .A2(n39), .B1(n141), .B2(n479), .C1(n142), .C2(
        n6), .D1(n431), .D2(n143), .ZN(n367) );
  oai2222d1 U210 ( .A1(n140), .A2(n8), .B1(n141), .B2(n480), .C1(n142), .C2(n7), .D1(n432), .D2(n143), .ZN(n368) );
  oai2222d1 U211 ( .A1(n140), .A2(n10), .B1(n141), .B2(n481), .C1(n142), .C2(
        n9), .D1(n433), .D2(n143), .ZN(n369) );
  oai2222d1 U212 ( .A1(n140), .A2(n12), .B1(n141), .B2(n482), .C1(n142), .C2(
        n11), .D1(n434), .D2(n143), .ZN(n370) );
  oai2222d1 U213 ( .A1(n140), .A2(n3), .B1(n141), .B2(n483), .C1(n142), .C2(
        n28), .D1(n435), .D2(n143), .ZN(n371) );
  nd03d0 U214 ( .A1(n141), .A2(n143), .A3(n142), .ZN(n140) );
  aor22d1 U215 ( .A1(n145), .A2(address[15]), .B1(n146), .B2(n147), .Z(n372)
         );
  aor211d1 U216 ( .C1(n439), .C2(sp[15]), .A(n148), .B(n149), .Z(n147) );
  aor222d1 U217 ( .A1(dec_address[15]), .A2(n150), .B1(n151), .B2(
        address_save[15]), .C1(n152), .C2(alu_out[7]), .Z(n149) );
  aor22d1 U218 ( .A1(n441), .A2(a_data[7]), .B1(inc_address[15]), .B2(n442), 
        .Z(n148) );
  aor22d1 U219 ( .A1(n145), .A2(address[14]), .B1(n146), .B2(n153), .Z(n373)
         );
  aor211d1 U220 ( .C1(n439), .C2(sp[14]), .A(n154), .B(n155), .Z(n153) );
  aor222d1 U221 ( .A1(dec_address[14]), .A2(n150), .B1(n151), .B2(
        address_save[14]), .C1(n152), .C2(alu_out[6]), .Z(n155) );
  aor22d1 U222 ( .A1(n441), .A2(a_data[6]), .B1(inc_address[14]), .B2(n442), 
        .Z(n154) );
  aor22d1 U223 ( .A1(n145), .A2(address[13]), .B1(n146), .B2(n156), .Z(n374)
         );
  aor211d1 U224 ( .C1(n439), .C2(sp[13]), .A(n157), .B(n158), .Z(n156) );
  aor222d1 U225 ( .A1(dec_address[13]), .A2(n150), .B1(n151), .B2(
        address_save[13]), .C1(n152), .C2(alu_out[5]), .Z(n158) );
  aor22d1 U226 ( .A1(n441), .A2(a_data[5]), .B1(inc_address[13]), .B2(n442), 
        .Z(n157) );
  aor22d1 U227 ( .A1(n145), .A2(address[12]), .B1(n146), .B2(n159), .Z(n375)
         );
  aor211d1 U228 ( .C1(n439), .C2(sp[12]), .A(n160), .B(n161), .Z(n159) );
  aor222d1 U229 ( .A1(dec_address[12]), .A2(n150), .B1(n151), .B2(
        address_save[12]), .C1(n152), .C2(alu_out[4]), .Z(n161) );
  aor22d1 U230 ( .A1(n441), .A2(a_data[4]), .B1(inc_address[12]), .B2(n442), 
        .Z(n160) );
  aor22d1 U231 ( .A1(n145), .A2(address[11]), .B1(n146), .B2(n162), .Z(n376)
         );
  aor211d1 U232 ( .C1(n439), .C2(n513), .A(n163), .B(n164), .Z(n162) );
  aor222d1 U233 ( .A1(dec_address[11]), .A2(n150), .B1(n151), .B2(
        address_save[11]), .C1(n152), .C2(alu_out[3]), .Z(n164) );
  aor22d1 U234 ( .A1(n441), .A2(a_data[3]), .B1(inc_address[11]), .B2(n442), 
        .Z(n163) );
  aor22d1 U235 ( .A1(n145), .A2(address[10]), .B1(n146), .B2(n165), .Z(n377)
         );
  aor211d1 U236 ( .C1(n439), .C2(n511), .A(n166), .B(n167), .Z(n165) );
  aor222d1 U237 ( .A1(dec_address[10]), .A2(n150), .B1(n151), .B2(
        address_save[10]), .C1(n152), .C2(alu_out[2]), .Z(n167) );
  aor22d1 U238 ( .A1(n441), .A2(a_data[2]), .B1(inc_address[10]), .B2(n442), 
        .Z(n166) );
  aor222d1 U239 ( .A1(n146), .A2(n168), .B1(n470), .B2(data_in[7]), .C1(n145), 
        .C2(address[9]), .Z(n378) );
  aoi2222d1 U240 ( .A1(n171), .A2(data_in[7]), .B1(inc_address[9]), .B2(n442), 
        .C1(n441), .C2(a_data[1]), .D1(n439), .D2(n509), .ZN(n170) );
  aoi222d1 U241 ( .A1(n152), .A2(alu_out[1]), .B1(n151), .B2(address_save[9]), 
        .C1(dec_address[9]), .C2(n150), .ZN(n169) );
  aor222d1 U242 ( .A1(n146), .A2(n172), .B1(n470), .B2(data_in[6]), .C1(n145), 
        .C2(address[8]), .Z(n379) );
  aoi2222d1 U243 ( .A1(n171), .A2(data_in[6]), .B1(inc_address[8]), .B2(n442), 
        .C1(n441), .C2(a_data[0]), .D1(n439), .D2(n518), .ZN(n174) );
  aoi222d1 U244 ( .A1(n152), .A2(alu_out[0]), .B1(n151), .B2(address_save[8]), 
        .C1(dec_address[8]), .C2(n150), .ZN(n173) );
  nr02d0 U245 ( .A1(n175), .A2(n145), .ZN(n146) );
  aor222d1 U247 ( .A1(n178), .A2(n179), .B1(n470), .B2(data_in[5]), .C1(
        address[7]), .C2(n180), .Z(n380) );
  aoi2222d1 U248 ( .A1(n171), .A2(data_in[5]), .B1(inc_address[7]), .B2(n442), 
        .C1(alu_out[7]), .C2(n183), .D1(n441), .D2(b_data[7]), .ZN(n182) );
  aoi222d1 U249 ( .A1(dec_address[7]), .A2(n150), .B1(n439), .B2(n507), .C1(
        n151), .C2(address_save[7]), .ZN(n181) );
  aor222d1 U250 ( .A1(n178), .A2(n184), .B1(n470), .B2(data_in[4]), .C1(
        address[6]), .C2(n180), .Z(n381) );
  aoi2222d1 U251 ( .A1(n171), .A2(data_in[4]), .B1(inc_address[6]), .B2(n442), 
        .C1(alu_out[6]), .C2(n183), .D1(n441), .D2(b_data[6]), .ZN(n186) );
  aoi222d1 U252 ( .A1(dec_address[6]), .A2(n150), .B1(n505), .B2(n439), .C1(
        n151), .C2(address_save[6]), .ZN(n185) );
  aor222d1 U253 ( .A1(n178), .A2(n187), .B1(n470), .B2(data_in[3]), .C1(
        address[5]), .C2(n180), .Z(n382) );
  aoi2222d1 U254 ( .A1(n171), .A2(data_in[3]), .B1(inc_address[5]), .B2(n442), 
        .C1(alu_out[5]), .C2(n183), .D1(n441), .D2(b_data[5]), .ZN(n189) );
  aoi222d1 U255 ( .A1(dec_address[5]), .A2(n150), .B1(n503), .B2(n439), .C1(
        n151), .C2(address_save[5]), .ZN(n188) );
  aor222d1 U256 ( .A1(n178), .A2(n190), .B1(n470), .B2(data_in[2]), .C1(
        address[4]), .C2(n180), .Z(n383) );
  aoi2222d1 U257 ( .A1(n171), .A2(data_in[2]), .B1(inc_address[4]), .B2(n442), 
        .C1(alu_out[4]), .C2(n183), .D1(n441), .D2(b_data[4]), .ZN(n192) );
  aoi222d1 U258 ( .A1(dec_address[4]), .A2(n150), .B1(n501), .B2(n439), .C1(
        n151), .C2(address_save[4]), .ZN(n191) );
  aor222d1 U259 ( .A1(n178), .A2(n193), .B1(n470), .B2(data_in[1]), .C1(
        address[3]), .C2(n180), .Z(n384) );
  nd04d0 U260 ( .A1(n194), .A2(n195), .A3(n196), .A4(n197), .ZN(n193) );
  aoi2222d1 U261 ( .A1(n441), .A2(b_data[3]), .B1(n500), .B2(n439), .C1(n151), 
        .C2(address_save[3]), .D1(dec_address[3]), .D2(n150), .ZN(n197) );
  aoim22d1 U262 ( .A1(alu_out[3]), .A2(n183), .B1(n198), .B2(n488), .Z(n196)
         );
  aor222d1 U263 ( .A1(n178), .A2(n200), .B1(n470), .B2(data_in[0]), .C1(
        address[2]), .C2(n180), .Z(n385) );
  aoi2222d1 U264 ( .A1(n203), .A2(n445), .B1(n171), .B2(data_in[0]), .C1(
        inc_address[2]), .C2(n442), .D1(alu_out[2]), .D2(n183), .ZN(n202) );
  nr02d0 U265 ( .A1(n199), .A2(n204), .ZN(n171) );
  aoi2222d1 U266 ( .A1(n441), .A2(b_data[2]), .B1(n497), .B2(n439), .C1(n151), 
        .C2(address_save[2]), .D1(dec_address[2]), .D2(n150), .ZN(n201) );
  aor22d1 U267 ( .A1(address[1]), .A2(n180), .B1(n178), .B2(n205), .Z(n386) );
  aor211d1 U268 ( .C1(dec_address[1]), .C2(n150), .A(n206), .B(n207), .Z(n205)
         );
  aor222d1 U269 ( .A1(alu_out[1]), .A2(n183), .B1(inc_address[1]), .B2(n442), 
        .C1(n441), .C2(b_data[1]), .Z(n207) );
  aor22d1 U270 ( .A1(n151), .A2(address_save[1]), .B1(n495), .B2(n439), .Z(
        n206) );
  oai2222d1 U271 ( .A1(n14), .A2(n208), .B1(n428), .B2(n209), .C1(n141), .C2(
        n484), .D1(n142), .D2(n13), .ZN(n387) );
  oai2222d1 U272 ( .A1(n16), .A2(n208), .B1(n429), .B2(n209), .C1(n141), .C2(
        n485), .D1(n142), .D2(n15), .ZN(n388) );
  oai2222d1 U273 ( .A1(n18), .A2(n208), .B1(n430), .B2(n209), .C1(n141), .C2(
        n486), .D1(n142), .D2(n17), .ZN(n389) );
  oai2222d1 U274 ( .A1(n20), .A2(n208), .B1(n431), .B2(n209), .C1(n141), .C2(
        n487), .D1(n142), .D2(n19), .ZN(n390) );
  oai2222d1 U275 ( .A1(n21), .A2(n208), .B1(n432), .B2(n209), .C1(n141), .C2(
        n488), .D1(n142), .D2(n22), .ZN(n391) );
  oai2222d1 U276 ( .A1(n24), .A2(n208), .B1(n433), .B2(n209), .C1(n141), .C2(
        n489), .D1(n142), .D2(n23), .ZN(n392) );
  oai2222d1 U277 ( .A1(n26), .A2(n208), .B1(n434), .B2(n209), .C1(n141), .C2(
        n490), .D1(n142), .D2(n25), .ZN(n393) );
  oai2222d1 U278 ( .A1(n29), .A2(n208), .B1(n435), .B2(n209), .C1(n141), .C2(
        address[0]), .D1(n142), .D2(n30), .ZN(n394) );
  nd03d0 U279 ( .A1(n141), .A2(n209), .A3(n142), .ZN(n208) );
  aor22d1 U282 ( .A1(address[0]), .A2(n180), .B1(n178), .B2(n226), .Z(n395) );
  aor211d1 U283 ( .C1(dec_address[0]), .C2(n150), .A(n227), .B(n228), .Z(n226)
         );
  aor222d1 U284 ( .A1(alu_out[0]), .A2(n183), .B1(inc_address[0]), .B2(n442), 
        .C1(n441), .C2(b_data[0]), .Z(n228) );
  nr02d0 U285 ( .A1(n230), .A2(n231), .ZN(n198) );
  aor22d1 U286 ( .A1(n151), .A2(address_save[0]), .B1(n492), .B2(n439), .Z(
        n227) );
  nr02d0 U287 ( .A1(n175), .A2(n180), .ZN(n178) );
  nd04d0 U289 ( .A1(n229), .A2(n232), .A3(n233), .A4(n234), .ZN(n176) );
  nr04d0 U290 ( .A1(n445), .A2(n230), .A3(n150), .A4(n151), .ZN(n234) );
  nr04d0 U291 ( .A1(addr_op[0]), .A2(addr_op[1]), .A3(addr_op[2]), .A4(
        addr_op[3]), .ZN(n231) );
  nr02d0 U292 ( .A1(n443), .A2(addr_op[3]), .ZN(n235) );
  nr02d0 U294 ( .A1(n449), .A2(addr_op[0]), .ZN(n177) );
  nr02d0 U296 ( .A1(n446), .A2(addr_op[1]), .ZN(n224) );
  aon211d1 U297 ( .C1(n463), .C2(n33), .B(n426), .A(N65), .ZN(n237) );
  aor31d1 U298 ( .B1(n463), .B2(n33), .B3(n239), .A(n240), .Z(n397) );
  nr02d0 U299 ( .A1(n33), .A2(n239), .ZN(n240) );
  aor21d1 U300 ( .B1(opcode_op_0), .B2(data_ready), .A(clear_queue), .Z(n239)
         );
  nd03d0 U301 ( .A1(n32), .A2(n31), .A3(n242), .ZN(n241) );
  nd03d0 U302 ( .A1(n242), .A2(n31), .A3(n474), .ZN(n243) );
  nd03d0 U303 ( .A1(n242), .A2(n32), .A3(n475), .ZN(n244) );
  nd03d0 U304 ( .A1(n474), .A2(n242), .A3(n475), .ZN(n245) );
  nr03d0 U305 ( .A1(n118), .A2(clear_queue), .A3(n246), .ZN(n242) );
  aon211d1 U306 ( .C1(n463), .C2(n32), .B(n462), .A(n475), .ZN(n248) );
  nr04d0 U307 ( .A1(n475), .A2(clear_queue), .A3(n462), .A4(n32), .ZN(n247) );
  aor31d1 U308 ( .B1(n463), .B2(n32), .B3(n249), .A(n250), .Z(n399) );
  nr02d0 U309 ( .A1(n32), .A2(n249), .ZN(n250) );
  aor221d1 U310 ( .B1(n438), .B2(n210), .C1(n251), .C2(pc[7]), .A(n252), .Z(
        n400) );
  aor22d1 U311 ( .A1(n253), .A2(data_in[5]), .B1(N135), .B2(n254), .Z(n252) );
  aor221d1 U312 ( .B1(n438), .B2(n211), .C1(n251), .C2(pc[6]), .A(n255), .Z(
        n401) );
  aor22d1 U313 ( .A1(n253), .A2(data_in[4]), .B1(N134), .B2(n254), .Z(n255) );
  aor221d1 U314 ( .B1(n438), .B2(n212), .C1(n251), .C2(pc[5]), .A(n256), .Z(
        n402) );
  aor22d1 U315 ( .A1(n253), .A2(data_in[3]), .B1(N133), .B2(n254), .Z(n256) );
  aor221d1 U316 ( .B1(n438), .B2(n213), .C1(n251), .C2(pc[4]), .A(n257), .Z(
        n403) );
  aor22d1 U317 ( .A1(n253), .A2(data_in[2]), .B1(N132), .B2(n254), .Z(n257) );
  aor221d1 U318 ( .B1(n438), .B2(n214), .C1(n251), .C2(pc[3]), .A(n258), .Z(
        n404) );
  aor221d1 U319 ( .B1(N131), .B2(n254), .C1(n253), .C2(data_in[1]), .A(n259), 
        .Z(n258) );
  nr03d0 U320 ( .A1(n260), .A2(int_type[0]), .A3(n451), .ZN(n259) );
  aor221d1 U321 ( .B1(n438), .B2(n215), .C1(n251), .C2(pc[2]), .A(n261), .Z(
        n405) );
  aor222d1 U322 ( .A1(N130), .A2(n254), .B1(n436), .B2(n203), .C1(n253), .C2(
        data_in[0]), .Z(n261) );
  aor222d1 U323 ( .A1(n438), .A2(n216), .B1(N129), .B2(n254), .C1(n251), .C2(
        pc[1]), .Z(n406) );
  aor222d1 U324 ( .A1(n438), .A2(n217), .B1(N128), .B2(n254), .C1(n251), .C2(
        pc[0]), .Z(n407) );
  aor222d1 U325 ( .A1(n437), .A2(n210), .B1(N143), .B2(n254), .C1(n264), .C2(
        pc[15]), .Z(n408) );
  aor222d1 U326 ( .A1(n437), .A2(n211), .B1(N142), .B2(n254), .C1(n264), .C2(
        pc[14]), .Z(n409) );
  aor222d1 U327 ( .A1(n437), .A2(n212), .B1(N141), .B2(n254), .C1(n264), .C2(
        pc[13]), .Z(n410) );
  aor222d1 U328 ( .A1(n437), .A2(n213), .B1(N140), .B2(n254), .C1(n264), .C2(
        pc[12]), .Z(n411) );
  aor222d1 U329 ( .A1(n437), .A2(n214), .B1(N139), .B2(n254), .C1(n264), .C2(
        pc[11]), .Z(n412) );
  aor222d1 U330 ( .A1(n437), .A2(n215), .B1(N138), .B2(n254), .C1(n264), .C2(
        pc[10]), .Z(n413) );
  aor221d1 U331 ( .B1(n437), .B2(n216), .C1(n264), .C2(pc[9]), .A(n265), .Z(
        n414) );
  aor22d1 U332 ( .A1(n253), .A2(data_in[7]), .B1(N137), .B2(n254), .Z(n265) );
  aor221d1 U333 ( .B1(n437), .B2(n217), .C1(n264), .C2(pc[8]), .A(n266), .Z(
        n415) );
  aor22d1 U334 ( .A1(n253), .A2(data_in[6]), .B1(N136), .B2(n254), .Z(n266) );
  aoi211d1 U335 ( .C1(n436), .C2(n204), .A(n253), .B(n254), .ZN(n262) );
  xr02d1 U336 ( .A1(int_type[0]), .A2(int_type[1]), .Z(n204) );
  nd03d0 U337 ( .A1(n445), .A2(n471), .A3(n268), .ZN(n260) );
  nr02d0 U338 ( .A1(n437), .A2(n438), .ZN(n268) );
  nr02d0 U339 ( .A1(n461), .A2(w_addr[1]), .ZN(n271) );
  nr02d0 U340 ( .A1(n460), .A2(w_addr[0]), .ZN(n272) );
  nr02d0 U341 ( .A1(n460), .A2(n461), .ZN(n222) );
  an12d1 U342 ( .A2(wr_reg), .A1(w_addr[3]), .Z(n283) );
  aor22d1 U343 ( .A1(write), .A2(n285), .B1(data_op[0]), .B2(n286), .Z(n416)
         );
  aor31d1 U344 ( .B1(n287), .B2(n452), .B3(data_op[1]), .A(n288), .Z(n286) );
  oan211d1 U345 ( .C1(n453), .C2(n469), .B(n289), .A(n290), .ZN(n288) );
  oaim22d1 U346 ( .A1(n291), .A2(n472), .B1(n292), .B2(n291), .ZN(n417) );
  aor211d1 U347 ( .C1(n453), .C2(n293), .A(n294), .B(n295), .Z(n292) );
  aor221d1 U348 ( .B1(n448), .B2(n296), .C1(n297), .C2(n520), .A(n287), .Z(
        n295) );
  aor22d1 U349 ( .A1(\bus_state[0] ), .A2(n285), .B1(n298), .B2(n291), .Z(n418) );
  aor211d1 U350 ( .C1(n294), .C2(n290), .A(n299), .B(n300), .Z(n298) );
  oaim22d1 U351 ( .A1(n301), .A2(n289), .B1(n302), .B2(n293), .ZN(n294) );
  aor211d1 U352 ( .C1(n468), .C2(n285), .A(n300), .B(n303), .Z(n419) );
  aor22d1 U353 ( .A1(data_op[1]), .A2(n287), .B1(n448), .B2(n296), .Z(n303) );
  aor31d1 U354 ( .B1(n304), .B2(n467), .B3(n305), .A(n306), .Z(n420) );
  nr02d0 U355 ( .A1(n307), .A2(n467), .ZN(n306) );
  aor22d1 U356 ( .A1(n308), .A2(queue_count[0]), .B1(n309), .B2(n466), .Z(n304) );
  aor22d1 U357 ( .A1(n310), .A2(queue_count[0]), .B1(n305), .B2(n466), .Z(n421) );
  aor22d1 U358 ( .A1(ifetch), .A2(n285), .B1(n311), .B2(n291), .Z(n422) );
  aor22d1 U359 ( .A1(n312), .A2(n290), .B1(n299), .B2(n452), .Z(n311) );
  aor31d1 U360 ( .B1(n293), .B2(n313), .B3(n302), .A(n314), .Z(n312) );
  nr02d0 U361 ( .A1(n289), .A2(n301), .ZN(n314) );
  nd04d0 U362 ( .A1(ready), .A2(n315), .A3(n316), .A4(n427), .ZN(n301) );
  nd03d0 U363 ( .A1(queue_count[0]), .A2(n35), .A3(queue_count[1]), .ZN(n316)
         );
  nr02d0 U364 ( .A1(n317), .A2(n519), .ZN(n302) );
  aor221d1 U365 ( .B1(n318), .B2(n34), .C1(n468), .C2(ready), .A(n296), .Z(
        n291) );
  nd03d0 U366 ( .A1(n447), .A2(n452), .A3(n317), .ZN(n318) );
  aor31d1 U367 ( .B1(n319), .B2(n35), .B3(n305), .A(n320), .Z(n423) );
  oan211d1 U368 ( .C1(clear_queue), .C2(n321), .B(n307), .A(n35), .ZN(n320) );
  aoi21d1 U369 ( .B1(n322), .B2(n463), .A(n310), .ZN(n307) );
  aor22d1 U370 ( .A1(n308), .A2(n466), .B1(n309), .B2(queue_count[0]), .Z(n322) );
  aoi22d1 U371 ( .A1(n308), .A2(n467), .B1(queue_count[1]), .B2(n309), .ZN(
        n321) );
  nr02d0 U372 ( .A1(n310), .A2(clear_queue), .ZN(n305) );
  nr03d0 U373 ( .A1(n308), .A2(clear_queue), .A3(n309), .ZN(n310) );
  aor31d1 U374 ( .B1(n466), .B2(n467), .B3(n309), .A(n323), .Z(n319) );
  nr02d0 U375 ( .A1(n246), .A2(opcode_op_0), .ZN(n308) );
  nr02d0 U376 ( .A1(n519), .A2(n472), .ZN(n236) );
  oaim22d1 U377 ( .A1(n463), .A2(data_ready), .B1(opcode_op[3]), .B2(
        data_ready), .ZN(n424) );
  aor221d1 U379 ( .B1(N78), .B2(n324), .C1(pc[15]), .C2(n325), .A(n326), .Z(
        b_data[7]) );
  aor22d1 U380 ( .A1(psw[7]), .A2(n327), .B1(pc[7]), .B2(n328), .Z(n326) );
  aor221d1 U381 ( .B1(N79), .B2(n324), .C1(pc[14]), .C2(n325), .A(n329), .Z(
        b_data[6]) );
  aor22d1 U382 ( .A1(psw[6]), .A2(n327), .B1(pc[6]), .B2(n328), .Z(n329) );
  aor221d1 U383 ( .B1(N80), .B2(n324), .C1(pc[13]), .C2(n325), .A(n330), .Z(
        b_data[5]) );
  aor22d1 U384 ( .A1(psw[5]), .A2(n327), .B1(pc[5]), .B2(n328), .Z(n330) );
  aor221d1 U385 ( .B1(N81), .B2(n324), .C1(pc[12]), .C2(n325), .A(n331), .Z(
        b_data[4]) );
  aor22d1 U386 ( .A1(ie), .A2(n327), .B1(pc[4]), .B2(n328), .Z(n331) );
  aor221d1 U387 ( .B1(N82), .B2(n324), .C1(pc[11]), .C2(n325), .A(n332), .Z(
        b_data[3]) );
  aor22d1 U388 ( .A1(psw[3]), .A2(n327), .B1(pc[3]), .B2(n328), .Z(n332) );
  aor221d1 U389 ( .B1(N83), .B2(n324), .C1(pc[10]), .C2(n325), .A(n333), .Z(
        b_data[2]) );
  aor22d1 U390 ( .A1(psw[2]), .A2(n327), .B1(pc[2]), .B2(n328), .Z(n333) );
  aor221d1 U391 ( .B1(N84), .B2(n324), .C1(pc[9]), .C2(n325), .A(n334), .Z(
        b_data[1]) );
  aor22d1 U392 ( .A1(psw[1]), .A2(n327), .B1(pc[1]), .B2(n328), .Z(n334) );
  aor221d1 U393 ( .B1(N85), .B2(n324), .C1(pc[8]), .C2(n325), .A(n335), .Z(
        b_data[0]) );
  aor22d1 U394 ( .A1(psw[0]), .A2(n327), .B1(pc[0]), .B2(n328), .Z(n335) );
  nr03d0 U395 ( .A1(n105), .A2(N62), .A3(n336), .ZN(n328) );
  nr03d0 U396 ( .A1(N61), .A2(N62), .A3(n336), .ZN(n327) );
  nr03d0 U397 ( .A1(n106), .A2(N61), .A3(n336), .ZN(n325) );
  aor21d1 U398 ( .B1(N62), .B2(N61), .A(n336), .Z(n324) );
  aoi222d1 U399 ( .A1(n507), .A2(n339), .B1(N69), .B2(n340), .C1(n341), .C2(
        sp[15]), .ZN(n338) );
  aoi222d1 U400 ( .A1(n342), .A2(psw[7]), .B1(n343), .B2(pc[15]), .C1(n344), 
        .C2(pc[7]), .ZN(n337) );
  aoi222d1 U401 ( .A1(n505), .A2(n339), .B1(N70), .B2(n340), .C1(n341), .C2(
        sp[14]), .ZN(n346) );
  aoi222d1 U402 ( .A1(n342), .A2(psw[6]), .B1(n343), .B2(pc[14]), .C1(n344), 
        .C2(pc[6]), .ZN(n345) );
  aoi222d1 U403 ( .A1(n503), .A2(n339), .B1(N71), .B2(n340), .C1(n341), .C2(
        sp[13]), .ZN(n348) );
  aoi222d1 U404 ( .A1(n342), .A2(psw[5]), .B1(n343), .B2(pc[13]), .C1(n344), 
        .C2(pc[5]), .ZN(n347) );
  aoi222d1 U405 ( .A1(n501), .A2(n339), .B1(N72), .B2(n340), .C1(n341), .C2(
        sp[12]), .ZN(n350) );
  aoi222d1 U406 ( .A1(n342), .A2(ie), .B1(n343), .B2(pc[12]), .C1(n344), .C2(
        pc[4]), .ZN(n349) );
  aoi222d1 U407 ( .A1(n500), .A2(n339), .B1(N73), .B2(n340), .C1(n341), .C2(
        n513), .ZN(n352) );
  aoi222d1 U408 ( .A1(n342), .A2(psw[3]), .B1(n343), .B2(pc[11]), .C1(n344), 
        .C2(pc[3]), .ZN(n351) );
  aoi222d1 U409 ( .A1(n497), .A2(n339), .B1(N74), .B2(n340), .C1(n341), .C2(
        n511), .ZN(n354) );
  aoi222d1 U410 ( .A1(n342), .A2(psw[2]), .B1(n343), .B2(pc[10]), .C1(n344), 
        .C2(pc[2]), .ZN(n353) );
  aoi222d1 U411 ( .A1(n495), .A2(n339), .B1(N75), .B2(n340), .C1(n341), .C2(
        n509), .ZN(n356) );
  aoi222d1 U412 ( .A1(n342), .A2(psw[1]), .B1(n343), .B2(pc[9]), .C1(n344), 
        .C2(pc[1]), .ZN(n355) );
  aoi222d1 U413 ( .A1(n492), .A2(n339), .B1(N76), .B2(n340), .C1(n341), .C2(
        n518), .ZN(n358) );
  aor21d1 U414 ( .B1(N60), .B2(n457), .A(n455), .Z(n340) );
  aoi222d1 U415 ( .A1(n342), .A2(psw[0]), .B1(n343), .B2(pc[8]), .C1(n344), 
        .C2(pc[0]), .ZN(n357) );
  nr03d0 U416 ( .A1(n454), .A2(N58), .A3(n456), .ZN(n343) );
  nr02d0 U417 ( .A1(n454), .A2(n457), .ZN(n342) );
  nr02d0 U418 ( .A1(N59), .A2(N58), .ZN(n359) );
  nr02d0 U419 ( .A1(n455), .A2(N60), .ZN(n360) );
  aor221d1 U420 ( .B1(n444), .B2(n203), .C1(iack), .C2(n361), .A(n300), .Z(
        N313) );
  aor22d1 U421 ( .A1(data_op[2]), .A2(n287), .B1(n453), .B2(n293), .Z(n300) );
  aor221d1 U422 ( .B1(\bus_state[0] ), .B2(n519), .C1(n299), .C2(n317), .A(
        n297), .Z(n361) );
  aoi21d1 U423 ( .B1(n289), .B2(n469), .A(ready), .ZN(n297) );
  nr02d0 U424 ( .A1(n34), .A2(\bus_state[0] ), .ZN(n293) );
  oai311d1 U425 ( .C1(queue_count[0]), .C2(queue_count[1]), .C3(n35), .A(n427), 
        .B(n315), .ZN(n317) );
  aoi21d1 U426 ( .B1(addr_op[0]), .B2(n443), .A(n225), .ZN(n315) );
  nr02d0 U427 ( .A1(\bus_state[0] ), .A2(n468), .ZN(n287) );
  nd03d0 U428 ( .A1(n446), .A2(n449), .A3(n225), .ZN(n199) );
  nr02d0 U429 ( .A1(n450), .A2(addr_op[2]), .ZN(n225) );
  aor22d1 U430 ( .A1(n458), .A2(n210), .B1(next_psw[7]), .B2(n362), .Z(N115)
         );
  aor22d1 U432 ( .A1(n458), .A2(n211), .B1(next_psw[6]), .B2(n362), .Z(N114)
         );
  aor22d1 U434 ( .A1(n458), .A2(n212), .B1(next_psw[5]), .B2(n362), .Z(N113)
         );
  aor22d1 U436 ( .A1(n458), .A2(n213), .B1(next_psw[4]), .B2(n362), .Z(N112)
         );
  aor22d1 U438 ( .A1(n458), .A2(n214), .B1(next_psw[3]), .B2(n362), .Z(N111)
         );
  aor22d1 U440 ( .A1(n458), .A2(n215), .B1(next_psw[2]), .B2(n362), .Z(N110)
         );
  aor22d1 U442 ( .A1(n458), .A2(n216), .B1(next_psw[1]), .B2(n362), .Z(N109)
         );
  aor22d1 U444 ( .A1(n458), .A2(n217), .B1(next_psw[0]), .B2(n362), .Z(N108)
         );
  nr02d0 U447 ( .A1(w_addr[0]), .A2(w_addr[1]), .ZN(n221) );
  risc8_regb_biu_DW01_dec_0 sub_549 ( .A(address), .SUM(dec_address) );
  risc8_regb_biu_DW01_inc_0 add_548 ( .A(address), .SUM(inc_address) );
  ad01d0 \add_377/U1_1  ( .A(pc[1]), .B(inc_pc[1]), .CI(\add_377/carry[1] ), 
        .CO(\add_377/carry[2] ), .S(N129) );
  dfcrq1 \psw_reg[4]  ( .D(N112), .CP(clk), .CDN(n116), .Q(psw_4) );
  dfcrq1 iack_reg ( .D(N313), .CP(clk), .CDN(n115), .Q(n523) );
  dfcrq1 write_reg ( .D(n416), .CP(clk), .CDN(n115), .Q(n521) );
  dfcrq1 ifetch_reg ( .D(n422), .CP(clk), .CDN(n115), .Q(n522) );
  dfcrq1 clear_queue_reg ( .D(n424), .CP(clk), .CDN(n112), .Q(clear_queue) );
  dfcrq1 \bus_state_reg[0]  ( .D(n418), .CP(clk), .CDN(n116), .Q(
        \bus_state[0] ) );
  dfcrq1 \psw_reg[6]  ( .D(N114), .CP(clk), .CDN(n116), .Q(psw[6]) );
  denrq1 \ins_queue_reg[3][7]  ( .D(data_in[7]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][7] ) );
  denrq1 \ins_queue_reg[3][6]  ( .D(data_in[6]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][6] ) );
  denrq1 \ins_queue_reg[3][5]  ( .D(data_in[5]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][5] ) );
  denrq1 \ins_queue_reg[3][4]  ( .D(data_in[4]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][4] ) );
  denrq1 \ins_queue_reg[2][4]  ( .D(data_in[4]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][4] ) );
  denrq1 \ins_queue_reg[2][5]  ( .D(data_in[5]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][5] ) );
  denrq1 \ins_queue_reg[2][6]  ( .D(data_in[6]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][6] ) );
  denrq1 \ins_queue_reg[2][7]  ( .D(data_in[7]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][7] ) );
  denrq1 \ins_queue_reg[1][4]  ( .D(data_in[4]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][4] ) );
  denrq1 \ins_queue_reg[1][5]  ( .D(data_in[5]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][5] ) );
  denrq1 \ins_queue_reg[1][7]  ( .D(data_in[7]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][7] ) );
  denrq1 \ins_queue_reg[0][4]  ( .D(data_in[4]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][4] ) );
  denrq1 \ins_queue_reg[0][5]  ( .D(data_in[5]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][5] ) );
  denrq1 \ins_queue_reg[0][7]  ( .D(data_in[7]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][7] ) );
  denrq1 \reg_file_reg[0][5]  ( .D(n212), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][5] ) );
  denrq1 \reg_file_reg[1][5]  ( .D(n212), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][5] ) );
  denrq1 \reg_file_reg[2][5]  ( .D(n212), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][5] ) );
  denrq1 \reg_file_reg[3][5]  ( .D(n212), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][5] ) );
  denrq1 \reg_file_reg[4][5]  ( .D(n212), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][5] ) );
  denrq1 \reg_file_reg[5][5]  ( .D(n212), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][5] ) );
  denrq1 \reg_file_reg[6][5]  ( .D(n212), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][5] ) );
  denrq1 \reg_file_reg[7][5]  ( .D(n212), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][5] ) );
  denrq1 \reg_file_reg[0][6]  ( .D(n211), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][6] ) );
  denrq1 \reg_file_reg[1][6]  ( .D(n211), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][6] ) );
  denrq1 \reg_file_reg[2][6]  ( .D(n211), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][6] ) );
  denrq1 \reg_file_reg[3][6]  ( .D(n211), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][6] ) );
  denrq1 \reg_file_reg[4][6]  ( .D(n211), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][6] ) );
  denrq1 \reg_file_reg[5][6]  ( .D(n211), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][6] ) );
  denrq1 \reg_file_reg[6][6]  ( .D(n211), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][6] ) );
  denrq1 \reg_file_reg[7][6]  ( .D(n211), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][6] ) );
  denrq1 \reg_file_reg[0][7]  ( .D(n210), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][7] ) );
  denrq1 \reg_file_reg[1][7]  ( .D(n210), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][7] ) );
  denrq1 \reg_file_reg[2][7]  ( .D(n210), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][7] ) );
  denrq1 \reg_file_reg[3][7]  ( .D(n210), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][7] ) );
  denrq1 \reg_file_reg[4][7]  ( .D(n210), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][7] ) );
  denrq1 \reg_file_reg[5][7]  ( .D(n210), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][7] ) );
  denrq1 \reg_file_reg[6][7]  ( .D(n210), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][7] ) );
  denrq1 \reg_file_reg[7][7]  ( .D(n210), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][7] ) );
  dfcrq1 \psw_reg[5]  ( .D(N113), .CP(clk), .CDN(n114), .Q(psw[5]) );
  dfcrq1 \psw_reg[7]  ( .D(N115), .CP(clk), .CDN(n115), .Q(psw[7]) );
  dfcrq1 \pc_reg[15]  ( .D(n408), .CP(clk), .CDN(n114), .Q(pc[15]) );
  dfcrq1 \pc_reg[4]  ( .D(n403), .CP(clk), .CDN(n115), .Q(pc[4]) );
  dfcrq1 \pc_reg[5]  ( .D(n402), .CP(clk), .CDN(n114), .Q(pc[5]) );
  dfcrq1 \pc_reg[6]  ( .D(n401), .CP(clk), .CDN(n115), .Q(pc[6]) );
  dfcrq1 \pc_reg[7]  ( .D(n400), .CP(clk), .CDN(n114), .Q(pc[7]) );
  dfcrq1 \pc_reg[12]  ( .D(n411), .CP(clk), .CDN(n117), .Q(pc[12]) );
  dfcrq1 \pc_reg[13]  ( .D(n410), .CP(clk), .CDN(n114), .Q(pc[13]) );
  dfcrq1 \pc_reg[14]  ( .D(n409), .CP(clk), .CDN(n114), .Q(pc[14]) );
  dfcrq1 \queue_count_reg[1]  ( .D(n420), .CP(clk), .CDN(n115), .Q(
        queue_count[1]) );
  dfcrq1 \queue_count_reg[0]  ( .D(n421), .CP(clk), .CDN(n116), .Q(
        queue_count[0]) );
  denrq1 \ins_queue_reg[3][0]  ( .D(data_in[0]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][0] ) );
  denrq1 \ins_queue_reg[3][3]  ( .D(data_in[3]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][3] ) );
  denrq1 \ins_queue_reg[3][2]  ( .D(data_in[2]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][2] ) );
  denrq1 \ins_queue_reg[3][1]  ( .D(data_in[1]), .ENN(n245), .CP(clk), .Q(
        \ins_queue[3][1] ) );
  denrq1 \ins_queue_reg[2][0]  ( .D(data_in[0]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][0] ) );
  denrq1 \ins_queue_reg[2][1]  ( .D(data_in[1]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][1] ) );
  denrq1 \ins_queue_reg[2][2]  ( .D(data_in[2]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][2] ) );
  denrq1 \ins_queue_reg[2][3]  ( .D(data_in[3]), .ENN(n244), .CP(clk), .Q(
        \ins_queue[2][3] ) );
  denrq1 \ins_queue_reg[1][0]  ( .D(data_in[0]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][0] ) );
  denrq1 \ins_queue_reg[1][1]  ( .D(data_in[1]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][1] ) );
  denrq1 \ins_queue_reg[1][2]  ( .D(data_in[2]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][2] ) );
  denrq1 \ins_queue_reg[1][3]  ( .D(data_in[3]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][3] ) );
  denrq1 \ins_queue_reg[1][6]  ( .D(data_in[6]), .ENN(n243), .CP(clk), .Q(
        \ins_queue[1][6] ) );
  denrq1 \ins_queue_reg[0][0]  ( .D(data_in[0]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][0] ) );
  denrq1 \ins_queue_reg[0][1]  ( .D(data_in[1]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][1] ) );
  denrq1 \ins_queue_reg[0][2]  ( .D(data_in[2]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][2] ) );
  denrq1 \ins_queue_reg[0][3]  ( .D(data_in[3]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][3] ) );
  denrq1 \ins_queue_reg[0][6]  ( .D(data_in[6]), .ENN(n241), .CP(clk), .Q(
        \ins_queue[0][6] ) );
  denrq1 \reg_file_reg[0][3]  ( .D(n214), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][3] ) );
  denrq1 \reg_file_reg[1][3]  ( .D(n214), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][3] ) );
  denrq1 \reg_file_reg[2][3]  ( .D(n214), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][3] ) );
  denrq1 \reg_file_reg[3][3]  ( .D(n214), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][3] ) );
  denrq1 \reg_file_reg[4][3]  ( .D(n214), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][3] ) );
  denrq1 \reg_file_reg[5][3]  ( .D(n214), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][3] ) );
  denrq1 \reg_file_reg[6][3]  ( .D(n214), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][3] ) );
  denrq1 \reg_file_reg[7][3]  ( .D(n214), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][3] ) );
  denrq1 \reg_file_reg[0][4]  ( .D(n213), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][4] ) );
  denrq1 \reg_file_reg[1][4]  ( .D(n213), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][4] ) );
  denrq1 \reg_file_reg[2][4]  ( .D(n213), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][4] ) );
  denrq1 \reg_file_reg[3][4]  ( .D(n213), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][4] ) );
  denrq1 \reg_file_reg[4][4]  ( .D(n213), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][4] ) );
  denrq1 \reg_file_reg[5][4]  ( .D(n213), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][4] ) );
  denrq1 \reg_file_reg[6][4]  ( .D(n213), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][4] ) );
  denrq1 \reg_file_reg[7][4]  ( .D(n213), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][4] ) );
  dfcrq1 \pc_reg[2]  ( .D(n405), .CP(clk), .CDN(n114), .Q(pc[2]) );
  dfcrq1 \pc_reg[3]  ( .D(n404), .CP(clk), .CDN(n114), .Q(pc[3]) );
  dfcrq1 \pc_reg[10]  ( .D(n413), .CP(clk), .CDN(rst_n), .Q(pc[10]) );
  dfcrq1 \pc_reg[11]  ( .D(n412), .CP(clk), .CDN(n114), .Q(pc[11]) );
  dfcrq1 \psw_reg[3]  ( .D(N111), .CP(clk), .CDN(n115), .Q(psw[3]) );
  dfcrq1 \psw_reg[2]  ( .D(N110), .CP(clk), .CDN(n116), .Q(psw[2]) );
  denrq1 \reg_file_reg[0][0]  ( .D(n217), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][0] ) );
  denrq1 \reg_file_reg[1][0]  ( .D(n217), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][0] ) );
  denrq1 \reg_file_reg[2][0]  ( .D(n217), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][0] ) );
  denrq1 \reg_file_reg[3][0]  ( .D(n217), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][0] ) );
  denrq1 \reg_file_reg[4][0]  ( .D(n217), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][0] ) );
  denrq1 \reg_file_reg[5][0]  ( .D(n217), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][0] ) );
  denrq1 \reg_file_reg[6][0]  ( .D(n217), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][0] ) );
  denrq1 \reg_file_reg[7][0]  ( .D(n217), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][0] ) );
  denrq1 \reg_file_reg[0][1]  ( .D(n216), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][1] ) );
  denrq1 \reg_file_reg[1][1]  ( .D(n216), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][1] ) );
  denrq1 \reg_file_reg[2][1]  ( .D(n216), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][1] ) );
  denrq1 \reg_file_reg[3][1]  ( .D(n216), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][1] ) );
  denrq1 \reg_file_reg[4][1]  ( .D(n216), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][1] ) );
  denrq1 \reg_file_reg[5][1]  ( .D(n216), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][1] ) );
  denrq1 \reg_file_reg[6][1]  ( .D(n216), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][1] ) );
  denrq1 \reg_file_reg[7][1]  ( .D(n216), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][1] ) );
  denrq1 \reg_file_reg[0][2]  ( .D(n215), .ENN(n274), .CP(clk), .Q(
        \reg_file[0][2] ) );
  denrq1 \reg_file_reg[1][2]  ( .D(n215), .ENN(n275), .CP(clk), .Q(
        \reg_file[1][2] ) );
  denrq1 \reg_file_reg[2][2]  ( .D(n215), .ENN(n276), .CP(clk), .Q(
        \reg_file[2][2] ) );
  denrq1 \reg_file_reg[3][2]  ( .D(n215), .ENN(n277), .CP(clk), .Q(
        \reg_file[3][2] ) );
  denrq1 \reg_file_reg[4][2]  ( .D(n215), .ENN(n278), .CP(clk), .Q(
        \reg_file[4][2] ) );
  denrq1 \reg_file_reg[5][2]  ( .D(n215), .ENN(n279), .CP(clk), .Q(
        \reg_file[5][2] ) );
  denrq1 \reg_file_reg[6][2]  ( .D(n215), .ENN(n280), .CP(clk), .Q(
        \reg_file[6][2] ) );
  denrq1 \reg_file_reg[7][2]  ( .D(n215), .ENN(n281), .CP(clk), .Q(
        \reg_file[7][2] ) );
  dfcrq1 \pc_reg[8]  ( .D(n415), .CP(clk), .CDN(n115), .Q(pc[8]) );
  dfcrq1 \pc_reg[9]  ( .D(n414), .CP(clk), .CDN(n114), .Q(pc[9]) );
  dfcrq1 \pc_reg[0]  ( .D(n407), .CP(clk), .CDN(n115), .Q(pc[0]) );
  dfcrq1 \pc_reg[1]  ( .D(n406), .CP(clk), .CDN(n115), .Q(pc[1]) );
  dfcrq1 \out_pointer_reg[1]  ( .D(n396), .CP(clk), .CDN(n114), .Q(N65) );
  dfcrq1 \psw_reg[0]  ( .D(N108), .CP(clk), .CDN(n116), .Q(psw[0]) );
  dfcrq1 \psw_reg[1]  ( .D(N109), .CP(clk), .CDN(n115), .Q(psw[1]) );
  dfcrq1 cycle_reg ( .D(n417), .CP(clk), .CDN(n114), .Q(n520) );
  dfcrn1 \address_reg[15]  ( .D(n372), .CP(clk), .CDN(n112), .QN(n27) );
  dfcrn1 \address_reg[7]  ( .D(n380), .CP(clk), .CDN(n113), .QN(n13) );
  mx02d0 \address_save_reg[0]/U4  ( .I0(inc_address[0]), .I1(address_save[0]), 
        .S(n144), .Z(n61) );
  dfcrq1 \address_save_reg[0]  ( .D(n61), .CP(clk), .CDN(n117), .Q(
        address_save[0]) );
  mx02d0 \address_save_reg[1]/U4  ( .I0(inc_address[1]), .I1(address_save[1]), 
        .S(n144), .Z(n60) );
  dfcrq1 \address_save_reg[1]  ( .D(n60), .CP(clk), .CDN(n116), .Q(
        address_save[1]) );
  mx02d0 \address_save_reg[2]/U4  ( .I0(inc_address[2]), .I1(address_save[2]), 
        .S(n144), .Z(n59) );
  dfcrq1 \address_save_reg[2]  ( .D(n59), .CP(clk), .CDN(rst_n), .Q(
        address_save[2]) );
  mx02d0 \address_save_reg[3]/U4  ( .I0(inc_address[3]), .I1(address_save[3]), 
        .S(n144), .Z(n58) );
  dfcrq1 \address_save_reg[3]  ( .D(n58), .CP(clk), .CDN(n116), .Q(
        address_save[3]) );
  mx02d0 \address_save_reg[4]/U4  ( .I0(inc_address[4]), .I1(address_save[4]), 
        .S(n144), .Z(n57) );
  dfcrq1 \address_save_reg[4]  ( .D(n57), .CP(clk), .CDN(n117), .Q(
        address_save[4]) );
  mx02d0 \address_save_reg[5]/U4  ( .I0(inc_address[5]), .I1(address_save[5]), 
        .S(n144), .Z(n56) );
  dfcrq1 \address_save_reg[5]  ( .D(n56), .CP(clk), .CDN(rst_n), .Q(
        address_save[5]) );
  mx02d0 \address_save_reg[6]/U4  ( .I0(inc_address[6]), .I1(address_save[6]), 
        .S(n144), .Z(n55) );
  dfcrq1 \address_save_reg[6]  ( .D(n55), .CP(clk), .CDN(n117), .Q(
        address_save[6]) );
  mx02d0 \data_out_reg[1]/U4  ( .I0(b_data[1]), .I1(data_out[1]), .S(n138), 
        .Z(n54) );
  dfcrq1 \data_out_reg[1]  ( .D(n54), .CP(clk), .CDN(n117), .Q(data_out[1]) );
  mx02d0 \data_out_reg[0]/U4  ( .I0(b_data[0]), .I1(data_out[0]), .S(n138), 
        .Z(n53) );
  dfcrq1 \data_out_reg[0]  ( .D(n53), .CP(clk), .CDN(n117), .Q(data_out[0]) );
  mx02d0 \data_out_reg[2]/U4  ( .I0(b_data[2]), .I1(data_out[2]), .S(n138), 
        .Z(n52) );
  dfcrq1 \data_out_reg[2]  ( .D(n52), .CP(clk), .CDN(rst_n), .Q(data_out[2])
         );
  mx02d0 \data_out_reg[6]/U4  ( .I0(b_data[6]), .I1(data_out[6]), .S(n138), 
        .Z(n51) );
  dfcrq1 \data_out_reg[6]  ( .D(n51), .CP(clk), .CDN(rst_n), .Q(data_out[6])
         );
  mx02d0 \data_out_reg[5]/U4  ( .I0(b_data[5]), .I1(data_out[5]), .S(n138), 
        .Z(n50) );
  dfcrq1 \data_out_reg[5]  ( .D(n50), .CP(clk), .CDN(n117), .Q(data_out[5]) );
  mx02d0 \data_out_reg[4]/U4  ( .I0(b_data[4]), .I1(data_out[4]), .S(n138), 
        .Z(n49) );
  dfcrq1 \data_out_reg[4]  ( .D(n49), .CP(clk), .CDN(rst_n), .Q(data_out[4])
         );
  mx02d0 \data_out_reg[3]/U4  ( .I0(b_data[3]), .I1(data_out[3]), .S(n138), 
        .Z(n48) );
  dfcrq1 \data_out_reg[3]  ( .D(n48), .CP(clk), .CDN(n117), .Q(data_out[3]) );
  mx02d0 \data_out_reg[7]/U4  ( .I0(b_data[7]), .I1(data_out[7]), .S(n138), 
        .Z(n47) );
  dfcrq1 \data_out_reg[7]  ( .D(n47), .CP(clk), .CDN(n117), .Q(data_out[7]) );
  mx02d0 \address_save_reg[7]/U4  ( .I0(inc_address[7]), .I1(address_save[7]), 
        .S(n144), .Z(n46) );
  dfcrq1 \address_save_reg[7]  ( .D(n46), .CP(clk), .CDN(n116), .Q(
        address_save[7]) );
  mx02d0 \address_save_reg[8]/U4  ( .I0(inc_address[8]), .I1(address_save[8]), 
        .S(n144), .Z(n45) );
  dfcrq1 \address_save_reg[8]  ( .D(n45), .CP(clk), .CDN(rst_n), .Q(
        address_save[8]) );
  mx02d0 \address_save_reg[9]/U4  ( .I0(inc_address[9]), .I1(address_save[9]), 
        .S(n144), .Z(n44) );
  dfcrq1 \address_save_reg[9]  ( .D(n44), .CP(clk), .CDN(n116), .Q(
        address_save[9]) );
  mx02d0 \address_save_reg[10]/U4  ( .I0(inc_address[10]), .I1(
        address_save[10]), .S(n144), .Z(n43) );
  dfcrq1 \address_save_reg[10]  ( .D(n43), .CP(clk), .CDN(n117), .Q(
        address_save[10]) );
  mx02d0 \address_save_reg[11]/U4  ( .I0(inc_address[11]), .I1(
        address_save[11]), .S(n144), .Z(n42) );
  dfcrq1 \address_save_reg[11]  ( .D(n42), .CP(clk), .CDN(n116), .Q(
        address_save[11]) );
  mx02d0 \address_save_reg[12]/U4  ( .I0(inc_address[12]), .I1(
        address_save[12]), .S(n144), .Z(n41) );
  dfcrq1 \address_save_reg[12]  ( .D(n41), .CP(clk), .CDN(n117), .Q(
        address_save[12]) );
  mx02d0 \address_save_reg[13]/U4  ( .I0(inc_address[13]), .I1(
        address_save[13]), .S(n144), .Z(n40) );
  dfcrq1 \address_save_reg[13]  ( .D(n40), .CP(clk), .CDN(n116), .Q(
        address_save[13]) );
  mx02d0 \address_save_reg[14]/U4  ( .I0(inc_address[14]), .I1(
        address_save[14]), .S(n144), .Z(n2) );
  dfcrq1 \address_save_reg[14]  ( .D(n2), .CP(clk), .CDN(rst_n), .Q(
        address_save[14]) );
  mx02d0 \address_save_reg[15]/U4  ( .I0(inc_address[15]), .I1(
        address_save[15]), .S(n144), .Z(n1) );
  dfcrq1 \address_save_reg[15]  ( .D(n1), .CP(clk), .CDN(n117), .Q(
        address_save[15]) );
  nd03d2 U3 ( .A1(addr_op[0]), .A2(n443), .A3(addr_op[1]), .ZN(n144) );
  nd02d1 U4 ( .A1(n62), .A2(n63), .ZN(n210) );
  inv0d1 U5 ( .I(n210), .ZN(n428) );
  an12d1 U6 ( .A2(N59), .A1(N60), .Z(n80) );
  nr02d0 U7 ( .A1(N59), .A2(N60), .ZN(n81) );
  nr04d0 U8 ( .A1(n472), .A2(iack), .A3(ifetch), .A4(write), .ZN(n363) );
  nd02d1 U9 ( .A1(n357), .A2(n358), .ZN(a_data[0]) );
  inv0d1 U10 ( .I(n363), .ZN(n465) );
  inv0d0 U11 ( .I(N59), .ZN(n456) );
  nd02d1 U12 ( .A1(data_in[7]), .A2(n363), .ZN(n62) );
  nd02d0 U13 ( .A1(alu_out[7]), .A2(n465), .ZN(n63) );
  inv0d1 U14 ( .I(n260), .ZN(n436) );
  an02d1 U15 ( .A1(n268), .A2(n470), .Z(n253) );
  inv0d1 U16 ( .I(n118), .ZN(n117) );
  inv0d1 U17 ( .I(n360), .ZN(n454) );
  nd02d1 U18 ( .A1(n222), .A2(n223), .ZN(n209) );
  an04d1 U19 ( .A1(n268), .A2(n269), .A3(data_ready), .A4(n270), .Z(n254) );
  inv0d1 U20 ( .I(n263), .ZN(n438) );
  inv0d1 U21 ( .I(n267), .ZN(n437) );
  inv0d1 U22 ( .I(n198), .ZN(n442) );
  inv0d1 U23 ( .I(n199), .ZN(n445) );
  oan211d1 U24 ( .C1(n176), .C2(n152), .B(n471), .A(n470), .ZN(n145) );
  inv0d1 U25 ( .I(n229), .ZN(n441) );
  inv0d1 U26 ( .I(n270), .ZN(n470) );
  inv0d1 U27 ( .I(n232), .ZN(n439) );
  inv0d1 U28 ( .I(inc_address[3]), .ZN(n488) );
  inv0d1 U29 ( .I(n175), .ZN(n471) );
  nd02d1 U30 ( .A1(n282), .A2(n222), .ZN(n277) );
  inv0d1 U31 ( .I(n362), .ZN(n458) );
  bufbd1 U32 ( .I(n124), .Z(n118) );
  inv0d1 U33 ( .I(n122), .ZN(n113) );
  bufbd1 U34 ( .I(n124), .Z(n122) );
  inv0d1 U35 ( .I(n123), .ZN(n112) );
  bufbd1 U36 ( .I(n124), .Z(n123) );
  inv0d1 U37 ( .I(n121), .ZN(n114) );
  bufbd1 U38 ( .I(n124), .Z(n121) );
  inv0d1 U39 ( .I(n120), .ZN(n115) );
  bufbd1 U40 ( .I(n124), .Z(n120) );
  inv0d1 U41 ( .I(n119), .ZN(n116) );
  bufbd1 U42 ( .I(n124), .Z(n119) );
  an02d1 U43 ( .A1(N60), .A2(N59), .Z(n78) );
  an02d1 U44 ( .A1(N60), .A2(n456), .Z(n79) );
  inv0d1 U46 ( .I(n359), .ZN(n457) );
  inv0d1 U47 ( .I(n211), .ZN(n429) );
  inv0d1 U48 ( .I(n212), .ZN(n430) );
  inv0d1 U50 ( .I(n213), .ZN(n431) );
  inv0d1 U51 ( .I(n473), .ZN(n425) );
  nd12d0 U52 ( .A1(n297), .A2(n291), .ZN(n285) );
  inv0d1 U53 ( .I(n214), .ZN(n432) );
  inv0d1 U55 ( .I(n215), .ZN(n433) );
  inv0d1 U56 ( .I(n216), .ZN(n434) );
  inv0d1 U57 ( .I(n217), .ZN(n435) );
  inv0d1 U59 ( .I(opcode_op[4]), .ZN(n427) );
  nd02d1 U61 ( .A1(iack), .A2(n236), .ZN(n270) );
  oaim211d1 U62 ( .C1(n199), .C2(n219), .A(n209), .B(n143), .ZN(n141) );
  nd02d1 U65 ( .A1(n224), .A2(n225), .ZN(n219) );
  nd03d2 U66 ( .A1(n143), .A2(n209), .A3(n218), .ZN(n142) );
  aor21d1 U67 ( .B1(ifetch), .B2(n315), .A(n139), .Z(data_ready) );
  nd02d1 U68 ( .A1(n272), .A2(n223), .ZN(n267) );
  nd02d1 U69 ( .A1(n271), .A2(n223), .ZN(n263) );
  nd02d1 U70 ( .A1(n231), .A2(n236), .ZN(n233) );
  an03d1 U72 ( .A1(n446), .A2(n449), .A3(n235), .Z(n150) );
  oan211d1 U73 ( .C1(n183), .C2(n176), .B(n471), .A(n470), .ZN(n180) );
  an03d1 U74 ( .A1(n443), .A2(n450), .A3(n177), .Z(n152) );
  nd02d1 U75 ( .A1(n463), .A2(n246), .ZN(n249) );
  nd02d1 U77 ( .A1(n235), .A2(n177), .ZN(n229) );
  nd02d1 U78 ( .A1(n440), .A2(n450), .ZN(n232) );
  nd02d1 U79 ( .A1(n139), .A2(n270), .ZN(n175) );
  inv0d1 U80 ( .I(n293), .ZN(n469) );
  nd02d1 U82 ( .A1(n469), .A2(n289), .ZN(n296) );
  nd02d1 U83 ( .A1(n445), .A2(n139), .ZN(n269) );
  inv0d1 U84 ( .I(n144), .ZN(n440) );
  nd02d1 U87 ( .A1(n273), .A2(n221), .ZN(n362) );
  nd02d1 U88 ( .A1(n284), .A2(n221), .ZN(n278) );
  nd02d1 U89 ( .A1(n282), .A2(n221), .ZN(n274) );
  nd02d1 U90 ( .A1(n284), .A2(n272), .ZN(n280) );
  nd02d1 U91 ( .A1(n284), .A2(n271), .ZN(n279) );
  nd02d1 U92 ( .A1(n282), .A2(n272), .ZN(n276) );
  nd02d1 U93 ( .A1(n282), .A2(n271), .ZN(n275) );
  nd02d1 U94 ( .A1(n284), .A2(n222), .ZN(n281) );
  inv0d1 U95 ( .I(int_type[1]), .ZN(n451) );
  inv0d1 U96 ( .I(n313), .ZN(n453) );
  inv0d1 U100 ( .I(n290), .ZN(n448) );
  inv0d1 U101 ( .I(rst_n), .ZN(n124) );
  nd02d1 U104 ( .A1(n181), .A2(n182), .ZN(n179) );
  nd02d1 U105 ( .A1(n355), .A2(n356), .ZN(a_data[1]) );
  inv0d1 U106 ( .I(inc_address[15]), .ZN(n476) );
  inv0d1 U108 ( .I(inc_address[7]), .ZN(n484) );
  aor22d1 U109 ( .A1(data_in[6]), .A2(n363), .B1(alu_out[6]), .B2(n465), .Z(
        n211) );
  aor22d1 U110 ( .A1(data_in[5]), .A2(n363), .B1(alu_out[5]), .B2(n465), .Z(
        n212) );
  aor22d1 U111 ( .A1(data_in[4]), .A2(n363), .B1(alu_out[4]), .B2(n465), .Z(
        n213) );
  an02d1 U112 ( .A1(N63), .A2(N62), .Z(n99) );
  an02d1 U113 ( .A1(N63), .A2(n106), .Z(n100) );
  nr02d0 U114 ( .A1(N62), .A2(N63), .ZN(n102) );
  nr02d0 U115 ( .A1(n106), .A2(N63), .ZN(n101) );
  nd12d0 U116 ( .A1(N63), .A2(b_addr[3]), .ZN(n336) );
  inv0d1 U117 ( .I(N58), .ZN(n84) );
  inv0d1 U118 ( .I(N61), .ZN(n105) );
  inv0d1 U119 ( .I(n33), .ZN(n473) );
  nd02d1 U120 ( .A1(n349), .A2(n350), .ZN(a_data[4]) );
  nd02d1 U121 ( .A1(n351), .A2(n352), .ZN(a_data[3]) );
  nd02d1 U122 ( .A1(n353), .A2(n354), .ZN(a_data[2]) );
  inv0d1 U123 ( .I(N62), .ZN(n106) );
  inv0d1 U124 ( .I(a_addr[3]), .ZN(n455) );
  inv0d1 U125 ( .I(n12), .ZN(n509) );
  inv0d1 U126 ( .I(n3), .ZN(n518) );
  inv0d1 U127 ( .I(inc_address[6]), .ZN(n485) );
  inv0d1 U128 ( .I(inc_address[5]), .ZN(n486) );
  inv0d1 U129 ( .I(inc_address[4]), .ZN(n487) );
  inv0d1 U130 ( .I(inc_address[14]), .ZN(n477) );
  inv0d1 U131 ( .I(inc_address[13]), .ZN(n478) );
  inv0d1 U132 ( .I(inc_address[12]), .ZN(n479) );
  inv0d1 U133 ( .I(n29), .ZN(n492) );
  nd02d1 U134 ( .A1(n185), .A2(n186), .ZN(n184) );
  nd02d1 U135 ( .A1(n188), .A2(n189), .ZN(n187) );
  inv0d1 U136 ( .I(N65), .ZN(n137) );
  aor22d1 U137 ( .A1(data_in[3]), .A2(n363), .B1(alu_out[3]), .B2(n465), .Z(
        n214) );
  aor22d1 U138 ( .A1(data_in[2]), .A2(n363), .B1(alu_out[2]), .B2(n465), .Z(
        n215) );
  aor22d1 U139 ( .A1(data_in[1]), .A2(n363), .B1(alu_out[1]), .B2(n465), .Z(
        n216) );
  aor22d1 U140 ( .A1(data_in[0]), .A2(n363), .B1(alu_out[0]), .B2(n465), .Z(
        n217) );
  nd02d1 U141 ( .A1(n171), .A2(data_in[1]), .ZN(n194) );
  nd02d1 U142 ( .A1(n201), .A2(n202), .ZN(n200) );
  inv0d1 U143 ( .I(n269), .ZN(n444) );
  nd02d1 U144 ( .A1(n337), .A2(n338), .ZN(a_data[7]) );
  nd02d1 U145 ( .A1(n345), .A2(n346), .ZN(a_data[6]) );
  nd02d1 U146 ( .A1(n347), .A2(n348), .ZN(a_data[5]) );
  nd02d1 U147 ( .A1(n169), .A2(n170), .ZN(n168) );
  nd02d1 U148 ( .A1(n173), .A2(n174), .ZN(n172) );
  inv0d1 U149 ( .I(inc_address[2]), .ZN(n489) );
  inv0d1 U150 ( .I(inc_address[1]), .ZN(n490) );
  inv0d1 U151 ( .I(n21), .ZN(n500) );
  inv0d1 U152 ( .I(n24), .ZN(n497) );
  inv0d1 U153 ( .I(inc_address[8]), .ZN(n483) );
  inv0d1 U154 ( .I(inc_address[11]), .ZN(n480) );
  inv0d1 U155 ( .I(inc_address[10]), .ZN(n481) );
  inv0d1 U156 ( .I(inc_address[9]), .ZN(n482) );
  inv0d1 U157 ( .I(n26), .ZN(n495) );
  nd02d1 U158 ( .A1(n191), .A2(n192), .ZN(n190) );
  nd02d1 U159 ( .A1(n237), .A2(n238), .ZN(n396) );
  inv0d1 U160 ( .I(n239), .ZN(n426) );
  inv0d1 U161 ( .I(n8), .ZN(n513) );
  inv0d1 U162 ( .I(n10), .ZN(n511) );
  inv0d1 U163 ( .I(n35), .ZN(queue_count[2]) );
  inv0d1 U164 ( .I(n14), .ZN(n507) );
  inv0d1 U165 ( .I(n18), .ZN(n503) );
  inv0d1 U166 ( .I(n20), .ZN(n501) );
  nd02d1 U167 ( .A1(n520), .A2(n519), .ZN(n139) );
  nd03d0 U168 ( .A1(wr_reg), .A2(w_addr[3]), .A3(n220), .ZN(n143) );
  inv0d1 U169 ( .I(addr_op[2]), .ZN(n443) );
  inv0d1 U170 ( .I(addr_op[3]), .ZN(n450) );
  inv0d1 U171 ( .I(n16), .ZN(n505) );
  aor221d1 U172 ( .B1(n224), .B2(n443), .C1(n440), .C2(addr_op[3]), .A(n218), 
        .Z(n183) );
  an03d1 U173 ( .A1(addr_op[1]), .A2(addr_op[0]), .A3(n235), .Z(n151) );
  nd02d1 U174 ( .A1(\bus_state[0] ), .A2(n34), .ZN(n289) );
  inv0d1 U175 ( .I(n34), .ZN(n468) );
  inv0d1 U176 ( .I(addr_op[0]), .ZN(n446) );
  inv0d1 U177 ( .I(addr_op[1]), .ZN(n449) );
  inv0d1 U178 ( .I(w_addr[0]), .ZN(n461) );
  inv0d1 U179 ( .I(w_addr[1]), .ZN(n460) );
  nd12d0 U180 ( .A1(n247), .A2(n248), .ZN(n398) );
  inv0d1 U181 ( .I(n249), .ZN(n462) );
  inv0d1 U182 ( .I(w_addr[2]), .ZN(n459) );
  nd02d1 U183 ( .A1(data_op[0]), .A2(n139), .ZN(n138) );
  inv0d1 U184 ( .I(clear_queue), .ZN(n463) );
  nd02d1 U185 ( .A1(data_op[1]), .A2(ready), .ZN(n290) );
  nd02d1 U186 ( .A1(data_op[2]), .A2(ready), .ZN(n313) );
  inv0d1 U187 ( .I(queue_count[0]), .ZN(n466) );
  inv0d1 U188 ( .I(n31), .ZN(n475) );
  inv0d1 U189 ( .I(queue_count[1]), .ZN(n467) );
  inv0d1 U190 ( .I(n32), .ZN(n474) );
  inv0d1 U191 ( .I(data_op[2]), .ZN(n452) );
  inv0d1 U192 ( .I(data_op[1]), .ZN(n447) );
  inv0d1 U193 ( .I(ready), .ZN(n519) );
  aoi2222d1 U194 ( .A1(\reg_file[1][0] ), .A2(n81), .B1(\reg_file[3][0] ), 
        .B2(n80), .C1(\reg_file[5][0] ), .C2(n79), .D1(\reg_file[7][0] ), .D2(
        n78), .ZN(n65) );
  aoi2222d1 U195 ( .A1(\reg_file[0][0] ), .A2(n81), .B1(\reg_file[2][0] ), 
        .B2(n80), .C1(\reg_file[4][0] ), .C2(n79), .D1(\reg_file[6][0] ), .D2(
        n78), .ZN(n64) );
  oai22d1 U196 ( .A1(n84), .A2(n65), .B1(N58), .B2(n64), .ZN(N76) );
  aoi2222d1 U197 ( .A1(\reg_file[1][1] ), .A2(n81), .B1(\reg_file[3][1] ), 
        .B2(n80), .C1(\reg_file[5][1] ), .C2(n79), .D1(\reg_file[7][1] ), .D2(
        n78), .ZN(n67) );
  aoi2222d1 U198 ( .A1(\reg_file[0][1] ), .A2(n81), .B1(\reg_file[2][1] ), 
        .B2(n80), .C1(\reg_file[4][1] ), .C2(n79), .D1(\reg_file[6][1] ), .D2(
        n78), .ZN(n66) );
  oai22d1 U199 ( .A1(n84), .A2(n67), .B1(N58), .B2(n66), .ZN(N75) );
  aoi2222d1 U200 ( .A1(\reg_file[1][2] ), .A2(n81), .B1(\reg_file[3][2] ), 
        .B2(n80), .C1(\reg_file[5][2] ), .C2(n79), .D1(\reg_file[7][2] ), .D2(
        n78), .ZN(n69) );
  aoi2222d1 U201 ( .A1(\reg_file[0][2] ), .A2(n81), .B1(\reg_file[2][2] ), 
        .B2(n80), .C1(\reg_file[4][2] ), .C2(n79), .D1(\reg_file[6][2] ), .D2(
        n78), .ZN(n68) );
  oai22d1 U202 ( .A1(n84), .A2(n69), .B1(N58), .B2(n68), .ZN(N74) );
  aoi2222d1 U203 ( .A1(\reg_file[1][3] ), .A2(n81), .B1(\reg_file[3][3] ), 
        .B2(n80), .C1(\reg_file[5][3] ), .C2(n79), .D1(\reg_file[7][3] ), .D2(
        n78), .ZN(n71) );
  aoi2222d1 U204 ( .A1(\reg_file[0][3] ), .A2(n81), .B1(\reg_file[2][3] ), 
        .B2(n80), .C1(\reg_file[4][3] ), .C2(n79), .D1(\reg_file[6][3] ), .D2(
        n78), .ZN(n70) );
  oai22d1 U205 ( .A1(n84), .A2(n71), .B1(N58), .B2(n70), .ZN(N73) );
  aoi2222d1 U246 ( .A1(\reg_file[1][4] ), .A2(n81), .B1(\reg_file[3][4] ), 
        .B2(n80), .C1(\reg_file[5][4] ), .C2(n79), .D1(\reg_file[7][4] ), .D2(
        n78), .ZN(n73) );
  aoi2222d1 U280 ( .A1(\reg_file[0][4] ), .A2(n81), .B1(\reg_file[2][4] ), 
        .B2(n80), .C1(\reg_file[4][4] ), .C2(n79), .D1(\reg_file[6][4] ), .D2(
        n78), .ZN(n72) );
  oai22d1 U281 ( .A1(n84), .A2(n73), .B1(N58), .B2(n72), .ZN(N72) );
  aoi2222d1 U288 ( .A1(\reg_file[1][5] ), .A2(n81), .B1(\reg_file[3][5] ), 
        .B2(n80), .C1(\reg_file[5][5] ), .C2(n79), .D1(\reg_file[7][5] ), .D2(
        n78), .ZN(n75) );
  aoi2222d1 U293 ( .A1(\reg_file[0][5] ), .A2(n81), .B1(\reg_file[2][5] ), 
        .B2(n80), .C1(\reg_file[4][5] ), .C2(n79), .D1(\reg_file[6][5] ), .D2(
        n78), .ZN(n74) );
  oai22d1 U295 ( .A1(n84), .A2(n75), .B1(N58), .B2(n74), .ZN(N71) );
  aoi2222d1 U378 ( .A1(\reg_file[1][6] ), .A2(n81), .B1(\reg_file[3][6] ), 
        .B2(n80), .C1(\reg_file[5][6] ), .C2(n79), .D1(\reg_file[7][6] ), .D2(
        n78), .ZN(n77) );
  aoi2222d1 U431 ( .A1(\reg_file[0][6] ), .A2(n81), .B1(\reg_file[2][6] ), 
        .B2(n80), .C1(\reg_file[4][6] ), .C2(n79), .D1(\reg_file[6][6] ), .D2(
        n78), .ZN(n76) );
  oai22d1 U433 ( .A1(n84), .A2(n77), .B1(N58), .B2(n76), .ZN(N70) );
  aoi2222d1 U435 ( .A1(\reg_file[1][7] ), .A2(n81), .B1(\reg_file[3][7] ), 
        .B2(n80), .C1(\reg_file[5][7] ), .C2(n79), .D1(\reg_file[7][7] ), .D2(
        n78), .ZN(n83) );
  aoi2222d1 U437 ( .A1(\reg_file[0][7] ), .A2(n81), .B1(\reg_file[2][7] ), 
        .B2(n80), .C1(\reg_file[4][7] ), .C2(n79), .D1(\reg_file[6][7] ), .D2(
        n78), .ZN(n82) );
  oai22d1 U439 ( .A1(n83), .A2(n84), .B1(N58), .B2(n82), .ZN(N69) );
  aoi2222d1 U441 ( .A1(\reg_file[1][0] ), .A2(n102), .B1(\reg_file[3][0] ), 
        .B2(n101), .C1(\reg_file[5][0] ), .C2(n100), .D1(\reg_file[7][0] ), 
        .D2(n99), .ZN(n86) );
  aoi2222d1 U443 ( .A1(\reg_file[0][0] ), .A2(n102), .B1(\reg_file[2][0] ), 
        .B2(n101), .C1(\reg_file[4][0] ), .C2(n100), .D1(\reg_file[6][0] ), 
        .D2(n99), .ZN(n85) );
  oai22d1 U445 ( .A1(n105), .A2(n86), .B1(N61), .B2(n85), .ZN(N85) );
  aoi2222d1 U446 ( .A1(\reg_file[1][1] ), .A2(n102), .B1(\reg_file[3][1] ), 
        .B2(n101), .C1(\reg_file[5][1] ), .C2(n100), .D1(\reg_file[7][1] ), 
        .D2(n99), .ZN(n88) );
  aoi2222d1 U448 ( .A1(\reg_file[0][1] ), .A2(n102), .B1(\reg_file[2][1] ), 
        .B2(n101), .C1(\reg_file[4][1] ), .C2(n100), .D1(\reg_file[6][1] ), 
        .D2(n99), .ZN(n87) );
  oai22d1 U449 ( .A1(n105), .A2(n88), .B1(N61), .B2(n87), .ZN(N84) );
  aoi2222d1 U450 ( .A1(\reg_file[1][2] ), .A2(n102), .B1(\reg_file[3][2] ), 
        .B2(n101), .C1(\reg_file[5][2] ), .C2(n100), .D1(\reg_file[7][2] ), 
        .D2(n99), .ZN(n90) );
  aoi2222d1 U451 ( .A1(\reg_file[0][2] ), .A2(n102), .B1(\reg_file[2][2] ), 
        .B2(n101), .C1(\reg_file[4][2] ), .C2(n100), .D1(\reg_file[6][2] ), 
        .D2(n99), .ZN(n89) );
  oai22d1 U452 ( .A1(n105), .A2(n90), .B1(N61), .B2(n89), .ZN(N83) );
  aoi2222d1 U453 ( .A1(\reg_file[1][3] ), .A2(n102), .B1(\reg_file[3][3] ), 
        .B2(n101), .C1(\reg_file[5][3] ), .C2(n100), .D1(\reg_file[7][3] ), 
        .D2(n99), .ZN(n92) );
  aoi2222d1 U454 ( .A1(\reg_file[0][3] ), .A2(n102), .B1(\reg_file[2][3] ), 
        .B2(n101), .C1(\reg_file[4][3] ), .C2(n100), .D1(\reg_file[6][3] ), 
        .D2(n99), .ZN(n91) );
  oai22d1 U455 ( .A1(n105), .A2(n92), .B1(N61), .B2(n91), .ZN(N82) );
  aoi2222d1 U456 ( .A1(\reg_file[1][4] ), .A2(n102), .B1(\reg_file[3][4] ), 
        .B2(n101), .C1(\reg_file[5][4] ), .C2(n100), .D1(\reg_file[7][4] ), 
        .D2(n99), .ZN(n94) );
  aoi2222d1 U457 ( .A1(\reg_file[0][4] ), .A2(n102), .B1(\reg_file[2][4] ), 
        .B2(n101), .C1(\reg_file[4][4] ), .C2(n100), .D1(\reg_file[6][4] ), 
        .D2(n99), .ZN(n93) );
  oai22d1 U458 ( .A1(n105), .A2(n94), .B1(N61), .B2(n93), .ZN(N81) );
  aoi2222d1 U459 ( .A1(\reg_file[1][5] ), .A2(n102), .B1(\reg_file[3][5] ), 
        .B2(n101), .C1(\reg_file[5][5] ), .C2(n100), .D1(\reg_file[7][5] ), 
        .D2(n99), .ZN(n96) );
  aoi2222d1 U460 ( .A1(\reg_file[0][5] ), .A2(n102), .B1(\reg_file[2][5] ), 
        .B2(n101), .C1(\reg_file[4][5] ), .C2(n100), .D1(\reg_file[6][5] ), 
        .D2(n99), .ZN(n95) );
  oai22d1 U461 ( .A1(n105), .A2(n96), .B1(N61), .B2(n95), .ZN(N80) );
  aoi2222d1 U462 ( .A1(\reg_file[1][6] ), .A2(n102), .B1(\reg_file[3][6] ), 
        .B2(n101), .C1(\reg_file[5][6] ), .C2(n100), .D1(\reg_file[7][6] ), 
        .D2(n99), .ZN(n98) );
  aoi2222d1 U463 ( .A1(\reg_file[0][6] ), .A2(n102), .B1(\reg_file[2][6] ), 
        .B2(n101), .C1(\reg_file[4][6] ), .C2(n100), .D1(\reg_file[6][6] ), 
        .D2(n99), .ZN(n97) );
  oai22d1 U464 ( .A1(n105), .A2(n98), .B1(N61), .B2(n97), .ZN(N79) );
  aoi2222d1 U465 ( .A1(\reg_file[1][7] ), .A2(n102), .B1(\reg_file[3][7] ), 
        .B2(n101), .C1(\reg_file[5][7] ), .C2(n100), .D1(\reg_file[7][7] ), 
        .D2(n99), .ZN(n104) );
  aoi2222d1 U466 ( .A1(\reg_file[0][7] ), .A2(n102), .B1(\reg_file[2][7] ), 
        .B2(n101), .C1(\reg_file[4][7] ), .C2(n100), .D1(\reg_file[6][7] ), 
        .D2(n99), .ZN(n103) );
  oai22d1 U467 ( .A1(n104), .A2(n105), .B1(N61), .B2(n103), .ZN(N78) );
  bufbd7 U468 ( .I(n522), .Z(ifetch) );
  invbd7 U469 ( .I(n27), .ZN(address[15]) );
  invbd7 U470 ( .I(n25), .ZN(address[1]) );
  invbd7 U471 ( .I(n23), .ZN(address[2]) );
  invbd7 U472 ( .I(n22), .ZN(address[3]) );
  invbd7 U473 ( .I(n19), .ZN(address[4]) );
  invbd7 U474 ( .I(n17), .ZN(address[5]) );
  invbd7 U475 ( .I(n15), .ZN(address[6]) );
  invbd7 U476 ( .I(n13), .ZN(address[7]) );
  invbd7 U477 ( .I(n9), .ZN(address[10]) );
  invbd7 U478 ( .I(n7), .ZN(address[11]) );
  invbd7 U479 ( .I(n6), .ZN(address[12]) );
  invbd7 U480 ( .I(n5), .ZN(address[13]) );
  invbd7 U481 ( .I(n28), .ZN(address[8]) );
  invbd7 U482 ( .I(n11), .ZN(address[9]) );
  invbd7 U483 ( .I(n4), .ZN(address[14]) );
  invbd7 U484 ( .I(n30), .ZN(address[0]) );
  bufbd7 U485 ( .I(n521), .Z(write) );
  bufbd7 U486 ( .I(n523), .Z(iack) );
  invbd7 U487 ( .I(n472), .ZN(cycle) );
  bufbd7 U488 ( .I(psw_4), .Z(ie) );
  nd02d0 U489 ( .A1(n236), .A2(ifetch), .ZN(n246) );
  xr02d1 U490 ( .A1(\add_377/carry[15] ), .A2(pc[15]), .Z(N143) );
  an02d0 U491 ( .A1(pc[14]), .A2(\add_377/carry[14] ), .Z(\add_377/carry[15] )
         );
  xr02d1 U492 ( .A1(\add_377/carry[14] ), .A2(pc[14]), .Z(N142) );
  an02d0 U493 ( .A1(pc[13]), .A2(\add_377/carry[13] ), .Z(\add_377/carry[14] )
         );
  xr02d1 U494 ( .A1(\add_377/carry[13] ), .A2(pc[13]), .Z(N141) );
  an02d0 U495 ( .A1(pc[12]), .A2(\add_377/carry[12] ), .Z(\add_377/carry[13] )
         );
  xr02d1 U496 ( .A1(\add_377/carry[12] ), .A2(pc[12]), .Z(N140) );
  an02d0 U497 ( .A1(pc[11]), .A2(\add_377/carry[11] ), .Z(\add_377/carry[12] )
         );
  xr02d1 U498 ( .A1(\add_377/carry[11] ), .A2(pc[11]), .Z(N139) );
  an02d0 U499 ( .A1(pc[10]), .A2(\add_377/carry[10] ), .Z(\add_377/carry[11] )
         );
  xr02d1 U500 ( .A1(\add_377/carry[10] ), .A2(pc[10]), .Z(N138) );
  an02d0 U501 ( .A1(pc[9]), .A2(\add_377/carry[9] ), .Z(\add_377/carry[10] )
         );
  xr02d1 U502 ( .A1(\add_377/carry[9] ), .A2(pc[9]), .Z(N137) );
  an02d0 U503 ( .A1(pc[8]), .A2(\add_377/carry[8] ), .Z(\add_377/carry[9] ) );
  xr02d1 U504 ( .A1(\add_377/carry[8] ), .A2(pc[8]), .Z(N136) );
  an02d0 U505 ( .A1(pc[7]), .A2(\add_377/carry[7] ), .Z(\add_377/carry[8] ) );
  xr02d1 U506 ( .A1(\add_377/carry[7] ), .A2(pc[7]), .Z(N135) );
  an02d0 U507 ( .A1(pc[6]), .A2(\add_377/carry[6] ), .Z(\add_377/carry[7] ) );
  xr02d1 U508 ( .A1(\add_377/carry[6] ), .A2(pc[6]), .Z(N134) );
  an02d0 U509 ( .A1(pc[5]), .A2(\add_377/carry[5] ), .Z(\add_377/carry[6] ) );
  xr02d1 U510 ( .A1(\add_377/carry[5] ), .A2(pc[5]), .Z(N133) );
  an02d0 U511 ( .A1(pc[4]), .A2(\add_377/carry[4] ), .Z(\add_377/carry[5] ) );
  xr02d1 U512 ( .A1(\add_377/carry[4] ), .A2(pc[4]), .Z(N132) );
  an02d0 U513 ( .A1(pc[3]), .A2(\add_377/carry[3] ), .Z(\add_377/carry[4] ) );
  xr02d1 U514 ( .A1(\add_377/carry[3] ), .A2(pc[3]), .Z(N131) );
  an02d0 U515 ( .A1(pc[2]), .A2(\add_377/carry[2] ), .Z(\add_377/carry[3] ) );
  xr02d1 U516 ( .A1(\add_377/carry[2] ), .A2(pc[2]), .Z(N130) );
  an02d0 U517 ( .A1(pc[0]), .A2(inc_pc[0]), .Z(\add_377/carry[1] ) );
  xr02d1 U518 ( .A1(inc_pc[0]), .A2(pc[0]), .Z(N128) );
  nr02d0 U519 ( .A1(n137), .A2(n473), .ZN(n136) );
  nr02d0 U520 ( .A1(n137), .A2(n425), .ZN(n135) );
  nr02d0 U521 ( .A1(n425), .A2(N65), .ZN(n133) );
  nr02d0 U522 ( .A1(n473), .A2(N65), .ZN(n132) );
  aor22d1 U523 ( .A1(\ins_queue[1][0] ), .A2(n133), .B1(\ins_queue[0][0] ), 
        .B2(n132), .Z(n125) );
  aor221d1 U524 ( .B1(\ins_queue[2][0] ), .B2(n136), .C1(\ins_queue[3][0] ), 
        .C2(n135), .A(n125), .Z(queue_out[0]) );
  aor22d1 U525 ( .A1(\ins_queue[1][1] ), .A2(n133), .B1(\ins_queue[0][1] ), 
        .B2(n132), .Z(n126) );
  aor221d1 U526 ( .B1(\ins_queue[2][1] ), .B2(n136), .C1(\ins_queue[3][1] ), 
        .C2(n135), .A(n126), .Z(queue_out[1]) );
  aor22d1 U527 ( .A1(\ins_queue[1][2] ), .A2(n133), .B1(\ins_queue[0][2] ), 
        .B2(n132), .Z(n127) );
  aor221d1 U528 ( .B1(\ins_queue[2][2] ), .B2(n136), .C1(\ins_queue[3][2] ), 
        .C2(n135), .A(n127), .Z(queue_out[2]) );
  aor22d1 U529 ( .A1(\ins_queue[1][3] ), .A2(n133), .B1(\ins_queue[0][3] ), 
        .B2(n132), .Z(n128) );
  aor221d1 U530 ( .B1(\ins_queue[2][3] ), .B2(n136), .C1(\ins_queue[3][3] ), 
        .C2(n135), .A(n128), .Z(queue_out[3]) );
  aor22d1 U531 ( .A1(\ins_queue[1][4] ), .A2(n133), .B1(\ins_queue[0][4] ), 
        .B2(n132), .Z(n129) );
  aor221d1 U532 ( .B1(\ins_queue[2][4] ), .B2(n136), .C1(\ins_queue[3][4] ), 
        .C2(n135), .A(n129), .Z(queue_out[4]) );
  aor22d1 U533 ( .A1(\ins_queue[1][5] ), .A2(n133), .B1(\ins_queue[0][5] ), 
        .B2(n132), .Z(n130) );
  aor221d1 U534 ( .B1(\ins_queue[2][5] ), .B2(n136), .C1(\ins_queue[3][5] ), 
        .C2(n135), .A(n130), .Z(queue_out[5]) );
  aor22d1 U535 ( .A1(\ins_queue[1][6] ), .A2(n133), .B1(\ins_queue[0][6] ), 
        .B2(n132), .Z(n131) );
  aor221d1 U536 ( .B1(\ins_queue[2][6] ), .B2(n136), .C1(\ins_queue[3][6] ), 
        .C2(n135), .A(n131), .Z(queue_out[6]) );
  aor22d1 U537 ( .A1(\ins_queue[1][7] ), .A2(n133), .B1(\ins_queue[0][7] ), 
        .B2(n132), .Z(n134) );
  aor221d1 U538 ( .B1(\ins_queue[2][7] ), .B2(n136), .C1(\ins_queue[3][7] ), 
        .C2(n135), .A(n134), .Z(queue_out[7]) );
  invbd2 U539 ( .I(n520), .ZN(n472) );
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
  wire   n731, decode_6, decode_5, decode_4, decode_3, decode_2, decode_1,
         decode_0, int_reg, div_reg, N162, N165, N168, int_processing,
         next_int_processing, N440, N441, N442, N443, N444, N445, N446, N447,
         N582, N583, N587, N588, N589, N590, N591, N592, N593, N594, N639,
         N640, N644, N645, N646, N647, N652, N653, N654, N655, N718, N719,
         N720, N721, N818, N819, N820, N821, N826, N827, N828, N829, N848,
         N849, N850, N851, N852, N853, N854, N855, N863, N929, N930, N934,
         N935, N936, N937, N942, N943, N944, N945, N1020, N1021, N1025, N1026,
         N1027, N1028, N1087, N1088, N1089, N1090, N1110, N1111, N1114, N1115,
         N1116, N1117, N1118, N1119, N1120, N1121, N1188, N1189, N1194, N1195,
         N1196, N1197, N1202, N1203, N1204, N1205, N1233, N1234, N1235, N1236,
         N1297, N1298, N1302, N1303, N1304, N1305, N1310, N1311, N1312, N1313,
         N1363, n4, n5, n6, n7, n8, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n251, n252, n253, n254, n255, n256,
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
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
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
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n1, n3, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n250, n410, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, n571, n572, n573,
         n574, n575, n576, n577, n578, n579, n580, n581, n582, n583, n584,
         n585, n586, n587, n588, n589, n590, n591, n592, n593, n594, n595,
         n596, n597, n598, n599, n600, n601, n602, n603, n604, n605, n607,
         n608, n609, n610, n611, n612, n613, n614, n615, n616, n617, n618,
         n619, n620, n621, n622, n623, n624, n625, n626, n627, n628, n629,
         n630, n631, n632, n633, n634, n635, n636, n637, n638, n639, n640,
         n641, n642, n643, n644, n645, n646, n647, n648, n649, n650, n651,
         n652, n653, n654, n655, n656, n657, n658, n659, n660, n661, n662,
         n663, n664, n665, n666, n667, n668, n669, n670, n671, n672, n673,
         n674, n675, n676, n677, n678, n679, n680, n681, n682, n683, n684,
         n685, n686, n687, n688, n689, n690, n691, n692, n693, n694, n695,
         n696, n697, n698, n699, n700, n701, n702, n703, n704, n705, n706,
         n707, n708, n709, n710, n711, n712, n713, n714, n715, n717, n718,
         n720, n723, n724, n725, n726, n727, n728, n729, n730;
  wire   [51:12] decode;
  wire   [3:2] opcode_op_d;
  wire   [7:3] opcode;
  wire   [2:0] operan;
  wire   [3:0] state;
  wire   [7:0] opcode_tmp;
  assign a_src[1] = 1'b0;

  dfcrn1 \int_type_reg[0]  ( .D(n553), .CP(clk), .CDN(n600), .QN(n8) );
  dfcrn1 \int_type_reg[1]  ( .D(n552), .CP(clk), .CDN(n600), .QN(n6) );
  dfprb1 lu_op_reg ( .D(N1363), .CP(clk), .SDN(n601), .Q(lu_op) );
  dfcrn1 \a_addr_reg[1]  ( .D(n557), .CP(clk), .CDN(n600), .QN(n4) );
  or02d1 U10 ( .A1(n139), .A2(n140), .Z(opcode_op[4]) );
  an02d1 U13 ( .A1(carry_src[1]), .A2(n617), .Z(n185) );
  or03d1 U17 ( .A1(n222), .A2(n223), .A3(n224), .Z(n215) );
  an04d1 U18 ( .A1(n699), .A2(n225), .A3(n226), .A4(n227), .Z(n213) );
  or04d1 U23 ( .A1(n258), .A2(n259), .A3(n260), .A4(n643), .Z(n256) );
  or03d1 U27 ( .A1(n293), .A2(n294), .A3(n267), .Z(n292) );
  an02d1 U29 ( .A1(n668), .A2(n253), .Z(n266) );
  or02d1 U33 ( .A1(n366), .A2(n367), .Z(n365) );
  or03d1 U36 ( .A1(n385), .A2(n364), .A3(n640), .Z(n380) );
  or03d1 U37 ( .A1(n655), .A2(n640), .A3(n363), .Z(n381) );
  or02d1 U40 ( .A1(n373), .A2(n263), .Z(n396) );
  or04d1 U41 ( .A1(n689), .A2(n367), .A3(n401), .A4(n402), .Z(n400) );
  or03d1 U42 ( .A1(n281), .A2(n403), .A3(n404), .Z(n402) );
  an02d1 U47 ( .A1(n434), .A2(n596), .Z(decode[18]) );
  an02d1 U49 ( .A1(n596), .A2(n437), .Z(decode[13]) );
  an02d1 U51 ( .A1(n445), .A2(n446), .Z(n200) );
  an02d1 U52 ( .A1(n447), .A2(n445), .Z(n350) );
  an02d1 U57 ( .A1(n447), .A2(n448), .Z(n425) );
  an04d1 U60 ( .A1(n677), .A2(n454), .A3(n455), .A4(n456), .Z(n440) );
  an02d1 U62 ( .A1(n653), .A2(n290), .Z(n267) );
  an02d1 U64 ( .A1(n201), .A2(n654), .Z(n263) );
  an02d1 U65 ( .A1(n449), .A2(n443), .Z(n201) );
  an02d1 U80 ( .A1(n464), .A2(w_addr[2]), .Z(N720) );
  an02d1 U84 ( .A1(n219), .A2(b_src[0]), .Z(N639) );
  an02d1 U88 ( .A1(w_addr[2]), .A2(n475), .Z(N589) );
  an02d1 U91 ( .A1(n683), .A2(w_addr[1]), .Z(N441) );
  an02d1 U92 ( .A1(n683), .A2(w_addr[0]), .Z(N440) );
  or04d1 U93 ( .A1(decode[44]), .A2(decode[45]), .A3(decode[46]), .A4(
        decode[47]), .Z(N1363) );
  or02d1 U94 ( .A1(n404), .A2(n330), .Z(n224) );
  an02d1 U95 ( .A1(n443), .A2(n482), .Z(n330) );
  or03d1 U99 ( .A1(n284), .A2(n664), .A3(n661), .Z(n144) );
  an02d1 U106 ( .A1(n447), .A2(n505), .Z(n451) );
  or02d1 U108 ( .A1(n238), .A2(n257), .Z(n478) );
  an03d1 U111 ( .A1(n342), .A2(n407), .A3(n509), .Z(n249) );
  an02d1 U115 ( .A1(n446), .A2(n482), .Z(n450) );
  an02d1 U116 ( .A1(n446), .A2(n505), .Z(n452) );
  or04d1 U118 ( .A1(n489), .A2(n517), .A3(n418), .A4(n643), .Z(n498) );
  an02d1 U121 ( .A1(n468), .A2(n686), .Z(n418) );
  an02d1 U125 ( .A1(n707), .A2(n464), .Z(n517) );
  an04d1 U128 ( .A1(n631), .A2(n519), .A3(n333), .A4(n336), .Z(n209) );
  an02d1 U133 ( .A1(n525), .A2(n581), .Z(n449) );
  an02d1 U135 ( .A1(n526), .A2(n704), .Z(n505) );
  an02d1 U137 ( .A1(n527), .A2(n712), .Z(n445) );
  an02d1 U141 ( .A1(n526), .A2(opcode[4]), .Z(n482) );
  an02d1 U144 ( .A1(n527), .A2(opcode[6]), .Z(n507) );
  an02d1 U146 ( .A1(n530), .A2(N863), .Z(n279) );
  an04d1 U150 ( .A1(n316), .A2(n645), .A3(n658), .A4(n533), .Z(n231) );
  an02d1 U151 ( .A1(n521), .A2(n534), .Z(n530) );
  or02d1 U161 ( .A1(n593), .A2(n684), .Z(n492) );
  an02d1 U162 ( .A1(n593), .A2(n595), .Z(n499) );
  an02d1 U164 ( .A1(n525), .A2(opcode[5]), .Z(n444) );
  an02d1 U165 ( .A1(n541), .A2(a_addr[3]), .Z(N1205) );
  an02d1 U167 ( .A1(n409), .A2(n524), .Z(n392) );
  an02d1 U170 ( .A1(n544), .A2(b_src[1]), .Z(N1189) );
  an02d1 U178 ( .A1(n546), .A2(a_addr[3]), .Z(N1090) );
  an02d1 U185 ( .A1(w_addr[3]), .A2(n409), .Z(N1197) );
  an02d1 U186 ( .A1(w_addr[2]), .A2(n409), .Z(N1196) );
  an02d1 U187 ( .A1(w_addr[1]), .A2(n409), .Z(N1195) );
  an02d1 U188 ( .A1(w_addr[0]), .A2(n409), .Z(N1194) );
  or04d1 U196 ( .A1(n551), .A2(n326), .A3(n311), .A4(n345), .Z(n299) );
  ora31d1 U335 ( .B1(n141), .B2(n142), .B3(n143), .A(n596), .Z(n139) );
  aor221d1 U336 ( .B1(n707), .B2(n144), .C1(n660), .C2(n705), .A(n145), .Z(
        n143) );
  aon211d1 U337 ( .C1(n146), .C2(n147), .B(n148), .A(n149), .ZN(n142) );
  oan211d1 U338 ( .C1(n150), .C2(n680), .B(operan[2]), .A(n151), .ZN(n141) );
  aor22d1 U339 ( .A1(n152), .A2(n153), .B1(n619), .B2(n154), .Z(opcode_op[3])
         );
  aor21d1 U340 ( .B1(n670), .B2(n686), .A(n155), .Z(n154) );
  oai21d1 U341 ( .B1(n156), .B2(n157), .A(n158), .ZN(opcode_op[2]) );
  nr04d0 U342 ( .A1(n159), .A2(n160), .A3(n643), .A4(n161), .ZN(n156) );
  aor22d1 U343 ( .A1(n162), .A2(n698), .B1(n681), .B2(n152), .Z(n160) );
  aor211d1 U344 ( .C1(n61), .C2(n627), .A(n163), .B(n164), .Z(n159) );
  oai21d1 U345 ( .B1(n166), .B2(n157), .A(n167), .ZN(opcode_op[0]) );
  nr04d0 U346 ( .A1(n168), .A2(n169), .A3(n170), .A4(n171), .ZN(n166) );
  nr02d0 U347 ( .A1(n172), .A2(n173), .ZN(n170) );
  aor221d1 U348 ( .B1(n706), .B2(n174), .C1(n707), .C2(n175), .A(n671), .Z(
        n168) );
  nd03d0 U349 ( .A1(n616), .A2(n158), .A3(n178), .ZN(next_int_processing) );
  aor31d1 U350 ( .B1(n623), .B2(n7), .B3(n179), .A(n180), .Z(n552) );
  nr02d0 U351 ( .A1(n179), .A2(n6), .ZN(n180) );
  aor31d1 U352 ( .B1(n623), .B2(n181), .B3(n179), .A(n182), .Z(n553) );
  nr02d0 U353 ( .A1(n179), .A2(n8), .ZN(n182) );
  nr02d0 U354 ( .A1(n597), .A2(n622), .ZN(n179) );
  aor31d1 U355 ( .B1(n183), .B2(n184), .B3(n596), .A(n185), .Z(n554) );
  nd04d0 U356 ( .A1(n634), .A2(n186), .A3(n187), .A4(n188), .ZN(n184) );
  aor21d1 U357 ( .B1(carry_src[0]), .B2(n617), .A(n191), .Z(n555) );
  nr03d0 U358 ( .A1(n157), .A2(n617), .A3(n192), .ZN(n191) );
  nr04d0 U359 ( .A1(n193), .A2(n194), .A3(n195), .A4(n190), .ZN(n192) );
  aor211d1 U360 ( .C1(n691), .C2(n196), .A(n635), .B(n197), .Z(n190) );
  nr02d0 U361 ( .A1(n198), .A2(n199), .ZN(n195) );
  aor211d1 U362 ( .C1(carry_src[0]), .C2(n189), .A(n200), .B(n201), .Z(n193)
         );
  aor221d1 U363 ( .B1(n707), .B2(n202), .C1(n706), .C2(n203), .A(n204), .Z(
        n189) );
  nd03d0 U364 ( .A1(n207), .A2(n177), .A3(n165), .ZN(n203) );
  nr04d0 U365 ( .A1(n152), .A2(n208), .A3(n628), .A4(n639), .ZN(n165) );
  nd03d0 U366 ( .A1(n212), .A2(n213), .A3(n214), .ZN(n211) );
  nr04d0 U367 ( .A1(n215), .A2(n216), .A3(n153), .A4(n703), .ZN(n214) );
  aor22d1 U368 ( .A1(n686), .A2(n218), .B1(n219), .B2(n705), .Z(n216) );
  aor211d1 U369 ( .C1(carry_src[2]), .C2(n205), .A(n220), .B(n221), .Z(n218)
         );
  aoi2222d1 U370 ( .A1(carry_src[2]), .A2(n228), .B1(n229), .B2(n230), .C1(
        n231), .C2(n61), .D1(n607), .D2(n707), .ZN(n212) );
  nd03d0 U371 ( .A1(n148), .A2(n232), .A3(n206), .ZN(n228) );
  aoim22d1 U372 ( .A1(n230), .A2(n648), .B1(n233), .B2(n637), .Z(n206) );
  aon211d1 U373 ( .C1(n178), .C2(n234), .B(n597), .A(n235), .ZN(n183) );
  aor221d1 U374 ( .B1(w_addr[0]), .B2(n238), .C1(N1302), .C2(n596), .A(n239), 
        .Z(n237) );
  aor221d1 U375 ( .B1(w_addr[1]), .B2(n238), .C1(N1303), .C2(n596), .A(n241), 
        .Z(n240) );
  aor31d1 U376 ( .B1(n236), .B2(n596), .B3(N1304), .A(n242), .Z(n556) );
  nr02d0 U377 ( .A1(n243), .A2(n725), .ZN(n242) );
  aor221d1 U378 ( .B1(w_addr[3]), .B2(n238), .C1(N1305), .C2(n596), .A(n140), 
        .Z(n244) );
  aor221d1 U379 ( .B1(n3), .B2(n238), .C1(N1310), .C2(n596), .A(n140), .Z(n245) );
  aor22d1 U380 ( .A1(n236), .A2(n246), .B1(a_addr[1]), .B2(n620), .Z(n557) );
  aor221d1 U381 ( .B1(a_addr[1]), .B2(n238), .C1(N1311), .C2(n596), .A(n140), 
        .Z(n246) );
  aor31d1 U382 ( .B1(n236), .B2(n596), .B3(N1312), .A(n247), .Z(n558) );
  nr02d0 U383 ( .A1(n243), .A2(n5), .ZN(n247) );
  nr02d0 U384 ( .A1(n238), .A2(n620), .ZN(n243) );
  aor221d1 U385 ( .B1(a_addr[3]), .B2(n238), .C1(N1313), .C2(n596), .A(n140), 
        .Z(n248) );
  nr02d0 U386 ( .A1(n621), .A2(n249), .ZN(n140) );
  ora21d1 U387 ( .B1(n699), .B2(n157), .A(data_ready), .Z(n236) );
  aor211d1 U388 ( .C1(n624), .C2(n253), .A(n161), .B(n254), .Z(n252) );
  aon211d1 U390 ( .C1(n621), .C2(n699), .B(n618), .A(data_ready), .ZN(n235) );
  nr02d0 U391 ( .A1(n717), .A2(n158), .ZN(decode_6) );
  aor21d1 U392 ( .B1(n619), .B2(n256), .A(n257), .Z(decode_5) );
  aor21d1 U393 ( .B1(n619), .B2(n261), .A(n257), .Z(decode_4) );
  aor221d1 U394 ( .B1(n255), .B2(n665), .C1(n262), .C2(n701), .A(n258), .Z(
        n261) );
  aor221d1 U395 ( .B1(n710), .B2(n666), .C1(n61), .C2(n639), .A(n263), .Z(n258) );
  aor21d1 U396 ( .B1(n619), .B2(n264), .A(n623), .Z(decode_3) );
  aor211d1 U397 ( .C1(n653), .C2(n265), .A(n266), .B(n267), .Z(n264) );
  aor22d1 U398 ( .A1(n619), .A2(n268), .B1(n269), .B2(n153), .Z(decode_2) );
  nd04d0 U399 ( .A1(n633), .A2(n272), .A3(n273), .A4(n188), .ZN(n268) );
  aor22d1 U400 ( .A1(n624), .A2(n153), .B1(n619), .B2(n276), .Z(decode_1) );
  aoi2222d1 U401 ( .A1(n668), .A2(n681), .B1(n701), .B2(n653), .C1(n710), .C2(
        n638), .D1(n279), .D2(n61), .ZN(n278) );
  nr04d0 U402 ( .A1(n280), .A2(n197), .A3(n171), .A4(n281), .ZN(n277) );
  aor221d1 U403 ( .B1(n282), .B2(n698), .C1(n701), .C2(n283), .A(n155), .Z(
        n171) );
  aor221d1 U404 ( .B1(n644), .B2(n253), .C1(n284), .C2(n707), .A(n635), .Z(
        n155) );
  nr02d0 U405 ( .A1(n151), .A2(n285), .ZN(n280) );
  oai21d1 U406 ( .B1(n286), .B2(n157), .A(n616), .ZN(decode_0) );
  nr04d0 U407 ( .A1(n287), .A2(n288), .A3(n275), .A4(n289), .ZN(n286) );
  aor22d1 U408 ( .A1(n646), .A2(n290), .B1(n265), .B2(n283), .Z(n275) );
  aor22d1 U409 ( .A1(n664), .A2(n707), .B1(n681), .B2(n624), .Z(n288) );
  aor211d1 U410 ( .C1(n61), .C2(n291), .A(n201), .B(n292), .Z(n287) );
  aor311d1 U411 ( .C1(n295), .C2(n296), .C3(n596), .A(decode[19]), .B(
        decode[17]), .Z(decode[51]) );
  aor221d1 U412 ( .B1(n295), .B2(n299), .C1(n253), .C2(n300), .A(n266), .Z(
        n297) );
  oaim22d1 U413 ( .A1(n270), .A2(n621), .B1(n596), .B2(n301), .ZN(decode[49])
         );
  nd03d0 U414 ( .A1(n302), .A2(n303), .A3(n304), .ZN(n301) );
  nr04d0 U415 ( .A1(n305), .A2(n163), .A3(n259), .A4(n306), .ZN(n304) );
  aor22d1 U416 ( .A1(n710), .A2(n307), .B1(n691), .B2(n669), .Z(n259) );
  aor211d1 U417 ( .C1(n707), .C2(n308), .A(n294), .B(n260), .Z(n163) );
  aor21d1 U418 ( .B1(n665), .B2(n698), .A(n197), .Z(n260) );
  aor22d1 U419 ( .A1(n656), .A2(n681), .B1(n701), .B2(n309), .Z(n197) );
  nr02d0 U420 ( .A1(n310), .A2(n226), .ZN(n305) );
  oan211d1 U421 ( .C1(n655), .C2(n311), .B(n295), .A(n266), .ZN(n303) );
  oan211d1 U422 ( .C1(n279), .C2(n628), .B(n61), .A(n312), .ZN(n302) );
  oan211d1 U423 ( .C1(divide_by_0), .C2(n313), .B(n314), .A(n657), .ZN(n312)
         );
  nr02d0 U424 ( .A1(n656), .A2(n641), .ZN(n270) );
  oai221d1 U425 ( .B1(n621), .B2(n317), .C1(n318), .C2(n157), .A(n158), .ZN(
        decode[48]) );
  nr04d0 U426 ( .A1(n319), .A2(n320), .A3(n289), .A4(n306), .ZN(n318) );
  oai2222d1 U427 ( .A1(n148), .A2(n321), .B1(n313), .B2(n322), .C1(n323), .C2(
        n324), .D1(n695), .D2(n325), .ZN(n306) );
  nr02d0 U428 ( .A1(n326), .A2(n327), .ZN(n325) );
  aor222d1 U429 ( .A1(n710), .A2(n653), .B1(n162), .B2(n698), .C1(n615), .C2(
        n686), .Z(n289) );
  aor221d1 U430 ( .B1(n706), .B2(n208), .C1(n690), .C2(n654), .A(n164), .Z(
        n320) );
  aor211d1 U431 ( .C1(n707), .C2(n328), .A(n293), .B(n329), .Z(n164) );
  aor22d1 U432 ( .A1(n330), .A2(n331), .B1(n705), .B2(n332), .Z(n329) );
  nd04d0 U433 ( .A1(n333), .A2(n334), .A3(n335), .A4(n336), .ZN(n328) );
  aor221d1 U434 ( .B1(n711), .B2(n337), .C1(n338), .C2(n295), .A(n339), .Z(
        n319) );
  aor211d1 U435 ( .C1(n340), .C2(n253), .A(n263), .B(n267), .Z(n339) );
  nd03d0 U436 ( .A1(n652), .A2(n343), .A3(n344), .ZN(n338) );
  nr02d0 U437 ( .A1(n641), .A2(n624), .ZN(n317) );
  oaim22d1 U438 ( .A1(n347), .A2(n157), .B1(invert_b), .B2(n238), .ZN(
        decode[40]) );
  nr04d0 U439 ( .A1(n348), .A2(n349), .A3(n350), .A4(n692), .ZN(n347) );
  aor22d1 U440 ( .A1(n691), .A2(n351), .B1(invert_b), .B2(n352), .Z(n349) );
  nd03d0 U441 ( .A1(n353), .A2(n677), .A3(n354), .ZN(n352) );
  aor221d1 U442 ( .B1(n681), .B2(n355), .C1(n690), .C2(N855), .A(n194), .Z(
        n348) );
  aor211d1 U443 ( .C1(n356), .C2(n153), .A(n622), .B(n357), .Z(decode[35]) );
  aor22d1 U444 ( .A1(n619), .A2(n358), .B1(b_addr[3]), .B2(n238), .Z(n357) );
  aor221d1 U445 ( .B1(b_addr[3]), .B2(n359), .C1(n61), .C2(n360), .A(n294), 
        .Z(n358) );
  aor211d1 U446 ( .C1(b_addr[3]), .C2(n361), .A(n274), .B(n362), .Z(n360) );
  aor221d1 U447 ( .B1(n700), .B2(n363), .C1(n364), .C2(n694), .A(n365), .Z(
        n359) );
  aor22d1 U448 ( .A1(n619), .A2(n368), .B1(b_addr[2]), .B2(n238), .Z(
        decode[34]) );
  aor221d1 U449 ( .B1(n369), .B2(operan[2]), .C1(b_addr[2]), .C2(n370), .A(
        n371), .Z(n368) );
  aor22d1 U450 ( .A1(n614), .A2(n201), .B1(n293), .B2(n594), .Z(n371) );
  aor221d1 U451 ( .B1(n694), .B2(n372), .C1(n700), .C2(n611), .A(n373), .Z(
        n369) );
  nd04d0 U452 ( .A1(n298), .A2(n374), .A3(n375), .A4(n167), .ZN(decode[33]) );
  aoi2222d1 U453 ( .A1(n377), .A2(n594), .B1(b_addr[1]), .B2(n378), .C1(n293), 
        .C2(n592), .D1(n61), .D2(n379), .ZN(n376) );
  aor211d1 U454 ( .C1(b_addr[1]), .C2(n361), .A(n650), .B(n362), .Z(n379) );
  aor221d1 U455 ( .B1(n694), .B2(n380), .C1(n700), .C2(n381), .A(n366), .Z(
        n378) );
  ora21d1 U456 ( .B1(n271), .B2(n621), .A(n158), .Z(n298) );
  aor222d1 U457 ( .A1(n596), .A2(n382), .B1(b_addr[0]), .B2(n238), .C1(n641), 
        .C2(n153), .Z(decode[32]) );
  aor211d1 U458 ( .C1(n377), .C2(n593), .A(n294), .B(n383), .Z(n382) );
  aor22d1 U459 ( .A1(n672), .A2(n706), .B1(b_addr[0]), .B2(n370), .Z(n383) );
  aor211d1 U460 ( .C1(n706), .C2(n361), .A(n366), .B(n384), .Z(n370) );
  aor22d1 U461 ( .A1(n700), .A2(n381), .B1(n694), .B2(n380), .Z(n384) );
  nd03d0 U462 ( .A1(n386), .A2(n387), .A3(n388), .ZN(n366) );
  nr04d0 U463 ( .A1(n389), .A2(n707), .A3(n671), .A4(n686), .ZN(n388) );
  nd03d0 U464 ( .A1(n173), .A2(n697), .A3(n227), .ZN(n389) );
  aoi222d1 U465 ( .A1(n710), .A2(n310), .B1(n701), .B2(n390), .C1(n255), .C2(
        n391), .ZN(n387) );
  ora211d1 U466 ( .C1(n662), .C2(n394), .A(n353), .B(n395), .Z(n386) );
  nr02d0 U467 ( .A1(n224), .A2(n696), .ZN(n353) );
  aor221d1 U468 ( .B1(n694), .B2(n372), .C1(n700), .C2(n611), .A(n396), .Z(
        n377) );
  aor211d1 U469 ( .C1(n255), .C2(n665), .A(n688), .B(n397), .Z(n373) );
  ora31d1 U470 ( .B1(n398), .B2(n399), .B3(n400), .A(n619), .Z(decode[27]) );
  aor21d1 U471 ( .B1(n691), .B2(n647), .A(n201), .Z(n281) );
  aor222d1 U472 ( .A1(n330), .A2(n331), .B1(n230), .B2(n646), .C1(n686), .C2(
        n405), .Z(n399) );
  nd04d0 U473 ( .A1(n406), .A2(n642), .A3(n407), .A4(operan[2]), .ZN(n405) );
  oai321d1 U474 ( .C1(n408), .C2(operan[2]), .C3(n595), .B1(n702), .B2(n409), 
        .A(n149), .ZN(n398) );
  aor221d1 U475 ( .B1(a_src[0]), .B2(n238), .C1(n619), .C2(n411), .A(n412), 
        .Z(decode[25]) );
  aor211d1 U476 ( .C1(n698), .C2(n648), .A(n401), .B(n413), .Z(n411) );
  aor211d1 U477 ( .C1(a_src[0]), .C2(n62), .A(n293), .B(n330), .Z(n413) );
  nr02d0 U478 ( .A1(n233), .A2(n414), .ZN(n293) );
  aoi211d1 U480 ( .C1(n219), .C2(n705), .A(n416), .B(n417), .ZN(n354) );
  aor221d1 U481 ( .B1(n231), .B2(n706), .C1(n607), .C2(n707), .A(n418), .Z(
        n417) );
  aor21d1 U482 ( .B1(n707), .B2(n659), .A(n145), .Z(n401) );
  aor21d1 U483 ( .B1(n706), .B2(n362), .A(n294), .Z(n145) );
  nr02d0 U484 ( .A1(n420), .A2(n394), .ZN(n294) );
  aor31d1 U485 ( .B1(n619), .B2(N863), .B3(n690), .A(n421), .Z(decode[22]) );
  nr02d0 U486 ( .A1(n422), .A2(n158), .ZN(n421) );
  nr02d0 U487 ( .A1(n423), .A2(n157), .ZN(decode[21]) );
  nr04d0 U488 ( .A1(n424), .A2(n689), .A3(n425), .A4(n194), .ZN(n423) );
  nd03d0 U489 ( .A1(n426), .A2(n427), .A3(n428), .ZN(n194) );
  nr04d0 U490 ( .A1(n429), .A2(n690), .A3(n350), .A4(n200), .ZN(n395) );
  nd03d0 U491 ( .A1(n677), .A2(n430), .A3(n187), .ZN(n424) );
  nr02d0 U492 ( .A1(n431), .A2(n157), .ZN(decode[20]) );
  nr02d0 U493 ( .A1(n432), .A2(n433), .ZN(decode[19]) );
  aor31d1 U494 ( .B1(n700), .B2(n619), .B3(n655), .A(n435), .Z(decode[17]) );
  nr02d0 U495 ( .A1(n322), .A2(n432), .ZN(n435) );
  nr03d0 U496 ( .A1(n343), .A2(n695), .A3(n157), .ZN(decode[16]) );
  nr02d0 U497 ( .A1(n436), .A2(n432), .ZN(decode[15]) );
  nr03d0 U498 ( .A1(n314), .A2(n436), .A3(n157), .ZN(decode[14]) );
  aor221d1 U499 ( .B1(n61), .B2(n624), .C1(n707), .C2(n653), .A(n161), .Z(n437) );
  nr02d0 U500 ( .A1(n336), .A2(n438), .ZN(n161) );
  ora31d1 U501 ( .B1(n263), .B2(n267), .B3(n169), .A(n619), .Z(decode[12]) );
  nd03d0 U502 ( .A1(n439), .A2(n440), .A3(n441), .ZN(n169) );
  nr04d0 U503 ( .A1(n442), .A2(n687), .A3(n223), .A4(n434), .ZN(n441) );
  aor22d1 U504 ( .A1(n694), .A2(n385), .B1(n640), .B2(n700), .Z(n434) );
  aor211d1 U505 ( .C1(n690), .C2(N863), .A(n696), .B(n429), .Z(n223) );
  nr04d0 U506 ( .A1(n403), .A2(n688), .A3(n350), .A4(n200), .ZN(n431) );
  nd03d0 U507 ( .A1(n227), .A2(n426), .A3(n693), .ZN(n403) );
  nd04d0 U508 ( .A1(n217), .A2(n187), .A3(n428), .A4(n430), .ZN(n397) );
  nr04d0 U509 ( .A1(n450), .A2(n451), .A3(n452), .A4(n425), .ZN(n217) );
  aor221d1 U510 ( .B1(n706), .B2(n624), .C1(n663), .C2(n705), .A(n254), .Z(
        n442) );
  aor222d1 U511 ( .A1(n701), .A2(n653), .B1(n653), .B2(n453), .C1(n330), .C2(
        n654), .Z(n254) );
  nd03d0 U512 ( .A1(divide_by_0), .A2(n694), .A3(n315), .ZN(n456) );
  aoi222d1 U513 ( .A1(n330), .A2(n728), .B1(n711), .B2(n458), .C1(n710), .C2(
        n283), .ZN(n439) );
  nr02d0 U514 ( .A1(n461), .A2(n724), .ZN(N937) );
  aor22d1 U515 ( .A1(n640), .A2(operan[2]), .B1(w_addr[2]), .B2(n610), .Z(N936) );
  aor22d1 U516 ( .A1(n640), .A2(n594), .B1(w_addr[1]), .B2(n610), .Z(N935) );
  aor22d1 U517 ( .A1(n640), .A2(n592), .B1(w_addr[0]), .B2(n610), .Z(N934) );
  nr02d0 U518 ( .A1(n363), .A2(n611), .ZN(n461) );
  nr02d0 U519 ( .A1(n462), .A2(n726), .ZN(N930) );
  nr02d0 U520 ( .A1(n462), .A2(n727), .ZN(N929) );
  aor21d1 U521 ( .B1(N851), .B2(n592), .A(n614), .Z(N853) );
  aor21d1 U522 ( .B1(N855), .B2(n595), .A(n670), .Z(N850) );
  aor21d1 U523 ( .B1(N855), .B2(n593), .A(n615), .Z(N849) );
  nr02d0 U524 ( .A1(n609), .A2(n5), .ZN(N828) );
  nr02d0 U525 ( .A1(n362), .A2(n639), .ZN(n463) );
  nr02d0 U526 ( .A1(n609), .A2(n725), .ZN(N820) );
  aor211d1 U527 ( .C1(w_addr[1]), .C2(n361), .A(n644), .B(n639), .Z(N819) );
  aor21d1 U528 ( .B1(w_addr[0]), .B2(n361), .A(n291), .Z(N818) );
  aor21d1 U529 ( .B1(w_addr[1]), .B2(n464), .A(n284), .Z(N719) );
  nd04d0 U530 ( .A1(n465), .A2(n334), .A3(n335), .A4(n466), .ZN(N718) );
  nr02d0 U531 ( .A1(n646), .A2(n5), .ZN(N654) );
  nr02d0 U532 ( .A1(n646), .A2(n723), .ZN(N652) );
  nd03d0 U533 ( .A1(n172), .A2(n724), .A3(n420), .ZN(N647) );
  nr02d0 U534 ( .A1(n467), .A2(n725), .ZN(N646) );
  aor21d1 U535 ( .B1(w_addr[1]), .B2(n632), .A(n646), .Z(N645) );
  aor21d1 U536 ( .B1(w_addr[0]), .B2(n632), .A(n662), .Z(N644) );
  aor21d1 U537 ( .B1(b_src[1]), .B2(n219), .A(n646), .Z(N640) );
  ora21d1 U538 ( .B1(a_addr[3]), .B2(n626), .A(n682), .Z(N594) );
  aor221d1 U539 ( .B1(n468), .B2(a_addr[2]), .C1(n682), .C2(n356), .A(n469), 
        .Z(N593) );
  aor222d1 U540 ( .A1(n468), .A2(a_addr[1]), .B1(n682), .B2(n471), .C1(n593), 
        .C2(n685), .Z(N592) );
  aor221d1 U541 ( .B1(n468), .B2(n3), .C1(n682), .C2(n152), .A(n670), .Z(N591)
         );
  aor21d1 U542 ( .B1(n472), .B2(n473), .A(n685), .Z(N590) );
  aon211d1 U543 ( .C1(n474), .C2(n626), .B(n724), .A(n642), .ZN(n473) );
  aor221d1 U544 ( .B1(n475), .B2(w_addr[1]), .C1(n641), .C2(n682), .A(n670), 
        .Z(N588) );
  aor221d1 U545 ( .B1(n475), .B2(w_addr[0]), .C1(n672), .C2(n682), .A(n615), 
        .Z(N587) );
  oan211d1 U546 ( .C1(n474), .C2(n685), .B(n625), .A(n680), .ZN(n475) );
  nr02d0 U547 ( .A1(n355), .A2(n644), .ZN(n474) );
  nr02d0 U548 ( .A1(n476), .A2(n726), .ZN(N583) );
  nr04d0 U549 ( .A1(n220), .A2(n685), .A3(n680), .A4(n205), .ZN(n476) );
  aor21d1 U550 ( .B1(n682), .B2(n355), .A(b_src[0]), .Z(N582) );
  aor22d1 U551 ( .A1(n679), .A2(n685), .B1(a_addr[3]), .B2(n683), .Z(N447) );
  nr02d0 U552 ( .A1(n415), .A2(n5), .ZN(N446) );
  nr02d0 U553 ( .A1(n415), .A2(n4), .ZN(N445) );
  nr02d0 U554 ( .A1(n415), .A2(n723), .ZN(N444) );
  aor22d1 U555 ( .A1(n472), .A2(n685), .B1(w_addr[3]), .B2(n683), .Z(N443) );
  nr02d0 U556 ( .A1(n415), .A2(n725), .ZN(N442) );
  aoim22d1 U557 ( .A1(int_type[0]), .A2(int_type[1]), .B1(int), .B2(int_reg), 
        .Z(N168) );
  aoim22d1 U558 ( .A1(n8), .A2(int_type[1]), .B1(divide_by_0), .B2(div_reg), 
        .Z(N165) );
  aoim22d1 U559 ( .A1(int_type[0]), .A2(n6), .B1(nmi), .B2(n718), .Z(N162) );
  nd03d0 U560 ( .A1(n167), .A2(n158), .A3(n477), .ZN(decode[47]) );
  aoim22d1 U561 ( .A1(alu_cmd[3]), .A2(n478), .B1(n479), .B2(n157), .Z(n477)
         );
  nr04d0 U562 ( .A1(n480), .A2(n481), .A3(n224), .A4(n367), .ZN(n479) );
  aor222d1 U563 ( .A1(n694), .A2(n385), .B1(n640), .B2(n295), .C1(n655), .C2(
        n700), .Z(n367) );
  nd03d0 U564 ( .A1(n455), .A2(n454), .A3(n460), .ZN(n404) );
  nr03d0 U565 ( .A1(opcode[5]), .A2(opcode[6]), .A3(opcode[4]), .ZN(n448) );
  aor222d1 U566 ( .A1(n649), .A2(n295), .B1(n707), .B2(n659), .C1(n710), .C2(
        n638), .Z(n481) );
  nr02d0 U567 ( .A1(n144), .A2(n660), .ZN(n210) );
  nr03d0 U568 ( .A1(n678), .A2(N863), .A3(n676), .ZN(n284) );
  aor221d1 U569 ( .B1(n706), .B2(n362), .C1(n698), .C2(n648), .A(n484), .Z(
        n480) );
  aor221d1 U570 ( .B1(n485), .B2(n486), .C1(n487), .C2(n685), .A(n488), .Z(
        n484) );
  ora31d1 U571 ( .B1(n707), .B2(n706), .B3(n489), .A(alu_cmd[3]), .Z(n488) );
  aon211d1 U572 ( .C1(n680), .C2(n490), .B(n408), .A(n151), .ZN(n487) );
  oai211d1 U573 ( .C1(n680), .C2(n491), .A(n490), .B(n492), .ZN(n486) );
  oan211d1 U574 ( .C1(n493), .C2(n220), .B(alu_cmd[3]), .A(n362), .ZN(n491) );
  aor22d1 U575 ( .A1(n619), .A2(n494), .B1(alu_cmd[2]), .B2(n478), .Z(
        decode[46]) );
  nd04d0 U576 ( .A1(n709), .A2(n495), .A3(n496), .A4(n227), .ZN(n494) );
  aon211d1 U577 ( .C1(n706), .C2(n497), .B(n498), .A(alu_cmd[2]), .ZN(n496) );
  aor22d1 U578 ( .A1(n619), .A2(n502), .B1(alu_cmd[1]), .B2(n478), .Z(
        decode[45]) );
  nd03d0 U579 ( .A1(n503), .A2(n501), .A3(n504), .ZN(n502) );
  nr03d0 U580 ( .A1(n450), .A2(n457), .A3(n451), .ZN(n504) );
  nr03d0 U581 ( .A1(n406), .A2(n685), .A3(n151), .ZN(n457) );
  nr02d0 U582 ( .A1(n506), .A2(n679), .ZN(n406) );
  aon211d1 U583 ( .C1(n61), .C2(n497), .B(n498), .A(alu_cmd[1]), .ZN(n503) );
  oaim22d1 U584 ( .A1(n508), .A2(n157), .B1(alu_cmd[0]), .B2(n478), .ZN(
        decode[44]) );
  nr02d0 U585 ( .A1(n509), .A2(n621), .ZN(n257) );
  nr03d0 U586 ( .A1(n672), .A2(n641), .A3(n355), .ZN(n509) );
  aon211d1 U587 ( .C1(n511), .C2(n512), .B(opcode_op_d[3]), .A(n714), .ZN(n510) );
  aor21d1 U589 ( .B1(psw[4]), .B2(int_reg), .A(n717), .Z(n514) );
  nr02d0 U590 ( .A1(n718), .A2(div_reg), .ZN(n422) );
  nr04d0 U591 ( .A1(n515), .A2(n708), .A3(n452), .A4(n450), .ZN(n508) );
  aor221d1 U592 ( .B1(n485), .B2(n506), .C1(n649), .C2(n694), .A(n608), .Z(
        n515) );
  aon211d1 U593 ( .C1(n497), .C2(n706), .B(n498), .A(alu_cmd[0]), .ZN(n516) );
  nr02d0 U594 ( .A1(n625), .A2(n680), .ZN(n468) );
  nr02d0 U595 ( .A1(n626), .A2(n685), .ZN(n150) );
  nr02d0 U596 ( .A1(n355), .A2(n205), .ZN(n220) );
  nd03d0 U597 ( .A1(n629), .A2(n333), .A3(n518), .ZN(n419) );
  nr03d0 U598 ( .A1(n661), .A2(n654), .A3(n660), .ZN(n518) );
  nd03d0 U599 ( .A1(n519), .A2(n466), .A3(n520), .ZN(n308) );
  aor221d1 U600 ( .B1(n696), .B2(n683), .C1(n705), .C2(n632), .A(n416), .Z(
        n489) );
  aor221d1 U601 ( .B1(n229), .B2(n698), .C1(n523), .C2(n710), .A(n222), .Z(
        n416) );
  oai2222d1 U602 ( .A1(n314), .A2(n462), .B1(n313), .B2(n612), .C1(n173), .C2(
        n647), .D1(n233), .D2(n524), .ZN(n222) );
  nr02d0 U603 ( .A1(n580), .A2(opcode[3]), .ZN(n443) );
  nr02d0 U604 ( .A1(n230), .A2(n255), .ZN(n438) );
  nr02d0 U605 ( .A1(n513), .A2(n713), .ZN(n255) );
  nr02d0 U606 ( .A1(n513), .A2(opcode[3]), .ZN(n230) );
  nr02d0 U607 ( .A1(n282), .A2(n162), .ZN(n229) );
  nr02d0 U608 ( .A1(n529), .A2(n729), .ZN(n162) );
  nd03d0 U609 ( .A1(n172), .A2(n336), .A3(n391), .ZN(n282) );
  nr03d0 U610 ( .A1(n663), .A2(n219), .A3(n332), .ZN(n467) );
  nr04d0 U611 ( .A1(n332), .A2(n663), .A3(n662), .A4(n646), .ZN(n219) );
  nd03d0 U612 ( .A1(n335), .A2(n336), .A3(n333), .ZN(n332) );
  nr02d0 U613 ( .A1(n712), .A2(opcode[5]), .ZN(n526) );
  nr02d0 U614 ( .A1(n469), .A2(operan[2]), .ZN(n415) );
  nr02d0 U615 ( .A1(n684), .A2(operan[2]), .ZN(n469) );
  nr02d0 U616 ( .A1(n713), .A2(opcode[7]), .ZN(n447) );
  nr02d0 U617 ( .A1(n581), .A2(opcode[4]), .ZN(n527) );
  nr02d0 U618 ( .A1(n274), .A2(n279), .ZN(n146) );
  nd03d0 U619 ( .A1(n658), .A2(n316), .A3(n532), .ZN(n361) );
  nr03d0 U620 ( .A1(n231), .A2(n624), .A3(n630), .ZN(n532) );
  nd03d0 U621 ( .A1(n646), .A2(n728), .A3(n678), .ZN(n522) );
  nr03d0 U622 ( .A1(n300), .A2(n654), .A3(n530), .ZN(n533) );
  nr02d0 U623 ( .A1(n678), .A2(n511), .ZN(n521) );
  ora21d1 U624 ( .B1(n519), .B2(state[2]), .A(n176), .Z(n316) );
  nd03d0 U625 ( .A1(n669), .A2(n728), .A3(n678), .ZN(n520) );
  nd03d0 U626 ( .A1(n535), .A2(n646), .A3(n678), .ZN(n519) );
  aon211d1 U627 ( .C1(n333), .C2(n335), .B(state[2]), .A(n147), .ZN(n208) );
  nd03d0 U628 ( .A1(n531), .A2(n728), .A3(n669), .ZN(n420) );
  nd03d0 U629 ( .A1(n669), .A2(n531), .A3(n535), .ZN(n335) );
  nd03d0 U630 ( .A1(n535), .A2(n669), .A3(n678), .ZN(n333) );
  aor221d1 U631 ( .B1(n536), .B2(n685), .C1(n537), .C2(operan[2]), .A(n538), 
        .Z(n531) );
  aor22d1 U632 ( .A1(n499), .A2(n539), .B1(psw[1]), .B2(n682), .Z(n538) );
  aor221d1 U633 ( .B1(psw[2]), .B2(n593), .C1(psw[3]), .C2(n595), .A(n499), 
        .Z(n537) );
  aor22d1 U634 ( .A1(psw[0]), .A2(n472), .B1(n540), .B2(n730), .Z(n536) );
  oai21d1 U635 ( .B1(n492), .B2(n539), .A(n490), .ZN(n540) );
  xr02d1 U636 ( .A1(psw[2]), .A2(psw[3]), .Z(n539) );
  nr02d0 U637 ( .A1(n593), .A2(n595), .ZN(n472) );
  nr03d0 U638 ( .A1(n712), .A2(n581), .A3(n704), .ZN(n528) );
  nr02d0 U639 ( .A1(opcode[3]), .A2(opcode[7]), .ZN(n446) );
  nr02d0 U640 ( .A1(n151), .A2(n685), .ZN(n485) );
  nr02d0 U641 ( .A1(n580), .A2(n713), .ZN(n483) );
  aor22d1 U642 ( .A1(opcode_tmp[3]), .A2(opcode_op_d[2]), .B1(queue_out[3]), 
        .B2(n714), .Z(opcode[3]) );
  aor22d1 U643 ( .A1(opcode_tmp[7]), .A2(opcode_op_d[2]), .B1(queue_out[7]), 
        .B2(n714), .Z(opcode[7]) );
  aor22d1 U644 ( .A1(opcode_tmp[5]), .A2(opcode_op_d[2]), .B1(queue_out[5]), 
        .B2(n714), .Z(opcode[5]) );
  nr02d0 U645 ( .A1(n704), .A2(opcode[6]), .ZN(n525) );
  aor22d1 U646 ( .A1(opcode_tmp[6]), .A2(opcode_op_d[2]), .B1(queue_out[6]), 
        .B2(n714), .Z(opcode[6]) );
  aor22d1 U647 ( .A1(opcode_tmp[4]), .A2(opcode_op_d[2]), .B1(queue_out[4]), 
        .B2(n714), .Z(opcode[4]) );
  nr02d0 U648 ( .A1(n646), .A2(n724), .ZN(N1236) );
  aor21d1 U649 ( .B1(w_addr[2]), .B2(n172), .A(n636), .Z(N1235) );
  aor22d1 U650 ( .A1(w_addr[1]), .A2(n172), .B1(n646), .B2(n595), .Z(N1234) );
  aor22d1 U651 ( .A1(w_addr[0]), .A2(n172), .B1(n646), .B2(n593), .Z(N1233) );
  aor22d1 U652 ( .A1(a_addr[2]), .A2(n541), .B1(n542), .B2(n595), .Z(N1204) );
  aor22d1 U653 ( .A1(a_addr[1]), .A2(n541), .B1(n542), .B2(n593), .Z(N1203) );
  aor21d1 U654 ( .B1(b_src[0]), .B2(n544), .A(n309), .Z(N1188) );
  nd03d0 U655 ( .A1(n667), .A2(n637), .A3(n414), .ZN(n524) );
  oan211d1 U656 ( .C1(n307), .C2(n666), .B(n535), .A(n653), .ZN(n414) );
  nr02d0 U657 ( .A1(n310), .A2(n535), .ZN(n262) );
  nr02d0 U658 ( .A1(queue_count[0]), .A2(n729), .ZN(n535) );
  nr02d0 U659 ( .A1(queue_count[1]), .A2(queue_count[2]), .ZN(n511) );
  aor21d1 U660 ( .B1(a_addr[2]), .B2(n545), .A(n196), .Z(N1120) );
  aor21d1 U661 ( .B1(a_addr[1]), .B2(n545), .A(n653), .Z(N1119) );
  aor21d1 U662 ( .B1(n3), .B2(n545), .A(n653), .Z(N1118) );
  aor21d1 U663 ( .B1(w_addr[3]), .B2(n545), .A(n351), .Z(N1117) );
  aor211d1 U664 ( .C1(w_addr[2]), .C2(n545), .A(n669), .B(n636), .Z(N1116) );
  aor221d1 U665 ( .B1(n646), .B2(n595), .C1(w_addr[1]), .C2(n545), .A(n653), 
        .Z(N1115) );
  aor221d1 U666 ( .B1(n646), .B2(n593), .C1(w_addr[0]), .C2(n545), .A(n653), 
        .Z(N1114) );
  nr02d0 U667 ( .A1(n647), .A2(n726), .ZN(N1111) );
  aor22d1 U669 ( .A1(n547), .A2(n595), .B1(a_addr[2]), .B2(n546), .Z(N1089) );
  aor22d1 U670 ( .A1(n547), .A2(n593), .B1(a_addr[1]), .B2(n546), .Z(N1088) );
  nr03d0 U671 ( .A1(n666), .A2(n307), .A3(n636), .ZN(n548) );
  nr04d0 U672 ( .A1(n283), .A2(n666), .A3(n307), .A4(n653), .ZN(n523) );
  nr02d0 U673 ( .A1(n529), .A2(operan[2]), .ZN(n307) );
  nr02d0 U674 ( .A1(n720), .A2(n649), .ZN(N945) );
  nr02d0 U675 ( .A1(n5), .A2(n649), .ZN(N944) );
  nr02d0 U676 ( .A1(n4), .A2(n649), .ZN(N943) );
  nr02d0 U677 ( .A1(n723), .A2(n649), .ZN(N942) );
  nr02d0 U678 ( .A1(n549), .A2(n724), .ZN(N1028) );
  aor22d1 U679 ( .A1(n385), .A2(operan[2]), .B1(w_addr[2]), .B2(n613), .Z(
        N1027) );
  aor22d1 U681 ( .A1(n385), .A2(n595), .B1(w_addr[1]), .B2(n613), .Z(N1026) );
  aor22d1 U683 ( .A1(n385), .A2(n593), .B1(w_addr[0]), .B2(n613), .Z(N1025) );
  nr02d0 U684 ( .A1(n372), .A2(n364), .ZN(n549) );
  nr02d0 U686 ( .A1(n612), .A2(n726), .ZN(N1021) );
  nr02d0 U687 ( .A1(n612), .A2(n727), .ZN(N1020) );
  nr02d0 U688 ( .A1(n462), .A2(n385), .ZN(n364) );
  nr02d0 U689 ( .A1(n675), .A2(n271), .ZN(n385) );
  nd03d0 U690 ( .A1(n433), .A2(n343), .A3(n436), .ZN(n372) );
  nr04d0 U691 ( .A1(n299), .A2(n296), .A3(n327), .A4(n315), .ZN(n436) );
  nr02d0 U692 ( .A1(n470), .A2(state[3]), .ZN(n315) );
  nr02d0 U693 ( .A1(n323), .A2(state[3]), .ZN(n327) );
  nr04d0 U694 ( .A1(state[3]), .A2(n654), .A3(n676), .A4(n673), .ZN(n550) );
  nr02d0 U695 ( .A1(n342), .A2(state[3]), .ZN(n345) );
  nr02d0 U696 ( .A1(n407), .A2(state[3]), .ZN(n311) );
  nr02d0 U697 ( .A1(n207), .A2(state[3]), .ZN(n326) );
  nr02d0 U698 ( .A1(n271), .A2(state[3]), .ZN(n551) );
  nd03d0 U699 ( .A1(N863), .A2(n673), .A3(state[1]), .ZN(n271) );
  nd03d0 U700 ( .A1(n673), .A2(n675), .A3(n653), .ZN(n343) );
  nr02d0 U701 ( .A1(state[1]), .A2(state[2]), .ZN(n534) );
  dfcrq1 \w_addr_reg[2]  ( .D(n556), .CP(clk), .CDN(n600), .Q(w_addr[2]) );
  dfcrq1 int_reg_reg ( .D(N168), .CP(clk), .CDN(n600), .Q(int_reg) );
  dfcrq1 div_reg_reg ( .D(N165), .CP(clk), .CDN(n600), .Q(div_reg) );
  dfcrq1 \carry_src_reg[1]  ( .D(n554), .CP(clk), .CDN(n600), .Q(carry_src[1])
         );
  dfcrq1 \carry_src_reg[0]  ( .D(n555), .CP(clk), .CDN(n600), .Q(carry_src[0])
         );
  dfcrn1 \a_addr_reg[2]  ( .D(n558), .CP(clk), .CDN(n600), .QN(n5) );
  mx02d0 \data_op_reg[2]/U4  ( .I0(decode_6), .I1(data_op[2]), .S(n598), .Z(
        n60) );
  dfcrq1 \data_op_reg[2]  ( .D(n60), .CP(clk), .CDN(n602), .Q(data_op[2]) );
  mx02d0 \int_processing_reg/U4  ( .I0(next_int_processing), .I1(
        int_processing), .S(n599), .Z(n59) );
  dfcrq1 int_processing_reg ( .D(n59), .CP(clk), .CDN(n605), .Q(int_processing) );
  mx02d0 \muldiv_op_reg[2]/U4  ( .I0(decode[16]), .I1(muldiv_op[2]), .S(n599), 
        .Z(n58) );
  dfcrq1 \muldiv_op_reg[2]  ( .D(n58), .CP(clk), .CDN(n603), .Q(muldiv_op[2])
         );
  mx02d0 \muldiv_op_reg[0]/U4  ( .I0(decode[14]), .I1(muldiv_op[0]), .S(n599), 
        .Z(n57) );
  dfcrq1 \muldiv_op_reg[0]  ( .D(n57), .CP(clk), .CDN(n603), .Q(muldiv_op[0])
         );
  mx02d0 \flag_op_reg[1]/U4  ( .I0(decode[21]), .I1(flag_op[1]), .S(n598), .Z(
        n56) );
  dfcrq1 \flag_op_reg[1]  ( .D(n56), .CP(clk), .CDN(n603), .Q(flag_op[1]) );
  mx02d0 \flag_op_reg[0]/U4  ( .I0(decode[20]), .I1(flag_op[0]), .S(n599), .Z(
        n55) );
  dfcrq1 \flag_op_reg[0]  ( .D(n55), .CP(clk), .CDN(n603), .Q(flag_op[0]) );
  mx02d0 \muldiv_op_reg[4]/U4  ( .I0(decode[18]), .I1(muldiv_op[4]), .S(n599), 
        .Z(n54) );
  dfcrq1 \muldiv_op_reg[4]  ( .D(n54), .CP(clk), .CDN(n603), .Q(muldiv_op[4])
         );
  mx02d0 \inc_pc_reg[1]/U4  ( .I0(decode[13]), .I1(inc_pc[1]), .S(n598), .Z(
        n53) );
  dfcrq1 \inc_pc_reg[1]  ( .D(n53), .CP(clk), .CDN(n602), .Q(inc_pc[1]) );
  mx02d0 \addr_op_reg[2]/U4  ( .I0(decode_2), .I1(addr_op[2]), .S(n598), .Z(
        n52) );
  dfcrq1 \addr_op_reg[2]  ( .D(n52), .CP(clk), .CDN(n603), .Q(addr_op[2]) );
  mx02d0 \addr_op_reg[3]/U4  ( .I0(decode_3), .I1(addr_op[3]), .S(n598), .Z(
        n51) );
  dfcrq1 \addr_op_reg[3]  ( .D(n51), .CP(clk), .CDN(n602), .Q(addr_op[3]) );
  mx02d0 \state_reg[2]/U4  ( .I0(decode[50]), .I1(state[2]), .S(n599), .Z(n50)
         );
  dfcrq1 \state_reg[2]  ( .D(n50), .CP(clk), .CDN(n605), .Q(state[2]) );
  mx02d0 \flag_op_reg[2]/U4  ( .I0(decode[22]), .I1(flag_op[2]), .S(n598), .Z(
        n49) );
  dfcrq1 \flag_op_reg[2]  ( .D(n49), .CP(clk), .CDN(n602), .Q(flag_op[2]) );
  mx02d0 \muldiv_op_reg[1]/U4  ( .I0(decode[15]), .I1(muldiv_op[1]), .S(n598), 
        .Z(n48) );
  dfcrq1 \muldiv_op_reg[1]  ( .D(n48), .CP(clk), .CDN(n603), .Q(muldiv_op[1])
         );
  mx02d0 \muldiv_op_reg[5]/U4  ( .I0(decode[19]), .I1(muldiv_op[5]), .S(n599), 
        .Z(n47) );
  dfcrq1 \muldiv_op_reg[5]  ( .D(n47), .CP(clk), .CDN(n604), .Q(muldiv_op[5])
         );
  mx02d0 \opcode_tmp_reg[7]/U4  ( .I0(queue_out[7]), .I1(opcode_tmp[7]), .S(
        n251), .Z(n46) );
  dfcrq1 \opcode_tmp_reg[7]  ( .D(n46), .CP(clk), .CDN(n604), .Q(opcode_tmp[7]) );
  mx02d0 \opcode_tmp_reg[6]/U4  ( .I0(queue_out[6]), .I1(opcode_tmp[6]), .S(
        n251), .Z(n45) );
  dfcrq1 \opcode_tmp_reg[6]  ( .D(n45), .CP(clk), .CDN(n604), .Q(opcode_tmp[6]) );
  mx02d0 \opcode_tmp_reg[5]/U4  ( .I0(queue_out[5]), .I1(opcode_tmp[5]), .S(
        n251), .Z(n44) );
  dfcrq1 \opcode_tmp_reg[5]  ( .D(n44), .CP(clk), .CDN(n604), .Q(opcode_tmp[5]) );
  mx02d0 \opcode_tmp_reg[4]/U4  ( .I0(queue_out[4]), .I1(opcode_tmp[4]), .S(
        n251), .Z(n43) );
  dfcrq1 \opcode_tmp_reg[4]  ( .D(n43), .CP(clk), .CDN(n604), .Q(opcode_tmp[4]) );
  mx02d0 \opcode_tmp_reg[3]/U4  ( .I0(queue_out[3]), .I1(opcode_tmp[3]), .S(
        n251), .Z(n42) );
  dfcrq1 \opcode_tmp_reg[3]  ( .D(n42), .CP(clk), .CDN(n604), .Q(opcode_tmp[3]) );
  mx02d0 \opcode_tmp_reg[2]/U4  ( .I0(queue_out[2]), .I1(opcode_tmp[2]), .S(
        n251), .Z(n41) );
  dfcrq1 \opcode_tmp_reg[2]  ( .D(n41), .CP(clk), .CDN(n604), .Q(opcode_tmp[2]) );
  mx02d0 \opcode_tmp_reg[1]/U4  ( .I0(queue_out[1]), .I1(opcode_tmp[1]), .S(
        n251), .Z(n40) );
  dfcrq1 \opcode_tmp_reg[1]  ( .D(n40), .CP(clk), .CDN(n604), .Q(opcode_tmp[1]) );
  mx02d0 \opcode_tmp_reg[0]/U4  ( .I0(queue_out[0]), .I1(opcode_tmp[0]), .S(
        n251), .Z(n39) );
  dfcrq1 \opcode_tmp_reg[0]  ( .D(n39), .CP(clk), .CDN(n603), .Q(opcode_tmp[0]) );
  mx02d0 \opcode_op_d_reg[3]/U4  ( .I0(opcode_op[3]), .I1(opcode_op_d[3]), .S(
        n599), .Z(n38) );
  dfcrq1 \opcode_op_d_reg[3]  ( .D(n38), .CP(clk), .CDN(n605), .Q(
        opcode_op_d[3]) );
  mx02d0 \muldiv_op_reg[3]/U4  ( .I0(decode[17]), .I1(muldiv_op[3]), .S(n599), 
        .Z(n37) );
  dfcrq1 \muldiv_op_reg[3]  ( .D(n37), .CP(clk), .CDN(n604), .Q(muldiv_op[3])
         );
  mx02d0 \state_reg[3]/U4  ( .I0(decode[51]), .I1(state[3]), .S(n599), .Z(n36)
         );
  dfcrq1 \state_reg[3]  ( .D(n36), .CP(clk), .CDN(n604), .Q(state[3]) );
  mx02d0 \inc_pc_reg[0]/U4  ( .I0(decode[12]), .I1(inc_pc[0]), .S(n598), .Z(
        n35) );
  dfcrq1 \inc_pc_reg[0]  ( .D(n35), .CP(clk), .CDN(n603), .Q(inc_pc[0]) );
  mx02d0 \addr_op_reg[1]/U4  ( .I0(decode_1), .I1(addr_op[1]), .S(n598), .Z(
        n34) );
  dfcrq1 \addr_op_reg[1]  ( .D(n34), .CP(clk), .CDN(n602), .Q(addr_op[1]) );
  mx02d0 \addr_op_reg[0]/U4  ( .I0(decode_0), .I1(addr_op[0]), .S(n598), .Z(
        n33) );
  dfcrq1 \addr_op_reg[0]  ( .D(n33), .CP(clk), .CDN(n603), .Q(addr_op[0]) );
  mx02d0 \carry_src_reg[2]/U4  ( .I0(n211), .I1(carry_src[2]), .S(n617), .Z(
        n32) );
  dfcrq1 \carry_src_reg[2]  ( .D(n32), .CP(clk), .CDN(n602), .Q(carry_src[2])
         );
  mx02d0 \state_reg[1]/U4  ( .I0(decode[49]), .I1(state[1]), .S(n599), .Z(n31)
         );
  dfcrq1 \state_reg[1]  ( .D(n31), .CP(clk), .CDN(n604), .Q(state[1]) );
  mx02d0 \data_op_reg[1]/U4  ( .I0(decode_5), .I1(data_op[1]), .S(n598), .Z(
        n30) );
  dfcrq1 \data_op_reg[1]  ( .D(n30), .CP(clk), .CDN(n603), .Q(data_op[1]) );
  mx02d0 \data_op_reg[0]/U4  ( .I0(decode_4), .I1(data_op[0]), .S(n598), .Z(
        n29) );
  dfcrq1 \data_op_reg[0]  ( .D(n29), .CP(clk), .CDN(n603), .Q(data_op[0]) );
  mx02d0 \wr_reg_reg/U4  ( .I0(decode[27]), .I1(wr_reg), .S(n597), .Z(n28) );
  dfcrq1 wr_reg_reg ( .D(n28), .CP(clk), .CDN(n601), .Q(wr_reg) );
  mx02d0 \state_reg[0]/U4  ( .I0(decode[48]), .I1(N863), .S(n599), .Z(n27) );
  dfcrq1 \state_reg[0]  ( .D(n27), .CP(clk), .CDN(n600), .Q(N863) );
  mx02d0 \opcode_op_d_reg[2]/U4  ( .I0(opcode_op[2]), .I1(opcode_op_d[2]), .S(
        n599), .Z(n26) );
  dfcrq1 \opcode_op_d_reg[2]  ( .D(n26), .CP(clk), .CDN(n604), .Q(
        opcode_op_d[2]) );
  mx02d0 \b_src_reg[0]/U4  ( .I0(N1297), .I1(b_src[0]), .S(n63), .Z(n25) );
  dfcrq1 \b_src_reg[0]  ( .D(n25), .CP(clk), .CDN(n600), .Q(b_src[0]) );
  mx02d0 \w_addr_reg[3]/U4  ( .I0(n244), .I1(w_addr[3]), .S(n620), .Z(n24) );
  dfcrq1 \w_addr_reg[3]  ( .D(n24), .CP(clk), .CDN(n601), .Q(w_addr[3]) );
  mx02d0 \a_addr_reg[0]/U4  ( .I0(n245), .I1(n3), .S(n620), .Z(n23) );
  dfcrq1 \a_addr_reg[0]  ( .D(n23), .CP(clk), .CDN(n601), .Q(n731) );
  mx02d0 \b_src_reg[1]/U4  ( .I0(N1298), .I1(b_src[1]), .S(n63), .Z(n22) );
  dfcrq1 \b_src_reg[1]  ( .D(n22), .CP(clk), .CDN(n601), .Q(b_src[1]) );
  mx02d0 \a_addr_reg[3]/U4  ( .I0(n248), .I1(a_addr[3]), .S(n620), .Z(n21) );
  dfcrq1 \a_addr_reg[3]  ( .D(n21), .CP(clk), .CDN(n601), .Q(a_addr[3]) );
  mx02d0 \invert_b_reg/U4  ( .I0(decode[40]), .I1(invert_b), .S(n597), .Z(n20)
         );
  dfcrq1 invert_b_reg ( .D(n20), .CP(clk), .CDN(n601), .Q(invert_b) );
  mx02d0 \b_addr_reg[2]/U4  ( .I0(decode[34]), .I1(b_addr[2]), .S(n597), .Z(
        n19) );
  dfcrq1 \b_addr_reg[2]  ( .D(n19), .CP(clk), .CDN(n601), .Q(b_addr[2]) );
  mx02d0 \alu_cmd_reg[1]/U4  ( .I0(decode[45]), .I1(alu_cmd[1]), .S(n597), .Z(
        n18) );
  dfcrq1 \alu_cmd_reg[1]  ( .D(n18), .CP(clk), .CDN(n602), .Q(alu_cmd[1]) );
  mx02d0 \b_addr_reg[1]/U4  ( .I0(decode[33]), .I1(b_addr[1]), .S(n597), .Z(
        n17) );
  dfcrq1 \b_addr_reg[1]  ( .D(n17), .CP(clk), .CDN(n601), .Q(b_addr[1]) );
  mx02d0 \alu_cmd_reg[2]/U4  ( .I0(decode[46]), .I1(alu_cmd[2]), .S(n597), .Z(
        n16) );
  dfcrq1 \alu_cmd_reg[2]  ( .D(n16), .CP(clk), .CDN(n602), .Q(alu_cmd[2]) );
  mx02d0 \b_addr_reg[3]/U4  ( .I0(decode[35]), .I1(b_addr[3]), .S(n597), .Z(
        n15) );
  dfcrq1 \b_addr_reg[3]  ( .D(n15), .CP(clk), .CDN(n602), .Q(b_addr[3]) );
  mx02d0 \b_addr_reg[0]/U4  ( .I0(decode[32]), .I1(b_addr[0]), .S(n597), .Z(
        n14) );
  dfcrq1 \b_addr_reg[0]  ( .D(n14), .CP(clk), .CDN(n602), .Q(b_addr[0]) );
  mx02d0 \a_src_reg[0]/U4  ( .I0(decode[25]), .I1(a_src[0]), .S(n597), .Z(n13)
         );
  dfcrq1 \a_src_reg[0]  ( .D(n13), .CP(clk), .CDN(n601), .Q(a_src[0]) );
  mx02d0 \alu_cmd_reg[0]/U4  ( .I0(decode[44]), .I1(alu_cmd[0]), .S(n597), .Z(
        n12) );
  dfcrq1 \alu_cmd_reg[0]  ( .D(n12), .CP(clk), .CDN(n602), .Q(alu_cmd[0]) );
  mx02d0 \w_addr_reg[0]/U4  ( .I0(n237), .I1(w_addr[0]), .S(n620), .Z(n11) );
  dfcrq1 \w_addr_reg[0]  ( .D(n11), .CP(clk), .CDN(n601), .Q(w_addr[0]) );
  mx02d0 \alu_cmd_reg[3]/U4  ( .I0(decode[47]), .I1(alu_cmd[3]), .S(n598), .Z(
        n10) );
  dfcrq1 \alu_cmd_reg[3]  ( .D(n10), .CP(clk), .CDN(n602), .Q(alu_cmd[3]) );
  mx02d0 \w_addr_reg[1]/U4  ( .I0(n240), .I1(w_addr[1]), .S(n620), .Z(n9) );
  dfcrq1 \w_addr_reg[1]  ( .D(n9), .CP(clk), .CDN(n601), .Q(w_addr[1]) );
  dfcrb1 nmi_reg_reg ( .D(N162), .CP(clk), .CDN(n600), .Q(n718), .QN(n7) );
  invbd2 U4 ( .I(n5), .ZN(a_addr[2]) );
  inv0d1 U5 ( .I(n731), .ZN(n1) );
  inv0d1 U6 ( .I(n1), .ZN(a_addr[0]) );
  inv0d1 U7 ( .I(n1), .ZN(n3) );
  inv0d1 U8 ( .I(n148), .ZN(n61) );
  nd02d0 U9 ( .A1(n463), .A2(n4), .ZN(N827) );
  nd02d0 U11 ( .A1(n4), .A2(n172), .ZN(N653) );
  inv0d1 U12 ( .I(n467), .ZN(n632) );
  inv0d1 U14 ( .I(n431), .ZN(n687) );
  inv0d1 U15 ( .I(n324), .ZN(n681) );
  inv0d1 U16 ( .I(n233), .ZN(n701) );
  inv0d1 U19 ( .I(n273), .ZN(n643) );
  inv0d1 U20 ( .I(n460), .ZN(n711) );
  inv0d1 U21 ( .I(n173), .ZN(n691) );
  inv0d1 U22 ( .I(n395), .ZN(n689) );
  inv0d1 U24 ( .I(n461), .ZN(n610) );
  nd02d1 U25 ( .A1(n694), .A2(n596), .ZN(n432) );
  inv0d1 U26 ( .I(n295), .ZN(n695) );
  inv0d1 U28 ( .I(n265), .ZN(n702) );
  inv0d1 U30 ( .I(n217), .ZN(n703) );
  inv0d1 U31 ( .I(n520), .ZN(n663) );
  inv0d1 U32 ( .I(n397), .ZN(n693) );
  nd02d1 U34 ( .A1(n505), .A2(n483), .ZN(n233) );
  nd02d1 U35 ( .A1(n449), .A2(n483), .ZN(n173) );
  nd02d1 U38 ( .A1(n445), .A2(n483), .ZN(n460) );
  inv0d1 U39 ( .I(n148), .ZN(n706) );
  inv0d1 U43 ( .I(n314), .ZN(n700) );
  inv0d1 U44 ( .I(n151), .ZN(n686) );
  inv0d1 U45 ( .I(n438), .ZN(n698) );
  inv0d1 U46 ( .I(n226), .ZN(n710) );
  inv0d1 U48 ( .I(n394), .ZN(n705) );
  nd02d1 U50 ( .A1(n148), .A2(n324), .ZN(n253) );
  nd02d1 U53 ( .A1(n520), .A2(n522), .ZN(n175) );
  nd02d1 U54 ( .A1(n686), .A2(n682), .ZN(n324) );
  inv0d1 U55 ( .I(n232), .ZN(n707) );
  inv0d1 U56 ( .I(n364), .ZN(n612) );
  nd02d1 U58 ( .A1(n500), .A2(n501), .ZN(n429) );
  inv0d1 U59 ( .I(n313), .ZN(n694) );
  inv0d1 U61 ( .I(n198), .ZN(n690) );
  inv0d1 U63 ( .I(n210), .ZN(n659) );
  inv0d1 U66 ( .I(n457), .ZN(n677) );
  inv0d1 U67 ( .I(n408), .ZN(n696) );
  nd02d1 U68 ( .A1(n681), .A2(n493), .ZN(n273) );
  inv0d1 U69 ( .I(n283), .ZN(n637) );
  inv0d1 U70 ( .I(n309), .ZN(n667) );
  inv0d1 U71 ( .I(n427), .ZN(n688) );
  nd02d1 U72 ( .A1(n392), .A2(n393), .ZN(n390) );
  inv0d1 U73 ( .I(n466), .ZN(n664) );
  inv0d1 U74 ( .I(n149), .ZN(n635) );
  inv0d1 U75 ( .I(n157), .ZN(n596) );
  nd02d1 U76 ( .A1(n314), .A2(n313), .ZN(n295) );
  inv0d1 U77 ( .I(n472), .ZN(n680) );
  inv0d1 U78 ( .I(n523), .ZN(n638) );
  inv0d1 U79 ( .I(n236), .ZN(n620) );
  inv0d1 U81 ( .I(n559), .ZN(n582) );
  nd02d1 U82 ( .A1(n637), .A2(n524), .ZN(n544) );
  nd12d0 U83 ( .A1(n499), .A2(n492), .ZN(n506) );
  nd02d1 U85 ( .A1(n226), .A2(n233), .ZN(n265) );
  nd02d1 U86 ( .A1(n409), .A2(n638), .ZN(n546) );
  inv0d1 U87 ( .I(n220), .ZN(n626) );
  nd02d1 U89 ( .A1(n438), .A2(n173), .ZN(n290) );
  inv0d1 U90 ( .I(n493), .ZN(n642) );
  inv0d1 U96 ( .I(n116), .ZN(n583) );
  nd02d1 U97 ( .A1(n645), .A2(n642), .ZN(n205) );
  inv0d1 U98 ( .I(n549), .ZN(n613) );
  inv0d1 U100 ( .I(n183), .ZN(n617) );
  inv0d1 U101 ( .I(n545), .ZN(n647) );
  inv0d1 U102 ( .I(n150), .ZN(n625) );
  inv0d1 U103 ( .I(n490), .ZN(n679) );
  inv0d1 U104 ( .I(n275), .ZN(n633) );
  inv0d1 U105 ( .I(n579), .ZN(n589) );
  inv0d1 U107 ( .I(n255), .ZN(n699) );
  inv0d1 U109 ( .I(n229), .ZN(n648) );
  inv0d1 U110 ( .I(n257), .ZN(n616) );
  bufbd1 U112 ( .I(n715), .Z(n598) );
  bufbd1 U113 ( .I(n715), .Z(n599) );
  bufbd1 U114 ( .I(n715), .Z(n597) );
  inv0d1 U117 ( .I(n391), .ZN(n665) );
  inv0d1 U119 ( .I(n251), .ZN(opcode_op[1]) );
  inv0d1 U120 ( .I(n420), .ZN(n662) );
  nd02d1 U122 ( .A1(n592), .A2(n684), .ZN(n490) );
  inv0d1 U123 ( .I(n334), .ZN(n661) );
  inv0d1 U124 ( .I(n221), .ZN(n682) );
  inv0d1 U126 ( .I(n594), .ZN(n684) );
  nd02d1 U127 ( .A1(n507), .A2(n483), .ZN(n148) );
  nd02d1 U129 ( .A1(n446), .A2(n528), .ZN(n313) );
  nd02d1 U130 ( .A1(n444), .A2(n483), .ZN(n151) );
  nd02d1 U131 ( .A1(n443), .A2(n507), .ZN(n232) );
  nd02d1 U132 ( .A1(n505), .A2(n443), .ZN(n314) );
  nd02d1 U134 ( .A1(n483), .A2(n482), .ZN(n394) );
  nd02d1 U136 ( .A1(n445), .A2(n443), .ZN(n226) );
  nd02d1 U138 ( .A1(n447), .A2(n528), .ZN(n408) );
  nd02d1 U139 ( .A1(n447), .A2(n449), .ZN(n187) );
  nd02d1 U140 ( .A1(n646), .A2(n685), .ZN(n409) );
  nd02d1 U142 ( .A1(n446), .A2(n507), .ZN(n500) );
  nd02d1 U143 ( .A1(n447), .A2(n482), .ZN(n227) );
  nd12d0 U145 ( .A1(n262), .A2(n393), .ZN(n309) );
  nd02d1 U147 ( .A1(n447), .A2(n507), .ZN(n501) );
  nd02d1 U148 ( .A1(n446), .A2(n444), .ZN(n427) );
  nd02d1 U149 ( .A1(n443), .A2(n444), .ZN(n198) );
  nd02d1 U152 ( .A1(n448), .A2(n483), .ZN(n455) );
  nd02d1 U153 ( .A1(n209), .A2(n419), .ZN(n464) );
  inv0d1 U154 ( .I(n361), .ZN(n609) );
  nd02d1 U155 ( .A1(n446), .A2(n449), .ZN(n428) );
  nd02d1 U156 ( .A1(n446), .A2(n448), .ZN(n430) );
  nd02d1 U157 ( .A1(n447), .A2(n444), .ZN(n426) );
  nd02d1 U158 ( .A1(n609), .A2(n146), .ZN(n497) );
  inv0d1 U159 ( .I(n146), .ZN(n639) );
  nd02d1 U160 ( .A1(n409), .A2(n543), .ZN(n283) );
  inv0d1 U163 ( .I(n335), .ZN(n660) );
  nd02d1 U166 ( .A1(n307), .A2(n728), .ZN(n393) );
  inv0d1 U168 ( .I(n336), .ZN(n653) );
  nd02d1 U169 ( .A1(n521), .A2(n669), .ZN(n466) );
  nd02d1 U171 ( .A1(n705), .A2(n646), .ZN(n149) );
  nd02d1 U172 ( .A1(n651), .A2(n321), .ZN(n274) );
  inv0d1 U173 ( .I(n419), .ZN(n607) );
  inv0d1 U174 ( .I(n341), .ZN(n624) );
  inv0d1 U175 ( .I(n310), .ZN(n666) );
  inv0d1 U176 ( .I(n157), .ZN(n619) );
  inv0d1 U177 ( .I(n165), .ZN(n627) );
  nd02d1 U179 ( .A1(n176), .A2(n177), .ZN(n174) );
  inv0d1 U180 ( .I(n175), .ZN(n631) );
  oai21d1 U181 ( .B1(n408), .B2(n415), .A(n354), .ZN(n62) );
  nd02d1 U182 ( .A1(n225), .A2(n178), .ZN(n238) );
  an02d1 U183 ( .A1(n106), .A2(n712), .Z(n567) );
  nd02d1 U184 ( .A1(n343), .A2(n462), .ZN(n363) );
  nd02d1 U189 ( .A1(n448), .A2(n443), .ZN(n454) );
  inv0d1 U190 ( .I(n230), .ZN(n697) );
  inv0d1 U191 ( .I(n415), .ZN(n683) );
  nr02d0 U192 ( .A1(n713), .A2(n585), .ZN(n564) );
  inv0d1 U193 ( .I(n323), .ZN(n641) );
  nr02d0 U194 ( .A1(n196), .A2(n653), .ZN(n545) );
  nd02d1 U195 ( .A1(n619), .A2(n252), .ZN(n251) );
  nr02d0 U197 ( .A1(n713), .A2(n583), .ZN(n570) );
  nd02d1 U198 ( .A1(n651), .A2(n323), .ZN(n493) );
  nd02d1 U199 ( .A1(n229), .A2(n621), .ZN(n234) );
  nd02d1 U200 ( .A1(n674), .A2(n621), .ZN(n225) );
  nd02d1 U201 ( .A1(n548), .A2(n336), .ZN(n547) );
  inv0d1 U202 ( .I(n72), .ZN(n585) );
  nd02d1 U203 ( .A1(n392), .A2(n414), .ZN(n541) );
  nd02d1 U204 ( .A1(n667), .A2(n543), .ZN(n542) );
  inv0d1 U205 ( .I(n225), .ZN(n618) );
  inv0d1 U206 ( .I(n300), .ZN(n651) );
  inv0d1 U207 ( .I(n543), .ZN(n636) );
  inv0d1 U208 ( .I(n362), .ZN(n645) );
  inv0d1 U209 ( .I(n571), .ZN(n584) );
  inv0d1 U210 ( .I(n343), .ZN(n649) );
  inv0d1 U211 ( .I(n577), .ZN(n586) );
  inv0d1 U212 ( .I(n436), .ZN(n611) );
  inv0d1 U213 ( .I(n569), .ZN(n588) );
  nd02d1 U214 ( .A1(n669), .A2(n729), .ZN(n391) );
  inv0d1 U215 ( .I(n199), .ZN(n615) );
  inv0d1 U216 ( .I(n117), .ZN(n587) );
  nd02d1 U217 ( .A1(n199), .A2(n346), .ZN(n337) );
  inv0d1 U218 ( .I(n346), .ZN(n614) );
  or02d1 U219 ( .A1(n235), .A2(n674), .Z(n63) );
  inv0d1 U220 ( .I(data_ready), .ZN(n715) );
  inv0d1 U221 ( .I(n158), .ZN(n623) );
  inv0d1 U222 ( .I(n167), .ZN(n622) );
  inv0d1 U223 ( .I(n177), .ZN(n630) );
  nd02d1 U224 ( .A1(n472), .A2(operan[2]), .ZN(n221) );
  inv0d1 U225 ( .I(opcode[3]), .ZN(n713) );
  nd02d1 U226 ( .A1(n662), .A2(n511), .ZN(n334) );
  inv0d1 U227 ( .I(n531), .ZN(n678) );
  nd02d1 U228 ( .A1(n199), .A2(n459), .ZN(N848) );
  nd02d1 U229 ( .A1(n663), .A2(n673), .ZN(n176) );
  nd02d1 U230 ( .A1(n661), .A2(n673), .ZN(n147) );
  bufbd1 U231 ( .I(operan[0]), .Z(n593) );
  bufbd1 U232 ( .I(operan[0]), .Z(n592) );
  bufbd1 U233 ( .I(operan[1]), .Z(n595) );
  bufbd1 U234 ( .I(operan[1]), .Z(n594) );
  inv0d1 U235 ( .I(n208), .ZN(n658) );
  inv0d1 U236 ( .I(n308), .ZN(n629) );
  nd02d1 U237 ( .A1(n621), .A2(n510), .ZN(n157) );
  nd12d0 U238 ( .A1(n372), .A2(n322), .ZN(n462) );
  nd02d1 U239 ( .A1(n654), .A2(n676), .ZN(n336) );
  nd02d1 U240 ( .A1(n534), .A2(n654), .ZN(n341) );
  nd02d1 U241 ( .A1(n528), .A2(opcode[7]), .ZN(n513) );
  inv0d1 U242 ( .I(n172), .ZN(n646) );
  oaim21d1 U243 ( .B1(n681), .B2(n205), .A(n206), .ZN(n204) );
  nd02d1 U244 ( .A1(n209), .A2(n210), .ZN(n202) );
  nd02d1 U245 ( .A1(n669), .A2(operan[2]), .ZN(n310) );
  inv0d1 U246 ( .I(opcode[4]), .ZN(n704) );
  nd02d1 U247 ( .A1(n394), .A2(n232), .ZN(n453) );
  nd02d1 U248 ( .A1(n646), .A2(n673), .ZN(n323) );
  inv0d1 U249 ( .I(opcode[6]), .ZN(n712) );
  nd02d1 U250 ( .A1(n146), .A2(n407), .ZN(n291) );
  inv0d1 U251 ( .I(operan[2]), .ZN(n685) );
  oaim21d1 U252 ( .B1(N851), .B2(n595), .A(n459), .ZN(N854) );
  nd02d1 U253 ( .A1(n641), .A2(n531), .ZN(n321) );
  nd02d1 U254 ( .A1(n463), .A2(n723), .ZN(N826) );
  inv0d1 U255 ( .I(n685), .ZN(n591) );
  nd02d1 U256 ( .A1(n463), .A2(n720), .ZN(N829) );
  nd02d1 U257 ( .A1(n210), .A2(n724), .ZN(N721) );
  inv0d1 U258 ( .I(n529), .ZN(n669) );
  nd12d0 U259 ( .A1(n522), .A2(n673), .ZN(n177) );
  nd02d1 U260 ( .A1(n463), .A2(n724), .ZN(N821) );
  inv0d1 U261 ( .I(n316), .ZN(n628) );
  nd02d1 U262 ( .A1(n277), .A2(n278), .ZN(n276) );
  an02d1 U263 ( .A1(n560), .A2(opcode[3]), .Z(n130) );
  nd02d1 U264 ( .A1(n271), .A2(n342), .ZN(n300) );
  inv0d1 U265 ( .I(n535), .ZN(n728) );
  nd02d1 U266 ( .A1(n270), .A2(n271), .ZN(n269) );
  nd02d1 U267 ( .A1(n61), .A2(n274), .ZN(n272) );
  nd02d1 U268 ( .A1(n407), .A2(n207), .ZN(n362) );
  nd02d1 U269 ( .A1(n646), .A2(operan[2]), .ZN(n543) );
  nr02d0 U270 ( .A1(n585), .A2(opcode[3]), .ZN(n568) );
  nr02d0 U271 ( .A1(n583), .A2(opcode[3]), .ZN(n571) );
  inv0d1 U272 ( .I(opcode[5]), .ZN(n581) );
  inv0d1 U273 ( .I(n511), .ZN(n729) );
  nd02d1 U274 ( .A1(n172), .A2(n529), .ZN(n196) );
  inv0d1 U275 ( .I(n153), .ZN(n621) );
  nd02d1 U276 ( .A1(n341), .A2(n207), .ZN(n471) );
  nd12d0 U277 ( .A1(n542), .A2(n723), .ZN(N1202) );
  nd02d1 U278 ( .A1(n341), .A2(n342), .ZN(n340) );
  inv0d1 U279 ( .I(n470), .ZN(n656) );
  inv0d1 U280 ( .I(n510), .ZN(n674) );
  nd02d1 U281 ( .A1(n285), .A2(n459), .ZN(n458) );
  inv0d1 U282 ( .I(n315), .ZN(n657) );
  inv0d1 U283 ( .I(n188), .ZN(n671) );
  oaim21d1 U284 ( .B1(n596), .B2(n297), .A(n298), .ZN(decode[50]) );
  an02d1 U285 ( .A1(n133), .A2(opcode[5]), .Z(n565) );
  nd02d1 U286 ( .A1(n668), .A2(n153), .ZN(n167) );
  nd02d1 U287 ( .A1(n654), .A2(operan[2]), .ZN(n346) );
  inv0d1 U288 ( .I(opcode[7]), .ZN(n580) );
  nd02d1 U289 ( .A1(n685), .A2(n654), .ZN(n199) );
  inv0d1 U290 ( .I(n271), .ZN(n672) );
  nd02d1 U291 ( .A1(n249), .A2(n153), .ZN(n178) );
  nd02d1 U292 ( .A1(n341), .A2(n470), .ZN(n355) );
  nr02d0 U293 ( .A1(opcode[3]), .A2(opcode[6]), .ZN(n133) );
  inv0d1 U294 ( .I(n322), .ZN(n640) );
  nd02d1 U295 ( .A1(n346), .A2(n459), .ZN(N855) );
  nd02d1 U296 ( .A1(n199), .A2(n285), .ZN(N851) );
  inv0d1 U297 ( .I(n285), .ZN(n670) );
  inv0d1 U298 ( .I(n433), .ZN(n655) );
  inv0d1 U299 ( .I(n207), .ZN(n644) );
  inv0d1 U300 ( .I(n422), .ZN(n717) );
  nd02d1 U301 ( .A1(n650), .A2(n153), .ZN(n158) );
  inv0d1 U302 ( .I(n345), .ZN(n652) );
  nd02d1 U303 ( .A1(n341), .A2(n407), .ZN(n152) );
  inv0d1 U304 ( .I(n407), .ZN(n668) );
  nd02d1 U305 ( .A1(n336), .A2(n529), .ZN(n351) );
  nd02d1 U306 ( .A1(n642), .A2(n470), .ZN(n356) );
  inv0d1 U307 ( .I(n342), .ZN(n650) );
  bufbd1 U308 ( .I(rst_n), .Z(n600) );
  bufbd1 U309 ( .I(rst_n), .Z(n604) );
  bufbd1 U310 ( .I(rst_n), .Z(n601) );
  bufbd1 U311 ( .I(rst_n), .Z(n602) );
  bufbd1 U312 ( .I(rst_n), .Z(n603) );
  bufbd1 U313 ( .I(rst_n), .Z(n605) );
  inv0d1 U314 ( .I(n4), .ZN(a_addr[1]) );
  aor22d1 U315 ( .A1(opcode_tmp[2]), .A2(opcode_op_d[2]), .B1(queue_out[2]), 
        .B2(n714), .Z(operan[2]) );
  aor22d1 U316 ( .A1(opcode_tmp[0]), .A2(opcode_op_d[2]), .B1(queue_out[0]), 
        .B2(n714), .Z(operan[0]) );
  aor22d1 U317 ( .A1(opcode_tmp[1]), .A2(opcode_op_d[2]), .B1(queue_out[1]), 
        .B2(n714), .Z(operan[1]) );
  inv0d1 U318 ( .I(n500), .ZN(n708) );
  nd02d1 U319 ( .A1(n616), .A2(n158), .ZN(n239) );
  inv0d1 U320 ( .I(n592), .ZN(n590) );
  nd02d1 U321 ( .A1(n616), .A2(n167), .ZN(n241) );
  inv0d1 U322 ( .I(n516), .ZN(n608) );
  nd02d1 U323 ( .A1(state[1]), .A2(n654), .ZN(n172) );
  nd02d1 U324 ( .A1(N863), .A2(n676), .ZN(n529) );
  nd02d1 U325 ( .A1(n669), .A2(state[2]), .ZN(n407) );
  nd02d1 U326 ( .A1(w_addr[0]), .A2(n464), .ZN(n465) );
  inv0d1 U327 ( .I(state[2]), .ZN(n673) );
  nd02d1 U328 ( .A1(state[2]), .A2(n646), .ZN(n207) );
  nd02d1 U329 ( .A1(n653), .A2(state[2]), .ZN(n342) );
  nd12d0 U330 ( .A1(n550), .A2(n344), .ZN(n296) );
  nd02d1 U331 ( .A1(n285), .A2(n346), .ZN(N852) );
  inv0d1 U332 ( .I(N863), .ZN(n654) );
  inv0d1 U333 ( .I(state[1]), .ZN(n676) );
  inv0d1 U334 ( .I(n429), .ZN(n709) );
  nd02d1 U389 ( .A1(n485), .A2(n499), .ZN(n495) );
  nd02d1 U479 ( .A1(n545), .A2(n727), .ZN(N1110) );
  nd02d1 U588 ( .A1(n167), .A2(n158), .ZN(n412) );
  nd02d1 U668 ( .A1(b_addr[1]), .A2(n238), .ZN(n375) );
  nd12d0 U680 ( .A1(n376), .A2(n619), .ZN(n374) );
  nd02d1 U682 ( .A1(state[3]), .A2(n624), .ZN(n344) );
  inv0d1 U685 ( .I(opcode_op_d[2]), .ZN(n714) );
  nd02d1 U702 ( .A1(n728), .A2(n513), .ZN(n512) );
  inv0d1 U703 ( .I(n190), .ZN(n634) );
  nd02d1 U704 ( .A1(carry_src[1]), .A2(n189), .ZN(n186) );
  inv0d1 U705 ( .I(n187), .ZN(n692) );
  aor31d1 U706 ( .B1(n514), .B2(n675), .B3(n624), .A(int_processing), .Z(n153)
         );
  nd02d1 U707 ( .A1(N863), .A2(n685), .ZN(n285) );
  nd02d1 U708 ( .A1(operan[2]), .A2(N863), .ZN(n459) );
  nd02d1 U709 ( .A1(n534), .A2(N863), .ZN(n470) );
  nd02d1 U710 ( .A1(state[3]), .A2(n641), .ZN(n322) );
  nd02d1 U711 ( .A1(n201), .A2(N863), .ZN(n188) );
  nd02d1 U712 ( .A1(state[3]), .A2(n656), .ZN(n433) );
  nd02d1 U713 ( .A1(n720), .A2(n172), .ZN(N655) );
  nd02d1 U714 ( .A1(n545), .A2(n720), .ZN(N1121) );
  inv0d1 U715 ( .I(state[3]), .ZN(n675) );
  inv0d1 U716 ( .I(psw[0]), .ZN(n730) );
  oaim21d1 U717 ( .B1(n3), .B2(n546), .A(n548), .ZN(N1087) );
  nd02d1 U718 ( .A1(n728), .A2(N863), .ZN(n331) );
  inv0d1 U719 ( .I(n3), .ZN(n723) );
  inv0d1 U720 ( .I(w_addr[3]), .ZN(n724) );
  inv0d1 U721 ( .I(a_addr[3]), .ZN(n720) );
  inv0d1 U722 ( .I(n8), .ZN(int_type[0]) );
  inv0d1 U723 ( .I(n6), .ZN(int_type[1]) );
  inv0d1 U724 ( .I(b_src[0]), .ZN(n727) );
  inv0d1 U725 ( .I(w_addr[2]), .ZN(n725) );
  inv0d1 U726 ( .I(b_src[1]), .ZN(n726) );
  nd02d1 U727 ( .A1(div_reg), .A2(n7), .ZN(n181) );
  nr02d0 U728 ( .A1(opcode[5]), .A2(n712), .ZN(n72) );
  aor222d1 U729 ( .A1(N929), .A2(n568), .B1(N1188), .B2(n564), .C1(b_src[0]), 
        .C2(n585), .Z(n70) );
  nr02d0 U730 ( .A1(n580), .A2(opcode[4]), .ZN(n577) );
  nr02d0 U731 ( .A1(n713), .A2(n581), .ZN(n106) );
  nr02d0 U732 ( .A1(opcode[6]), .A2(opcode[5]), .ZN(n560) );
  aor222d1 U733 ( .A1(N639), .A2(n564), .B1(N582), .B2(n106), .C1(N1110), .C2(
        n130), .Z(n64) );
  aor211d1 U734 ( .C1(b_src[0]), .C2(n713), .A(n133), .B(n64), .Z(n69) );
  nr02d0 U735 ( .A1(n704), .A2(n580), .ZN(n579) );
  nr02d0 U736 ( .A1(n581), .A2(n712), .ZN(n116) );
  nr02d0 U737 ( .A1(n713), .A2(n712), .ZN(n559) );
  nr02d0 U738 ( .A1(n704), .A2(opcode[7]), .ZN(n569) );
  aoim22d1 U739 ( .A1(N1020), .A2(n713), .B1(n713), .B2(n727), .Z(n65) );
  aor211d1 U740 ( .C1(n584), .C2(n582), .A(n588), .B(n65), .Z(n67) );
  nr02d0 U741 ( .A1(n581), .A2(opcode[4]), .ZN(n117) );
  aor211d1 U742 ( .C1(n727), .C2(opcode[6]), .A(opcode[7]), .B(n587), .Z(n66)
         );
  nd02d0 U743 ( .A1(n67), .A2(n66), .ZN(n68) );
  aor221d1 U744 ( .B1(n70), .B2(n577), .C1(n69), .C2(n579), .A(n68), .Z(N1297)
         );
  aor22d1 U745 ( .A1(N930), .A2(n568), .B1(N1189), .B2(n564), .Z(n78) );
  xn02d1 U746 ( .A1(n580), .A2(opcode[3]), .ZN(n73) );
  nd03d0 U747 ( .A1(opcode[6]), .A2(opcode[4]), .A3(n73), .ZN(n71) );
  oai321d1 U748 ( .C1(n583), .C2(opcode[4]), .C3(opcode[7]), .B1(n72), .B2(
        n586), .A(n71), .ZN(n77) );
  aoi222d1 U749 ( .A1(N583), .A2(opcode[5]), .B1(N1111), .B2(n560), .C1(N640), 
        .C2(n72), .ZN(n75) );
  nd03d0 U750 ( .A1(n569), .A2(n116), .A3(N1021), .ZN(n74) );
  oan211d1 U751 ( .C1(n589), .C2(n75), .B(n74), .A(n73), .ZN(n76) );
  aor221d1 U752 ( .B1(n78), .B2(n577), .C1(b_src[1]), .C2(n77), .A(n76), .Z(
        N1298) );
  aoi222d1 U753 ( .A1(N848), .A2(n567), .B1(N718), .B2(n571), .C1(n592), .C2(
        n130), .ZN(n80) );
  aoi2222d1 U754 ( .A1(N1194), .A2(n565), .B1(N818), .B2(n570), .C1(N1194), 
        .C2(n564), .D1(N934), .D2(n568), .ZN(n79) );
  an02d0 U755 ( .A1(n80), .A2(n79), .Z(n87) );
  aor222d1 U756 ( .A1(n592), .A2(n568), .B1(N644), .B2(n559), .C1(N1233), .C2(
        n571), .Z(n82) );
  aoim22d1 U757 ( .A1(n581), .A2(N863), .B1(N863), .B2(n581), .Z(n113) );
  aor222d1 U758 ( .A1(n133), .A2(n113), .B1(N1114), .B2(n130), .C1(N587), .C2(
        n567), .Z(n81) );
  nr02d0 U759 ( .A1(n82), .A2(n81), .ZN(n86) );
  aoim22d1 U760 ( .A1(n713), .A2(n581), .B1(n713), .B2(opcode[6]), .Z(n84) );
  nd04d0 U761 ( .A1(opcode[3]), .A2(opcode[4]), .A3(n84), .A4(n581), .ZN(n83)
         );
  aor21d1 U762 ( .B1(n587), .B2(n83), .A(opcode[7]), .Z(n101) );
  nd02d0 U763 ( .A1(n569), .A2(n84), .ZN(n99) );
  nr02d0 U764 ( .A1(n712), .A2(opcode[3]), .ZN(n561) );
  aoi222d1 U765 ( .A1(w_addr[0]), .A2(n133), .B1(N440), .B2(n106), .C1(N1025), 
        .C2(n561), .ZN(n85) );
  oai2222d1 U766 ( .A1(n586), .A2(n87), .B1(n589), .B2(n86), .C1(n590), .C2(
        n101), .D1(n99), .D2(n85), .ZN(N1302) );
  aoi222d1 U767 ( .A1(N849), .A2(n567), .B1(N719), .B2(n571), .C1(n594), .C2(
        n130), .ZN(n89) );
  aoi2222d1 U768 ( .A1(N1195), .A2(n565), .B1(N819), .B2(n570), .C1(N1195), 
        .C2(n564), .D1(N935), .D2(n568), .ZN(n88) );
  an02d0 U769 ( .A1(n89), .A2(n88), .Z(n94) );
  aor222d1 U770 ( .A1(n594), .A2(n568), .B1(N645), .B2(n559), .C1(N1234), .C2(
        n571), .Z(n91) );
  aoim22d1 U771 ( .A1(N863), .A2(n581), .B1(n581), .B2(n592), .Z(n124) );
  aor222d1 U772 ( .A1(n133), .A2(n124), .B1(N1115), .B2(n130), .C1(N588), .C2(
        n567), .Z(n90) );
  nr02d0 U773 ( .A1(n91), .A2(n90), .ZN(n93) );
  aoi222d1 U774 ( .A1(w_addr[1]), .A2(n133), .B1(N441), .B2(n106), .C1(N1026), 
        .C2(n561), .ZN(n92) );
  oai2222d1 U775 ( .A1(n586), .A2(n94), .B1(n589), .B2(n93), .C1(n684), .C2(
        n101), .D1(n99), .D2(n92), .ZN(N1303) );
  aoi222d1 U776 ( .A1(N850), .A2(n567), .B1(N720), .B2(n571), .C1(n130), .C2(
        n591), .ZN(n96) );
  aoi2222d1 U777 ( .A1(N1196), .A2(n565), .B1(N820), .B2(n570), .C1(N1196), 
        .C2(n564), .D1(N936), .D2(n568), .ZN(n95) );
  an02d0 U778 ( .A1(n96), .A2(n95), .Z(n103) );
  aor222d1 U779 ( .A1(n591), .A2(n568), .B1(N646), .B2(n559), .C1(N1235), .C2(
        n571), .Z(n98) );
  aoim22d1 U780 ( .A1(opcode[5]), .A2(n684), .B1(opcode[5]), .B2(N863), .Z(
        n132) );
  aor222d1 U781 ( .A1(n133), .A2(n132), .B1(N1116), .B2(n130), .C1(N589), .C2(
        n567), .Z(n97) );
  nr02d0 U782 ( .A1(n98), .A2(n97), .ZN(n102) );
  aoi222d1 U783 ( .A1(w_addr[2]), .A2(n133), .B1(N442), .B2(n106), .C1(N1027), 
        .C2(n561), .ZN(n100) );
  oai2222d1 U784 ( .A1(n586), .A2(n103), .B1(n589), .B2(n102), .C1(n685), .C2(
        n101), .D1(n100), .D2(n99), .ZN(N1304) );
  aor22d1 U785 ( .A1(N821), .A2(n570), .B1(N1197), .B2(n565), .Z(n105) );
  aor222d1 U786 ( .A1(N721), .A2(n571), .B1(N937), .B2(n568), .C1(N851), .C2(
        n567), .Z(n104) );
  aor211d1 U787 ( .C1(N1197), .C2(n564), .A(n105), .B(n104), .Z(n111) );
  an02d0 U788 ( .A1(n133), .A2(n581), .Z(n563) );
  aor222d1 U789 ( .A1(N590), .A2(n106), .B1(N1117), .B2(n560), .C1(N647), .C2(
        n564), .Z(n107) );
  aor211d1 U790 ( .C1(N1236), .C2(n116), .A(n563), .B(n107), .Z(n109) );
  aor222d1 U791 ( .A1(N443), .A2(n570), .B1(w_addr[3]), .B2(n565), .C1(N1028), 
        .C2(n571), .Z(n108) );
  aor22d1 U792 ( .A1(n109), .A2(opcode[7]), .B1(n108), .B2(n580), .Z(n110) );
  aor22d1 U793 ( .A1(n111), .A2(n577), .B1(n110), .B2(opcode[4]), .Z(N1305) );
  aor222d1 U794 ( .A1(N652), .A2(n559), .B1(n3), .B2(n561), .C1(N1118), .C2(
        n130), .Z(n112) );
  aor221d1 U795 ( .B1(n133), .B2(n113), .C1(N591), .C2(n567), .A(n112), .Z(
        n122) );
  aoi222d1 U796 ( .A1(N852), .A2(n567), .B1(N942), .B2(n568), .C1(n3), .C2(
        n571), .ZN(n115) );
  aoi2222d1 U797 ( .A1(n592), .A2(n563), .B1(N1087), .B2(n565), .C1(N826), 
        .C2(n570), .D1(N1202), .D2(n564), .ZN(n114) );
  nd02d0 U798 ( .A1(n115), .A2(n114), .ZN(n121) );
  nr02d0 U799 ( .A1(n588), .A2(n584), .ZN(n573) );
  nr02d0 U800 ( .A1(n116), .A2(n560), .ZN(n119) );
  aor31d1 U801 ( .B1(opcode[4]), .B2(n119), .B3(opcode[3]), .A(n117), .Z(n118)
         );
  an02d0 U802 ( .A1(n118), .A2(n580), .Z(n137) );
  nr03d0 U803 ( .A1(n588), .A2(n582), .A3(n119), .ZN(n136) );
  aor222d1 U804 ( .A1(N942), .A2(n573), .B1(n592), .B2(n137), .C1(N444), .C2(
        n136), .Z(n120) );
  aor221d1 U805 ( .B1(n122), .B2(n579), .C1(n121), .C2(n577), .A(n120), .Z(
        N1310) );
  aor222d1 U806 ( .A1(N653), .A2(n559), .B1(a_addr[1]), .B2(n561), .C1(N1119), 
        .C2(n130), .Z(n123) );
  aor221d1 U807 ( .B1(n133), .B2(n124), .C1(N592), .C2(n567), .A(n123), .Z(
        n129) );
  aoi222d1 U808 ( .A1(N853), .A2(n567), .B1(N943), .B2(n568), .C1(a_addr[1]), 
        .C2(n571), .ZN(n126) );
  aoi2222d1 U809 ( .A1(n594), .A2(n563), .B1(N1088), .B2(n565), .C1(N827), 
        .C2(n570), .D1(N1203), .D2(n564), .ZN(n125) );
  nd02d0 U810 ( .A1(n126), .A2(n125), .ZN(n128) );
  aor222d1 U811 ( .A1(N943), .A2(n573), .B1(n594), .B2(n137), .C1(N445), .C2(
        n136), .Z(n127) );
  aor221d1 U812 ( .B1(n129), .B2(n579), .C1(n128), .C2(n577), .A(n127), .Z(
        N1311) );
  aor222d1 U813 ( .A1(N654), .A2(n559), .B1(a_addr[2]), .B2(n561), .C1(N1120), 
        .C2(n130), .Z(n131) );
  aor221d1 U814 ( .B1(n133), .B2(n132), .C1(N593), .C2(n567), .A(n131), .Z(
        n410) );
  aoi222d1 U815 ( .A1(N854), .A2(n567), .B1(N944), .B2(n568), .C1(a_addr[2]), 
        .C2(n571), .ZN(n135) );
  aoi2222d1 U816 ( .A1(n591), .A2(n563), .B1(N1089), .B2(n565), .C1(N828), 
        .C2(n570), .D1(N1204), .D2(n564), .ZN(n134) );
  nd02d0 U817 ( .A1(n135), .A2(n134), .ZN(n250) );
  aor222d1 U818 ( .A1(N944), .A2(n573), .B1(n137), .B2(n591), .C1(N446), .C2(
        n136), .Z(n138) );
  aor221d1 U819 ( .B1(n410), .B2(n579), .C1(n250), .C2(n577), .A(n138), .Z(
        N1312) );
  aor222d1 U820 ( .A1(a_addr[3]), .A2(n561), .B1(N1121), .B2(n560), .C1(N655), 
        .C2(n559), .Z(n562) );
  aor211d1 U821 ( .C1(N594), .C2(n567), .A(n563), .B(n562), .Z(n578) );
  aor222d1 U822 ( .A1(N829), .A2(n570), .B1(N1090), .B2(n565), .C1(N1205), 
        .C2(n564), .Z(n566) );
  aor221d1 U823 ( .B1(N945), .B2(n568), .C1(N855), .C2(n567), .A(n566), .Z(
        n576) );
  an02d0 U824 ( .A1(n570), .A2(n569), .Z(n574) );
  an03d0 U825 ( .A1(n571), .A2(opcode[7]), .A3(a_addr[3]), .Z(n572) );
  aor221d1 U826 ( .B1(n574), .B2(N447), .C1(N945), .C2(n573), .A(n572), .Z(
        n575) );
  aor221d1 U827 ( .B1(n579), .B2(n578), .C1(n577), .C2(n576), .A(n575), .Z(
        N1313) );
endmodule


module risc8 ( cycle, write, ifetch, iack, ie, address, data_out, clk, rst_n, 
        nmi, int, ready, data_in, scan_in, scan_en, scan_mode );
  output [15:0] address;
  output [7:0] data_out;
  input [7:0] data_in;
  input clk, rst_n, nmi, int, ready, scan_in, scan_en, scan_mode;
  output cycle, write, ifetch, iack, ie;
  wire   n19, n20, n21, n22, n23, n24, n25, n26, divide_by_0, invert_b, lu_op,
         data_ready, wr_reg, n1, n2, n3, n4, n5, n6, n7, n8, n9, n18;
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
        divide_by_0), .clk(clk), .rst_n(n18), .a_src({1'b0, a_src[0]}), 
        .b_src(b_src), .carry_src(carry_src), .alu_cmd(alu_cmd), .invert_b(
        invert_b), .lu_op(lu_op), .flag_op(flag_op), .muldiv_op(muldiv_op), 
        .queue_out(queue_out), .a_data(a_data), .b_data(b_data), .psw(psw), 
        .scan_mode(scan_mode) );
  risc8_regb_biu U_regb_biu ( .cycle(cycle), .write(write), .ifetch(ifetch), 
        .iack(iack), .ie(ie), .address(address), .data_out({n19, n20, n21, n22, 
        n23, n24, n25, n26}), .psw(psw), .a_data(a_data), .b_data(b_data), 
        .queue_out(queue_out), .queue_count(queue_count), .data_ready(
        data_ready), .clk(clk), .rst_n(n18), .a_addr(a_addr), .b_addr(b_addr), 
        .w_addr(w_addr), .wr_reg(wr_reg), .int_type(int_type), .alu_out(
        alu_out), .data_op(data_op), .addr_op(addr_op), .opcode_op(opcode_op), 
        .inc_pc(inc_pc), .next_psw(next_psw), .data_in({n2, n7, n6, n5, n4, n3, 
        n8, n1}), .ready(n9) );
  risc8_control U_control ( .alu_cmd(alu_cmd), .carry_src(carry_src), .a_addr(
        a_addr), .b_addr(b_addr), .w_addr(w_addr), .wr_reg(wr_reg), .a_src({
        SYNOPSYS_UNCONNECTED__0, a_src[0]}), .b_src(b_src), .muldiv_op(
        muldiv_op), .flag_op(flag_op), .data_op(data_op), .addr_op(addr_op), 
        .invert_b(invert_b), .lu_op(lu_op), .inc_pc(inc_pc), .opcode_op(
        opcode_op), .int_type(int_type), .clk(clk), .rst_n(n18), .nmi(nmi), 
        .int(int), .queue_out(queue_out), .psw(psw), .data_ready(data_ready), 
        .queue_count(queue_count), .divide_by_0(divide_by_0) );
  bufbd1 U1 ( .I(data_in[0]), .Z(n1) );
  bufbd1 U2 ( .I(data_in[7]), .Z(n2) );
  bufbd1 U3 ( .I(data_in[2]), .Z(n3) );
  bufbd1 U4 ( .I(data_in[3]), .Z(n4) );
  bufbd1 U5 ( .I(data_in[4]), .Z(n5) );
  bufbd1 U6 ( .I(data_in[5]), .Z(n6) );
  bufbd1 U7 ( .I(data_in[6]), .Z(n7) );
  bufbd1 U8 ( .I(data_in[1]), .Z(n8) );
  bufbd1 U9 ( .I(ready), .Z(n9) );
  bufbd1 U10 ( .I(rst_n), .Z(n18) );
  bufbd7 U11 ( .I(n26), .Z(data_out[0]) );
  bufbd7 U12 ( .I(n25), .Z(data_out[1]) );
  bufbd7 U13 ( .I(n24), .Z(data_out[2]) );
  bufbd7 U14 ( .I(n23), .Z(data_out[3]) );
  bufbd7 U15 ( .I(n22), .Z(data_out[4]) );
  bufbd7 U16 ( .I(n21), .Z(data_out[5]) );
  bufbd7 U17 ( .I(n20), .Z(data_out[6]) );
  bufbd7 U18 ( .I(n19), .Z(data_out[7]) );
endmodule

