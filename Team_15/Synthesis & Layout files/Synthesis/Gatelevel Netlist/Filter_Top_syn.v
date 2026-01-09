/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : X-2025.06
// Date      : Sun Dec  7 18:23:15 2025
/////////////////////////////////////////////////////////////


module HF_Filter ( HF_in, clk, rst, HF_enable, HF_addr, HF_out );
  input [23:0] HF_in;
  input [5:0] HF_addr;
  output [23:0] HF_out;
  input clk, rst, HF_enable;
  wire   intadd_1_A_13_, intadd_1_A_12_, intadd_1_A_11_, intadd_1_A_9_,
         intadd_1_A_8_, intadd_1_A_7_, intadd_1_A_6_, intadd_1_A_5_,
         intadd_1_A_4_, intadd_1_A_3_, intadd_1_A_2_, intadd_1_A_1_,
         intadd_1_A_0_, intadd_1_B_13_, intadd_1_B_12_, intadd_1_B_11_,
         intadd_1_B_10_, intadd_1_B_9_, intadd_1_B_8_, intadd_1_B_7_,
         intadd_1_B_6_, intadd_1_B_4_, intadd_1_B_3_, intadd_1_B_2_,
         intadd_1_B_1_, intadd_1_SUM_13_, intadd_1_SUM_12_, intadd_1_SUM_11_,
         intadd_1_SUM_10_, intadd_1_SUM_9_, intadd_1_SUM_8_, intadd_1_SUM_7_,
         intadd_1_SUM_6_, intadd_1_SUM_5_, intadd_1_SUM_4_, intadd_1_SUM_3_,
         intadd_1_SUM_2_, intadd_1_SUM_1_, intadd_1_SUM_0_, intadd_1_n14,
         intadd_1_n13, intadd_1_n12, intadd_1_n11, intadd_1_n10, intadd_1_n9,
         intadd_1_n8, intadd_1_n7, intadd_1_n6, intadd_1_n5, intadd_1_n4,
         intadd_1_n3, intadd_1_n2, intadd_1_n1, intadd_2_A_4_, intadd_2_A_1_,
         intadd_2_B_4_, intadd_2_B_3_, intadd_2_B_2_, intadd_2_CI,
         intadd_2_SUM_4_, intadd_2_SUM_3_, intadd_2_SUM_2_, intadd_2_SUM_1_,
         intadd_2_SUM_0_, intadd_2_n5, intadd_2_n4, intadd_2_n3, intadd_2_n2,
         intadd_2_n1, intadd_3_A_0_, intadd_3_B_1_, intadd_3_B_0_,
         intadd_3_SUM_1_, intadd_3_SUM_0_, intadd_3_n3, intadd_3_n2,
         intadd_3_n1, intadd_4_A_1_, intadd_4_B_2_, intadd_4_B_1_,
         intadd_4_SUM_2_, intadd_4_SUM_1_, intadd_4_SUM_0_, intadd_4_n3,
         intadd_4_n2, intadd_4_n1, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90;
  wire   [41:27] CF_out_in;

  dfcrq1 pre_in_reg_41_ ( .D(CF_out_in[41]), .CP(clk), .CDN(rst), .Q(
        HF_out[15]) );
  dfcrq1 pre_in_reg_40_ ( .D(CF_out_in[40]), .CP(clk), .CDN(rst), .Q(
        HF_out[14]) );
  dfcrq1 pre_in_reg_39_ ( .D(CF_out_in[39]), .CP(clk), .CDN(rst), .Q(
        HF_out[13]) );
  dfcrq1 pre_in_reg_38_ ( .D(CF_out_in[38]), .CP(clk), .CDN(rst), .Q(
        HF_out[12]) );
  dfcrq1 pre_in_reg_37_ ( .D(CF_out_in[37]), .CP(clk), .CDN(rst), .Q(
        HF_out[11]) );
  dfcrq1 pre_in_reg_36_ ( .D(CF_out_in[36]), .CP(clk), .CDN(rst), .Q(
        HF_out[10]) );
  dfcrq1 pre_in_reg_35_ ( .D(CF_out_in[35]), .CP(clk), .CDN(rst), .Q(HF_out[9]) );
  dfcrq1 pre_in_reg_34_ ( .D(CF_out_in[34]), .CP(clk), .CDN(rst), .Q(HF_out[8]) );
  dfcrq1 pre_in_reg_33_ ( .D(CF_out_in[33]), .CP(clk), .CDN(rst), .Q(HF_out[7]) );
  dfcrq1 pre_in_reg_32_ ( .D(CF_out_in[32]), .CP(clk), .CDN(rst), .Q(HF_out[6]) );
  dfcrq1 pre_in_reg_31_ ( .D(CF_out_in[31]), .CP(clk), .CDN(rst), .Q(HF_out[5]) );
  dfcrq1 pre_in_reg_30_ ( .D(CF_out_in[30]), .CP(clk), .CDN(rst), .Q(HF_out[4]) );
  dfcrq1 pre_in_reg_29_ ( .D(CF_out_in[29]), .CP(clk), .CDN(rst), .Q(HF_out[3]) );
  dfcrq1 pre_in_reg_28_ ( .D(CF_out_in[28]), .CP(clk), .CDN(rst), .Q(HF_out[2]) );
  ad01d1 intadd_4_U4 ( .A(HF_out[6]), .B(HF_out[8]), .CI(intadd_3_A_0_), .CO(
        intadd_4_n3), .S(intadd_4_SUM_0_) );
  ad01d1 intadd_4_U3 ( .A(intadd_4_B_1_), .B(intadd_4_A_1_), .CI(intadd_4_n3), 
        .CO(intadd_4_n2), .S(intadd_4_SUM_1_) );
  ad01d1 intadd_4_U2 ( .A(intadd_4_B_2_), .B(HF_out[9]), .CI(intadd_4_n2), 
        .CO(intadd_4_n1), .S(intadd_4_SUM_2_) );
  ad01d1 intadd_2_U6 ( .A(n89), .B(HF_out[3]), .CI(intadd_2_CI), .CO(
        intadd_2_n5), .S(intadd_2_SUM_0_) );
  ad01d1 intadd_2_U5 ( .A(HF_out[4]), .B(intadd_2_A_1_), .CI(intadd_2_n5), 
        .CO(intadd_2_n4), .S(intadd_2_SUM_1_) );
  ad01d1 intadd_2_U4 ( .A(intadd_2_B_2_), .B(n89), .CI(intadd_2_n4), .CO(
        intadd_2_n3), .S(intadd_2_SUM_2_) );
  ad01d1 intadd_2_U3 ( .A(intadd_2_B_3_), .B(n89), .CI(intadd_2_n3), .CO(
        intadd_2_n2), .S(intadd_2_SUM_3_) );
  ad01d1 intadd_2_U2 ( .A(intadd_2_B_4_), .B(intadd_2_A_4_), .CI(intadd_2_n2), 
        .CO(intadd_2_n1), .S(intadd_2_SUM_4_) );
  ad01d1 intadd_3_U4 ( .A(intadd_3_B_0_), .B(intadd_3_A_0_), .CI(n89), .CO(
        intadd_3_n3), .S(intadd_3_SUM_0_) );
  ad01d1 intadd_3_U3 ( .A(intadd_3_B_1_), .B(intadd_2_SUM_1_), .CI(intadd_3_n3), .CO(intadd_3_n2), .S(intadd_3_SUM_1_) );
  ad01d1 intadd_3_U2 ( .A(intadd_2_SUM_2_), .B(intadd_3_A_0_), .CI(intadd_3_n2), .CO(intadd_3_n1), .S(intadd_1_A_4_) );
  ad01d1 intadd_1_U15 ( .A(intadd_3_A_0_), .B(intadd_1_A_0_), .CI(
        intadd_1_A_1_), .CO(intadd_1_n14), .S(intadd_1_SUM_0_) );
  ad01d1 intadd_1_U14 ( .A(intadd_1_B_1_), .B(intadd_1_A_1_), .CI(intadd_1_n14), .CO(intadd_1_n13), .S(intadd_1_SUM_1_) );
  ad01d1 intadd_1_U13 ( .A(intadd_1_B_2_), .B(intadd_1_A_2_), .CI(intadd_1_n13), .CO(intadd_1_n12), .S(intadd_1_SUM_2_) );
  ad01d1 intadd_1_U12 ( .A(intadd_1_B_3_), .B(intadd_1_A_3_), .CI(intadd_1_n12), .CO(intadd_1_n11), .S(intadd_1_SUM_3_) );
  ad01d1 intadd_1_U11 ( .A(intadd_1_B_4_), .B(intadd_1_A_4_), .CI(intadd_1_n11), .CO(intadd_1_n10), .S(intadd_1_SUM_4_) );
  ad01d1 intadd_1_U10 ( .A(intadd_3_n1), .B(intadd_1_A_5_), .CI(intadd_1_n10), 
        .CO(intadd_1_n9), .S(intadd_1_SUM_5_) );
  ad01d1 intadd_1_U9 ( .A(intadd_1_B_6_), .B(intadd_1_A_6_), .CI(intadd_1_n9), 
        .CO(intadd_1_n8), .S(intadd_1_SUM_6_) );
  ad01d1 intadd_1_U8 ( .A(intadd_1_B_7_), .B(intadd_1_A_7_), .CI(intadd_1_n8), 
        .CO(intadd_1_n7), .S(intadd_1_SUM_7_) );
  ad01d1 intadd_1_U7 ( .A(intadd_1_B_8_), .B(intadd_1_A_8_), .CI(intadd_1_n7), 
        .CO(intadd_1_n6), .S(intadd_1_SUM_8_) );
  ad01d1 intadd_1_U6 ( .A(intadd_1_B_9_), .B(intadd_1_A_9_), .CI(intadd_1_n6), 
        .CO(intadd_1_n5), .S(intadd_1_SUM_9_) );
  ad01d1 intadd_1_U5 ( .A(intadd_1_B_10_), .B(n89), .CI(intadd_1_n5), .CO(
        intadd_1_n4), .S(intadd_1_SUM_10_) );
  ad01d1 intadd_1_U4 ( .A(intadd_1_B_11_), .B(intadd_1_A_11_), .CI(intadd_1_n4), .CO(intadd_1_n3), .S(intadd_1_SUM_11_) );
  ad01d1 intadd_1_U3 ( .A(intadd_1_B_12_), .B(intadd_1_A_12_), .CI(intadd_1_n3), .CO(intadd_1_n2), .S(intadd_1_SUM_12_) );
  ad01d1 intadd_1_U2 ( .A(intadd_1_B_13_), .B(intadd_1_A_13_), .CI(intadd_1_n2), .CO(intadd_1_n1), .S(intadd_1_SUM_13_) );
  dfcrb1 pre_in_reg_27_ ( .D(CF_out_in[27]), .CP(clk), .CDN(rst), .Q(HF_out[1]), .QN(n90) );
  inv0d0 U3 ( .I(HF_addr[1]), .ZN(n32) );
  inv0d0 U4 ( .I(HF_addr[0]), .ZN(n30) );
  nd03d0 U5 ( .A1(HF_addr[2]), .A2(n32), .A3(n30), .ZN(n46) );
  nr03d0 U6 ( .A1(HF_addr[2]), .A2(HF_addr[0]), .A3(n32), .ZN(n44) );
  nd02d0 U7 ( .A1(n44), .A2(HF_addr[5]), .ZN(n29) );
  inv0d0 U8 ( .I(HF_addr[4]), .ZN(n33) );
  nd02d0 U9 ( .A1(n33), .A2(HF_addr[3]), .ZN(n37) );
  aoim211d1 U10 ( .C1(n37), .C2(HF_addr[2]), .A(HF_addr[0]), .B(n32), .ZN(n28)
         );
  inv0d0 U11 ( .I(HF_addr[2]), .ZN(n31) );
  inv0d0 U12 ( .I(HF_addr[3]), .ZN(n25) );
  nd02d0 U13 ( .A1(n25), .A2(HF_addr[4]), .ZN(n35) );
  aoim211d1 U14 ( .C1(n31), .C2(n35), .A(HF_addr[1]), .B(HF_addr[0]), .ZN(n27)
         );
  inv0d0 U15 ( .I(HF_addr[5]), .ZN(n26) );
  aoi22d1 U16 ( .A1(HF_addr[5]), .A2(n28), .B1(n27), .B2(n26), .ZN(n74) );
  oai211d1 U17 ( .C1(HF_addr[5]), .C2(n46), .A(n29), .B(n74), .ZN(
        intadd_4_B_1_) );
  inv0d2 U18 ( .I(intadd_4_B_1_), .ZN(n89) );
  nd03d0 U19 ( .A1(HF_addr[2]), .A2(HF_addr[1]), .A3(n30), .ZN(n38) );
  nd03d0 U20 ( .A1(n32), .A2(n31), .A3(n30), .ZN(n36) );
  nd03d0 U21 ( .A1(HF_addr[5]), .A2(HF_addr[3]), .A3(n33), .ZN(n34) );
  oai22d1 U22 ( .A1(n38), .A2(n35), .B1(n36), .B2(n34), .ZN(n43) );
  oai22d1 U23 ( .A1(n38), .A2(n37), .B1(n36), .B2(n35), .ZN(n39) );
  nr02d1 U24 ( .A1(n43), .A2(n39), .ZN(intadd_1_A_1_) );
  nd02d0 U25 ( .A1(intadd_1_SUM_0_), .A2(intadd_1_A_1_), .ZN(n40) );
  inv0d0 U26 ( .I(intadd_1_SUM_1_), .ZN(n41) );
  nd02d0 U27 ( .A1(n40), .A2(n41), .ZN(intadd_1_A_2_) );
  oai21d1 U28 ( .B1(n41), .B2(n40), .A(intadd_1_A_2_), .ZN(n42) );
  inv0d0 U29 ( .I(n42), .ZN(CF_out_in[28]) );
  inv0d0 U30 ( .I(intadd_1_SUM_2_), .ZN(CF_out_in[29]) );
  inv0d0 U31 ( .I(intadd_1_SUM_3_), .ZN(CF_out_in[30]) );
  inv0d0 U32 ( .I(intadd_1_SUM_4_), .ZN(CF_out_in[31]) );
  inv0d0 U33 ( .I(intadd_1_SUM_5_), .ZN(CF_out_in[32]) );
  inv0d0 U34 ( .I(intadd_1_SUM_6_), .ZN(CF_out_in[33]) );
  inv0d0 U35 ( .I(intadd_1_SUM_7_), .ZN(CF_out_in[34]) );
  inv0d0 U36 ( .I(intadd_1_SUM_8_), .ZN(CF_out_in[35]) );
  inv0d0 U37 ( .I(intadd_1_SUM_9_), .ZN(CF_out_in[36]) );
  inv0d0 U38 ( .I(intadd_1_SUM_10_), .ZN(CF_out_in[37]) );
  inv0d0 U39 ( .I(intadd_1_SUM_11_), .ZN(CF_out_in[38]) );
  inv0d0 U40 ( .I(intadd_1_SUM_12_), .ZN(CF_out_in[39]) );
  inv0d0 U41 ( .I(intadd_1_SUM_13_), .ZN(CF_out_in[40]) );
  aoi21d1 U42 ( .B1(HF_addr[4]), .B2(n44), .A(n43), .ZN(n45) );
  oai211d1 U43 ( .C1(HF_addr[4]), .C2(n46), .A(n45), .B(n74), .ZN(n53) );
  inv0d1 U44 ( .I(n53), .ZN(intadd_3_A_0_) );
  nd02d0 U45 ( .A1(n89), .A2(n90), .ZN(n59) );
  xr02d1 U46 ( .A1(HF_out[2]), .A2(n59), .Z(n48) );
  nr02d0 U47 ( .A1(n48), .A2(n89), .ZN(n47) );
  aoi21d1 U48 ( .B1(n48), .B2(n89), .A(n47), .ZN(n52) );
  nd02d0 U49 ( .A1(n89), .A2(intadd_3_A_0_), .ZN(n81) );
  inv0d0 U50 ( .I(n81), .ZN(n49) );
  aoim22d1 U51 ( .A1(n89), .A2(n90), .B1(n90), .B2(n89), .Z(n77) );
  oai21d1 U52 ( .B1(n49), .B2(n77), .A(n74), .ZN(n51) );
  inv0d0 U53 ( .I(n50), .ZN(intadd_1_B_1_) );
  inv0d0 U54 ( .I(intadd_1_A_1_), .ZN(n88) );
  inv0d0 U55 ( .I(intadd_3_SUM_0_), .ZN(n56) );
  ad01d1 U56 ( .A(n53), .B(n52), .CI(n51), .CO(n55), .S(n50) );
  inv0d0 U57 ( .I(n54), .ZN(intadd_1_B_2_) );
  ad01d1 U58 ( .A(n88), .B(n56), .CI(n55), .CO(n57), .S(n54) );
  inv0d0 U59 ( .I(n57), .ZN(intadd_1_B_3_) );
  inv0d0 U60 ( .I(n58), .ZN(intadd_2_B_2_) );
  inv0d0 U61 ( .I(intadd_4_SUM_2_), .ZN(intadd_1_A_9_) );
  inv0d0 U62 ( .I(HF_out[9]), .ZN(intadd_4_A_1_) );
  inv0d0 U63 ( .I(HF_out[10]), .ZN(intadd_4_B_2_) );
  ad01d1 U64 ( .A(intadd_1_A_1_), .B(intadd_3_A_0_), .CI(intadd_3_SUM_1_), 
        .CO(intadd_1_B_4_), .S(intadd_1_A_3_) );
  inv0d0 U65 ( .I(HF_out[2]), .ZN(intadd_2_CI) );
  oai21d1 U66 ( .B1(intadd_4_B_1_), .B2(intadd_2_CI), .A(n59), .ZN(n60) );
  ad01d1 U67 ( .A(n89), .B(intadd_2_SUM_0_), .CI(n60), .CO(intadd_3_B_1_), .S(
        intadd_3_B_0_) );
  inv0d0 U68 ( .I(intadd_4_SUM_1_), .ZN(n63) );
  nd02d0 U69 ( .A1(HF_out[6]), .A2(n89), .ZN(n69) );
  nr02d0 U70 ( .A1(HF_out[6]), .A2(n89), .ZN(n68) );
  aoi21d1 U71 ( .B1(HF_out[7]), .B2(n69), .A(n68), .ZN(n72) );
  inv0d0 U72 ( .I(intadd_4_SUM_0_), .ZN(n73) );
  oai21d1 U73 ( .B1(n89), .B2(n72), .A(n73), .ZN(n61) );
  aon211d1 U74 ( .C1(HF_out[7]), .C2(n69), .B(intadd_4_B_1_), .A(n61), .ZN(n62) );
  ad01d1 U75 ( .A(n89), .B(n63), .CI(n62), .CO(intadd_1_B_9_), .S(
        intadd_1_A_8_) );
  oai222d1 U76 ( .A1(n89), .A2(HF_out[10]), .B1(n89), .B2(HF_out[11]), .C1(
        HF_out[11]), .C2(HF_out[10]), .ZN(n64) );
  ad01d1 U77 ( .A(HF_out[12]), .B(n89), .CI(n64), .CO(intadd_1_B_12_), .S(
        intadd_1_A_11_) );
  inv0d0 U78 ( .I(HF_out[14]), .ZN(n85) );
  nr02d0 U79 ( .A1(n89), .A2(HF_out[13]), .ZN(n86) );
  nd02d0 U80 ( .A1(n89), .A2(HF_out[13]), .ZN(n84) );
  nd12d0 U81 ( .A1(n86), .A2(n84), .ZN(n65) );
  mx02d0 U82 ( .I0(HF_out[14]), .I1(n85), .S(n65), .Z(intadd_1_A_13_) );
  aoi21d1 U83 ( .B1(HF_out[12]), .B2(n84), .A(n86), .ZN(intadd_1_B_13_) );
  aoim22d1 U84 ( .A1(HF_out[12]), .A2(n65), .B1(n65), .B2(HF_out[12]), .Z(
        intadd_1_A_12_) );
  aoim22d1 U85 ( .A1(HF_out[10]), .A2(HF_out[11]), .B1(HF_out[11]), .B2(
        HF_out[10]), .Z(n83) );
  inv0d0 U86 ( .I(n83), .ZN(n66) );
  aoi22d1 U87 ( .A1(n83), .A2(intadd_4_B_1_), .B1(intadd_4_n1), .B2(n66), .ZN(
        intadd_1_B_11_) );
  inv0d0 U88 ( .I(HF_out[7]), .ZN(n67) );
  nd12d0 U89 ( .A1(n68), .A2(n69), .ZN(n70) );
  mx02d0 U90 ( .I0(HF_out[7]), .I1(n67), .S(n70), .Z(intadd_2_A_4_) );
  ad01d1 U91 ( .A(HF_out[5]), .B(HF_out[4]), .CI(intadd_1_A_1_), .CO(n71), .S(
        n58) );
  aoi21d1 U92 ( .B1(n71), .B2(n69), .A(n68), .ZN(intadd_2_B_4_) );
  aoim22d1 U93 ( .A1(n71), .A2(n70), .B1(n70), .B2(n71), .Z(intadd_2_B_3_) );
  inv0d0 U94 ( .I(HF_out[3]), .ZN(intadd_2_A_1_) );
  mx02d0 U95 ( .I0(n73), .I1(intadd_4_SUM_0_), .S(n72), .Z(n82) );
  mx02d0 U96 ( .I0(n89), .I1(intadd_2_n1), .S(n82), .Z(intadd_1_B_8_) );
  nd02d0 U97 ( .A1(n74), .A2(n81), .ZN(n75) );
  inv0d0 U98 ( .I(n75), .ZN(n78) );
  inv0d0 U99 ( .I(intadd_2_SUM_4_), .ZN(n80) );
  aoi22d1 U100 ( .A1(n78), .A2(intadd_2_SUM_4_), .B1(n80), .B2(n75), .ZN(
        intadd_1_A_6_) );
  inv0d0 U101 ( .I(intadd_2_SUM_3_), .ZN(n76) );
  inv0d0 U102 ( .I(n74), .ZN(n79) );
  aoi21d1 U103 ( .B1(n81), .B2(n76), .A(n79), .ZN(intadd_1_B_6_) );
  aoi22d1 U104 ( .A1(n78), .A2(intadd_2_SUM_3_), .B1(n76), .B2(n75), .ZN(
        intadd_1_A_5_) );
  aoim22d1 U105 ( .A1(n78), .A2(n77), .B1(n77), .B2(n78), .Z(intadd_1_A_0_) );
  aoi21d1 U106 ( .B1(n81), .B2(n80), .A(n79), .ZN(intadd_1_A_7_) );
  aoim22d1 U107 ( .A1(intadd_2_n1), .A2(n82), .B1(n82), .B2(intadd_2_n1), .Z(
        intadd_1_B_7_) );
  aoim22d1 U108 ( .A1(intadd_4_n1), .A2(n83), .B1(n83), .B2(intadd_4_n1), .Z(
        intadd_1_B_10_) );
  oai21d1 U109 ( .B1(n86), .B2(n85), .A(n84), .ZN(n87) );
  xr03d1 U110 ( .A1(HF_out[15]), .A2(intadd_1_n1), .A3(n87), .Z(CF_out_in[41])
         );
  aoim22d1 U111 ( .A1(intadd_1_SUM_0_), .A2(n88), .B1(n88), .B2(
        intadd_1_SUM_0_), .Z(CF_out_in[27]) );
endmodule


module Filter_Top ( addr_hf, clk, rst, adc_lvds_pin, adc_fb_pin, adc_output, 
        HF_out, adc_valid );
  input [5:0] addr_hf;
  output [19:0] adc_output;
  output [23:0] HF_out;
  input clk, rst, adc_lvds_pin;
  output adc_fb_pin, adc_valid;
  wire   dec_ena, N13, N14, N15, N16, N17, N18, N19, N20, N21,
         cic_inte_data_1__17_, cic_inte_data_1__16_, cic_inte_data_1__15_,
         cic_inte_data_1__14_, cic_inte_data_1__13_, cic_inte_data_1__12_,
         cic_inte_data_1__11_, cic_inte_data_1__10_, cic_inte_data_1__9_,
         cic_inte_data_1__8_, cic_inte_data_1__7_, cic_inte_data_1__6_,
         cic_inte_data_1__5_, cic_inte_data_1__4_, cic_inte_data_1__3_,
         cic_inte_data_1__2_, cic_inte_data_1__1_, cic_inte_data_1__0_,
         cic_inte_data_0__0_, N51, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, intadd_0_CI, intadd_0_SUM_14_, intadd_0_SUM_13_,
         intadd_0_SUM_12_, intadd_0_SUM_11_, intadd_0_SUM_10_, intadd_0_SUM_9_,
         intadd_0_SUM_8_, intadd_0_SUM_7_, intadd_0_SUM_6_, intadd_0_SUM_5_,
         intadd_0_SUM_4_, intadd_0_SUM_3_, intadd_0_SUM_2_, intadd_0_SUM_1_,
         intadd_0_SUM_0_, intadd_0_n15, intadd_0_n14, intadd_0_n13,
         intadd_0_n12, intadd_0_n11, intadd_0_n10, intadd_0_n9, intadd_0_n8,
         intadd_0_n7, intadd_0_n6, intadd_0_n5, intadd_0_n4, intadd_0_n3,
         intadd_0_n2, intadd_0_n1, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373, n374, n375, n376, n377, n378, n379, n380, n381, n382,
         n383, n384, n385, n386, n387, n388, n389, n390, n391, n392, n393,
         n394, n395, n396, n397, n398, n399, n400, n401, n402, n403, n404,
         n405, n406, n407, n408, n409, n410, n411, n412, n413, n414, n415,
         n416, n417, n418, n419, n420, n421, n422, n423, n424, n425, n426,
         n427, n428, n429, n430, n431, n432, n433, n434, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         SYNOPSYS_UNCONNECTED_1, SYNOPSYS_UNCONNECTED_2,
         SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4,
         SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6,
         SYNOPSYS_UNCONNECTED_7, SYNOPSYS_UNCONNECTED_8,
         SYNOPSYS_UNCONNECTED_9;
  wire   [7:0] dec_cnt;
  wire   [53:0] cic_comb_data;
  wire   [17:0] gen_cic_0__comb_delay_reg;
  wire   [17:0] gen_cic_1__comb_delay_reg;
  assign adc_output[19] = 1'b0;
  assign adc_output[18] = 1'b0;
  assign adc_output[17] = 1'b0;
  assign adc_output[16] = 1'b0;
  assign HF_out[0] = 1'b0;
  assign HF_out[16] = 1'b0;
  assign HF_out[17] = 1'b0;
  assign HF_out[18] = 1'b0;
  assign HF_out[19] = 1'b0;
  assign HF_out[20] = 1'b0;
  assign HF_out[21] = 1'b0;
  assign HF_out[22] = 1'b0;
  assign HF_out[23] = 1'b0;

  HF_Filter hf_filt ( .HF_in({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0}), .clk(clk), .rst(rst), .HF_enable(1'b0), 
        .HF_addr(addr_hf), .HF_out({SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8, HF_out[15:1], SYNOPSYS_UNCONNECTED_9}) );
  dfnrq1 adc_in_reg ( .D(N13), .CP(clk), .Q(cic_inte_data_0__0_) );
  dfnrq1 adc_fb_pin_reg ( .D(adc_lvds_pin), .CP(clk), .Q(adc_fb_pin) );
  dfnrq1 dec_cnt_reg_7_ ( .D(N21), .CP(clk), .Q(dec_cnt[7]) );
  dfnrq1 dec_cnt_reg_6_ ( .D(N20), .CP(clk), .Q(dec_cnt[6]) );
  dfnrq1 dec_cnt_reg_5_ ( .D(N19), .CP(clk), .Q(dec_cnt[5]) );
  dfnrq1 dec_cnt_reg_4_ ( .D(N18), .CP(clk), .Q(dec_cnt[4]) );
  dfnrq1 dec_cnt_reg_3_ ( .D(N17), .CP(clk), .Q(dec_cnt[3]) );
  dfnrq1 dec_cnt_reg_2_ ( .D(N16), .CP(clk), .Q(dec_cnt[2]) );
  dfnrq1 dec_cnt_reg_1_ ( .D(N15), .CP(clk), .Q(dec_cnt[1]) );
  dfnrq1 dec_cnt_reg_0_ ( .D(N14), .CP(clk), .Q(dec_cnt[0]) );
  dfnrq1 dec_ena_reg ( .D(N51), .CP(clk), .Q(dec_ena) );
  dfnrq1 adc_valid_reg ( .D(dec_ena), .CP(clk), .Q(adc_valid) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_0_ ( .D(n138), .CP(clk), .Q(
        cic_inte_data_1__0_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_1_ ( .D(n137), .CP(clk), .Q(
        cic_inte_data_1__1_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_2_ ( .D(n136), .CP(clk), .Q(
        cic_inte_data_1__2_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_3_ ( .D(n135), .CP(clk), .Q(
        cic_inte_data_1__3_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_4_ ( .D(n134), .CP(clk), .Q(
        cic_inte_data_1__4_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_5_ ( .D(n133), .CP(clk), .Q(
        cic_inte_data_1__5_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_6_ ( .D(n132), .CP(clk), .Q(
        cic_inte_data_1__6_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_7_ ( .D(n131), .CP(clk), .Q(
        cic_inte_data_1__7_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_8_ ( .D(n130), .CP(clk), .Q(
        cic_inte_data_1__8_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_9_ ( .D(n129), .CP(clk), .Q(
        cic_inte_data_1__9_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_10_ ( .D(n128), .CP(clk), .Q(
        cic_inte_data_1__10_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_11_ ( .D(n127), .CP(clk), .Q(
        cic_inte_data_1__11_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_12_ ( .D(n126), .CP(clk), .Q(
        cic_inte_data_1__12_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_13_ ( .D(n125), .CP(clk), .Q(
        cic_inte_data_1__13_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_14_ ( .D(n124), .CP(clk), .Q(
        cic_inte_data_1__14_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_15_ ( .D(n123), .CP(clk), .Q(
        cic_inte_data_1__15_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_16_ ( .D(n122), .CP(clk), .Q(
        cic_inte_data_1__16_) );
  dfnrq1 gen_cic_0__integrator_data_out_reg_17_ ( .D(n139), .CP(clk), .Q(
        cic_inte_data_1__17_) );
  dfnrq1 gen_cic_0__comb_data_out_reg_0_ ( .D(n103), .CP(clk), .Q(
        cic_comb_data[18]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_1_ ( .D(n102), .CP(clk), .Q(
        cic_comb_data[19]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_2_ ( .D(n101), .CP(clk), .Q(
        cic_comb_data[20]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_3_ ( .D(n100), .CP(clk), .Q(
        cic_comb_data[21]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_4_ ( .D(n99), .CP(clk), .Q(
        cic_comb_data[22]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_5_ ( .D(n98), .CP(clk), .Q(
        cic_comb_data[23]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_6_ ( .D(n97), .CP(clk), .Q(
        cic_comb_data[24]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_7_ ( .D(n96), .CP(clk), .Q(
        cic_comb_data[25]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_8_ ( .D(n95), .CP(clk), .Q(
        cic_comb_data[26]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_9_ ( .D(n94), .CP(clk), .Q(
        cic_comb_data[27]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_10_ ( .D(n93), .CP(clk), .Q(
        cic_comb_data[28]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_11_ ( .D(n92), .CP(clk), .Q(
        cic_comb_data[29]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_12_ ( .D(n91), .CP(clk), .Q(
        cic_comb_data[30]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_13_ ( .D(n90), .CP(clk), .Q(
        cic_comb_data[31]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_14_ ( .D(n89), .CP(clk), .Q(
        cic_comb_data[32]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_15_ ( .D(n88), .CP(clk), .Q(
        cic_comb_data[33]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_16_ ( .D(n87), .CP(clk), .Q(
        cic_comb_data[34]) );
  dfnrq1 gen_cic_0__comb_data_out_reg_17_ ( .D(n86), .CP(clk), .Q(
        cic_comb_data[35]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_0_ ( .D(n120), .CP(clk), .Q(
        cic_comb_data[0]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_0_ ( .D(n85), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[0]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_1_ ( .D(n119), .CP(clk), .Q(
        cic_comb_data[1]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_1_ ( .D(n84), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[1]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_2_ ( .D(n118), .CP(clk), .Q(
        cic_comb_data[2]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_2_ ( .D(n83), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[2]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_3_ ( .D(n117), .CP(clk), .Q(
        cic_comb_data[3]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_3_ ( .D(n82), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[3]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_4_ ( .D(n116), .CP(clk), .Q(
        cic_comb_data[4]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_4_ ( .D(n81), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[4]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_5_ ( .D(n115), .CP(clk), .Q(
        cic_comb_data[5]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_5_ ( .D(n80), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[5]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_6_ ( .D(n114), .CP(clk), .Q(
        cic_comb_data[6]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_6_ ( .D(n79), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[6]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_7_ ( .D(n113), .CP(clk), .Q(
        cic_comb_data[7]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_7_ ( .D(n78), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[7]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_8_ ( .D(n112), .CP(clk), .Q(
        cic_comb_data[8]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_8_ ( .D(n77), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[8]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_9_ ( .D(n111), .CP(clk), .Q(
        cic_comb_data[9]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_9_ ( .D(n76), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[9]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_10_ ( .D(n110), .CP(clk), .Q(
        cic_comb_data[10]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_10_ ( .D(n75), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[10]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_11_ ( .D(n109), .CP(clk), .Q(
        cic_comb_data[11]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_11_ ( .D(n74), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[11]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_12_ ( .D(n108), .CP(clk), .Q(
        cic_comb_data[12]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_12_ ( .D(n73), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[12]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_13_ ( .D(n107), .CP(clk), .Q(
        cic_comb_data[13]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_13_ ( .D(n72), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[13]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_14_ ( .D(n106), .CP(clk), .Q(
        cic_comb_data[14]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_14_ ( .D(n71), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[14]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_15_ ( .D(n105), .CP(clk), .Q(
        cic_comb_data[15]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_15_ ( .D(n70), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[15]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_16_ ( .D(n104), .CP(clk), .Q(
        cic_comb_data[16]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_16_ ( .D(n69), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[16]) );
  dfnrq1 gen_cic_1__integrator_data_out_reg_17_ ( .D(n121), .CP(clk), .Q(
        cic_comb_data[17]) );
  dfnrq1 gen_cic_0__comb_delay_reg_reg_17_ ( .D(n68), .CP(clk), .Q(
        gen_cic_0__comb_delay_reg[17]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_0_ ( .D(n66), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[0]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_1_ ( .D(n65), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[1]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_2_ ( .D(n64), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[2]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_3_ ( .D(n63), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[3]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_4_ ( .D(n62), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[4]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_5_ ( .D(n61), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[5]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_6_ ( .D(n60), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[6]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_7_ ( .D(n59), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[7]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_8_ ( .D(n58), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[8]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_9_ ( .D(n57), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[9]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_10_ ( .D(n56), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[10]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_11_ ( .D(n55), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[11]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_12_ ( .D(n54), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[12]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_13_ ( .D(n53), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[13]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_14_ ( .D(n52), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[14]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_15_ ( .D(n51), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[15]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_16_ ( .D(n50), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[16]) );
  dfnrq1 gen_cic_1__comb_delay_reg_reg_17_ ( .D(n67), .CP(clk), .Q(
        gen_cic_1__comb_delay_reg[17]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_0_ ( .D(n49), .CP(clk), .Q(
        cic_comb_data[36]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_1_ ( .D(n48), .CP(clk), .Q(
        cic_comb_data[37]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_2_ ( .D(n47), .CP(clk), .Q(
        cic_comb_data[38]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_3_ ( .D(n46), .CP(clk), .Q(
        cic_comb_data[39]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_4_ ( .D(n45), .CP(clk), .Q(
        cic_comb_data[40]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_5_ ( .D(n44), .CP(clk), .Q(
        cic_comb_data[41]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_6_ ( .D(n43), .CP(clk), .Q(
        cic_comb_data[42]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_7_ ( .D(n42), .CP(clk), .Q(
        cic_comb_data[43]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_8_ ( .D(n41), .CP(clk), .Q(
        cic_comb_data[44]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_9_ ( .D(n40), .CP(clk), .Q(
        cic_comb_data[45]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_10_ ( .D(n39), .CP(clk), .Q(
        cic_comb_data[46]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_11_ ( .D(n38), .CP(clk), .Q(
        cic_comb_data[47]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_12_ ( .D(n37), .CP(clk), .Q(
        cic_comb_data[48]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_13_ ( .D(n36), .CP(clk), .Q(
        cic_comb_data[49]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_14_ ( .D(n35), .CP(clk), .Q(
        cic_comb_data[50]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_15_ ( .D(n34), .CP(clk), .Q(
        cic_comb_data[51]) );
  dfnrq1 adc_output_reg_0_ ( .D(n155), .CP(clk), .Q(adc_output[0]) );
  dfnrq1 adc_output_reg_1_ ( .D(n154), .CP(clk), .Q(adc_output[1]) );
  dfnrq1 adc_output_reg_2_ ( .D(n153), .CP(clk), .Q(adc_output[2]) );
  dfnrq1 adc_output_reg_3_ ( .D(n152), .CP(clk), .Q(adc_output[3]) );
  dfnrq1 adc_output_reg_4_ ( .D(n151), .CP(clk), .Q(adc_output[4]) );
  dfnrq1 adc_output_reg_5_ ( .D(n150), .CP(clk), .Q(adc_output[5]) );
  dfnrq1 adc_output_reg_6_ ( .D(n149), .CP(clk), .Q(adc_output[6]) );
  dfnrq1 adc_output_reg_7_ ( .D(n148), .CP(clk), .Q(adc_output[7]) );
  dfnrq1 adc_output_reg_8_ ( .D(n147), .CP(clk), .Q(adc_output[8]) );
  dfnrq1 adc_output_reg_9_ ( .D(n146), .CP(clk), .Q(adc_output[9]) );
  dfnrq1 adc_output_reg_10_ ( .D(n145), .CP(clk), .Q(adc_output[10]) );
  dfnrq1 adc_output_reg_11_ ( .D(n144), .CP(clk), .Q(adc_output[11]) );
  dfnrq1 adc_output_reg_12_ ( .D(n143), .CP(clk), .Q(adc_output[12]) );
  dfnrq1 adc_output_reg_13_ ( .D(n142), .CP(clk), .Q(adc_output[13]) );
  dfnrq1 adc_output_reg_14_ ( .D(n141), .CP(clk), .Q(adc_output[14]) );
  dfnrq1 adc_output_reg_15_ ( .D(n140), .CP(clk), .Q(adc_output[15]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_16_ ( .D(n33), .CP(clk), .Q(
        cic_comb_data[52]) );
  dfnrq1 gen_cic_1__comb_data_out_reg_17_ ( .D(n32), .CP(clk), .Q(
        cic_comb_data[53]) );
  ad01d1 intadd_0_U16 ( .A(cic_comb_data[2]), .B(cic_inte_data_1__2_), .CI(
        intadd_0_CI), .CO(intadd_0_n15), .S(intadd_0_SUM_0_) );
  ad01d1 intadd_0_U15 ( .A(cic_comb_data[3]), .B(cic_inte_data_1__3_), .CI(
        intadd_0_n15), .CO(intadd_0_n14), .S(intadd_0_SUM_1_) );
  ad01d1 intadd_0_U14 ( .A(cic_comb_data[4]), .B(cic_inte_data_1__4_), .CI(
        intadd_0_n14), .CO(intadd_0_n13), .S(intadd_0_SUM_2_) );
  ad01d1 intadd_0_U13 ( .A(cic_comb_data[5]), .B(cic_inte_data_1__5_), .CI(
        intadd_0_n13), .CO(intadd_0_n12), .S(intadd_0_SUM_3_) );
  ad01d1 intadd_0_U12 ( .A(cic_comb_data[6]), .B(cic_inte_data_1__6_), .CI(
        intadd_0_n12), .CO(intadd_0_n11), .S(intadd_0_SUM_4_) );
  ad01d1 intadd_0_U11 ( .A(cic_comb_data[7]), .B(cic_inte_data_1__7_), .CI(
        intadd_0_n11), .CO(intadd_0_n10), .S(intadd_0_SUM_5_) );
  ad01d1 intadd_0_U10 ( .A(cic_comb_data[8]), .B(cic_inte_data_1__8_), .CI(
        intadd_0_n10), .CO(intadd_0_n9), .S(intadd_0_SUM_6_) );
  ad01d1 intadd_0_U9 ( .A(cic_comb_data[9]), .B(cic_inte_data_1__9_), .CI(
        intadd_0_n9), .CO(intadd_0_n8), .S(intadd_0_SUM_7_) );
  ad01d1 intadd_0_U8 ( .A(cic_comb_data[10]), .B(cic_inte_data_1__10_), .CI(
        intadd_0_n8), .CO(intadd_0_n7), .S(intadd_0_SUM_8_) );
  ad01d1 intadd_0_U7 ( .A(cic_comb_data[11]), .B(cic_inte_data_1__11_), .CI(
        intadd_0_n7), .CO(intadd_0_n6), .S(intadd_0_SUM_9_) );
  ad01d1 intadd_0_U6 ( .A(cic_comb_data[12]), .B(cic_inte_data_1__12_), .CI(
        intadd_0_n6), .CO(intadd_0_n5), .S(intadd_0_SUM_10_) );
  ad01d1 intadd_0_U5 ( .A(cic_comb_data[13]), .B(cic_inte_data_1__13_), .CI(
        intadd_0_n5), .CO(intadd_0_n4), .S(intadd_0_SUM_11_) );
  ad01d1 intadd_0_U4 ( .A(cic_comb_data[14]), .B(cic_inte_data_1__14_), .CI(
        intadd_0_n4), .CO(intadd_0_n3), .S(intadd_0_SUM_12_) );
  ad01d1 intadd_0_U3 ( .A(cic_comb_data[15]), .B(cic_inte_data_1__15_), .CI(
        intadd_0_n3), .CO(intadd_0_n2), .S(intadd_0_SUM_13_) );
  ad01d1 intadd_0_U2 ( .A(cic_comb_data[16]), .B(cic_inte_data_1__16_), .CI(
        intadd_0_n2), .CO(intadd_0_n1), .S(intadd_0_SUM_14_) );
  inv0d1 U169 ( .I(cic_comb_data[1]), .ZN(n288) );
  nd02d2 U170 ( .A1(n199), .A2(n324), .ZN(n200) );
  inv0d2 U171 ( .I(n444), .ZN(n324) );
  nr02d0 U172 ( .A1(rst), .A2(dec_cnt[0]), .ZN(N14) );
  nd03d0 U173 ( .A1(dec_cnt[0]), .A2(dec_cnt[1]), .A3(dec_cnt[2]), .ZN(n159)
         );
  inv0d0 U174 ( .I(dec_cnt[3]), .ZN(n158) );
  nr02d0 U175 ( .A1(n159), .A2(n158), .ZN(n160) );
  nd02d0 U176 ( .A1(n160), .A2(dec_cnt[4]), .ZN(n162) );
  inv0d0 U177 ( .I(dec_cnt[5]), .ZN(n161) );
  nr02d0 U178 ( .A1(n162), .A2(n161), .ZN(n163) );
  nd02d0 U179 ( .A1(n163), .A2(dec_cnt[6]), .ZN(n165) );
  inv0d0 U180 ( .I(dec_cnt[7]), .ZN(n164) );
  nr02d0 U181 ( .A1(n165), .A2(n164), .ZN(N51) );
  inv0d1 U182 ( .I(rst), .ZN(n156) );
  an02d0 U183 ( .A1(intadd_0_SUM_0_), .A2(n156), .Z(n118) );
  an02d0 U184 ( .A1(intadd_0_SUM_1_), .A2(n156), .Z(n117) );
  an02d0 U185 ( .A1(intadd_0_SUM_2_), .A2(n156), .Z(n116) );
  an02d0 U186 ( .A1(intadd_0_SUM_3_), .A2(n156), .Z(n115) );
  an02d0 U187 ( .A1(intadd_0_SUM_4_), .A2(n156), .Z(n114) );
  an02d0 U188 ( .A1(intadd_0_SUM_5_), .A2(n156), .Z(n113) );
  inv0d1 U189 ( .I(rst), .ZN(n199) );
  an02d0 U190 ( .A1(intadd_0_SUM_6_), .A2(n199), .Z(n112) );
  an02d0 U191 ( .A1(intadd_0_SUM_7_), .A2(n199), .Z(n111) );
  an02d0 U192 ( .A1(intadd_0_SUM_8_), .A2(n199), .Z(n110) );
  an02d0 U193 ( .A1(intadd_0_SUM_9_), .A2(n156), .Z(n109) );
  an02d0 U194 ( .A1(intadd_0_SUM_10_), .A2(n156), .Z(n108) );
  an02d0 U195 ( .A1(intadd_0_SUM_11_), .A2(n156), .Z(n107) );
  an02d0 U196 ( .A1(intadd_0_SUM_12_), .A2(n156), .Z(n106) );
  an02d0 U197 ( .A1(intadd_0_SUM_13_), .A2(n156), .Z(n105) );
  an02d0 U198 ( .A1(intadd_0_SUM_14_), .A2(n156), .Z(n104) );
  an02d0 U199 ( .A1(n199), .A2(adc_lvds_pin), .Z(N13) );
  an02d0 U202 ( .A1(dec_cnt[0]), .A2(dec_cnt[1]), .Z(n157) );
  aoim211d1 U203 ( .C1(dec_cnt[0]), .C2(dec_cnt[1]), .A(rst), .B(n157), .ZN(
        N15) );
  ora211d1 U204 ( .C1(n157), .C2(dec_cnt[2]), .A(n199), .B(n159), .Z(N16) );
  aoi211d1 U205 ( .C1(n159), .C2(n158), .A(rst), .B(n160), .ZN(N17) );
  ora211d1 U206 ( .C1(n160), .C2(dec_cnt[4]), .A(n199), .B(n162), .Z(N18) );
  aoi211d1 U207 ( .C1(n162), .C2(n161), .A(rst), .B(n163), .ZN(N19) );
  ora211d1 U208 ( .C1(n163), .C2(dec_cnt[6]), .A(n199), .B(n165), .Z(N20) );
  aoi211d1 U209 ( .C1(n165), .C2(n164), .A(rst), .B(N51), .ZN(N21) );
  inv0d0 U210 ( .I(cic_comb_data[36]), .ZN(n327) );
  nd12d0 U211 ( .A1(cic_comb_data[53]), .A2(cic_comb_data[52]), .ZN(n166) );
  oai21d1 U212 ( .B1(cic_comb_data[53]), .B2(n327), .A(n166), .ZN(n155) );
  aoim21d1 U213 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[37]), .A(
        cic_comb_data[53]), .ZN(n154) );
  aoim21d1 U214 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[38]), .A(
        cic_comb_data[53]), .ZN(n153) );
  aoim21d1 U215 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[39]), .A(
        cic_comb_data[53]), .ZN(n152) );
  aoim21d1 U216 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[40]), .A(
        cic_comb_data[53]), .ZN(n151) );
  aoim21d1 U217 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[41]), .A(
        cic_comb_data[53]), .ZN(n150) );
  aoim21d1 U218 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[42]), .A(
        cic_comb_data[53]), .ZN(n149) );
  aoim21d1 U219 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[43]), .A(
        cic_comb_data[53]), .ZN(n148) );
  aoim21d1 U220 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[44]), .A(
        cic_comb_data[53]), .ZN(n147) );
  aoim21d1 U221 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[45]), .A(
        cic_comb_data[53]), .ZN(n146) );
  aoim21d1 U222 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[46]), .A(
        cic_comb_data[53]), .ZN(n145) );
  aoim21d1 U223 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[47]), .A(
        cic_comb_data[53]), .ZN(n144) );
  aoim21d1 U224 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[48]), .A(
        cic_comb_data[53]), .ZN(n143) );
  aoim21d1 U225 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[49]), .A(
        cic_comb_data[53]), .ZN(n142) );
  aoim21d1 U226 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[50]), .A(
        cic_comb_data[53]), .ZN(n141) );
  aoim21d1 U227 ( .B1(cic_comb_data[52]), .B2(cic_comb_data[51]), .A(
        cic_comb_data[53]), .ZN(n140) );
  nd03d0 U228 ( .A1(cic_inte_data_1__1_), .A2(cic_inte_data_1__0_), .A3(
        cic_inte_data_0__0_), .ZN(n170) );
  inv0d0 U229 ( .I(cic_inte_data_1__2_), .ZN(n169) );
  nr02d0 U230 ( .A1(n170), .A2(n169), .ZN(n171) );
  nd02d0 U231 ( .A1(n171), .A2(cic_inte_data_1__3_), .ZN(n173) );
  inv0d0 U232 ( .I(cic_inte_data_1__4_), .ZN(n172) );
  nr02d0 U233 ( .A1(n173), .A2(n172), .ZN(n174) );
  nd02d0 U234 ( .A1(n174), .A2(cic_inte_data_1__5_), .ZN(n176) );
  inv0d0 U235 ( .I(cic_inte_data_1__6_), .ZN(n175) );
  nr02d0 U236 ( .A1(n176), .A2(n175), .ZN(n177) );
  nd02d0 U237 ( .A1(n177), .A2(cic_inte_data_1__7_), .ZN(n179) );
  inv0d0 U238 ( .I(cic_inte_data_1__8_), .ZN(n178) );
  nr02d0 U239 ( .A1(n179), .A2(n178), .ZN(n180) );
  nd02d0 U240 ( .A1(n180), .A2(cic_inte_data_1__9_), .ZN(n182) );
  inv0d0 U241 ( .I(cic_inte_data_1__10_), .ZN(n181) );
  nr02d0 U242 ( .A1(n182), .A2(n181), .ZN(n183) );
  nd02d0 U243 ( .A1(n183), .A2(cic_inte_data_1__11_), .ZN(n185) );
  inv0d0 U244 ( .I(cic_inte_data_1__12_), .ZN(n184) );
  nr02d0 U245 ( .A1(n185), .A2(n184), .ZN(n186) );
  nd02d0 U246 ( .A1(n186), .A2(cic_inte_data_1__13_), .ZN(n188) );
  inv0d0 U247 ( .I(cic_inte_data_1__14_), .ZN(n187) );
  nr02d0 U248 ( .A1(n188), .A2(n187), .ZN(n189) );
  nd02d0 U249 ( .A1(n189), .A2(cic_inte_data_1__15_), .ZN(n192) );
  inv0d0 U250 ( .I(cic_inte_data_1__16_), .ZN(n191) );
  nr02d0 U251 ( .A1(n192), .A2(n191), .ZN(n190) );
  nr02d0 U252 ( .A1(cic_inte_data_1__17_), .A2(n190), .ZN(n167) );
  aoi211d1 U253 ( .C1(cic_inte_data_1__17_), .C2(n190), .A(rst), .B(n167), 
        .ZN(n139) );
  an02d0 U254 ( .A1(cic_inte_data_1__0_), .A2(cic_inte_data_0__0_), .Z(n168)
         );
  aoim211d1 U255 ( .C1(cic_inte_data_1__0_), .C2(cic_inte_data_0__0_), .A(rst), 
        .B(n168), .ZN(n138) );
  ora211d1 U256 ( .C1(cic_inte_data_1__1_), .C2(n168), .A(n199), .B(n170), .Z(
        n137) );
  aoi211d1 U257 ( .C1(n170), .C2(n169), .A(rst), .B(n171), .ZN(n136) );
  ora211d1 U258 ( .C1(n171), .C2(cic_inte_data_1__3_), .A(n199), .B(n173), .Z(
        n135) );
  aoi211d1 U259 ( .C1(n173), .C2(n172), .A(rst), .B(n174), .ZN(n134) );
  ora211d1 U260 ( .C1(n174), .C2(cic_inte_data_1__5_), .A(n199), .B(n176), .Z(
        n133) );
  aoi211d1 U261 ( .C1(n176), .C2(n175), .A(rst), .B(n177), .ZN(n132) );
  ora211d1 U262 ( .C1(n177), .C2(cic_inte_data_1__7_), .A(n199), .B(n179), .Z(
        n131) );
  aoi211d1 U263 ( .C1(n179), .C2(n178), .A(rst), .B(n180), .ZN(n130) );
  ora211d1 U264 ( .C1(n180), .C2(cic_inte_data_1__9_), .A(n199), .B(n182), .Z(
        n129) );
  aoi211d1 U265 ( .C1(n182), .C2(n181), .A(rst), .B(n183), .ZN(n128) );
  ora211d1 U266 ( .C1(n183), .C2(cic_inte_data_1__11_), .A(n199), .B(n185), 
        .Z(n127) );
  aoi211d1 U267 ( .C1(n185), .C2(n184), .A(rst), .B(n186), .ZN(n126) );
  ora211d1 U268 ( .C1(n186), .C2(cic_inte_data_1__13_), .A(n199), .B(n188), 
        .Z(n125) );
  aoi211d1 U269 ( .C1(n188), .C2(n187), .A(rst), .B(n189), .ZN(n124) );
  ora211d1 U270 ( .C1(n189), .C2(cic_inte_data_1__15_), .A(n199), .B(n192), 
        .Z(n123) );
  aoi211d1 U271 ( .C1(n192), .C2(n191), .A(rst), .B(n190), .ZN(n122) );
  inv0d0 U272 ( .I(cic_inte_data_1__1_), .ZN(n195) );
  nd02d0 U273 ( .A1(cic_comb_data[0]), .A2(cic_inte_data_1__0_), .ZN(n198) );
  oai222d1 U274 ( .A1(n288), .A2(n195), .B1(n288), .B2(n198), .C1(n198), .C2(
        n195), .ZN(intadd_0_CI) );
  aoim22d1 U275 ( .A1(cic_comb_data[17]), .A2(cic_inte_data_1__17_), .B1(
        cic_inte_data_1__17_), .B2(cic_comb_data[17]), .Z(n194) );
  nr02d0 U276 ( .A1(intadd_0_n1), .A2(n194), .ZN(n193) );
  aoi211d1 U277 ( .C1(intadd_0_n1), .C2(n194), .A(rst), .B(n193), .ZN(n121) );
  ora211d1 U278 ( .C1(cic_comb_data[0]), .C2(cic_inte_data_1__0_), .A(n199), 
        .B(n198), .Z(n120) );
  aoi22d1 U279 ( .A1(cic_comb_data[1]), .A2(n195), .B1(cic_inte_data_1__1_), 
        .B2(n288), .ZN(n197) );
  nr02d0 U280 ( .A1(n198), .A2(n197), .ZN(n196) );
  aoi211d1 U281 ( .C1(n198), .C2(n197), .A(rst), .B(n196), .ZN(n119) );
  inv0d0 U282 ( .I(cic_comb_data[18]), .ZN(n325) );
  nr02d4 U283 ( .A1(rst), .A2(dec_ena), .ZN(n444) );
  buffd1 U284 ( .I(n324), .Z(n323) );
  inv0d0 U285 ( .I(cic_comb_data[0]), .ZN(n201) );
  nr02d0 U286 ( .A1(gen_cic_0__comb_delay_reg[0]), .A2(n201), .ZN(n207) );
  inv0d2 U287 ( .I(n200), .ZN(n443) );
  aon211d1 U288 ( .C1(gen_cic_0__comb_delay_reg[0]), .C2(n201), .B(n207), .A(
        n443), .ZN(n202) );
  oai21d1 U289 ( .B1(n325), .B2(n323), .A(n202), .ZN(n103) );
  buffd1 U290 ( .I(n324), .Z(n328) );
  inv0d0 U291 ( .I(cic_comb_data[19]), .ZN(n329) );
  inv0d1 U292 ( .I(n443), .ZN(n246) );
  inv0d0 U293 ( .I(n207), .ZN(n204) );
  nd02d0 U294 ( .A1(gen_cic_0__comb_delay_reg[1]), .A2(n288), .ZN(n206) );
  oai21d1 U295 ( .B1(gen_cic_0__comb_delay_reg[1]), .B2(n288), .A(n206), .ZN(
        n203) );
  mx02d0 U296 ( .I0(n204), .I1(n207), .S(n203), .Z(n205) );
  oai22d1 U297 ( .A1(n328), .A2(n329), .B1(n246), .B2(n205), .ZN(n102) );
  inv0d0 U298 ( .I(cic_comb_data[20]), .ZN(n342) );
  inv0d0 U299 ( .I(gen_cic_0__comb_delay_reg[1]), .ZN(n289) );
  aon211d1 U300 ( .C1(cic_comb_data[1]), .C2(n289), .B(n207), .A(n206), .ZN(
        n212) );
  inv0d0 U301 ( .I(n212), .ZN(n209) );
  inv0d0 U302 ( .I(gen_cic_0__comb_delay_reg[2]), .ZN(n292) );
  nr02d0 U303 ( .A1(cic_comb_data[2]), .A2(n292), .ZN(n211) );
  aoi21d1 U304 ( .B1(cic_comb_data[2]), .B2(n292), .A(n211), .ZN(n208) );
  mx02d0 U305 ( .I0(n209), .I1(n212), .S(n208), .Z(n210) );
  oai22d1 U306 ( .A1(n323), .A2(n342), .B1(n246), .B2(n210), .ZN(n101) );
  inv0d0 U307 ( .I(cic_comb_data[21]), .ZN(n343) );
  inv0d0 U308 ( .I(cic_comb_data[2]), .ZN(n290) );
  oan211d1 U309 ( .C1(gen_cic_0__comb_delay_reg[2]), .C2(n290), .B(n212), .A(
        n211), .ZN(n217) );
  inv0d0 U310 ( .I(n217), .ZN(n214) );
  inv0d0 U311 ( .I(cic_comb_data[3]), .ZN(n293) );
  nd02d0 U312 ( .A1(gen_cic_0__comb_delay_reg[3]), .A2(n293), .ZN(n216) );
  oai21d1 U313 ( .B1(gen_cic_0__comb_delay_reg[3]), .B2(n293), .A(n216), .ZN(
        n213) );
  mx02d0 U314 ( .I0(n214), .I1(n217), .S(n213), .Z(n215) );
  oai22d1 U315 ( .A1(n328), .A2(n343), .B1(n246), .B2(n215), .ZN(n100) );
  inv0d0 U316 ( .I(cic_comb_data[22]), .ZN(n356) );
  inv0d0 U317 ( .I(gen_cic_0__comb_delay_reg[3]), .ZN(n294) );
  aon211d1 U318 ( .C1(cic_comb_data[3]), .C2(n294), .B(n217), .A(n216), .ZN(
        n222) );
  inv0d0 U319 ( .I(n222), .ZN(n219) );
  inv0d0 U320 ( .I(gen_cic_0__comb_delay_reg[4]), .ZN(n296) );
  nr02d0 U321 ( .A1(cic_comb_data[4]), .A2(n296), .ZN(n221) );
  aoi21d1 U322 ( .B1(cic_comb_data[4]), .B2(n296), .A(n221), .ZN(n218) );
  mx02d0 U323 ( .I0(n219), .I1(n222), .S(n218), .Z(n220) );
  oai22d1 U324 ( .A1(n323), .A2(n356), .B1(n246), .B2(n220), .ZN(n99) );
  inv0d0 U325 ( .I(cic_comb_data[23]), .ZN(n357) );
  inv0d0 U326 ( .I(cic_comb_data[4]), .ZN(n295) );
  oan211d1 U327 ( .C1(gen_cic_0__comb_delay_reg[4]), .C2(n295), .B(n222), .A(
        n221), .ZN(n227) );
  inv0d0 U328 ( .I(n227), .ZN(n224) );
  inv0d0 U329 ( .I(cic_comb_data[5]), .ZN(n297) );
  nd02d0 U330 ( .A1(gen_cic_0__comb_delay_reg[5]), .A2(n297), .ZN(n226) );
  oai21d1 U331 ( .B1(gen_cic_0__comb_delay_reg[5]), .B2(n297), .A(n226), .ZN(
        n223) );
  mx02d0 U332 ( .I0(n224), .I1(n227), .S(n223), .Z(n225) );
  oai22d1 U333 ( .A1(n324), .A2(n357), .B1(n246), .B2(n225), .ZN(n98) );
  inv0d0 U334 ( .I(cic_comb_data[24]), .ZN(n370) );
  inv0d0 U335 ( .I(gen_cic_0__comb_delay_reg[5]), .ZN(n298) );
  aon211d1 U336 ( .C1(cic_comb_data[5]), .C2(n298), .B(n227), .A(n226), .ZN(
        n232) );
  inv0d0 U337 ( .I(n232), .ZN(n229) );
  inv0d0 U338 ( .I(gen_cic_0__comb_delay_reg[6]), .ZN(n300) );
  nr02d0 U339 ( .A1(cic_comb_data[6]), .A2(n300), .ZN(n231) );
  aoi21d1 U340 ( .B1(cic_comb_data[6]), .B2(n300), .A(n231), .ZN(n228) );
  mx02d0 U341 ( .I0(n229), .I1(n232), .S(n228), .Z(n230) );
  oai22d1 U342 ( .A1(n323), .A2(n370), .B1(n246), .B2(n230), .ZN(n97) );
  inv0d0 U343 ( .I(cic_comb_data[25]), .ZN(n371) );
  inv0d0 U344 ( .I(cic_comb_data[6]), .ZN(n299) );
  oan211d1 U345 ( .C1(gen_cic_0__comb_delay_reg[6]), .C2(n299), .B(n232), .A(
        n231), .ZN(n237) );
  inv0d0 U346 ( .I(n237), .ZN(n234) );
  inv0d0 U347 ( .I(cic_comb_data[7]), .ZN(n301) );
  nd02d0 U348 ( .A1(gen_cic_0__comb_delay_reg[7]), .A2(n301), .ZN(n236) );
  oai21d1 U349 ( .B1(gen_cic_0__comb_delay_reg[7]), .B2(n301), .A(n236), .ZN(
        n233) );
  mx02d0 U350 ( .I0(n234), .I1(n237), .S(n233), .Z(n235) );
  oai22d1 U351 ( .A1(n324), .A2(n371), .B1(n246), .B2(n235), .ZN(n96) );
  inv0d0 U352 ( .I(cic_comb_data[26]), .ZN(n384) );
  inv0d0 U353 ( .I(gen_cic_0__comb_delay_reg[7]), .ZN(n302) );
  aon211d1 U354 ( .C1(cic_comb_data[7]), .C2(n302), .B(n237), .A(n236), .ZN(
        n242) );
  inv0d0 U355 ( .I(n242), .ZN(n239) );
  inv0d0 U356 ( .I(gen_cic_0__comb_delay_reg[8]), .ZN(n304) );
  nr02d0 U357 ( .A1(cic_comb_data[8]), .A2(n304), .ZN(n241) );
  aoi21d1 U358 ( .B1(cic_comb_data[8]), .B2(n304), .A(n241), .ZN(n238) );
  mx02d0 U359 ( .I0(n239), .I1(n242), .S(n238), .Z(n240) );
  oai22d1 U360 ( .A1(n324), .A2(n384), .B1(n246), .B2(n240), .ZN(n95) );
  inv0d0 U361 ( .I(cic_comb_data[27]), .ZN(n385) );
  inv0d0 U362 ( .I(cic_comb_data[8]), .ZN(n303) );
  oan211d1 U363 ( .C1(gen_cic_0__comb_delay_reg[8]), .C2(n303), .B(n242), .A(
        n241), .ZN(n248) );
  inv0d0 U364 ( .I(n248), .ZN(n244) );
  inv0d0 U365 ( .I(cic_comb_data[9]), .ZN(n305) );
  nd02d0 U366 ( .A1(gen_cic_0__comb_delay_reg[9]), .A2(n305), .ZN(n247) );
  oai21d1 U367 ( .B1(gen_cic_0__comb_delay_reg[9]), .B2(n305), .A(n247), .ZN(
        n243) );
  mx02d0 U368 ( .I0(n244), .I1(n248), .S(n243), .Z(n245) );
  oai22d1 U369 ( .A1(n324), .A2(n385), .B1(n246), .B2(n245), .ZN(n94) );
  inv0d0 U370 ( .I(cic_comb_data[28]), .ZN(n398) );
  inv0d1 U371 ( .I(n443), .ZN(n291) );
  inv0d0 U372 ( .I(gen_cic_0__comb_delay_reg[9]), .ZN(n306) );
  aon211d1 U373 ( .C1(cic_comb_data[9]), .C2(n306), .B(n248), .A(n247), .ZN(
        n253) );
  inv0d0 U374 ( .I(n253), .ZN(n250) );
  inv0d0 U375 ( .I(gen_cic_0__comb_delay_reg[10]), .ZN(n308) );
  nr02d0 U376 ( .A1(cic_comb_data[10]), .A2(n308), .ZN(n252) );
  aoi21d1 U377 ( .B1(cic_comb_data[10]), .B2(n308), .A(n252), .ZN(n249) );
  mx02d0 U378 ( .I0(n250), .I1(n253), .S(n249), .Z(n251) );
  oai22d1 U379 ( .A1(n324), .A2(n398), .B1(n291), .B2(n251), .ZN(n93) );
  inv0d0 U380 ( .I(cic_comb_data[29]), .ZN(n399) );
  inv0d0 U381 ( .I(cic_comb_data[10]), .ZN(n307) );
  oan211d1 U382 ( .C1(gen_cic_0__comb_delay_reg[10]), .C2(n307), .B(n253), .A(
        n252), .ZN(n258) );
  inv0d0 U383 ( .I(n258), .ZN(n255) );
  inv0d0 U384 ( .I(cic_comb_data[11]), .ZN(n309) );
  nd02d0 U385 ( .A1(gen_cic_0__comb_delay_reg[11]), .A2(n309), .ZN(n257) );
  oai21d1 U386 ( .B1(gen_cic_0__comb_delay_reg[11]), .B2(n309), .A(n257), .ZN(
        n254) );
  mx02d0 U387 ( .I0(n255), .I1(n258), .S(n254), .Z(n256) );
  oai22d1 U388 ( .A1(n324), .A2(n399), .B1(n291), .B2(n256), .ZN(n92) );
  inv0d0 U389 ( .I(cic_comb_data[30]), .ZN(n412) );
  inv0d0 U390 ( .I(gen_cic_0__comb_delay_reg[11]), .ZN(n310) );
  aon211d1 U391 ( .C1(cic_comb_data[11]), .C2(n310), .B(n258), .A(n257), .ZN(
        n263) );
  inv0d0 U392 ( .I(n263), .ZN(n260) );
  inv0d0 U393 ( .I(gen_cic_0__comb_delay_reg[12]), .ZN(n312) );
  nr02d0 U394 ( .A1(cic_comb_data[12]), .A2(n312), .ZN(n262) );
  aoi21d1 U395 ( .B1(cic_comb_data[12]), .B2(n312), .A(n262), .ZN(n259) );
  mx02d0 U396 ( .I0(n260), .I1(n263), .S(n259), .Z(n261) );
  oai22d1 U397 ( .A1(n324), .A2(n412), .B1(n291), .B2(n261), .ZN(n91) );
  inv0d0 U398 ( .I(cic_comb_data[31]), .ZN(n413) );
  inv0d0 U399 ( .I(cic_comb_data[12]), .ZN(n311) );
  oan211d1 U400 ( .C1(gen_cic_0__comb_delay_reg[12]), .C2(n311), .B(n263), .A(
        n262), .ZN(n268) );
  inv0d0 U401 ( .I(n268), .ZN(n265) );
  inv0d0 U402 ( .I(cic_comb_data[13]), .ZN(n313) );
  nd02d0 U403 ( .A1(gen_cic_0__comb_delay_reg[13]), .A2(n313), .ZN(n267) );
  oai21d1 U404 ( .B1(gen_cic_0__comb_delay_reg[13]), .B2(n313), .A(n267), .ZN(
        n264) );
  mx02d0 U405 ( .I0(n265), .I1(n268), .S(n264), .Z(n266) );
  oai22d1 U406 ( .A1(n324), .A2(n413), .B1(n291), .B2(n266), .ZN(n90) );
  inv0d0 U407 ( .I(cic_comb_data[32]), .ZN(n426) );
  inv0d0 U408 ( .I(gen_cic_0__comb_delay_reg[13]), .ZN(n314) );
  aon211d1 U409 ( .C1(cic_comb_data[13]), .C2(n314), .B(n268), .A(n267), .ZN(
        n273) );
  inv0d0 U410 ( .I(n273), .ZN(n270) );
  inv0d0 U411 ( .I(gen_cic_0__comb_delay_reg[14]), .ZN(n316) );
  nr02d0 U412 ( .A1(cic_comb_data[14]), .A2(n316), .ZN(n272) );
  aoi21d1 U413 ( .B1(cic_comb_data[14]), .B2(n316), .A(n272), .ZN(n269) );
  mx02d0 U414 ( .I0(n270), .I1(n273), .S(n269), .Z(n271) );
  oai22d1 U415 ( .A1(n324), .A2(n426), .B1(n291), .B2(n271), .ZN(n89) );
  inv0d0 U416 ( .I(cic_comb_data[33]), .ZN(n427) );
  inv0d0 U417 ( .I(cic_comb_data[14]), .ZN(n315) );
  oan211d1 U418 ( .C1(gen_cic_0__comb_delay_reg[14]), .C2(n315), .B(n273), .A(
        n272), .ZN(n278) );
  inv0d0 U419 ( .I(n278), .ZN(n275) );
  inv0d0 U420 ( .I(cic_comb_data[15]), .ZN(n317) );
  nd02d0 U421 ( .A1(gen_cic_0__comb_delay_reg[15]), .A2(n317), .ZN(n277) );
  oai21d1 U422 ( .B1(gen_cic_0__comb_delay_reg[15]), .B2(n317), .A(n277), .ZN(
        n274) );
  mx02d0 U423 ( .I0(n275), .I1(n278), .S(n274), .Z(n276) );
  oai22d1 U424 ( .A1(n323), .A2(n427), .B1(n291), .B2(n276), .ZN(n88) );
  inv0d0 U425 ( .I(cic_comb_data[34]), .ZN(n442) );
  inv0d0 U426 ( .I(gen_cic_0__comb_delay_reg[15]), .ZN(n318) );
  aon211d1 U427 ( .C1(cic_comb_data[15]), .C2(n318), .B(n278), .A(n277), .ZN(
        n283) );
  inv0d0 U428 ( .I(n283), .ZN(n280) );
  inv0d0 U429 ( .I(gen_cic_0__comb_delay_reg[16]), .ZN(n320) );
  nr02d0 U430 ( .A1(cic_comb_data[16]), .A2(n320), .ZN(n282) );
  aoi21d1 U431 ( .B1(cic_comb_data[16]), .B2(n320), .A(n282), .ZN(n279) );
  mx02d0 U432 ( .I0(n280), .I1(n283), .S(n279), .Z(n281) );
  oai22d1 U433 ( .A1(n323), .A2(n442), .B1(n291), .B2(n281), .ZN(n87) );
  inv0d0 U434 ( .I(gen_cic_0__comb_delay_reg[17]), .ZN(n322) );
  inv0d0 U435 ( .I(cic_comb_data[17]), .ZN(n321) );
  aoi22d1 U436 ( .A1(cic_comb_data[17]), .A2(gen_cic_0__comb_delay_reg[17]), 
        .B1(n322), .B2(n321), .ZN(n287) );
  inv0d0 U437 ( .I(cic_comb_data[16]), .ZN(n319) );
  oan211d1 U438 ( .C1(gen_cic_0__comb_delay_reg[16]), .C2(n319), .B(n283), .A(
        n282), .ZN(n286) );
  oai21d1 U439 ( .B1(n286), .B2(n287), .A(n443), .ZN(n285) );
  nd02d0 U440 ( .A1(n444), .A2(cic_comb_data[35]), .ZN(n284) );
  aon211d1 U441 ( .C1(n287), .C2(n286), .B(n285), .A(n284), .ZN(n86) );
  aor22d1 U442 ( .A1(n443), .A2(cic_comb_data[0]), .B1(n444), .B2(
        gen_cic_0__comb_delay_reg[0]), .Z(n85) );
  oai22d1 U443 ( .A1(n323), .A2(n289), .B1(n291), .B2(n288), .ZN(n84) );
  oai22d1 U444 ( .A1(n323), .A2(n292), .B1(n291), .B2(n290), .ZN(n83) );
  oai22d1 U445 ( .A1(n323), .A2(n294), .B1(n246), .B2(n293), .ZN(n82) );
  oai22d1 U446 ( .A1(n323), .A2(n296), .B1(n291), .B2(n295), .ZN(n81) );
  oai22d1 U447 ( .A1(n323), .A2(n298), .B1(n246), .B2(n297), .ZN(n80) );
  oai22d1 U448 ( .A1(n323), .A2(n300), .B1(n291), .B2(n299), .ZN(n79) );
  oai22d1 U449 ( .A1(n323), .A2(n302), .B1(n246), .B2(n301), .ZN(n78) );
  oai22d1 U450 ( .A1(n323), .A2(n304), .B1(n291), .B2(n303), .ZN(n77) );
  oai22d1 U451 ( .A1(n324), .A2(n306), .B1(n246), .B2(n305), .ZN(n76) );
  oai22d1 U452 ( .A1(n328), .A2(n308), .B1(n291), .B2(n307), .ZN(n75) );
  oai22d1 U453 ( .A1(n328), .A2(n310), .B1(n246), .B2(n309), .ZN(n74) );
  oai22d1 U454 ( .A1(n323), .A2(n312), .B1(n200), .B2(n311), .ZN(n73) );
  oai22d1 U455 ( .A1(n328), .A2(n314), .B1(n200), .B2(n313), .ZN(n72) );
  oai22d1 U456 ( .A1(n328), .A2(n316), .B1(n200), .B2(n315), .ZN(n71) );
  oai22d1 U457 ( .A1(n323), .A2(n318), .B1(n200), .B2(n317), .ZN(n70) );
  oai22d1 U458 ( .A1(n324), .A2(n320), .B1(n246), .B2(n319), .ZN(n69) );
  oai22d1 U459 ( .A1(n323), .A2(n322), .B1(n291), .B2(n321), .ZN(n68) );
  inv0d0 U460 ( .I(gen_cic_1__comb_delay_reg[17]), .ZN(n439) );
  inv0d0 U461 ( .I(cic_comb_data[35]), .ZN(n438) );
  oai22d1 U462 ( .A1(n324), .A2(n439), .B1(n291), .B2(n438), .ZN(n67) );
  aor22d1 U463 ( .A1(n443), .A2(cic_comb_data[18]), .B1(n444), .B2(
        gen_cic_1__comb_delay_reg[0]), .Z(n66) );
  inv0d0 U464 ( .I(gen_cic_1__comb_delay_reg[1]), .ZN(n336) );
  oai22d1 U465 ( .A1(n328), .A2(n336), .B1(n246), .B2(n329), .ZN(n65) );
  inv0d0 U466 ( .I(gen_cic_1__comb_delay_reg[2]), .ZN(n333) );
  oai22d1 U467 ( .A1(n324), .A2(n333), .B1(n291), .B2(n342), .ZN(n64) );
  inv0d0 U468 ( .I(gen_cic_1__comb_delay_reg[3]), .ZN(n350) );
  oai22d1 U469 ( .A1(n328), .A2(n350), .B1(n200), .B2(n343), .ZN(n63) );
  inv0d0 U470 ( .I(gen_cic_1__comb_delay_reg[4]), .ZN(n347) );
  oai22d1 U471 ( .A1(n324), .A2(n347), .B1(n246), .B2(n356), .ZN(n62) );
  inv0d0 U472 ( .I(gen_cic_1__comb_delay_reg[5]), .ZN(n364) );
  oai22d1 U473 ( .A1(n323), .A2(n364), .B1(n291), .B2(n357), .ZN(n61) );
  inv0d0 U474 ( .I(gen_cic_1__comb_delay_reg[6]), .ZN(n361) );
  oai22d1 U475 ( .A1(n324), .A2(n361), .B1(n200), .B2(n370), .ZN(n60) );
  inv0d0 U476 ( .I(gen_cic_1__comb_delay_reg[7]), .ZN(n378) );
  oai22d1 U477 ( .A1(n324), .A2(n378), .B1(n200), .B2(n371), .ZN(n59) );
  inv0d0 U478 ( .I(gen_cic_1__comb_delay_reg[8]), .ZN(n375) );
  oai22d1 U479 ( .A1(n328), .A2(n375), .B1(n200), .B2(n384), .ZN(n58) );
  inv0d0 U480 ( .I(gen_cic_1__comb_delay_reg[9]), .ZN(n392) );
  oai22d1 U481 ( .A1(n328), .A2(n392), .B1(n200), .B2(n385), .ZN(n57) );
  inv0d0 U482 ( .I(gen_cic_1__comb_delay_reg[10]), .ZN(n389) );
  oai22d1 U483 ( .A1(n328), .A2(n389), .B1(n200), .B2(n398), .ZN(n56) );
  inv0d0 U484 ( .I(gen_cic_1__comb_delay_reg[11]), .ZN(n406) );
  oai22d1 U485 ( .A1(n328), .A2(n406), .B1(n200), .B2(n399), .ZN(n55) );
  inv0d0 U486 ( .I(gen_cic_1__comb_delay_reg[12]), .ZN(n403) );
  oai22d1 U487 ( .A1(n328), .A2(n403), .B1(n200), .B2(n412), .ZN(n54) );
  inv0d0 U488 ( .I(gen_cic_1__comb_delay_reg[13]), .ZN(n420) );
  oai22d1 U489 ( .A1(n328), .A2(n420), .B1(n200), .B2(n413), .ZN(n53) );
  inv0d0 U490 ( .I(gen_cic_1__comb_delay_reg[14]), .ZN(n417) );
  oai22d1 U491 ( .A1(n328), .A2(n417), .B1(n200), .B2(n426), .ZN(n52) );
  inv0d0 U492 ( .I(gen_cic_1__comb_delay_reg[15]), .ZN(n434) );
  oai22d1 U493 ( .A1(n328), .A2(n434), .B1(n200), .B2(n427), .ZN(n51) );
  inv0d0 U494 ( .I(gen_cic_1__comb_delay_reg[16]), .ZN(n431) );
  oai22d1 U495 ( .A1(n328), .A2(n431), .B1(n200), .B2(n442), .ZN(n50) );
  nr02d0 U496 ( .A1(gen_cic_1__comb_delay_reg[0]), .A2(n325), .ZN(n335) );
  aon211d1 U497 ( .C1(gen_cic_1__comb_delay_reg[0]), .C2(n325), .B(n335), .A(
        n443), .ZN(n326) );
  oai21d1 U498 ( .B1(n328), .B2(n327), .A(n326), .ZN(n49) );
  nd02d0 U499 ( .A1(gen_cic_1__comb_delay_reg[1]), .A2(n329), .ZN(n334) );
  oai21d1 U500 ( .B1(gen_cic_1__comb_delay_reg[1]), .B2(n329), .A(n334), .ZN(
        n332) );
  oai21d1 U501 ( .B1(n335), .B2(n332), .A(n443), .ZN(n331) );
  nd02d0 U502 ( .A1(n444), .A2(cic_comb_data[37]), .ZN(n330) );
  aon211d1 U503 ( .C1(n335), .C2(n332), .B(n331), .A(n330), .ZN(n48) );
  nr02d0 U504 ( .A1(cic_comb_data[20]), .A2(n333), .ZN(n340) );
  aoi21d1 U505 ( .B1(cic_comb_data[20]), .B2(n333), .A(n340), .ZN(n339) );
  aon211d1 U506 ( .C1(cic_comb_data[19]), .C2(n336), .B(n335), .A(n334), .ZN(
        n341) );
  oai21d1 U507 ( .B1(n341), .B2(n339), .A(n443), .ZN(n338) );
  nd02d0 U508 ( .A1(n444), .A2(cic_comb_data[38]), .ZN(n337) );
  aon211d1 U509 ( .C1(n339), .C2(n341), .B(n338), .A(n337), .ZN(n47) );
  oan211d1 U510 ( .C1(gen_cic_1__comb_delay_reg[2]), .C2(n342), .B(n341), .A(
        n340), .ZN(n349) );
  nd02d0 U511 ( .A1(gen_cic_1__comb_delay_reg[3]), .A2(n343), .ZN(n348) );
  oai21d1 U512 ( .B1(gen_cic_1__comb_delay_reg[3]), .B2(n343), .A(n348), .ZN(
        n346) );
  oai21d1 U513 ( .B1(n349), .B2(n346), .A(n443), .ZN(n345) );
  nd02d0 U514 ( .A1(n444), .A2(cic_comb_data[39]), .ZN(n344) );
  aon211d1 U515 ( .C1(n349), .C2(n346), .B(n345), .A(n344), .ZN(n46) );
  nr02d0 U516 ( .A1(cic_comb_data[22]), .A2(n347), .ZN(n354) );
  aoi21d1 U517 ( .B1(cic_comb_data[22]), .B2(n347), .A(n354), .ZN(n353) );
  aon211d1 U518 ( .C1(cic_comb_data[21]), .C2(n350), .B(n349), .A(n348), .ZN(
        n355) );
  oai21d1 U519 ( .B1(n355), .B2(n353), .A(n443), .ZN(n352) );
  nd02d0 U520 ( .A1(n444), .A2(cic_comb_data[40]), .ZN(n351) );
  aon211d1 U521 ( .C1(n353), .C2(n355), .B(n352), .A(n351), .ZN(n45) );
  oan211d1 U522 ( .C1(gen_cic_1__comb_delay_reg[4]), .C2(n356), .B(n355), .A(
        n354), .ZN(n363) );
  nd02d0 U523 ( .A1(gen_cic_1__comb_delay_reg[5]), .A2(n357), .ZN(n362) );
  oai21d1 U524 ( .B1(gen_cic_1__comb_delay_reg[5]), .B2(n357), .A(n362), .ZN(
        n360) );
  oai21d1 U525 ( .B1(n363), .B2(n360), .A(n443), .ZN(n359) );
  nd02d0 U526 ( .A1(n444), .A2(cic_comb_data[41]), .ZN(n358) );
  aon211d1 U527 ( .C1(n363), .C2(n360), .B(n359), .A(n358), .ZN(n44) );
  nr02d0 U528 ( .A1(cic_comb_data[24]), .A2(n361), .ZN(n368) );
  aoi21d1 U529 ( .B1(cic_comb_data[24]), .B2(n361), .A(n368), .ZN(n367) );
  aon211d1 U530 ( .C1(cic_comb_data[23]), .C2(n364), .B(n363), .A(n362), .ZN(
        n369) );
  oai21d1 U531 ( .B1(n369), .B2(n367), .A(n443), .ZN(n366) );
  nd02d0 U532 ( .A1(n444), .A2(cic_comb_data[42]), .ZN(n365) );
  aon211d1 U533 ( .C1(n367), .C2(n369), .B(n366), .A(n365), .ZN(n43) );
  oan211d1 U534 ( .C1(gen_cic_1__comb_delay_reg[6]), .C2(n370), .B(n369), .A(
        n368), .ZN(n377) );
  nd02d0 U535 ( .A1(gen_cic_1__comb_delay_reg[7]), .A2(n371), .ZN(n376) );
  oai21d1 U536 ( .B1(gen_cic_1__comb_delay_reg[7]), .B2(n371), .A(n376), .ZN(
        n374) );
  oai21d1 U537 ( .B1(n377), .B2(n374), .A(n443), .ZN(n373) );
  nd02d0 U538 ( .A1(n444), .A2(cic_comb_data[43]), .ZN(n372) );
  aon211d1 U539 ( .C1(n377), .C2(n374), .B(n373), .A(n372), .ZN(n42) );
  nr02d0 U540 ( .A1(cic_comb_data[26]), .A2(n375), .ZN(n382) );
  aoi21d1 U541 ( .B1(cic_comb_data[26]), .B2(n375), .A(n382), .ZN(n381) );
  aon211d1 U542 ( .C1(cic_comb_data[25]), .C2(n378), .B(n377), .A(n376), .ZN(
        n383) );
  oai21d1 U543 ( .B1(n383), .B2(n381), .A(n443), .ZN(n380) );
  nd02d0 U544 ( .A1(n444), .A2(cic_comb_data[44]), .ZN(n379) );
  aon211d1 U545 ( .C1(n381), .C2(n383), .B(n380), .A(n379), .ZN(n41) );
  oan211d1 U546 ( .C1(gen_cic_1__comb_delay_reg[8]), .C2(n384), .B(n383), .A(
        n382), .ZN(n391) );
  nd02d0 U547 ( .A1(gen_cic_1__comb_delay_reg[9]), .A2(n385), .ZN(n390) );
  oai21d1 U548 ( .B1(gen_cic_1__comb_delay_reg[9]), .B2(n385), .A(n390), .ZN(
        n388) );
  oai21d1 U549 ( .B1(n391), .B2(n388), .A(n443), .ZN(n387) );
  nd02d0 U550 ( .A1(n444), .A2(cic_comb_data[45]), .ZN(n386) );
  aon211d1 U551 ( .C1(n391), .C2(n388), .B(n387), .A(n386), .ZN(n40) );
  nr02d0 U552 ( .A1(cic_comb_data[28]), .A2(n389), .ZN(n396) );
  aoi21d1 U553 ( .B1(cic_comb_data[28]), .B2(n389), .A(n396), .ZN(n395) );
  aon211d1 U554 ( .C1(cic_comb_data[27]), .C2(n392), .B(n391), .A(n390), .ZN(
        n397) );
  oai21d1 U555 ( .B1(n397), .B2(n395), .A(n443), .ZN(n394) );
  nd02d0 U556 ( .A1(n444), .A2(cic_comb_data[46]), .ZN(n393) );
  aon211d1 U557 ( .C1(n395), .C2(n397), .B(n394), .A(n393), .ZN(n39) );
  oan211d1 U558 ( .C1(gen_cic_1__comb_delay_reg[10]), .C2(n398), .B(n397), .A(
        n396), .ZN(n405) );
  nd02d0 U559 ( .A1(gen_cic_1__comb_delay_reg[11]), .A2(n399), .ZN(n404) );
  oai21d1 U560 ( .B1(gen_cic_1__comb_delay_reg[11]), .B2(n399), .A(n404), .ZN(
        n402) );
  oai21d1 U561 ( .B1(n405), .B2(n402), .A(n443), .ZN(n401) );
  nd02d0 U562 ( .A1(n444), .A2(cic_comb_data[47]), .ZN(n400) );
  aon211d1 U563 ( .C1(n405), .C2(n402), .B(n401), .A(n400), .ZN(n38) );
  nr02d0 U564 ( .A1(cic_comb_data[30]), .A2(n403), .ZN(n410) );
  aoi21d1 U565 ( .B1(cic_comb_data[30]), .B2(n403), .A(n410), .ZN(n409) );
  aon211d1 U566 ( .C1(cic_comb_data[29]), .C2(n406), .B(n405), .A(n404), .ZN(
        n411) );
  oai21d1 U567 ( .B1(n411), .B2(n409), .A(n443), .ZN(n408) );
  nd02d0 U568 ( .A1(n444), .A2(cic_comb_data[48]), .ZN(n407) );
  aon211d1 U569 ( .C1(n409), .C2(n411), .B(n408), .A(n407), .ZN(n37) );
  oan211d1 U570 ( .C1(gen_cic_1__comb_delay_reg[12]), .C2(n412), .B(n411), .A(
        n410), .ZN(n419) );
  nd02d0 U571 ( .A1(gen_cic_1__comb_delay_reg[13]), .A2(n413), .ZN(n418) );
  oai21d1 U572 ( .B1(gen_cic_1__comb_delay_reg[13]), .B2(n413), .A(n418), .ZN(
        n416) );
  oai21d1 U573 ( .B1(n419), .B2(n416), .A(n443), .ZN(n415) );
  nd02d0 U574 ( .A1(n444), .A2(cic_comb_data[49]), .ZN(n414) );
  aon211d1 U575 ( .C1(n419), .C2(n416), .B(n415), .A(n414), .ZN(n36) );
  nr02d0 U576 ( .A1(cic_comb_data[32]), .A2(n417), .ZN(n424) );
  aoi21d1 U577 ( .B1(cic_comb_data[32]), .B2(n417), .A(n424), .ZN(n423) );
  aon211d1 U578 ( .C1(cic_comb_data[31]), .C2(n420), .B(n419), .A(n418), .ZN(
        n425) );
  oai21d1 U579 ( .B1(n425), .B2(n423), .A(n443), .ZN(n422) );
  nd02d0 U580 ( .A1(n444), .A2(cic_comb_data[50]), .ZN(n421) );
  aon211d1 U581 ( .C1(n423), .C2(n425), .B(n422), .A(n421), .ZN(n35) );
  oan211d1 U582 ( .C1(gen_cic_1__comb_delay_reg[14]), .C2(n426), .B(n425), .A(
        n424), .ZN(n433) );
  nd02d0 U583 ( .A1(gen_cic_1__comb_delay_reg[15]), .A2(n427), .ZN(n432) );
  oai21d1 U584 ( .B1(gen_cic_1__comb_delay_reg[15]), .B2(n427), .A(n432), .ZN(
        n430) );
  oai21d1 U585 ( .B1(n433), .B2(n430), .A(n443), .ZN(n429) );
  nd02d0 U586 ( .A1(n444), .A2(cic_comb_data[51]), .ZN(n428) );
  aon211d1 U587 ( .C1(n433), .C2(n430), .B(n429), .A(n428), .ZN(n34) );
  nr02d0 U588 ( .A1(cic_comb_data[34]), .A2(n431), .ZN(n440) );
  aoi21d1 U589 ( .B1(cic_comb_data[34]), .B2(n431), .A(n440), .ZN(n437) );
  aon211d1 U590 ( .C1(cic_comb_data[33]), .C2(n434), .B(n433), .A(n432), .ZN(
        n441) );
  oai21d1 U591 ( .B1(n441), .B2(n437), .A(n443), .ZN(n436) );
  nd02d0 U592 ( .A1(n444), .A2(cic_comb_data[52]), .ZN(n435) );
  aon211d1 U593 ( .C1(n437), .C2(n441), .B(n436), .A(n435), .ZN(n33) );
  aoi22d1 U594 ( .A1(cic_comb_data[35]), .A2(gen_cic_1__comb_delay_reg[17]), 
        .B1(n439), .B2(n438), .ZN(n448) );
  oan211d1 U595 ( .C1(gen_cic_1__comb_delay_reg[16]), .C2(n442), .B(n441), .A(
        n440), .ZN(n447) );
  oai21d1 U596 ( .B1(n447), .B2(n448), .A(n443), .ZN(n446) );
  nd02d0 U597 ( .A1(n444), .A2(cic_comb_data[53]), .ZN(n445) );
  aon211d1 U598 ( .C1(n448), .C2(n447), .B(n446), .A(n445), .ZN(n32) );
endmodule

