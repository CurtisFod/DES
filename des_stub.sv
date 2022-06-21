/*
Curtis Fodor
CWID: A20327891
February 3, 2022
ECEN 3233
Lab2
*/

/*
 Data Encryption Standard (S-DES)
 64-bit 16-round block cipher encryption and decryption algorithm 
 using 56-bit key (64-bit key with Parity).
 */

module GenerateKeys (Key, SubKey1, SubKey2, SubKey3, SubKey4,
		     SubKey5, SubKey6, SubKey7, SubKey8,
		     SubKey9, SubKey10, SubKey11, SubKey12,
		     SubKey13, SubKey14, SubKey15, SubKey16);
   
   // Generate SubKeys
   logic [27:0] left_block;
   logic [27:0] right_block;
   input logic [63:0]  Key;
   output logic [47:0] SubKey1;
   output logic [47:0] SubKey2;
   output logic [47:0] SubKey3;
   output logic [47:0] SubKey4;
   output logic [47:0] SubKey5;
   output logic [47:0] SubKey6;
   output logic [47:0] SubKey7;
   output logic [47:0] SubKey8;
   output logic [47:0] SubKey9;
   output logic [47:0] SubKey10;
   output logic [47:0] SubKey11;
   output logic [47:0] SubKey12;
   output logic [47:0] SubKey13;
   output logic [47:0] SubKey14;
   output logic [47:0] SubKey15;
   output logic [47:0] SubKey16;
   logic [27:0] L1_block;
   logic [27:0] L2_block;
   logic [27:0] L3_block;
   logic [27:0] L4_block;
   logic [27:0] L5_block;
   logic [27:0] L6_block;
   logic [27:0] L7_block;
   logic [27:0] L8_block;
   logic [27:0] L9_block;
   logic [27:0] L10_block;
   logic [27:0] L11_block;
   logic [27:0] L12_block;
   logic [27:0] L13_block;
   logic [27:0] L14_block;
   logic [27:0] L15_block;
   logic [27:0] L16_block;

   logic [27:0] R1_block;
   logic [27:0] R2_block;
   logic [27:0] R3_block;
   logic [27:0] R4_block;
   logic [27:0] R5_block;
   logic [27:0] R6_block;
   logic [27:0] R7_block;
   logic [27:0] R8_block;
   logic [27:0] R9_block;
   logic [27:0] R10_block;
   logic [27:0] R11_block;
   logic [27:0] R12_block;
   logic [27:0] R13_block;
   logic [27:0] R14_block;
   logic [27:0] R15_block;
   logic [27:0] R16_block;

   PC1 kstart (Key, left_block, right_block);
   
   assign L1_block = {left_block[26:0], left_block[27]};
   assign R1_block = {right_block[26:0], right_block[27]};
   PC2 K1 (L1_block, R1_block, SubKey1);

   assign L2_block = {L1_block[26:0], L1_block[27]};
   assign R2_block = {R1_block[26:0], R1_block[27]};
   PC2 K2 (L2_block, R2_block, SubKey2);

   assign L3_block = {L2_block[25:0], L2_block[27:26]};
   assign R3_block = {R2_block[25:0], R2_block[27:26]};
   PC2 K3 (L3_block, R3_block, SubKey3);

   assign L4_block = {L3_block[25:0], L3_block[27:26]};
   assign R4_block = {R3_block[25:0], R3_block[27:26]};
   PC2 K4 (L4_block, R4_block, SubKey4);

   assign L5_block = {L4_block[25:0], L4_block[27:26]};
   assign R5_block = {R4_block[25:0], R4_block[27:26]};
   PC2 K5 (L5_block, R5_block, SubKey5);

   assign L6_block = {L5_block[25:0], L5_block[27:26]};
   assign R6_block = {R5_block[25:0], R5_block[27:26]};
   PC2 K6 (L6_block, R6_block, SubKey6);

   assign L7_block = {L6_block[25:0], L6_block[27:26]};
   assign R7_block = {R6_block[25:0], R6_block[27:26]};
   PC2 K7 (L7_block, R7_block, SubKey7);

   assign L8_block = {L7_block[25:0], L7_block[27:26]};
   assign R8_block = {R7_block[25:0], R7_block[27:26]};
   PC2 K8 (L8_block, R8_block, SubKey8);

   assign L9_block = {L8_block[26:0], L8_block[27]};
   assign R9_block = {R8_block[26:0], R8_block[27]};
   PC2 K9 (L9_block, R9_block, SubKey9);

   assign L10_block = {L9_block[25:0], L9_block[27:26]};
   assign R10_block = {R9_block[25:0], R9_block[27:26]};
   PC2 K10 (L10_block, R10_block, SubKey10);

   assign L11_block = {L10_block[25:0], L10_block[27:26]};
   assign R11_block = {R10_block[25:0], R10_block[27:26]};
   PC2 K11 (L11_block, R11_block, SubKey11);

   assign L12_block = {L11_block[25:0], L11_block[27:26]};
   assign R12_block = {R11_block[25:0], R11_block[27:26]};
   PC2 K12 (L12_block, R12_block, SubKey12);

   assign L13_block = {L12_block[25:0], L12_block[27:26]};
   assign R13_block = {R12_block[25:0], R12_block[27:26]};
   PC2 K13 (L13_block, R13_block, SubKey13);

   assign L14_block = {L13_block[25:0], L13_block[27:26]};
   assign R14_block = {R13_block[25:0], R13_block[27:26]};
   PC2 K14 (L14_block, R14_block, SubKey14);

   assign L15_block = {L14_block[25:0], L14_block[27:26]};
   assign R15_block = {R14_block[25:0], R14_block[27:26]};
   PC2 K15 (L15_block, R15_block, SubKey15);

   assign L16_block = {L15_block[26:0], L15_block[27]};
   assign R16_block = {R15_block[26:0], R15_block[27]};
   PC2 K16 (L16_block, R16_block, SubKey16);

endmodule // GenerateKeys

module PC1 (key, left_block, right_block);

   input logic [63:0]  key;
   output logic [27:0] left_block;
   output logic [27:0] right_block;

   logic [55:0] out_block;

   assign out_block[55] = key[64-57];
   assign out_block[54] = key[64-49];
   assign out_block[53] = key[64-41];
   assign out_block[52] = key[64-33];
   assign out_block[51] = key[64-25];
   assign out_block[50] = key[64-17];
   assign out_block[49] = key[64-9];
   assign out_block[48] = key[64-1];
   assign out_block[47] = key[64-58];
   assign out_block[46] = key[64-50];
   assign out_block[45] = key[64-42];
   assign out_block[44] = key[64-34];
   assign out_block[43] = key[64-26];
   assign out_block[42] = key[64-18];
   assign out_block[41] = key[64-10];
   assign out_block[40] = key[64-2];
   assign out_block[39] = key[64-59];
   assign out_block[38] = key[64-51];
   assign out_block[37] = key[64-43];
   assign out_block[36] = key[64-35];
   assign out_block[35] = key[64-27];
   assign out_block[34] = key[64-19];
   assign out_block[33] = key[64-11];
   assign out_block[32] = key[64-3];
   assign out_block[31] = key[64-60];
   assign out_block[30] = key[64-52];
   assign out_block[29] = key[64-44];
   assign out_block[28] = key[64-36];
   assign out_block[27] = key[64-63];
   assign out_block[26] = key[64-55];
   assign out_block[25] = key[64-47];
   assign out_block[24] = key[64-39];
   assign out_block[23] = key[64-31];
   assign out_block[22] = key[64-23];
   assign out_block[21] = key[64-15];
   assign out_block[20] = key[64-7];
   assign out_block[19] = key[64-62];
   assign out_block[18] = key[64-54];
   assign out_block[17] = key[64-46];
   assign out_block[16] = key[64-38];
   assign out_block[15] = key[64-30];
   assign out_block[14] = key[64-22];
   assign out_block[13] = key[64-14];
   assign out_block[12] = key[64-6];
   assign out_block[11] = key[64-61];
   assign out_block[10] = key[64-53];
   assign out_block[9] = key[64-45];
   assign out_block[8] = key[64-37];
   assign out_block[7] = key[64-29];
   assign out_block[6] = key[64-21];
   assign out_block[5] = key[64-13];
   assign out_block[4] = key[64-5];
   assign out_block[3] = key[64-28];
   assign out_block[2] = key[64-20];
   assign out_block[1] = key[64-12];
   assign out_block[0] = key[64-4];


   assign {left_block, right_block} = out_block;

endmodule // PC1

module PC2 (left_block, right_block, subkey);

   input logic [27:0] left_block;
   input logic [27:0] right_block;
   output logic [47:0] subkey;
   logic [55:0] temp_block;

   assign temp_block = {left_block, right_block};

   assign subkey[47] = temp_block[56-14];
   assign subkey[46] = temp_block[56-17];
   assign subkey[45] = temp_block[56-11];
   assign subkey[44] = temp_block[56-24];
   assign subkey[43] = temp_block[56-1];
   assign subkey[42] = temp_block[56-5];
   assign subkey[41] = temp_block[56-3];
   assign subkey[40] = temp_block[56-28];
   assign subkey[39] = temp_block[56-15];
   assign subkey[38] = temp_block[56-6];
   assign subkey[37] = temp_block[56-21];
   assign subkey[36] = temp_block[56-10];
   assign subkey[35] = temp_block[56-23];
   assign subkey[34] = temp_block[56-19];
   assign subkey[33] = temp_block[56-12];
   assign subkey[32] = temp_block[56-4];
   assign subkey[31] = temp_block[56-26];
   assign subkey[30] = temp_block[56-8];
   assign subkey[29] = temp_block[56-16];
   assign subkey[28] = temp_block[56-7];
   assign subkey[27] = temp_block[56-27];
   assign subkey[26] = temp_block[56-20];
   assign subkey[25] = temp_block[56-13];
   assign subkey[24] = temp_block[56-2];
   assign subkey[23] = temp_block[56-41];
   assign subkey[22] = temp_block[56-52];
   assign subkey[21] = temp_block[56-31];
  
   assign subkey[20] = temp_block[56-37];
   assign subkey[19] = temp_block[56-47];
   assign subkey[18] = temp_block[56-55];
   assign subkey[17] = temp_block[56-30];
   assign subkey[16] = temp_block[56-40];
   assign subkey[15] = temp_block[56-51];
   assign subkey[14] = temp_block[56-45];
   assign subkey[13] = temp_block[56-33];
   assign subkey[12] = temp_block[56-48];
   assign subkey[11] = temp_block[56-44];
   assign subkey[10] = temp_block[56-49];
   assign subkey[9] = temp_block[56-39];
   assign subkey[8] = temp_block[56-56];
   assign subkey[7] = temp_block[56-34];
   assign subkey[6] = temp_block[56-53];
   assign subkey[5] = temp_block[56-46];
   assign subkey[4] = temp_block[56-42];
   assign subkey[3] = temp_block[56-50];
   assign subkey[2] = temp_block[56-36];
   assign subkey[1] = temp_block[56-29];
   assign subkey[0] = temp_block[56-32];

endmodule // PC2

// Straight Function
module SF (inp_block, out_block);

   input logic [31:0] inp_block;
   output logic [31:0] out_block;

   assign out_block[31] = inp_block[32-16];
   assign out_block[30] = inp_block[32-7];
   assign out_block[29] = inp_block[32-20];
   assign out_block[28] = inp_block[32-21];
   assign out_block[27] = inp_block[32-29];
   assign out_block[26] = inp_block[32-12];
   assign out_block[25] = inp_block[32-28];
   assign out_block[24] = inp_block[32-17];
   assign out_block[23] = inp_block[32-1];
   assign out_block[22] = inp_block[32-15];
   assign out_block[21] = inp_block[32-23];
   assign out_block[20] = inp_block[32-26];
   assign out_block[19] = inp_block[32-5];
   assign out_block[18] = inp_block[32-18];
   assign out_block[17] = inp_block[32-31];
   assign out_block[16] = inp_block[32-10];
   assign out_block[15] = inp_block[32-2];
   assign out_block[14] = inp_block[32-8];
   assign out_block[13] = inp_block[32-24];
   assign out_block[12] = inp_block[32-14];
   assign out_block[11] = inp_block[32-32];
   assign out_block[10] = inp_block[32-27];
   assign out_block[9] = inp_block[32-3];
   assign out_block[8] = inp_block[32-9];
   assign out_block[7] = inp_block[32-19];
   assign out_block[6] = inp_block[32-13];
   assign out_block[5] = inp_block[32-30];
   assign out_block[4] = inp_block[32-6];
   assign out_block[3] = inp_block[32-22];
   assign out_block[2] = inp_block[32-11];
   assign out_block[1] = inp_block[32-4];
   assign out_block[0] = inp_block[32-25];


endmodule // SF

// Expansion Function
module EF (inp_block, out_block);

   input logic [31:0] inp_block;
   output logic [47:0] out_block;

   assign out_block[47] = inp_block[32-32];
   assign out_block[46] = inp_block[32-1];
   assign out_block[45] = inp_block[32-2];
   assign out_block[44] = inp_block[32-3];
   assign out_block[43] = inp_block[32-4];
   assign out_block[42] = inp_block[32-5];
   assign out_block[41] = inp_block[32-4];
   assign out_block[40] = inp_block[32-5];
   assign out_block[39] = inp_block[32-6];
   assign out_block[38] = inp_block[32-7];
   assign out_block[37] = inp_block[32-8];
   assign out_block[36] = inp_block[32-9];
   assign out_block[35] = inp_block[32-8];
   assign out_block[34] = inp_block[32-9];
   assign out_block[33] = inp_block[32-10];
   assign out_block[32] = inp_block[32-11];
   assign out_block[31] = inp_block[32-12];
   assign out_block[30] = inp_block[32-13];
   assign out_block[29] = inp_block[32-12];
   assign out_block[28] = inp_block[32-13];
   assign out_block[27] = inp_block[32-14];
   assign out_block[26] = inp_block[32-15];
   assign out_block[25] = inp_block[32-16];
   assign out_block[24] = inp_block[32-17];
   assign out_block[23] = inp_block[32-16];
   assign out_block[22] = inp_block[32-17];
   assign out_block[21] = inp_block[32-18];
   assign out_block[20] = inp_block[32-19];
   assign out_block[19] = inp_block[32-20];
   assign out_block[18] = inp_block[32-21];
   assign out_block[17] = inp_block[32-20];
   assign out_block[16] = inp_block[32-21];
   assign out_block[15] = inp_block[32-22];
   assign out_block[14] = inp_block[32-23];
   assign out_block[13] = inp_block[32-24];
   assign out_block[12] = inp_block[32-25];
   assign out_block[11] = inp_block[32-24];
   assign out_block[10] = inp_block[32-25];
   assign out_block[9] = inp_block[32-26];
   assign out_block[8] = inp_block[32-27];
   assign out_block[7] = inp_block[32-28];
   assign out_block[6] = inp_block[32-29];
   assign out_block[5] = inp_block[32-28];
   assign out_block[4] = inp_block[32-29];
   assign out_block[3] = inp_block[32-30];
   assign out_block[2] = inp_block[32-31];
   assign out_block[1] = inp_block[32-32];
   assign out_block[0] = inp_block[32-1];


endmodule // EF

module feistel (inp_block, subkey, out_block);

   input logic [31:0]  inp_block;
   input logic [47:0]  subkey;
   output logic [31:0] out_block;
   logic [47:0] eb_out;
   logic [47:0] sbox_inp;
   logic [31:0] sbox_out;

   logic [5:0] Sbox8in;
   logic [5:0] Sbox7in;
   logic [5:0] Sbox6in;
   logic [5:0] Sbox5in;
   logic [5:0] Sbox4in;
   logic [5:0] Sbox3in;
   logic [5:0] Sbox2in;
   logic [5:0] Sbox1in;

   logic [3:0] Sbox8out;
   logic [3:0] Sbox7out;
   logic [3:0] Sbox6out;
   logic [3:0] Sbox5out;
   logic [3:0] Sbox4out;
   logic [3:0] Sbox3out;
   logic [3:0] Sbox2out;
   logic [3:0] Sbox1out;

   EF ef(inp_block, eb_out);
   
   assign sbox_inp = eb_out ^ subkey;

   assign Sbox8in = sbox_inp[5:0];
   assign Sbox7in = sbox_inp[11:6];
   assign Sbox6in = sbox_inp[17:12];
   assign Sbox5in = sbox_inp[23:18];
   assign Sbox4in = sbox_inp[29:24];
   assign Sbox3in = sbox_inp[35:30];
   assign Sbox2in = sbox_inp[41:36];
   assign Sbox1in = sbox_inp[47:42];

   S8_Box s8 (Sbox8in, Sbox8out);
   S7_Box s7 (Sbox7in, Sbox7out);
   S6_Box s6 (Sbox6in, Sbox6out);
   S5_Box s5 (Sbox5in, Sbox5out);
   S4_Box s4 (Sbox4in, Sbox4out);
   S3_Box s3 (Sbox3in, Sbox3out);
   S2_Box s2 (Sbox2in, Sbox2out);
   S1_Box s1 (Sbox1in, Sbox1out);
   
   assign sbox_out = {Sbox1out, Sbox2out, Sbox3out, Sbox4out, Sbox5out, Sbox6out, Sbox7out, Sbox8out};

   SF sdb(sbox_out, out_block);


endmodule // Feistel

// DES block round
module round (inp_block, subkey, out_block);
   
   logic [31:0] leftin_block;
   logic [31:0] rightin_block;
   logic [31:0] leftout_block;
   logic [31:0] rightout_block;
   logic [31:0] feistel_out;
   
   input logic [63:0]  inp_block;
   input logic [47:0]  subkey;
   output logic [63:0] out_block;


   assign {leftin_block, rightin_block} = inp_block;
   feistel fs(rightin_block, subkey, feistel_out);
   
   
   assign rightout_block = feistel_out ^ leftin_block;

   assign leftout_block = rightin_block;

   assign out_block = {leftout_block, rightout_block};

endmodule // round1

// Initial Permutation
module IP (inp_block, out_block);

   input logic [63:0]  inp_block;
   output logic [63:0] out_block;

   assign out_block[63] = inp_block[64-58];
   assign out_block[62] = inp_block[64-50];
   assign out_block[61] = inp_block[64-42];
   assign out_block[60] = inp_block[64-34];
   assign out_block[59] = inp_block[64-26];
   assign out_block[58] = inp_block[64-18];
   assign out_block[57] = inp_block[64-10];
   assign out_block[56] = inp_block[64-2];
   assign out_block[55] = inp_block[64-60];
   assign out_block[54] = inp_block[64-52];   
   assign out_block[53] = inp_block[64-44];   
   assign out_block[52] = inp_block[64-36];
   assign out_block[51] = inp_block[64-28];
   assign out_block[50] = inp_block[64-20];
   assign out_block[49] = inp_block[64-12];
   assign out_block[48] = inp_block[64-4];
   assign out_block[47] = inp_block[64-62];
   assign out_block[46] = inp_block[64-54];
   assign out_block[45] = inp_block[64-46];
   assign out_block[44] = inp_block[64-38];   
   assign out_block[43] = inp_block[64-30];
   assign out_block[42] = inp_block[64-22];   
   assign out_block[41] = inp_block[64-14];
   assign out_block[40] = inp_block[64-6];
   assign out_block[39] = inp_block[64-64];
   assign out_block[38] = inp_block[64-56];
   assign out_block[37] = inp_block[64-48];
   assign out_block[36] = inp_block[64-40];
   assign out_block[35] = inp_block[64-32];
   assign out_block[34] = inp_block[64-24];   
   assign out_block[33] = inp_block[64-16];
   assign out_block[32] = inp_block[64-8];   
   assign out_block[31] = inp_block[64-57];
   assign out_block[30] = inp_block[64-49];
   assign out_block[29] = inp_block[64-41];
   assign out_block[28] = inp_block[64-33];
   assign out_block[27] = inp_block[64-25];
   assign out_block[26] = inp_block[64-17];
   assign out_block[25] = inp_block[64-9];   
   assign out_block[24] = inp_block[64-1];   
   assign out_block[23] = inp_block[64-59];
   assign out_block[22] = inp_block[64-51];   
   assign out_block[21] = inp_block[64-43];
   assign out_block[20] = inp_block[64-35];
   assign out_block[19] = inp_block[64-27];
   assign out_block[18] = inp_block[64-19];
   assign out_block[17] = inp_block[64-11];
   assign out_block[16] = inp_block[64-3];
   assign out_block[15] = inp_block[64-61];
   assign out_block[14] = inp_block[64-53];   
   assign out_block[13] = inp_block[64-45];
   assign out_block[12] = inp_block[64-37];   
   assign out_block[11] = inp_block[64-29];
   assign out_block[10] = inp_block[64-21];
   assign out_block[9] = inp_block[64-13];
   assign out_block[8] = inp_block[64-5];
   assign out_block[7] = inp_block[64-63];
   assign out_block[6] = inp_block[64-55];
   assign out_block[5] = inp_block[64-47];
   assign out_block[4] = inp_block[64-39];   
   assign out_block[3] = inp_block[64-31];
   assign out_block[2] = inp_block[64-23];    
   assign out_block[1] = inp_block[64-15];
   assign out_block[0] = inp_block[64-7];   

endmodule // IP

// Final Permutation
module FP (inp_block, out_block);

   input logic [63:0]  inp_block;
   output logic [63:0] out_block;

   assign out_block[63] = inp_block[64-40];
   assign out_block[62] = inp_block[64-8];
   assign out_block[61] = inp_block[64-48];
   assign out_block[60] = inp_block[64-16];
   assign out_block[59] = inp_block[64-56];
   assign out_block[58] = inp_block[64-24];
   assign out_block[57] = inp_block[64-64];
   assign out_block[56] = inp_block[64-32];   
   assign out_block[55] = inp_block[64-39];
   assign out_block[54] = inp_block[64-7];   
   assign out_block[53] = inp_block[64-47];   
   assign out_block[52] = inp_block[64-15];
   assign out_block[51] = inp_block[64-55];
   assign out_block[50] = inp_block[64-23];
   assign out_block[49] = inp_block[64-63];
   assign out_block[48] = inp_block[64-31];   
   assign out_block[47] = inp_block[64-38];
   assign out_block[46] = inp_block[64-6];
   assign out_block[45] = inp_block[64-46];
   assign out_block[44] = inp_block[64-14];   
   assign out_block[43] = inp_block[64-54];
   assign out_block[42] = inp_block[64-22];   
   assign out_block[41] = inp_block[64-62];
   assign out_block[40] = inp_block[64-30];   
   assign out_block[39] = inp_block[64-37];
   assign out_block[38] = inp_block[64-5];
   assign out_block[37] = inp_block[64-45];
   assign out_block[36] = inp_block[64-13];
   assign out_block[35] = inp_block[64-53];
   assign out_block[34] = inp_block[64-21];   
   assign out_block[33] = inp_block[64-61];
   assign out_block[32] = inp_block[64-29];   
   assign out_block[31] = inp_block[64-36];
   assign out_block[30] = inp_block[64-4];
   assign out_block[29] = inp_block[64-44];
   assign out_block[28] = inp_block[64-12];
   assign out_block[27] = inp_block[64-52];
   assign out_block[26] = inp_block[64-20];
   assign out_block[25] = inp_block[64-60];   
   assign out_block[24] = inp_block[64-28];   
   assign out_block[23] = inp_block[64-35];
   assign out_block[22] = inp_block[64-3];   
   assign out_block[21] = inp_block[64-43];
   assign out_block[20] = inp_block[64-11];
   assign out_block[19] = inp_block[64-51];
   assign out_block[18] = inp_block[64-19];
   assign out_block[17] = inp_block[64-59];
   assign out_block[16] = inp_block[64-27];   
   assign out_block[15] = inp_block[64-34];
   assign out_block[14] = inp_block[64-2];   
   assign out_block[13] = inp_block[64-42];
   assign out_block[12] = inp_block[64-10];   
   assign out_block[11] = inp_block[64-50];
   assign out_block[10] = inp_block[64-18];
   assign out_block[9] = inp_block[64-58];
   assign out_block[8] = inp_block[64-26];   
   assign out_block[7] = inp_block[64-33];
   assign out_block[6] = inp_block[64-1];
   assign out_block[5] = inp_block[64-41];   
   assign out_block[4] = inp_block[64-9];
   assign out_block[3] = inp_block[64-49];    
   assign out_block[2] = inp_block[64-17];
   assign out_block[1] = inp_block[64-57];
   assign out_block[0] = inp_block[64-25];  

endmodule // FP

module S1_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})
	  6'd0  : out_bits = 4'd14;             
	  6'd1  : out_bits = 4'd4;             
	  6'd2  : out_bits = 4'd13;            
	  6'd3  : out_bits = 4'd1;             
	  6'd4  : out_bits = 4'd2;             
	  6'd5  : out_bits = 4'd15;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd8;             
	  6'd8  : out_bits = 4'd3;             
	  6'd9  : out_bits = 4'd10;             
	  6'd10 : out_bits = 4'd6;             
	  6'd11 : out_bits = 4'd12;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd9;             
	  6'd14 : out_bits = 4'd0;             
	  6'd15 : out_bits = 4'd7;             
	  6'd16 : out_bits = 4'd0;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd7;             
	  6'd19 : out_bits = 4'd4;             
	  6'd20 : out_bits = 4'd14;             
	  6'd21 : out_bits = 4'd2;             
	  6'd22 : out_bits = 4'd13;             
	  6'd23 : out_bits = 4'd1;             
	  6'd24 : out_bits = 4'd10;             
	  6'd25 : out_bits = 4'd6;             
	  6'd26 : out_bits = 4'd12;             
	  6'd27 : out_bits = 4'd11;             
	  6'd28 : out_bits = 4'd9;             
	  6'd29 : out_bits = 4'd5;             
	  6'd30 : out_bits = 4'd3;             
	  6'd31 : out_bits = 4'd8;             
	  6'd32 : out_bits = 4'd4;             
	  6'd33 : out_bits = 4'd1;             
	  6'd34 : out_bits = 4'd14;             
	  6'd35 : out_bits = 4'd8;             
	  6'd36 : out_bits = 4'd13;             
	  6'd37 : out_bits = 4'd6;             
	  6'd38 : out_bits = 4'd2;             
	  6'd39 : out_bits = 4'd11;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd12;             
	  6'd42 : out_bits = 4'd9;             
	  6'd43 : out_bits = 4'd7;             
	  6'd44 : out_bits = 4'd3;             
	  6'd45 : out_bits = 4'd10;             
	  6'd46 : out_bits = 4'd5;             
	  6'd47 : out_bits = 4'd0;             
	  6'd48 : out_bits = 4'd15;             
	  6'd49 : out_bits = 4'd12;             
	  6'd50 : out_bits = 4'd8;             
	  6'd51 : out_bits = 4'd2;             
	  6'd52 : out_bits = 4'd4;             
	  6'd53 : out_bits = 4'd9;            
	  6'd54 : out_bits = 4'd1;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd5;        
	  6'd57 : out_bits = 4'd11;        
	  6'd58 : out_bits = 4'd3;       
	  6'd59 : out_bits = 4'd14;       
	  6'd60 : out_bits = 4'd10;       
	  6'd61 : out_bits = 4'd0;       
	  6'd62 : out_bits = 4'd6;      
	  6'd63 : out_bits = 4'd13;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S1_Box

module S2_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})             
	  6'd0  : out_bits = 4'd15;             
	  6'd1  : out_bits = 4'd1;             
	  6'd2  : out_bits = 4'd8;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd11;             
	  6'd6  : out_bits = 4'd3;             
	  6'd7  : out_bits = 4'd4;             
	  6'd8  : out_bits = 4'd9;             
	  6'd9  : out_bits = 4'd7;             
	  6'd10 : out_bits = 4'd2;             
	  6'd11 : out_bits = 4'd13;             
	  6'd12 : out_bits = 4'd12;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd5;             
	  6'd15 : out_bits = 4'd10;             
	  6'd16 : out_bits = 4'd3;             
	  6'd17 : out_bits = 4'd13;             
	  6'd18 : out_bits = 4'd4;             
	  6'd19 : out_bits = 4'd7;             
	  6'd20 : out_bits = 4'd15;             
	  6'd21 : out_bits = 4'd2;             
	  6'd22 : out_bits = 4'd8;             
	  6'd23 : out_bits = 4'd14;             
	  6'd24 : out_bits = 4'd12;             
	  6'd25 : out_bits = 4'd0;             
	  6'd26 : out_bits = 4'd1;             
	  6'd27 : out_bits = 4'd10;             
	  6'd28 : out_bits = 4'd6;             
	  6'd29 : out_bits = 4'd9;             
	  6'd30 : out_bits = 4'd11;             
	  6'd31 : out_bits = 4'd5;             
	  6'd32 : out_bits = 4'd0;             
	  6'd33 : out_bits = 4'd14;             
	  6'd34 : out_bits = 4'd7;             
	  6'd35 : out_bits = 4'd11;             
	  6'd36 : out_bits = 4'd10;             
	  6'd37 : out_bits = 4'd4;             
	  6'd38 : out_bits = 4'd13;             
	  6'd39 : out_bits = 4'd1;             
	  6'd40 : out_bits = 4'd5;             
	  6'd41 : out_bits = 4'd8;             
	  6'd42 : out_bits = 4'd12;             
	  6'd43 : out_bits = 4'd6;             
	  6'd44 : out_bits = 4'd9;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd2;             
	  6'd47 : out_bits = 4'd15;             
	  6'd48 : out_bits = 4'd13;             
	  6'd49 : out_bits = 4'd8;             
	  6'd50 : out_bits = 4'd10;             
	  6'd51 : out_bits = 4'd1;             
	  6'd52 : out_bits = 4'd3;             
	  6'd53 : out_bits = 4'd15;            
	  6'd54 : out_bits = 4'd4;             
	  6'd55 : out_bits = 4'd2;            
	  6'd56 : out_bits = 4'd11;        
	  6'd57 : out_bits = 4'd6;        
	  6'd58 : out_bits = 4'd7;       
	  6'd59 : out_bits = 4'd12;       
	  6'd60 : out_bits = 4'd0;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd14;      
	  6'd63 : out_bits = 4'd9;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S2_Box

module S3_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})
	  6'd0  : out_bits = 4'd10;             
	  6'd1  : out_bits = 4'd0;             
	  6'd2  : out_bits = 4'd9;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd3;             
	  6'd6  : out_bits = 4'd15;             
	  6'd7  : out_bits = 4'd5;             
	  6'd8  : out_bits = 4'd1;             
	  6'd9  : out_bits = 4'd13;             
	  6'd10 : out_bits = 4'd12;             
	  6'd11 : out_bits = 4'd7;             
	  6'd12 : out_bits = 4'd11;             
	  6'd13 : out_bits = 4'd4;             
	  6'd14 : out_bits = 4'd2;             
	  6'd15 : out_bits = 4'd8;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd7;             
	  6'd18 : out_bits = 4'd0;             
	  6'd19 : out_bits = 4'd9;             
	  6'd20 : out_bits = 4'd3;             
	  6'd21 : out_bits = 4'd4;             
	  6'd22 : out_bits = 4'd6;             
	  6'd23 : out_bits = 4'd10;             
	  6'd24 : out_bits = 4'd2;             
	  6'd25 : out_bits = 4'd8;             
	  6'd26 : out_bits = 4'd5;             
	  6'd27 : out_bits = 4'd14;             
	  6'd28 : out_bits = 4'd12;             
	  6'd29 : out_bits = 4'd11;             
	  6'd30 : out_bits = 4'd15;             
	  6'd31 : out_bits = 4'd1;             
	  6'd32 : out_bits = 4'd13;             
	  6'd33 : out_bits = 4'd6;             
	  6'd34 : out_bits = 4'd4;             
	  6'd35 : out_bits = 4'd9;             
	  6'd36 : out_bits = 4'd8;             
	  6'd37 : out_bits = 4'd15;             
	  6'd38 : out_bits = 4'd3;             
	  6'd39 : out_bits = 4'd0;             
	  6'd40 : out_bits = 4'd11;             
	  6'd41 : out_bits = 4'd1;             
	  6'd42 : out_bits = 4'd2;             
	  6'd43 : out_bits = 4'd12;             
	  6'd44 : out_bits = 4'd5;             
	  6'd45 : out_bits = 4'd10;             
	  6'd46 : out_bits = 4'd14;             
	  6'd47 : out_bits = 4'd7;             
	  6'd48 : out_bits = 4'd1;             
	  6'd49 : out_bits = 4'd10;             
	  6'd50 : out_bits = 4'd13;             
	  6'd51 : out_bits = 4'd0;             
	  6'd52 : out_bits = 4'd6;             
	  6'd53 : out_bits = 4'd9;            
	  6'd54 : out_bits = 4'd8;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd4;        
	  6'd57 : out_bits = 4'd15;        
	  6'd58 : out_bits = 4'd14;       
	  6'd59 : out_bits = 4'd3;       
	  6'd60 : out_bits = 4'd11;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd2;      
	  6'd63 : out_bits = 4'd12;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S3_Box

module S4_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd7;             
	  6'd1  : out_bits = 4'd13;             
	  6'd2  : out_bits = 4'd14;            
	  6'd3  : out_bits = 4'd3;             
	  6'd4  : out_bits = 4'd0;             
	  6'd5  : out_bits = 4'd6;             
	  6'd6  : out_bits = 4'd9;             
	  6'd7  : out_bits = 4'd10;             
	  6'd8  : out_bits = 4'd1;             
	  6'd9  : out_bits = 4'd2;             
	  6'd10 : out_bits = 4'd8;             
	  6'd11 : out_bits = 4'd5;             
	  6'd12 : out_bits = 4'd11;             
	  6'd13 : out_bits = 4'd12;             
	  6'd14 : out_bits = 4'd4;             
	  6'd15 : out_bits = 4'd15;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd8;             
	  6'd18 : out_bits = 4'd11;             
	  6'd19 : out_bits = 4'd5;             
	  6'd20 : out_bits = 4'd6;             
	  6'd21 : out_bits = 4'd15;             
	  6'd22 : out_bits = 4'd0;             
	  6'd23 : out_bits = 4'd3;             
	  6'd24 : out_bits = 4'd4;             
	  6'd25 : out_bits = 4'd7;             
	  6'd26 : out_bits = 4'd2;             
	  6'd27 : out_bits = 4'd12;             
	  6'd28 : out_bits = 4'd1;             
	  6'd29 : out_bits = 4'd10;             
	  6'd30 : out_bits = 4'd14;             
	  6'd31 : out_bits = 4'd9;             
	  6'd32 : out_bits = 4'd10;             
	  6'd33 : out_bits = 4'd6;             
	  6'd34 : out_bits = 4'd9;             
	  6'd35 : out_bits = 4'd0;             
	  6'd36 : out_bits = 4'd12;             
	  6'd37 : out_bits = 4'd11;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd13;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd1;             
	  6'd42 : out_bits = 4'd3;             
	  6'd43 : out_bits = 4'd14;             
	  6'd44 : out_bits = 4'd5;             
	  6'd45 : out_bits = 4'd2;             
	  6'd46 : out_bits = 4'd8;             
	  6'd47 : out_bits = 4'd4;             
	  6'd48 : out_bits = 4'd3;             
	  6'd49 : out_bits = 4'd15;             
	  6'd50 : out_bits = 4'd0;             
	  6'd51 : out_bits = 4'd6;             
	  6'd52 : out_bits = 4'd10;             
	  6'd53 : out_bits = 4'd1;            
	  6'd54 : out_bits = 4'd13;             
	  6'd55 : out_bits = 4'd8;            
	  6'd56 : out_bits = 4'd9;        
	  6'd57 : out_bits = 4'd4;        
	  6'd58 : out_bits = 4'd5;       
	  6'd59 : out_bits = 4'd11;       
	  6'd60 : out_bits = 4'd12;       
	  6'd61 : out_bits = 4'd7;       
	  6'd62 : out_bits = 4'd2;      
	  6'd63 : out_bits = 4'd14;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S4_Box

module S5_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd2;             
	  6'd1  : out_bits = 4'd12;             
	  6'd2  : out_bits = 4'd4;            
	  6'd3  : out_bits = 4'd1;             
	  6'd4  : out_bits = 4'd7;             
	  6'd5  : out_bits = 4'd10;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd6;             
	  6'd8  : out_bits = 4'd8;             
	  6'd9  : out_bits = 4'd5;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd15;             
	  6'd12 : out_bits = 4'd13;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd14;             
	  6'd15 : out_bits = 4'd9;             
	  6'd16 : out_bits = 4'd14;             
	  6'd17 : out_bits = 4'd11;             
	  6'd18 : out_bits = 4'd2;             
	  6'd19 : out_bits = 4'd12;             
	  6'd20 : out_bits = 4'd4;             
	  6'd21 : out_bits = 4'd7;             
	  6'd22 : out_bits = 4'd13;             
	  6'd23 : out_bits = 4'd1;             
	  6'd24 : out_bits = 4'd5;             
	  6'd25 : out_bits = 4'd0;             
	  6'd26 : out_bits = 4'd15;             
	  6'd27 : out_bits = 4'd10;             
	  6'd28 : out_bits = 4'd3;             
	  6'd29 : out_bits = 4'd9;             
	  6'd30 : out_bits = 4'd8;             
	  6'd31 : out_bits = 4'd6;             
	  6'd32 : out_bits = 4'd4;             
	  6'd33 : out_bits = 4'd2;             
	  6'd34 : out_bits = 4'd1;             
	  6'd35 : out_bits = 4'd11;             
	  6'd36 : out_bits = 4'd10;             
	  6'd37 : out_bits = 4'd13;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd8;             
	  6'd40 : out_bits = 4'd15;             
	  6'd41 : out_bits = 4'd9;             
	  6'd42 : out_bits = 4'd12;             
	  6'd43 : out_bits = 4'd5;             
	  6'd44 : out_bits = 4'd6;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd0;             
	  6'd47 : out_bits = 4'd14;             
	  6'd48 : out_bits = 4'd11;             
	  6'd49 : out_bits = 4'd8;             
	  6'd50 : out_bits = 4'd12;             
	  6'd51 : out_bits = 4'd7;             
	  6'd52 : out_bits = 4'd1;             
	  6'd53 : out_bits = 4'd14;            
	  6'd54 : out_bits = 4'd2;             
	  6'd55 : out_bits = 4'd13;            
	  6'd56 : out_bits = 4'd6;        
	  6'd57 : out_bits = 4'd15;        
	  6'd58 : out_bits = 4'd0;       
	  6'd59 : out_bits = 4'd9;       
	  6'd60 : out_bits = 4'd10;       
	  6'd61 : out_bits = 4'd4;       
	  6'd62 : out_bits = 4'd5;      
	  6'd63 : out_bits = 4'd3;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S5_Box

module S6_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd12;             
	  6'd1  : out_bits = 4'd1;             
	  6'd2  : out_bits = 4'd10;            
	  6'd3  : out_bits = 4'd15;             
	  6'd4  : out_bits = 4'd9;             
	  6'd5  : out_bits = 4'd2;             
	  6'd6  : out_bits = 4'd6;             
	  6'd7  : out_bits = 4'd8;             
	  6'd8  : out_bits = 4'd0;             
	  6'd9  : out_bits = 4'd13;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd4;             
	  6'd12 : out_bits = 4'd14;             
	  6'd13 : out_bits = 4'd7;             
	  6'd14 : out_bits = 4'd5;             
	  6'd15 : out_bits = 4'd11;             
	  6'd16 : out_bits = 4'd10;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd4;             
	  6'd19 : out_bits = 4'd2;             
	  6'd20 : out_bits = 4'd7;             
	  6'd21 : out_bits = 4'd12;             
	  6'd22 : out_bits = 4'd9;             
	  6'd23 : out_bits = 4'd5;             
	  6'd24 : out_bits = 4'd6;             
	  6'd25 : out_bits = 4'd1;             
	  6'd26 : out_bits = 4'd13;             
	  6'd27 : out_bits = 4'd14;             
	  6'd28 : out_bits = 4'd0;             
	  6'd29 : out_bits = 4'd11;             
	  6'd30 : out_bits = 4'd3;             
	  6'd31 : out_bits = 4'd8;             
	  6'd32 : out_bits = 4'd9;             
	  6'd33 : out_bits = 4'd14;             
	  6'd34 : out_bits = 4'd15;             
	  6'd35 : out_bits = 4'd5;             
	  6'd36 : out_bits = 4'd2;             
	  6'd37 : out_bits = 4'd8;             
	  6'd38 : out_bits = 4'd12;             
	  6'd39 : out_bits = 4'd3;             
	  6'd40 : out_bits = 4'd7;             
	  6'd41 : out_bits = 4'd0;             
	  6'd42 : out_bits = 4'd4;             
	  6'd43 : out_bits = 4'd10;             
	  6'd44 : out_bits = 4'd1;             
	  6'd45 : out_bits = 4'd13;             
	  6'd46 : out_bits = 4'd11;             
	  6'd47 : out_bits = 4'd6;             
	  6'd48 : out_bits = 4'd4;             
	  6'd49 : out_bits = 4'd3;             
	  6'd50 : out_bits = 4'd2;             
	  6'd51 : out_bits = 4'd12;             
	  6'd52 : out_bits = 4'd9;             
	  6'd53 : out_bits = 4'd5;            
	  6'd54 : out_bits = 4'd15;             
	  6'd55 : out_bits = 4'd10;            
	  6'd56 : out_bits = 4'd11;        
	  6'd57 : out_bits = 4'd14;        
	  6'd58 : out_bits = 4'd1;       
	  6'd59 : out_bits = 4'd7;       
	  6'd60 : out_bits = 4'd6;       
	  6'd61 : out_bits = 4'd0;       
	  6'd62 : out_bits = 4'd8;      
	  6'd63 : out_bits = 4'd13;	  
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S6_Box

module S7_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd4;             
	  6'd1  : out_bits = 4'd11;             
	  6'd2  : out_bits = 4'd2;            
	  6'd3  : out_bits = 4'd14;             
	  6'd4  : out_bits = 4'd15;             
	  6'd5  : out_bits = 4'd0;             
	  6'd6  : out_bits = 4'd8;             
	  6'd7  : out_bits = 4'd13;             
	  6'd8  : out_bits = 4'd3;             
	  6'd9  : out_bits = 4'd12;             
	  6'd10 : out_bits = 4'd9;             
	  6'd11 : out_bits = 4'd7;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd10;             
	  6'd14 : out_bits = 4'd6;             
	  6'd15 : out_bits = 4'd1;             
	  6'd16 : out_bits = 4'd13;             
	  6'd17 : out_bits = 4'd0;             
	  6'd18 : out_bits = 4'd11;             
	  6'd19 : out_bits = 4'd7;             
	  6'd20 : out_bits = 4'd4;             
	  6'd21 : out_bits = 4'd9;             
	  6'd22 : out_bits = 4'd1;             
	  6'd23 : out_bits = 4'd10;             
	  6'd24 : out_bits = 4'd14;             
	  6'd25 : out_bits = 4'd3;             
	  6'd26 : out_bits = 4'd5;             
	  6'd27 : out_bits = 4'd12;             
	  6'd28 : out_bits = 4'd2;             
	  6'd29 : out_bits = 4'd15;             
	  6'd30 : out_bits = 4'd8;             
	  6'd31 : out_bits = 4'd6;             
	  6'd32 : out_bits = 4'd1;             
	  6'd33 : out_bits = 4'd4;             
	  6'd34 : out_bits = 4'd11;             
	  6'd35 : out_bits = 4'd13;             
	  6'd36 : out_bits = 4'd12;             
	  6'd37 : out_bits = 4'd3;             
	  6'd38 : out_bits = 4'd7;             
	  6'd39 : out_bits = 4'd14;             
	  6'd40 : out_bits = 4'd10;             
	  6'd41 : out_bits = 4'd15;             
	  6'd42 : out_bits = 4'd6;             
	  6'd43 : out_bits = 4'd8;             
	  6'd44 : out_bits = 4'd0;             
	  6'd45 : out_bits = 4'd5;             
	  6'd46 : out_bits = 4'd9;             
	  6'd47 : out_bits = 4'd2;             
	  6'd48 : out_bits = 4'd6;             
	  6'd49 : out_bits = 4'd11;             
	  6'd50 : out_bits = 4'd13;             
	  6'd51 : out_bits = 4'd8;             
	  6'd52 : out_bits = 4'd1;             
	  6'd53 : out_bits = 4'd4;            
	  6'd54 : out_bits = 4'd10;             
	  6'd55 : out_bits = 4'd7;            
	  6'd56 : out_bits = 4'd9;        
	  6'd57 : out_bits = 4'd5;        
	  6'd58 : out_bits = 4'd0;       
	  6'd59 : out_bits = 4'd15;       
	  6'd60 : out_bits = 4'd14;       
	  6'd61 : out_bits = 4'd2;       
	  6'd62 : out_bits = 4'd3;      
	  6'd63 : out_bits = 4'd12;  
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S7_Box

module S8_Box (inp_bits, out_bits);

   input logic [5:0] inp_bits;
   output logic [3:0] out_bits;

   always_comb
     begin
	case ({{inp_bits[5], inp_bits[0]}, inp_bits[4:1]})   
	  6'd0  : out_bits = 4'd13;             
	  6'd1  : out_bits = 4'd2;             
	  6'd2  : out_bits = 4'd8;            
	  6'd3  : out_bits = 4'd4;             
	  6'd4  : out_bits = 4'd6;             
	  6'd5  : out_bits = 4'd15;             
	  6'd6  : out_bits = 4'd11;             
	  6'd7  : out_bits = 4'd1;             
	  6'd8  : out_bits = 4'd10;             
	  6'd9  : out_bits = 4'd9;             
	  6'd10 : out_bits = 4'd3;             
	  6'd11 : out_bits = 4'd14;             
	  6'd12 : out_bits = 4'd5;             
	  6'd13 : out_bits = 4'd0;             
	  6'd14 : out_bits = 4'd12;             
	  6'd15 : out_bits = 4'd7;             
	  6'd16 : out_bits = 4'd1;             
	  6'd17 : out_bits = 4'd15;             
	  6'd18 : out_bits = 4'd13;             
	  6'd19 : out_bits = 4'd8;             
	  6'd20 : out_bits = 4'd10;             
	  6'd21 : out_bits = 4'd3;             
	  6'd22 : out_bits = 4'd7;             
	  6'd23 : out_bits = 4'd4;             
	  6'd24 : out_bits = 4'd12;             
	  6'd25 : out_bits = 4'd5;             
	  6'd26 : out_bits = 4'd6;             
	  6'd27 : out_bits = 4'd11;             
	  6'd28 : out_bits = 4'd0;             
	  6'd29 : out_bits = 4'd14;             
	  6'd30 : out_bits = 4'd9;             
	  6'd31 : out_bits = 4'd2;             
	  6'd32 : out_bits = 4'd7;             
	  6'd33 : out_bits = 4'd11;             
	  6'd34 : out_bits = 4'd4;             
	  6'd35 : out_bits = 4'd1;             
	  6'd36 : out_bits = 4'd9;             
	  6'd37 : out_bits = 4'd12;             
	  6'd38 : out_bits = 4'd14;             
	  6'd39 : out_bits = 4'd2;             
	  6'd40 : out_bits = 4'd0;             
	  6'd41 : out_bits = 4'd6;             
	  6'd42 : out_bits = 4'd10;             
	  6'd43 : out_bits = 4'd13;             
	  6'd44 : out_bits = 4'd15;             
	  6'd45 : out_bits = 4'd3;             
	  6'd46 : out_bits = 4'd5;             
	  6'd47 : out_bits = 4'd8;             
	  6'd48 : out_bits = 4'd2;             
	  6'd49 : out_bits = 4'd1;             
	  6'd50 : out_bits = 4'd14;             
	  6'd51 : out_bits = 4'd7;             
	  6'd52 : out_bits = 4'd4;             
	  6'd53 : out_bits = 4'd10;            
	  6'd54 : out_bits = 4'd8;             
	  6'd55 : out_bits = 4'd13;            
	  6'd56 : out_bits = 4'd15;        
	  6'd57 : out_bits = 4'd12;        
	  6'd58 : out_bits = 4'd9;       
	  6'd59 : out_bits = 4'd0;       
	  6'd60 : out_bits = 4'd3;       
	  6'd61 : out_bits = 4'd5;       
	  6'd62 : out_bits = 4'd6;      
	  6'd63 : out_bits = 4'd11;      
	  default : out_bits = 4'd0; 		
        endcase
     end // always_comb
   
endmodule // S8_Box

module ParityCheck (input logic [63:0] key, output logic [7:0] OddParity);

logic [47:0] c1;

assign c1[0] = key[63] ^ key[62];
assign c1[1] = key[61] ^ key[60];
assign c1[2] = key[59] ^ key[58];
assign c1[3] = key[57] ^ key[56];
assign c1[4] = c1[0] ^ c1[1];
assign c1[5] = c1[2] ^ c1[3];
assign OddParity[7] = c1[4] ^ c1[5];

assign c1[6] = key[55] ^ key[54];
assign c1[7] = key[53] ^ key[52];
assign c1[8] = key[51] ^ key[50];
assign c1[9] = key[49] ^ key[48];
assign c1[10] = c1[6] ^ c1[7];
assign c1[11] = c1[8] ^ c1[9];
assign OddParity[6] = c1[10] ^ c1[11];

assign c1[12] = key[47] ^ key[46];
assign c1[13] = key[45] ^ key[44];
assign c1[14] = key[43] ^ key[42];
assign c1[15] = key[41] ^ key[40];
assign c1[16] = c1[12] ^ c1[13];
assign c1[17] = c1[14] ^ c1[15];
assign OddParity[5] = c1[16] ^ c1[17];

assign c1[18] = key[39] ^ key[38];
assign c1[19] = key[37] ^ key[36];
assign c1[20] = key[35] ^ key[34];
assign c1[21] = key[33] ^ key[32];
assign c1[22] = c1[18] ^ c1[19];
assign c1[23] = c1[20] ^ c1[21];
assign OddParity[4] = c1[22] ^ c1[23];

assign c1[24] = key[31] ^ key[30];
assign c1[25] = key[29] ^ key[28];
assign c1[26] = key[27] ^ key[26];
assign c1[27] = key[25] ^ key[24];
assign c1[28] = c1[24] ^ c1[25];
assign c1[29] = c1[26] ^ c1[27];
assign OddParity[3] = c1[28] ^ c1[29];

assign c1[30] = key[23] ^ key[22];
assign c1[31] = key[21] ^ key[20];
assign c1[32] = key[19] ^ key[18];
assign c1[33] = key[17] ^ key[16];
assign c1[34] = c1[30] ^ c1[31];
assign c1[35] = c1[32] ^ c1[33];
assign OddParity[2] = c1[34] ^ c1[35];

assign c1[36] = key[15] ^ key[14];
assign c1[37] = key[13] ^ key[12];
assign c1[38] = key[11] ^ key[10];
assign c1[39] = key[9] ^ key[8];
assign c1[40] = c1[36] ^ c1[37];
assign c1[41] = c1[38] ^ c1[39];
assign OddParity[1] = c1[40] ^ c1[41];

assign c1[42] = key[7] ^ key[6];
assign c1[43] = key[5] ^ key[4];
assign c1[44] = key[3] ^ key[2];
assign c1[45] = key[1] ^ key[0];
assign c1[46] = c1[42] ^ c1[43];
assign c1[47] = c1[44] ^ c1[45];
assign OddParity[0] = c1[46] ^ c1[47];

endmodule

module DES (input logic [63:0] key, input logic [63:0] plaintext, 
	    input logic encrypt, output logic [7:0] OddParity, output logic [63:0] ciphertext);

   ParityCheck pc (key, OddParity);

   logic [47:0] 	SubKey1, SubKey2, SubKey3, SubKey4;   
   logic [47:0] 	SubKey5, SubKey6, SubKey7, SubKey8;   
   logic [47:0] 	SubKey9, SubKey10, SubKey11, SubKey12;
   logic [47:0] 	SubKey13, SubKey14, SubKey15, SubKey16;

   logic [47:0] 	SK1, SK2, SK3, SK4;
   logic [47:0] 	SK5, SK6, SK7, SK8;   
   logic [47:0] 	SK9, SK10, SK11, SK12;
   logic [47:0] 	SK13, SK14, SK15, SK16;

   logic [63:0] p1;          // p1, p2, ... , p16 each represent the plaintext after each round
   logic [63:0] p2;          
   logic [63:0] p3;
   logic [63:0] p4;
   logic [63:0] p5;
   logic [63:0] p6;
   logic [63:0] p7;
   logic [63:0] p8;
   logic [63:0] p9;
   logic [63:0] p10;
   logic [63:0] p11;
   logic [63:0] p12;
   logic [63:0] p13;
   logic [63:0] p14;
   logic [63:0] p15;
   logic [63:0] p16;

   logic [63:0] ip_out;           //plaintext after Initial permutation

   //SubKey Generation
   GenerateKeys k1 (key, SubKey1, SubKey2, SubKey3, SubKey4,   //Generates 16 subkeys according to the Key
		    SubKey5, SubKey6, SubKey7, SubKey8,
		    SubKey9, SubKey10, SubKey11, SubKey12,
		    SubKey13, SubKey14, SubKey15, SubKey16);


   // encrypt (encrypt=1) or decrypt (encrypt=0) 
   assign SK1 = encrypt ? SubKey1 : SubKey16;      // multipexor used to reverse order of Subkeys depending on value of encrypt
   assign SK2 = encrypt ? SubKey2 : SubKey15;      // encrypt=1 encrpyts plaintext
   assign SK3 = encrypt ? SubKey3 : SubKey14;      // encrypt=0 decrypts plaintext
   assign SK4 = encrypt ? SubKey4 : SubKey13;
   assign SK5 = encrypt ? SubKey5 : SubKey12;
   assign SK6 = encrypt ? SubKey6 : SubKey11;
   assign SK7 = encrypt ? SubKey7 : SubKey10;
   assign SK8 = encrypt ? SubKey8 : SubKey9;
   assign SK9 = encrypt ? SubKey9 : SubKey8;
   assign SK10 = encrypt ? SubKey10 : SubKey7;
   assign SK11 = encrypt ? SubKey11 : SubKey6;
   assign SK12 = encrypt ? SubKey12 : SubKey5;
   assign SK13 = encrypt ? SubKey13 : SubKey4;
   assign SK14 = encrypt ? SubKey14 : SubKey3;
   assign SK15 = encrypt ? SubKey15 : SubKey2;
   assign SK16 = encrypt ? SubKey16 : SubKey1;

   // Initial Permutation (IP)
   IP b1 (plaintext, ip_out);                 

   // round 1
   round r1 (ip_out, SK1, p1);               // the first round takes in the ip_out

   // round 2
   round r2 (p1, SK2, p2);                   // each successive rounds takes in the previous round's outputs

   // round 3
   round r3 (p2, SK3, p3);

   // round 4
   round r4 (p3, SK4, p4);

   // round 5
   round r5 (p4, SK5, p5);

   // round 6
   round r6 (p5, SK6, p6);

   // round 7
   round r7 (p6, SK7, p7);

   // round 8
   round r8 (p7, SK8, p8);

   // round 9
   round r9 (p8, SK9, p9);

   // round 10
   round r10 (p9, SK10, p10);

   // round 11
   round r11 (p10, SK11, p11);

   // round 12
   round r12 (p11, SK12, p12);

   // round 13
   round r13 (p12, SK13, p13);

   // round 14
   round r14 (p13, SK14, p14);

   // round 15
   round r15 (p14, SK15, p15);

   // round 16
   round r16 (p15, SK16, p16);


   FP fp ({p16[31:0], p16[63:32]}, ciphertext);
   // p16 is split into two 32 bit blocks and sent
   // through the final permuation with the left and right block of 32 bits swapped
   // and right block of 32 bits swapped

endmodule // DES


