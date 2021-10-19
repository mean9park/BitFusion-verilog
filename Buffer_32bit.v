`timescale 1ns / 1ps

module BUF_32bit(
    input clk,
    input reset,
    input [31:0] data_in,
    
    output [31:0] data_out
);

    buf BUF_1(data_out[0], data_in[0]);
    buf BUF_2(data_out[1], data_in[1]);
    buf BUF_3(data_out[2], data_in[2]);
    buf BUF_4(data_out[3], data_in[3]);
    buf BUF_5(data_out[4], data_in[4]);
    buf BUF_6(data_out[5], data_in[5]);
    buf BUF_7(data_out[6], data_in[6]);
    buf BUF_8(data_out[7], data_in[7]);
    buf BUF_9(data_out[8], data_in[8]);
    buf BUF_10(data_out[9], data_in[9]);
    buf BUF_11(data_out[10], data_in[10]);
    buf BUF_12(data_out[11], data_in[11]);
    buf BUF_13(data_out[12], data_in[12]);
    buf BUF_14(data_out[13], data_in[13]);
    buf BUF_15(data_out[14], data_in[14]);
    buf BUF_16(data_out[15], data_in[15]);
    buf BUF_17(data_out[16], data_in[16]);
    buf BUF_18(data_out[17], data_in[17]);
    buf BUF_19(data_out[18], data_in[18]);
    buf BUF_20(data_out[19], data_in[19]);
    buf BUF_21(data_out[20], data_in[20]);
    buf BUF_22(data_out[21], data_in[21]);
    buf BUF_23(data_out[22], data_in[22]);
    buf BUF_24(data_out[23], data_in[23]);
    buf BUF_25(data_out[24], data_in[24]);
    buf BUF_26(data_out[25], data_in[25]);
    buf BUF_27(data_out[26], data_in[26]);
    buf BUF_28(data_out[27], data_in[27]);
    buf BUF_29(data_out[28], data_in[28]);
    buf BUF_30(data_out[29], data_in[29]);
    buf BUF_31(data_out[30], data_in[30]);
    buf BUF_32(data_out[31], data_in[31]);
    
endmodule
 