
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Nov 24 2019 18:56:51 IST (Nov 24 2019 13:26:51 UTC)

// Verification Directory fv/simplehamm 

module simplehamm(m, e);
  input [15:0] m;
  output [20:0] e;
  wire [15:0] m;
  wire [20:0] e;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_22, n_23, n_24;
  wire n_25, n_26, n_27, n_28, n_29, n_30, n_33, n_34;
  wire n_35, n_36, n_37, n_38;
  assign e[2] = m[0];
  assign e[4] = m[1];
  assign e[5] = m[2];
  assign e[6] = m[3];
  assign e[8] = m[4];
  assign e[9] = m[5];
  assign e[10] = m[6];
  assign e[11] = m[7];
  assign e[12] = m[8];
  assign e[13] = m[9];
  assign e[14] = m[10];
  assign e[16] = m[11];
  assign e[17] = m[12];
  assign e[18] = m[13];
  assign e[19] = m[14];
  assign e[20] = m[15];
  OAI21XL g353(.A0 (n_36), .A1 (n_37), .B0 (n_38), .Y (e[1]));
  OAI21XL g354(.A0 (n_33), .A1 (n_34), .B0 (n_35), .Y (e[0]));
  NAND2XL g355(.A (n_37), .B (n_36), .Y (n_38));
  NAND2XL g356(.A (n_34), .B (n_33), .Y (n_35));
  AOI21XL g358(.A0 (n_25), .A1 (n_30), .B0 (n_26), .Y (n_36));
  OAI21XL g359(.A0 (n_27), .A1 (n_28), .B0 (n_29), .Y (e[7]));
  OAI21XL g357(.A0 (n_22), .A1 (n_23), .B0 (n_24), .Y (e[3]));
  CLKXOR2X1 g360(.A (n_30), .B (m[8]), .Y (n_33));
  NAND2XL g361(.A (n_28), .B (n_27), .Y (n_29));
  NOR2XL g362(.A (n_25), .B (n_30), .Y (n_26));
  NAND2XL g363(.A (n_23), .B (n_22), .Y (n_24));
  OAI21XL g366(.A0 (n_20), .A1 (m[14]), .B0 (n_19), .Y (n_22));
  OAI21XL g365(.A0 (n_15), .A1 (n_16), .B0 (n_17), .Y (n_30));
  OAI21XL g364(.A0 (n_12), .A1 (n_13), .B0 (n_14), .Y (e[15]));
  AOI21XL g367(.A0 (m[5]), .A1 (n_20), .B0 (n_18), .Y (n_27));
  NAND2XL g368(.A (m[14]), .B (n_20), .Y (n_19));
  NOR2XL g369(.A (m[5]), .B (n_20), .Y (n_18));
  NAND2XL g370(.A (n_16), .B (n_15), .Y (n_17));
  NAND2XL g371(.A (n_13), .B (n_12), .Y (n_14));
  AOI21XL g374(.A0 (m[6]), .A1 (n_9), .B0 (n_10), .Y (n_15));
  AOI21XL g373(.A0 (n_5), .A1 (n_4), .B0 (n_6), .Y (n_20));
  AOI21XL g375(.A0 (n_2), .A1 (n_11), .B0 (n_3), .Y (n_34));
  AOI21XL g376(.A0 (n_0), .A1 (n_11), .B0 (n_1), .Y (n_23));
  AOI21XL g372(.A0 (m[14]), .A1 (n_7), .B0 (n_8), .Y (n_12));
  NOR2XL g377(.A (m[6]), .B (n_9), .Y (n_10));
  NOR2XL g378(.A (m[14]), .B (n_7), .Y (n_8));
  NOR2XL g379(.A (n_5), .B (n_4), .Y (n_6));
  NOR2XL g380(.A (n_2), .B (n_11), .Y (n_3));
  NOR2XL g381(.A (n_0), .B (n_11), .Y (n_1));
  XNOR2X1 g387(.A (m[0]), .B (m[3]), .Y (n_9));
  CLKXOR2X1 g388(.A (m[11]), .B (m[12]), .Y (n_13));
  XNOR2X1 g391(.A (m[13]), .B (m[15]), .Y (n_7));
  XNOR2X1 g392(.A (m[2]), .B (m[3]), .Y (n_0));
  XNOR2X1 g389(.A (m[4]), .B (m[11]), .Y (n_2));
  CLKXOR2X1 g382(.A (m[5]), .B (m[9]), .Y (n_37));
  XNOR2X1 g383(.A (m[7]), .B (m[9]), .Y (n_4));
  CLKXOR2X1 g386(.A (m[10]), .B (m[13]), .Y (n_16));
  XNOR2X1 g384(.A (m[2]), .B (m[12]), .Y (n_25));
  CLKXOR2X1 g390(.A (m[4]), .B (m[6]), .Y (n_28));
  CLKXOR2X1 g385(.A (m[8]), .B (m[10]), .Y (n_5));
  CLKXOR2X1 g393(.A (m[1]), .B (m[15]), .Y (n_11));
endmodule

