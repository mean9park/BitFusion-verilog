`timescale 1ns / 1ps

module testing();

    reg [31:0] IBUF_data_in_1, IBUF_data_in_2, IBUF_data_in_3, IBUF_data_in_4, IBUF_data_in_5, IBUF_data_in_6, IBUF_data_in_7, IBUF_data_in_8, 
    IBUF_data_in_9, IBUF_data_in_10, IBUF_data_in_11, IBUF_data_in_12, IBUF_data_in_13, IBUF_data_in_14, IBUF_data_in_15, IBUF_data_in_16;
    
    reg [31:0] WBUF_data_in_1_1, WBUF_data_in_1_2, WBUF_data_in_1_3, WBUF_data_in_1_4, WBUF_data_in_1_5, WBUF_data_in_1_6, WBUF_data_in_1_7, WBUF_data_in_1_8, WBUF_data_in_1_9, WBUF_data_in_1_10, WBUF_data_in_1_11, WBUF_data_in_1_12, WBUF_data_in_1_13, WBUF_data_in_1_14, WBUF_data_in_1_15, WBUF_data_in_1_16;
    reg [31:0] WBUF_data_in_2_1, WBUF_data_in_2_2, WBUF_data_in_2_3, WBUF_data_in_2_4, WBUF_data_in_2_5, WBUF_data_in_2_6, WBUF_data_in_2_7, WBUF_data_in_2_8, WBUF_data_in_2_9, WBUF_data_in_2_10, WBUF_data_in_2_11, WBUF_data_in_2_12, WBUF_data_in_2_13, WBUF_data_in_2_14, WBUF_data_in_2_15, WBUF_data_in_2_16;
    reg [31:0] WBUF_data_in_3_1, WBUF_data_in_3_2, WBUF_data_in_3_3, WBUF_data_in_3_4, WBUF_data_in_3_5, WBUF_data_in_3_6, WBUF_data_in_3_7, WBUF_data_in_3_8, WBUF_data_in_3_9, WBUF_data_in_3_10, WBUF_data_in_3_11, WBUF_data_in_3_12, WBUF_data_in_3_13, WBUF_data_in_3_14, WBUF_data_in_3_15, WBUF_data_in_3_16;
    reg [31:0] WBUF_data_in_4_1, WBUF_data_in_4_2, WBUF_data_in_4_3, WBUF_data_in_4_4, WBUF_data_in_4_5, WBUF_data_in_4_6, WBUF_data_in_4_7, WBUF_data_in_4_8, WBUF_data_in_4_9, WBUF_data_in_4_10, WBUF_data_in_4_11, WBUF_data_in_4_12, WBUF_data_in_4_13, WBUF_data_in_4_14, WBUF_data_in_4_15, WBUF_data_in_4_16;
    reg [31:0] WBUF_data_in_5_1, WBUF_data_in_5_2, WBUF_data_in_5_3, WBUF_data_in_5_4, WBUF_data_in_5_5, WBUF_data_in_5_6, WBUF_data_in_5_7, WBUF_data_in_5_8, WBUF_data_in_5_9, WBUF_data_in_5_10, WBUF_data_in_5_11, WBUF_data_in_5_12, WBUF_data_in_5_13, WBUF_data_in_5_14, WBUF_data_in_5_15, WBUF_data_in_5_16;
    reg [31:0] WBUF_data_in_6_1, WBUF_data_in_6_2, WBUF_data_in_6_3, WBUF_data_in_6_4, WBUF_data_in_6_5, WBUF_data_in_6_6, WBUF_data_in_6_7, WBUF_data_in_6_8, WBUF_data_in_6_9, WBUF_data_in_6_10, WBUF_data_in_6_11, WBUF_data_in_6_12, WBUF_data_in_6_13, WBUF_data_in_6_14, WBUF_data_in_6_15, WBUF_data_in_6_16;
    reg [31:0] WBUF_data_in_7_1, WBUF_data_in_7_2, WBUF_data_in_7_3, WBUF_data_in_7_4, WBUF_data_in_7_5, WBUF_data_in_7_6, WBUF_data_in_7_7, WBUF_data_in_7_8, WBUF_data_in_7_9, WBUF_data_in_7_10, WBUF_data_in_7_11, WBUF_data_in_7_12, WBUF_data_in_7_13, WBUF_data_in_7_14, WBUF_data_in_7_15, WBUF_data_in_7_16;
    reg [31:0] WBUF_data_in_8_1, WBUF_data_in_8_2, WBUF_data_in_8_3, WBUF_data_in_8_4, WBUF_data_in_8_5, WBUF_data_in_8_6, WBUF_data_in_8_7, WBUF_data_in_8_8, WBUF_data_in_8_9, WBUF_data_in_8_10, WBUF_data_in_8_11, WBUF_data_in_8_12, WBUF_data_in_8_13, WBUF_data_in_8_14, WBUF_data_in_8_15, WBUF_data_in_8_16;
    reg [31:0] WBUF_data_in_9_1, WBUF_data_in_9_2, WBUF_data_in_9_3, WBUF_data_in_9_4, WBUF_data_in_9_5, WBUF_data_in_9_6, WBUF_data_in_9_7, WBUF_data_in_9_8, WBUF_data_in_9_9, WBUF_data_in_9_10, WBUF_data_in_9_11, WBUF_data_in_9_12, WBUF_data_in_9_13, WBUF_data_in_9_14, WBUF_data_in_9_15, WBUF_data_in_9_16;
    reg [31:0] WBUF_data_in_10_1, WBUF_data_in_10_2, WBUF_data_in_10_3, WBUF_data_in_10_4, WBUF_data_in_10_5, WBUF_data_in_10_6, WBUF_data_in_10_7, WBUF_data_in_10_8, WBUF_data_in_10_9, WBUF_data_in_10_10, WBUF_data_in_10_11, WBUF_data_in_10_12, WBUF_data_in_10_13, WBUF_data_in_10_14, WBUF_data_in_10_15, WBUF_data_in_10_16;
    reg [31:0] WBUF_data_in_11_1, WBUF_data_in_11_2, WBUF_data_in_11_3, WBUF_data_in_11_4, WBUF_data_in_11_5, WBUF_data_in_11_6, WBUF_data_in_11_7, WBUF_data_in_11_8, WBUF_data_in_11_9, WBUF_data_in_11_10, WBUF_data_in_11_11, WBUF_data_in_11_12, WBUF_data_in_11_13, WBUF_data_in_11_14, WBUF_data_in_11_15, WBUF_data_in_11_16;
    reg [31:0] WBUF_data_in_12_1, WBUF_data_in_12_2, WBUF_data_in_12_3, WBUF_data_in_12_4, WBUF_data_in_12_5, WBUF_data_in_12_6, WBUF_data_in_12_7, WBUF_data_in_12_8, WBUF_data_in_12_9, WBUF_data_in_12_10, WBUF_data_in_12_11, WBUF_data_in_12_12, WBUF_data_in_12_13, WBUF_data_in_12_14, WBUF_data_in_12_15, WBUF_data_in_12_16;
    reg [31:0] WBUF_data_in_13_1, WBUF_data_in_13_2, WBUF_data_in_13_3, WBUF_data_in_13_4, WBUF_data_in_13_5, WBUF_data_in_13_6, WBUF_data_in_13_7, WBUF_data_in_13_8, WBUF_data_in_13_9, WBUF_data_in_13_10, WBUF_data_in_13_11, WBUF_data_in_13_12, WBUF_data_in_13_13, WBUF_data_in_13_14, WBUF_data_in_13_15, WBUF_data_in_13_16;
    reg [31:0] WBUF_data_in_14_1, WBUF_data_in_14_2, WBUF_data_in_14_3, WBUF_data_in_14_4, WBUF_data_in_14_5, WBUF_data_in_14_6, WBUF_data_in_14_7, WBUF_data_in_14_8, WBUF_data_in_14_9, WBUF_data_in_14_10, WBUF_data_in_14_11, WBUF_data_in_14_12, WBUF_data_in_14_13, WBUF_data_in_14_14, WBUF_data_in_14_15, WBUF_data_in_14_16;
    reg [31:0] WBUF_data_in_15_1, WBUF_data_in_15_2, WBUF_data_in_15_3, WBUF_data_in_15_4, WBUF_data_in_15_5, WBUF_data_in_15_6, WBUF_data_in_15_7, WBUF_data_in_15_8, WBUF_data_in_15_9, WBUF_data_in_15_10, WBUF_data_in_15_11, WBUF_data_in_15_12, WBUF_data_in_15_13, WBUF_data_in_15_14, WBUF_data_in_15_15, WBUF_data_in_15_16;
    reg [31:0] WBUF_data_in_16_1, WBUF_data_in_16_2, WBUF_data_in_16_3, WBUF_data_in_16_4, WBUF_data_in_16_5, WBUF_data_in_16_6, WBUF_data_in_16_7, WBUF_data_in_16_8, WBUF_data_in_16_9, WBUF_data_in_16_10, WBUF_data_in_16_11, WBUF_data_in_16_12, WBUF_data_in_16_13, WBUF_data_in_16_14, WBUF_data_in_16_15, WBUF_data_in_16_16;
    
    // Global constant
    reg [47:0] signal;
    reg [1:0] weight_bitwidth;
    reg [1:0] input_bitwidth;
    reg [3:0] sign_x;
    reg [3:0] sign_y;

    reg clk, reset;
    
    integer i;
        
    wire [27:0] total_output_1, total_output_2, total_output_3, total_output_4, total_output_5, total_output_6, total_output_7, total_output_8, 
    total_output_9, total_output_10, total_output_11, total_output_12, total_output_13, total_output_14, total_output_15, total_output_16;
    
    
    BitFusion bitfusion(
    .clk(clk),
    .reset(reset),
    
        
    .IBUF_data_in_1(IBUF_data_in_1), .IBUF_data_in_2(IBUF_data_in_2), .IBUF_data_in_3(IBUF_data_in_3), .IBUF_data_in_4(IBUF_data_in_4),
    .IBUF_data_in_5(IBUF_data_in_5), .IBUF_data_in_6(IBUF_data_in_6), .IBUF_data_in_7(IBUF_data_in_7), .IBUF_data_in_8(IBUF_data_in_8), 
    .IBUF_data_in_9(IBUF_data_in_9), .IBUF_data_in_10(IBUF_data_in_10), .IBUF_data_in_11(IBUF_data_in_11), .IBUF_data_in_12(IBUF_data_in_12), 
    .IBUF_data_in_13(IBUF_data_in_13), .IBUF_data_in_14(IBUF_data_in_14), .IBUF_data_in_15(IBUF_data_in_15), .IBUF_data_in_16(IBUF_data_in_16),
    
    .WBUF_data_in_1_1(WBUF_data_in_1_1), .WBUF_data_in_1_2(WBUF_data_in_1_2), .WBUF_data_in_1_3(WBUF_data_in_1_3), .WBUF_data_in_1_4(WBUF_data_in_1_4), .WBUF_data_in_1_5(WBUF_data_in_1_5), .WBUF_data_in_1_6(WBUF_data_in_1_6), .WBUF_data_in_1_7(WBUF_data_in_1_7), .WBUF_data_in_1_8(WBUF_data_in_1_8), .WBUF_data_in_1_9(WBUF_data_in_1_9), .WBUF_data_in_1_10(WBUF_data_in_1_10), .WBUF_data_in_1_11(WBUF_data_in_1_11), .WBUF_data_in_1_12(WBUF_data_in_1_12), .WBUF_data_in_1_13(WBUF_data_in_1_13), .WBUF_data_in_1_14(WBUF_data_in_1_14), .WBUF_data_in_1_15(WBUF_data_in_1_15), .WBUF_data_in_1_16(WBUF_data_in_1_16),
    .WBUF_data_in_2_1(WBUF_data_in_2_1), .WBUF_data_in_2_2(WBUF_data_in_2_2), .WBUF_data_in_2_3(WBUF_data_in_2_3), .WBUF_data_in_2_4(WBUF_data_in_2_4), .WBUF_data_in_2_5(WBUF_data_in_2_5), .WBUF_data_in_2_6(WBUF_data_in_2_6), .WBUF_data_in_2_7(WBUF_data_in_2_7), .WBUF_data_in_2_8(WBUF_data_in_2_8), .WBUF_data_in_2_9(WBUF_data_in_2_9), .WBUF_data_in_2_10(WBUF_data_in_2_10), .WBUF_data_in_2_11(WBUF_data_in_2_11), .WBUF_data_in_2_12(WBUF_data_in_2_12), .WBUF_data_in_2_13(WBUF_data_in_2_13), .WBUF_data_in_2_14(WBUF_data_in_2_14), .WBUF_data_in_2_15(WBUF_data_in_2_15), .WBUF_data_in_2_16(WBUF_data_in_2_16),
    .WBUF_data_in_3_1(WBUF_data_in_3_1), .WBUF_data_in_3_2(WBUF_data_in_3_2), .WBUF_data_in_3_3(WBUF_data_in_3_3), .WBUF_data_in_3_4(WBUF_data_in_3_4), .WBUF_data_in_3_5(WBUF_data_in_3_5), .WBUF_data_in_3_6(WBUF_data_in_3_6), .WBUF_data_in_3_7(WBUF_data_in_3_7), .WBUF_data_in_3_8(WBUF_data_in_3_8), .WBUF_data_in_3_9(WBUF_data_in_3_9), .WBUF_data_in_3_10(WBUF_data_in_3_10), .WBUF_data_in_3_11(WBUF_data_in_3_11), .WBUF_data_in_3_12(WBUF_data_in_3_12), .WBUF_data_in_3_13(WBUF_data_in_3_13), .WBUF_data_in_3_14(WBUF_data_in_3_14), .WBUF_data_in_3_15(WBUF_data_in_3_15), .WBUF_data_in_3_16(WBUF_data_in_3_16),
    .WBUF_data_in_4_1(WBUF_data_in_4_1), .WBUF_data_in_4_2(WBUF_data_in_4_2), .WBUF_data_in_4_3(WBUF_data_in_4_3), .WBUF_data_in_4_4(WBUF_data_in_4_4), .WBUF_data_in_4_5(WBUF_data_in_4_5), .WBUF_data_in_4_6(WBUF_data_in_4_6), .WBUF_data_in_4_7(WBUF_data_in_4_7), .WBUF_data_in_4_8(WBUF_data_in_4_8), .WBUF_data_in_4_9(WBUF_data_in_4_9), .WBUF_data_in_4_10(WBUF_data_in_4_10), .WBUF_data_in_4_11(WBUF_data_in_4_11), .WBUF_data_in_4_12(WBUF_data_in_4_12), .WBUF_data_in_4_13(WBUF_data_in_4_13), .WBUF_data_in_4_14(WBUF_data_in_4_14), .WBUF_data_in_4_15(WBUF_data_in_4_15), .WBUF_data_in_4_16(WBUF_data_in_4_16),
    .WBUF_data_in_5_1(WBUF_data_in_5_1), .WBUF_data_in_5_2(WBUF_data_in_5_2), .WBUF_data_in_5_3(WBUF_data_in_5_3), .WBUF_data_in_5_4(WBUF_data_in_5_4), .WBUF_data_in_5_5(WBUF_data_in_5_5), .WBUF_data_in_5_6(WBUF_data_in_5_6), .WBUF_data_in_5_7(WBUF_data_in_5_7), .WBUF_data_in_5_8(WBUF_data_in_5_8), .WBUF_data_in_5_9(WBUF_data_in_5_9), .WBUF_data_in_5_10(WBUF_data_in_5_10), .WBUF_data_in_5_11(WBUF_data_in_5_11), .WBUF_data_in_5_12(WBUF_data_in_5_12), .WBUF_data_in_5_13(WBUF_data_in_5_13), .WBUF_data_in_5_14(WBUF_data_in_5_14), .WBUF_data_in_5_15(WBUF_data_in_5_15), .WBUF_data_in_5_16(WBUF_data_in_5_16),
    .WBUF_data_in_6_1(WBUF_data_in_6_1), .WBUF_data_in_6_2(WBUF_data_in_6_2), .WBUF_data_in_6_3(WBUF_data_in_6_3), .WBUF_data_in_6_4(WBUF_data_in_6_4), .WBUF_data_in_6_5(WBUF_data_in_6_5), .WBUF_data_in_6_6(WBUF_data_in_6_6), .WBUF_data_in_6_7(WBUF_data_in_6_7), .WBUF_data_in_6_8(WBUF_data_in_6_8), .WBUF_data_in_6_9(WBUF_data_in_6_9), .WBUF_data_in_6_10(WBUF_data_in_6_10), .WBUF_data_in_6_11(WBUF_data_in_6_11), .WBUF_data_in_6_12(WBUF_data_in_6_12), .WBUF_data_in_6_13(WBUF_data_in_6_13), .WBUF_data_in_6_14(WBUF_data_in_6_14), .WBUF_data_in_6_15(WBUF_data_in_6_15), .WBUF_data_in_6_16(WBUF_data_in_6_16),
    .WBUF_data_in_7_1(WBUF_data_in_7_1), .WBUF_data_in_7_2(WBUF_data_in_7_2), .WBUF_data_in_7_3(WBUF_data_in_7_3), .WBUF_data_in_7_4(WBUF_data_in_7_4), .WBUF_data_in_7_5(WBUF_data_in_7_5), .WBUF_data_in_7_6(WBUF_data_in_7_6), .WBUF_data_in_7_7(WBUF_data_in_7_7), .WBUF_data_in_7_8(WBUF_data_in_7_8), .WBUF_data_in_7_9(WBUF_data_in_7_9), .WBUF_data_in_7_10(WBUF_data_in_7_10), .WBUF_data_in_7_11(WBUF_data_in_7_11), .WBUF_data_in_7_12(WBUF_data_in_7_12), .WBUF_data_in_7_13(WBUF_data_in_7_13), .WBUF_data_in_7_14(WBUF_data_in_7_14), .WBUF_data_in_7_15(WBUF_data_in_7_15), .WBUF_data_in_7_16(WBUF_data_in_7_16),
    .WBUF_data_in_8_1(WBUF_data_in_8_1), .WBUF_data_in_8_2(WBUF_data_in_8_2), .WBUF_data_in_8_3(WBUF_data_in_8_3), .WBUF_data_in_8_4(WBUF_data_in_8_4), .WBUF_data_in_8_5(WBUF_data_in_8_5), .WBUF_data_in_8_6(WBUF_data_in_8_6), .WBUF_data_in_8_7(WBUF_data_in_8_7), .WBUF_data_in_8_8(WBUF_data_in_8_8), .WBUF_data_in_8_9(WBUF_data_in_8_9), .WBUF_data_in_8_10(WBUF_data_in_8_10), .WBUF_data_in_8_11(WBUF_data_in_8_11), .WBUF_data_in_8_12(WBUF_data_in_8_12), .WBUF_data_in_8_13(WBUF_data_in_8_13), .WBUF_data_in_8_14(WBUF_data_in_8_14), .WBUF_data_in_8_15(WBUF_data_in_8_15), .WBUF_data_in_8_16(WBUF_data_in_8_16),
    .WBUF_data_in_9_1(WBUF_data_in_9_1), .WBUF_data_in_9_2(WBUF_data_in_9_2), .WBUF_data_in_9_3(WBUF_data_in_9_3), .WBUF_data_in_9_4(WBUF_data_in_9_4), .WBUF_data_in_9_5(WBUF_data_in_9_5), .WBUF_data_in_9_6(WBUF_data_in_9_6), .WBUF_data_in_9_7(WBUF_data_in_9_7), .WBUF_data_in_9_8(WBUF_data_in_9_8), .WBUF_data_in_9_9(WBUF_data_in_9_9), .WBUF_data_in_9_10(WBUF_data_in_9_10), .WBUF_data_in_9_11(WBUF_data_in_9_11), .WBUF_data_in_9_12(WBUF_data_in_9_12), .WBUF_data_in_9_13(WBUF_data_in_9_13), .WBUF_data_in_9_14(WBUF_data_in_9_14), .WBUF_data_in_9_15(WBUF_data_in_9_15), .WBUF_data_in_9_16(WBUF_data_in_9_16),
    .WBUF_data_in_10_1(WBUF_data_in_10_1), .WBUF_data_in_10_2(WBUF_data_in_10_2), .WBUF_data_in_10_3(WBUF_data_in_10_3), .WBUF_data_in_10_4(WBUF_data_in_10_4), .WBUF_data_in_10_5(WBUF_data_in_10_5), .WBUF_data_in_10_6(WBUF_data_in_10_6), .WBUF_data_in_10_7(WBUF_data_in_10_7), .WBUF_data_in_10_8(WBUF_data_in_10_8), .WBUF_data_in_10_9(WBUF_data_in_10_9), .WBUF_data_in_10_10(WBUF_data_in_10_10), .WBUF_data_in_10_11(WBUF_data_in_10_11), .WBUF_data_in_10_12(WBUF_data_in_10_12), .WBUF_data_in_10_13(WBUF_data_in_10_13), .WBUF_data_in_10_14(WBUF_data_in_10_14), .WBUF_data_in_10_15(WBUF_data_in_10_15), .WBUF_data_in_10_16(WBUF_data_in_10_16),
    .WBUF_data_in_11_1(WBUF_data_in_11_1), .WBUF_data_in_11_2(WBUF_data_in_11_2), .WBUF_data_in_11_3(WBUF_data_in_11_3), .WBUF_data_in_11_4(WBUF_data_in_11_4), .WBUF_data_in_11_5(WBUF_data_in_11_5), .WBUF_data_in_11_6(WBUF_data_in_11_6), .WBUF_data_in_11_7(WBUF_data_in_11_7), .WBUF_data_in_11_8(WBUF_data_in_11_8), .WBUF_data_in_11_9(WBUF_data_in_11_9), .WBUF_data_in_11_10(WBUF_data_in_11_10), .WBUF_data_in_11_11(WBUF_data_in_11_11), .WBUF_data_in_11_12(WBUF_data_in_11_12), .WBUF_data_in_11_13(WBUF_data_in_11_13), .WBUF_data_in_11_14(WBUF_data_in_11_14), .WBUF_data_in_11_15(WBUF_data_in_11_15), .WBUF_data_in_11_16(WBUF_data_in_11_16),
    .WBUF_data_in_12_1(WBUF_data_in_12_1), .WBUF_data_in_12_2(WBUF_data_in_12_2), .WBUF_data_in_12_3(WBUF_data_in_12_3), .WBUF_data_in_12_4(WBUF_data_in_12_4), .WBUF_data_in_12_5(WBUF_data_in_12_5), .WBUF_data_in_12_6(WBUF_data_in_12_6), .WBUF_data_in_12_7(WBUF_data_in_12_7), .WBUF_data_in_12_8(WBUF_data_in_12_8), .WBUF_data_in_12_9(WBUF_data_in_12_9), .WBUF_data_in_12_10(WBUF_data_in_12_10), .WBUF_data_in_12_11(WBUF_data_in_12_11), .WBUF_data_in_12_12(WBUF_data_in_12_12), .WBUF_data_in_12_13(WBUF_data_in_12_13), .WBUF_data_in_12_14(WBUF_data_in_12_14), .WBUF_data_in_12_15(WBUF_data_in_12_15), .WBUF_data_in_12_16(WBUF_data_in_12_16),
    .WBUF_data_in_13_1(WBUF_data_in_13_1), .WBUF_data_in_13_2(WBUF_data_in_13_2), .WBUF_data_in_13_3(WBUF_data_in_13_3), .WBUF_data_in_13_4(WBUF_data_in_13_4), .WBUF_data_in_13_5(WBUF_data_in_13_5), .WBUF_data_in_13_6(WBUF_data_in_13_6), .WBUF_data_in_13_7(WBUF_data_in_13_7), .WBUF_data_in_13_8(WBUF_data_in_13_8), .WBUF_data_in_13_9(WBUF_data_in_13_9), .WBUF_data_in_13_10(WBUF_data_in_13_10), .WBUF_data_in_13_11(WBUF_data_in_13_11), .WBUF_data_in_13_12(WBUF_data_in_13_12), .WBUF_data_in_13_13(WBUF_data_in_13_13), .WBUF_data_in_13_14(WBUF_data_in_13_14), .WBUF_data_in_13_15(WBUF_data_in_13_15), .WBUF_data_in_13_16(WBUF_data_in_13_16),
    .WBUF_data_in_14_1(WBUF_data_in_14_1), .WBUF_data_in_14_2(WBUF_data_in_14_2), .WBUF_data_in_14_3(WBUF_data_in_14_3), .WBUF_data_in_14_4(WBUF_data_in_14_4), .WBUF_data_in_14_5(WBUF_data_in_14_5), .WBUF_data_in_14_6(WBUF_data_in_14_6), .WBUF_data_in_14_7(WBUF_data_in_14_7), .WBUF_data_in_14_8(WBUF_data_in_14_8), .WBUF_data_in_14_9(WBUF_data_in_14_9), .WBUF_data_in_14_10(WBUF_data_in_14_10), .WBUF_data_in_14_11(WBUF_data_in_14_11), .WBUF_data_in_14_12(WBUF_data_in_14_12), .WBUF_data_in_14_13(WBUF_data_in_14_13), .WBUF_data_in_14_14(WBUF_data_in_14_14), .WBUF_data_in_14_15(WBUF_data_in_14_15), .WBUF_data_in_14_16(WBUF_data_in_14_16),
    .WBUF_data_in_15_1(WBUF_data_in_15_1), .WBUF_data_in_15_2(WBUF_data_in_15_2), .WBUF_data_in_15_3(WBUF_data_in_15_3), .WBUF_data_in_15_4(WBUF_data_in_15_4), .WBUF_data_in_15_5(WBUF_data_in_15_5), .WBUF_data_in_15_6(WBUF_data_in_15_6), .WBUF_data_in_15_7(WBUF_data_in_15_7), .WBUF_data_in_15_8(WBUF_data_in_15_8), .WBUF_data_in_15_9(WBUF_data_in_15_9), .WBUF_data_in_15_10(WBUF_data_in_15_10), .WBUF_data_in_15_11(WBUF_data_in_15_11), .WBUF_data_in_15_12(WBUF_data_in_15_12), .WBUF_data_in_15_13(WBUF_data_in_15_13), .WBUF_data_in_15_14(WBUF_data_in_15_14), .WBUF_data_in_15_15(WBUF_data_in_15_15), .WBUF_data_in_15_16(WBUF_data_in_15_16),
    .WBUF_data_in_16_1(WBUF_data_in_16_1), .WBUF_data_in_16_2(WBUF_data_in_16_2), .WBUF_data_in_16_3(WBUF_data_in_16_3), .WBUF_data_in_16_4(WBUF_data_in_16_4), .WBUF_data_in_16_5(WBUF_data_in_16_5), .WBUF_data_in_16_6(WBUF_data_in_16_6), .WBUF_data_in_16_7(WBUF_data_in_16_7), .WBUF_data_in_16_8(WBUF_data_in_16_8), .WBUF_data_in_16_9(WBUF_data_in_16_9), .WBUF_data_in_16_10(WBUF_data_in_16_10), .WBUF_data_in_16_11(WBUF_data_in_16_11), .WBUF_data_in_16_12(WBUF_data_in_16_12), .WBUF_data_in_16_13(WBUF_data_in_16_13), .WBUF_data_in_16_14(WBUF_data_in_16_14), .WBUF_data_in_16_15(WBUF_data_in_16_15), .WBUF_data_in_16_16(WBUF_data_in_16_16),
    
    .signal(signal),
    .weight_bitwidth(weight_bitwidth),
    .input_bitwidth(input_bitwidth),
    .sign_x(sign_x),
    .sign_y(sign_y),
    
    .total_output_1(total_output_1), .total_output_2(total_output_2), .total_output_3(total_output_3), .total_output_4(total_output_4), 
    .total_output_5(total_output_5), .total_output_6(total_output_6), .total_output_7(total_output_7), .total_output_8(total_output_8),
    .total_output_9(total_output_9), .total_output_10(total_output_10), .total_output_11(total_output_11), .total_output_12(total_output_12), 
    .total_output_13(total_output_13), .total_output_14(total_output_14), .total_output_15(total_output_15), .total_output_16(total_output_16)
    );
    
    always #5 clk = ~clk;
    
    initial
        begin
            clk = 0;
            reset = 1;
            
            // sign_x, sign_Y, signal 
            // these are the constants through the entire network!!
            // Total 9 scneraios
            
            // for 8bit x 8bit
//            weight_bitwidth = 2'b10;
//            input_bitwidth= 2'b10;
//            sign_x = 4'b1000;
//            sign_y = 4'b1000;
//            signal = 48'b110_101_100_011_101_100_011_010_100_011_010_001_011_010_001_000;
            
            // for 4bit x 8bit
//            weight_bitwidth = 2'b10;
//            input_bitwidth= 2'b01;
//            sign_x = 4'b1000;
//            sign_y = 4'b1010;
//            signal = 48'b100_011_010_001_011_010_001_000_100_011_010_001_011_010_001_000;

            // for 4bit x 4bit
//            weight_bitwidth = 2'b01;
//            input_bitwidth= 2'b01;
//            sign_x = 4'b1010;
//            sign_y = 4'b1010;
//            signal = 48'b010_001_010_001_001_000_001_000_010_001_010_001_001_000_001_000;
            
            // for 2bit x 2bit
            weight_bitwidth = 2'b00;
            input_bitwidth= 2'b00;
            sign_x = 4'b1111;
            sign_y = 4'b1111;
            signal = 48'b000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000;
            
            IBUF_data_in_1 = 32'b0101_0101_0110_1110_1010_1010_0110_0010;
            IBUF_data_in_2 = 32'b0001_0111_1100_1010_1101_1101_0110_1010;
            IBUF_data_in_3 = 32'b1111_1111_1111_1110_1111_1111_1111_1111;
            IBUF_data_in_4 = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
            IBUF_data_in_5 = 32'b1111_1110_0000_1100_1100_0000_1111_1110;
            IBUF_data_in_6 = 32'b0000_0111_1010_0011_1010_1111_0011_1111;
            IBUF_data_in_7 = 32'b0000_0001_1011_0100_0010_1010_0101_1010;
            IBUF_data_in_8 = 32'b0001_1111_1010_0100_1010_0110_0110_0111;
            IBUF_data_in_9 = 32'b1110_1111_1000_1110_1110_1110_1101_0111;
            IBUF_data_in_10 = 32'b0001_1010_1010_0111_1001_0101_0111_1011;
            IBUF_data_in_11 = 32'b0011_1101_0111_0111_0101_0110_0111_0111;
            IBUF_data_in_12 = 32'b0001_1001_0110_1111_0010_0011_1101_1011;
            IBUF_data_in_13 = 32'b1010_1001_1000_1111_1001_1101_1011_1101;
            IBUF_data_in_14 = 32'b0001_1111_1100_1110_0000_1100_0101_1111;
            IBUF_data_in_15 = 32'b0001_1010_0001_0001_0001_0010_1111_1101;
            IBUF_data_in_16 = 32'b1111_1010_1010_1111_1000_0010_0101_0111;
            
            WBUF_data_in_1_1 = 32'b1111_1110_1010_0101_1110_1100_0110_1110; WBUF_data_in_1_2 = 32'b0011_1110_0010_0110_1110_1100_0100_1110; WBUF_data_in_1_3 = 32'b0001_1110_0010_0101_1110_1100_1010_1110; WBUF_data_in_1_4 = 32'b1100_1110_0010_0101_1110_1010_0100_1110; WBUF_data_in_1_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_1_6 = 32'b1010_1110_0010_0101_1110_1100_0100_1110; WBUF_data_in_1_7 = 32'b1010_1110_0010_0101_1110_1111_1111_1110; WBUF_data_in_1_8 = 32'b0110_0100_0010_0101_1110_1100_0100_1110; WBUF_data_in_1_9 = 32'b0011_1011_1011_0110_1100_1100_0100_1110; WBUF_data_in_1_10 = 32'b0010_1111_0110_0010_0110_1100_0100_1110; WBUF_data_in_1_11 = 32'b0010_1010_1111_1000_1110_1101_1011_1001; WBUF_data_in_1_12 = 32'b0110_1100_0101_1010_1110_1110_1100_1111; WBUF_data_in_1_13 = 32'b0011_1011_0111_1111_0111_0111_0111_0110; WBUF_data_in_1_14 = 32'b1011_0111_1010_1100_1011_0101_0101_0011; WBUF_data_in_1_15 = 32'b0100_1000_1010_1101_1010_0101_1001_0110; WBUF_data_in_1_16 = 32'b1111_1111_1100_1000_0011_0011_0010_0110;
            WBUF_data_in_2_1 = 32'b1111_1110_0010_1001_1110_1011_0111_1110; WBUF_data_in_2_2 = 32'b0011_1110_0010_0101_1110_1100_0100_1110; WBUF_data_in_2_3 = 32'b0001_1110_0010_0101_1110_1100_0110_1110; WBUF_data_in_2_4 = 32'b1100_1110_0010_0101_1110_1010_0100_1110; WBUF_data_in_2_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_2_6 = 32'b1111_1100_0010_0101_1110_1100_0100_1110; WBUF_data_in_2_7 = 32'b1111_1010_0010_0101_1110_1111_1111_1110; WBUF_data_in_2_8 = 32'b0111_0100_0010_0101_1110_1100_0100_1110; WBUF_data_in_2_9 = 32'b1111_1010_1011_0110_1100_1100_0100_1110; WBUF_data_in_2_10 = 32'b0010_0101_1010_0010_0110_1100_0100_1110; WBUF_data_in_2_11 = 32'b0010_1010_1001_1110_1110_1101_1011_1001; WBUF_data_in_2_12 = 32'b0110_0100_0101_1010_1110_1110_1100_1111; WBUF_data_in_2_13 = 32'b0011_1011_0111_1011_0101_0111_0111_0110; WBUF_data_in_2_14 = 32'b1011_0111_1010_1100_1011_0100_0101_0011; WBUF_data_in_2_15 = 32'b0100_1110_1111_1101_1010_0101_1001_0110; WBUF_data_in_2_16 = 32'b0000_0000_1100_1000_0011_0011_0010_0110;
            WBUF_data_in_3_1 = 32'b1111_1110_0010_0110_1110_1100_0111_1110; WBUF_data_in_3_2 = 32'b0011_1110_0010_0101_1100_1100_0100_1110; WBUF_data_in_3_3 = 32'b0001_1110_0010_1010_1110_1100_0100_1010; WBUF_data_in_3_4 = 32'b1100_1110_0010_0101_1110_1100_0100_1110; WBUF_data_in_3_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_3_6 = 32'b1111_1110_1010_0101_1110_1100_0100_1110; WBUF_data_in_3_7 = 32'b0000_1110_0010_0101_1110_1111_1111_1110; WBUF_data_in_3_8 = 32'b1111_0100_0010_0101_1110_1100_0100_1110; WBUF_data_in_3_9 = 32'b1101_1010_1111_0110_1100_1100_0100_1110; WBUF_data_in_3_10 = 32'b0010_0101_0110_1010_0110_1100_0100_1110; WBUF_data_in_3_11 = 32'b0010_1010_1001_1000_1110_1101_1011_1001; WBUF_data_in_3_12 = 32'b1100_1011_0101_1010_1110_1110_1100_1111; WBUF_data_in_3_13 = 32'b0011_1011_0111_1011_0111_0111_0111_0110; WBUF_data_in_3_14 = 32'b1011_0111_1010_1100_1011_0000_0101_0011; WBUF_data_in_3_15 = 32'b0100_1110_1010_1111_1010_0101_1001_0110; WBUF_data_in_3_16 = 32'b1111_1010_1100_1000_0011_0011_0010_0110;
            WBUF_data_in_4_1 = 32'b1111_1110_1010_0101_1110_1100_1111_1110; WBUF_data_in_4_2 = 32'b0011_1110_0010_0101_1110_1100_0100_1110; WBUF_data_in_4_3 = 32'b0001_1110_0010_0101_1110_1100_0100_0000; WBUF_data_in_4_4 = 32'b1100_1110_0010_0101_1110_1110_0100_1110; WBUF_data_in_4_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_4_6 = 32'b1111_1110_0010_1010_1110_1100_0100_1110; WBUF_data_in_4_7 = 32'b1111_1110_1010_0101_1110_1111_1111_1110; WBUF_data_in_4_8 = 32'b0010_1010_0010_0101_1110_1100_0100_1110; WBUF_data_in_4_9 = 32'b1101_0011_1101_0110_1100_1100_0100_1110; WBUF_data_in_4_10 = 32'b0010_0101_0110_0010_1110_1100_0100_1110; WBUF_data_in_4_11 = 32'b0010_1010_1001_1101_1110_1101_1011_1001; WBUF_data_in_4_12 = 32'b1010_1011_0101_0101_1110_1110_1100_1111; WBUF_data_in_4_13 = 32'b0011_1011_0111_1001_0111_0111_0111_0110; WBUF_data_in_4_14 = 32'b1011_0111_1010_0000_1011_0010_0101_0011; WBUF_data_in_4_15 = 32'b0100_1110_1010_1101_1110_0101_1001_0110; WBUF_data_in_4_16 = 32'b1111_0000_0011_1000_0011_0011_0010_0111;
            WBUF_data_in_5_1 = 32'b1111_1110_1010_0101_1110_1011_1000_1110; WBUF_data_in_5_2 = 32'b0011_1110_0010_0101_1110_1010_0100_1110; WBUF_data_in_5_3 = 32'b0001_1110_0010_0110_1110_1100_0100_1110; WBUF_data_in_5_4 = 32'b1100_1110_0010_0101_1110_1101_0100_1110; WBUF_data_in_5_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_5_6 = 32'b1111_1110_0010_0101_1010_1100_0100_1110; WBUF_data_in_5_7 = 32'b1111_1110_0010_1010_1110_1111_1111_1110; WBUF_data_in_5_8 = 32'b0010_1011_0010_0101_1110_1100_0100_1110; WBUF_data_in_5_9 = 32'b1101_1011_0011_0110_1100_1100_0100_1110; WBUF_data_in_5_10 = 32'b0101_0101_0110_1101_0110_1100_0100_1101; WBUF_data_in_5_11 = 32'b0101_0101_1001_0100_0101_1101_0101_0101; WBUF_data_in_5_12 = 32'b0110_1011_0101_1010_0101_1110_1100_1111; WBUF_data_in_5_13 = 32'b0011_1011_0111_1011_0111_0111_0111_0110; WBUF_data_in_5_14 = 32'b1011_0111_1010_1111_1011_0111_0101_0011; WBUF_data_in_5_15 = 32'b0100_1110_1010_1101_1010_1101_1001_0110; WBUF_data_in_5_16 = 32'b1111_0000_1100_0101_0011_0011_0010_0110;
            WBUF_data_in_6_1 = 32'b1111_1100_0010_0101_1111_1100_0100_1110; WBUF_data_in_6_2 = 32'b0011_1110_0010_0101_1110_1100_0100_1110; WBUF_data_in_6_3 = 32'b0001_1000_0010_0101_1110_1100_0100_1110; WBUF_data_in_6_4 = 32'b1100_1110_0010_0101_1110_1100_1010_1110; WBUF_data_in_6_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_6_6 = 32'b1111_1110_0010_0101_1110_1100_0100_1110; WBUF_data_in_6_7 = 32'b1111_1110_0010_0101_1010_1111_1111_1110; WBUF_data_in_6_8 = 32'b0010_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_6_9 = 32'b1101_1011_0010_0110_1100_1100_0100_1110; WBUF_data_in_6_10 = 32'b0010_0101_1011_0010_0110_1100_0100_1110; WBUF_data_in_6_11 = 32'b0010_1010_1001_1000_1010_1101_1011_1001; WBUF_data_in_6_12 = 32'b0110_1011_0101_1010_1110_0001_1100_1111; WBUF_data_in_6_13 = 32'b0011_1011_0111_1011_0111_0111_0111_0110; WBUF_data_in_6_14 = 32'b1011_0111_1010_1110_1011_0111_0101_0011; WBUF_data_in_6_15 = 32'b0100_1110_1010_1101_1010_0101_1111_0110; WBUF_data_in_6_16 = 32'b1111_0000_1100_1010_0011_0011_0010_0110;
            WBUF_data_in_7_1 = 32'b1111_1100_0010_0101_1110_1100_0100_1110; WBUF_data_in_7_2 = 32'b0011_1110_0010_0101_1110_1100_1010_1110; WBUF_data_in_7_3 = 32'b0001_1010_0010_0101_1110_1100_0100_1110; WBUF_data_in_7_4 = 32'b1100_1110_0010_0101_1110_1100_1010_1110; WBUF_data_in_7_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_7_6 = 32'b1111_1110_0010_0111_1110_1100_0100_1110; WBUF_data_in_7_7 = 32'b1111_1110_0010_0101_1110_1111_1010_1110; WBUF_data_in_7_8 = 32'b0010_0111_1111_0101_1110_1100_0100_1110; WBUF_data_in_7_9 = 32'b1101_1011_0101_0110_1100_1100_0100_1110; WBUF_data_in_7_10 = 32'b0010_1011_0110_0010_0110_1100_0100_1110; WBUF_data_in_7_11 = 32'b0010_1010_1001_1000_1110_1101_1011_1001; WBUF_data_in_7_12 = 32'b0110_1011_0101_1010_1110_1110_1010_1111; WBUF_data_in_7_13 = 32'b0011_1011_0111_1010_0111_0111_0111_0110; WBUF_data_in_7_14 = 32'b1011_0111_1010_1101_1011_0111_0101_0011; WBUF_data_in_7_15 = 32'b0100_1110_1010_1101_1010_0101_1101_0101; WBUF_data_in_7_16 = 32'b1111_0000_1100_1000_0111_0011_0010_0110;
            WBUF_data_in_8_1 = 32'b1111_1010_0010_0101_1110_1100_0100_1010; WBUF_data_in_8_2 = 32'b0011_1110_0010_0101_1110_1100_0100_1110; WBUF_data_in_8_3 = 32'b1011_1110_0010_0101_1110_1100_0100_1110; WBUF_data_in_8_4 = 32'b1100_1110_0010_0101_1110_1100_0100_1010; WBUF_data_in_8_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_8_6 = 32'b1111_1110_0010_0101_1110_1100_0100_1110; WBUF_data_in_8_7 = 32'b1111_1110_0010_0101_1110_1010_1111_1110; WBUF_data_in_8_8 = 32'b0010_0100_0101_1011_1110_1100_0100_1110; WBUF_data_in_8_9 = 32'b1101_1011_1010_0110_1100_1100_0100_1110; WBUF_data_in_8_10 = 32'b0010_1101_0110_0010_0110_1100_0100_1110; WBUF_data_in_8_11 = 32'b0010_1010_1001_1000_1110_0001_1011_1001; WBUF_data_in_8_12 = 32'b0110_1011_0101_1010_1110_1110_1100_1111; WBUF_data_in_8_13 = 32'b0011_1011_0111_1011_0110_0111_0111_0110; WBUF_data_in_8_14 = 32'b1011_0111_1110_1100_1011_0111_0101_0011; WBUF_data_in_8_15 = 32'b0100_1110_1010_1101_1010_0101_1001_1001; WBUF_data_in_8_16 = 32'b1111_0000_1100_1000_1100_0011_0010_0110;
            WBUF_data_in_9_1 = 32'b1010_1110_0010_0101_1110_1100_0110_1110; WBUF_data_in_9_2 = 32'b0011_1110_0010_0101_1110_1100_0100_1110; WBUF_data_in_9_3 = 32'b1010_1010_1001_0101_1110_1100_0100_1110; WBUF_data_in_9_4 = 32'b1100_1110_0010_0101_1110_1100_0100_1100; WBUF_data_in_9_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_9_6 = 32'b1111_1110_0010_0001_1110_1100_0100_1110; WBUF_data_in_9_7 = 32'b1111_1110_0010_0101_1110_1111_1111_1010; WBUF_data_in_9_8 = 32'b0010_0100_0010_1010_1110_1100_0100_1110; WBUF_data_in_9_9 = 32'b1101_1011_1011_0101_1100_1010_0100_1110; WBUF_data_in_9_10 = 32'b0010_1010_0110_0010_0110_1100_0100_1110; WBUF_data_in_9_11 = 32'b0010_1010_1001_1000_1110_0011_1011_1001; WBUF_data_in_9_12 = 32'b0110_1011_0101_1010_1110_1110_1100_1001; WBUF_data_in_9_13 = 32'b0011_1011_0111_1011_0111_0111_0111_0110; WBUF_data_in_9_14 = 32'b1011_0111_1011_1100_1011_0111_0101_0011; WBUF_data_in_9_15 = 32'b0100_1110_1010_0010_1010_0101_1001_0110; WBUF_data_in_9_16 = 32'b1111_0000_1100_1000_0011_0011_0010_0110;
            WBUF_data_in_10_1 = 32'b1101_1110_0010_0101_1110_1100_1010_1110; WBUF_data_in_10_2 = 32'b0011_1110_0010_0101_1110_1100_0100_1110; WBUF_data_in_10_3 = 32'b0001_1010_0010_0101_1110_1100_0100_1110; WBUF_data_in_10_4 = 32'b1100_1110_0010_0101_1110_1100_0010_1110; WBUF_data_in_10_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_10_6 = 32'b1111_1110_1010_0101_1110_1100_0100_1110; WBUF_data_in_10_7 = 32'b1111_1110_0010_0101_1110_1111_1010_1110; WBUF_data_in_10_8 = 32'b0010_0100_1010_0101_1110_1100_0100_1110; WBUF_data_in_10_9 = 32'b1101_1011_1011_0010_1111_1100_0100_1110; WBUF_data_in_10_10 = 32'b1010_0101_0110_0010_0110_1100_0100_1110; WBUF_data_in_10_11 = 32'b0010_1010_1001_1000_1010_1101_1011_1001; WBUF_data_in_10_12 = 32'b0110_1011_0101_1010_1110_0001_1100_1111; WBUF_data_in_10_13 = 32'b0011_1011_0111_1011_0111_0111_0111_0110; WBUF_data_in_10_14 = 32'b1011_0000_1111_1100_1011_0111_0101_0011; WBUF_data_in_10_15 = 32'b0100_1001_1010_1101_1010_0101_1001_0110; WBUF_data_in_10_16 = 32'b1111_0110_1100_1000_0011_0011_0010_0110;
            WBUF_data_in_11_1 = 32'b1110_1010_1010_0101_1110_1100_1010_1010; WBUF_data_in_11_2 = 32'b0011_1110_0010_0101_1110_1100_0100_1110; WBUF_data_in_11_3 = 32'b0001_1110_1010_0101_1110_1100_0100_1000; WBUF_data_in_11_4 = 32'b1100_1110_0010_0101_1110_1100_0101_1110; WBUF_data_in_11_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_11_6 = 32'b1111_1110_0010_1010_1110_1100_0100_1110; WBUF_data_in_11_7 = 32'b1111_1110_0010_0101_1110_1010_1111_1110; WBUF_data_in_11_8 = 32'b0010_0100_1100_0101_1110_1100_0100_1110; WBUF_data_in_11_9 = 32'b1101_1011_1011_0110_1100_1010_0100_1110; WBUF_data_in_11_10 = 32'b1010_0111_0111_0000_1111_1100_0100_1110; WBUF_data_in_11_11 = 32'b0010_1010_1001_1000_1110_1010_1011_1001; WBUF_data_in_11_12 = 32'b0110_1011_0101_1010_0101_1110_1100_1111; WBUF_data_in_11_13 = 32'b0011_1011_0110_1011_0111_0111_0111_0110; WBUF_data_in_11_14 = 32'b1011_0011_1010_1100_1011_0111_0101_0011; WBUF_data_in_11_15 = 32'b0100_0000_1111_1101_1010_0101_1001_0110; WBUF_data_in_11_16 = 32'b1111_0010_1100_1000_0011_0011_0010_0110;
            WBUF_data_in_12_1 = 32'b1111_1110_0010_0101_1110_1100_0100_1110; WBUF_data_in_12_2 = 32'b0011_1110_0010_0101_1110_1100_0110_1110; WBUF_data_in_12_3 = 32'b0001_1110_0010_1011_1110_1100_0100_1111; WBUF_data_in_12_4 = 32'b1100_1110_0010_0101_1110_1100_0101_1110; WBUF_data_in_12_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_12_6 = 32'b1111_1110_0010_0101_1101_1100_0100_1110; WBUF_data_in_12_7 = 32'b1111_1110_0010_0101_1110_1010_1000_1110; WBUF_data_in_12_8 = 32'b0010_0100_1010_0101_1110_1100_0100_1110; WBUF_data_in_12_9 = 32'b1101_1011_1011_0110_1010_1100_0100_1110; WBUF_data_in_12_10 = 32'b0010_0101_0110_1010_0110_1100_0100_1110; WBUF_data_in_12_11 = 32'b0010_1010_1001_1000_1110_1101_0011_1001; WBUF_data_in_12_12 = 32'b0110_1011_0101_1010_1100_1110_1100_1111; WBUF_data_in_12_13 = 32'b0011_1011_0111_1011_0111_0111_0111_0110; WBUF_data_in_12_14 = 32'b1011_0100_1010_1100_1011_0111_0101_0011; WBUF_data_in_12_15 = 32'b0100_1110_1010_1011_1010_0101_1001_0110; WBUF_data_in_12_16 = 32'b1111_1000_1100_1000_0011_0011_0010_0110;
            WBUF_data_in_13_1 = 32'b1111_1110_0010_0101_1110_1100_1010_1110; WBUF_data_in_13_2 = 32'b0011_1110_0010_0101_1110_1100_1000_1110; WBUF_data_in_13_3 = 32'b0001_1110_0010_0101_1010_1100_0100_1110; WBUF_data_in_13_4 = 32'b1100_1110_0010_0101_1110_1010_0100_1110; WBUF_data_in_13_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_13_6 = 32'b1111_1110_0010_0101_1010_1100_0100_1110; WBUF_data_in_13_7 = 32'b1111_1110_0010_0101_1110_1111_0011_1110; WBUF_data_in_13_8 = 32'b0010_1010_0010_0101_1110_1111_0100_1110; WBUF_data_in_13_9 = 32'b1101_1011_1011_0110_1001_1100_0100_1110; WBUF_data_in_13_10 = 32'b0010_0101_0110_1110_0001_1100_0100_1110; WBUF_data_in_13_11 = 32'b0010_1010_1001_1000_1110_1101_1001_1111; WBUF_data_in_13_12 = 32'b0110_1011_0101_1010_1000_1110_1100_1111; WBUF_data_in_13_13 = 32'b0011_1011_0100_1011_0111_0111_0111_0110; WBUF_data_in_13_14 = 32'b1011_0101_1010_1100_1011_0111_0101_0011; WBUF_data_in_13_15 = 32'b0100_1110_1010_1010_1101_0101_1001_0110; WBUF_data_in_13_16 = 32'b1111_0001_1100_1000_0011_0011_0010_0110;
            WBUF_data_in_14_1 = 32'b1111_1110_0010_1010_1110_1100_0100_1110; WBUF_data_in_14_2 = 32'b0011_1110_0010_0101_1110_1100_0110_1110; WBUF_data_in_14_3 = 32'b0001_1110_0010_0101_1110_1010_0100_1010; WBUF_data_in_14_4 = 32'b1100_1110_0010_0101_1110_1010_0100_1110; WBUF_data_in_14_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_14_6 = 32'b1111_1110_0010_0101_1110_1010_0100_1110; WBUF_data_in_14_7 = 32'b1111_1110_0010_0101_1110_1111_1000_1110; WBUF_data_in_14_8 = 32'b0010_0101_0010_0101_1110_1100_0100_1110; WBUF_data_in_14_9 = 32'b1101_1011_1111_0000_1100_1100_0100_1110; WBUF_data_in_14_10 = 32'b0010_0101_0110_0010_0110_0101_1010_1110; WBUF_data_in_14_11 = 32'b0010_1010_1001_1000_1110_1101_1011_1001; WBUF_data_in_14_12 = 32'b0111_1011_0101_1010_1110_1110_1010_1101; WBUF_data_in_14_13 = 32'b0011_1011_0111_1010_0111_0111_0111_0110; WBUF_data_in_14_14 = 32'b1011_1111_1010_1100_1011_0111_0101_0011; WBUF_data_in_14_15 = 32'b0100_1110_1010_1101_1010_1010_1001_0110; WBUF_data_in_14_16 = 32'b1111_0000_1110_1000_0011_0011_0010_0110;
            WBUF_data_in_15_1 = 32'b1111_1110_0010_1001_1110_1010_0100_1110; WBUF_data_in_15_2 = 32'b0011_1110_0010_0101_1110_1100_0110_1110; WBUF_data_in_15_3 = 32'b0001_1110_0000_0101_1110_1011_0100_0111; WBUF_data_in_15_4 = 32'b1100_1110_1010_0101_1110_1100_0100_1110; WBUF_data_in_15_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_15_6 = 32'b1000_0010_0010_0101_1110_1100_0100_1110; WBUF_data_in_15_7 = 32'b1111_1110_0010_0101_1110_1111_1100_1110; WBUF_data_in_15_8 = 32'b0010_0100_0010_0101_0011_1100_0100_1110; WBUF_data_in_15_9 = 32'b1101_1111_1011_0110_1100_1100_0100_1110; WBUF_data_in_15_10 = 32'b0010_0101_0101_1001_0110_1010_1001_0101; WBUF_data_in_15_11 = 32'b0010_1010_1001_1111_1110_1101_1011_1001; WBUF_data_in_15_12 = 32'b0110_1011_0101_1010_1110_1110_1100_1111; WBUF_data_in_15_13 = 32'b0011_1011_0111_1001_0111_0111_0111_0110; WBUF_data_in_15_14 = 32'b1011_0111_1010_1100_1011_0111_1010_0011; WBUF_data_in_15_15 = 32'b0100_1110_1010_1101_1010_0101_1011_0110; WBUF_data_in_15_16 = 32'b1111_0000_1000_1000_0011_0011_0010_0110;
            WBUF_data_in_16_1 = 32'b1111_1110_1010_0101_1110_1100_0100_1110; WBUF_data_in_16_2 = 32'b0011_1110_0010_0101_1110_1100_0100_1100; WBUF_data_in_16_3 = 32'b0001_1010_1010_1010_1111_1111_0100_0000; WBUF_data_in_16_4 = 32'b1100_1100_0010_0101_1110_1100_0100_1110; WBUF_data_in_16_5 = 32'b1111_0000_0010_0101_1110_1100_0100_1110; WBUF_data_in_16_6 = 32'b1111_1110_0010_0101_1010_1100_0100_1110; WBUF_data_in_16_7 = 32'b1111_1110_0010_0101_1110_1111_0001_1110; WBUF_data_in_16_8 = 32'b0010_0100_0010_0101_1110_1010_0100_1110; WBUF_data_in_16_9 = 32'b1100_1011_1011_0110_1100_1100_0100_1110; WBUF_data_in_16_10 = 32'b0010_0101_0110_0010_0110_1100_1010_1010; WBUF_data_in_16_11 = 32'b0010_1010_1010_1000_1110_1101_1011_1001; WBUF_data_in_16_12 = 32'b0110_1111_0101_1010_1110_1110_1100_1111; WBUF_data_in_16_13 = 32'b0011_1011_0111_1011_0110_0111_0111_0110; WBUF_data_in_16_14 = 32'b1011_0111_1010_1100_1011_1111_0101_0011; WBUF_data_in_16_15 = 32'b0100_1110_1010_1101_1010_0101_1111_0110; WBUF_data_in_16_16 = 32'b0001_0000_1100_1000_0011_0011_0010_0110;
            
            
            #6 reset = 0;
            // 8bit : #45
            // 4bit : #25
            // 2bit : #15
            #15
            
            WBUF_data_in_1_1 = 0; WBUF_data_in_1_2 = 0; WBUF_data_in_1_3 = 0; WBUF_data_in_1_4 = 0; WBUF_data_in_1_5 = 0; WBUF_data_in_1_6 = 0; WBUF_data_in_1_7 = 0; WBUF_data_in_1_8 = 0; WBUF_data_in_1_9 = 0; WBUF_data_in_1_10 = 0; WBUF_data_in_1_11 = 0; WBUF_data_in_1_12 = 0; WBUF_data_in_1_13 = 0; WBUF_data_in_1_14 = 0; WBUF_data_in_1_15 = 0; WBUF_data_in_1_16 = 0;
            WBUF_data_in_2_1 = 0; WBUF_data_in_2_2 = 0; WBUF_data_in_2_3 = 0; WBUF_data_in_2_4 = 0; WBUF_data_in_2_5 = 0; WBUF_data_in_2_6 = 0; WBUF_data_in_2_7 = 0; WBUF_data_in_2_8 = 0; WBUF_data_in_2_9 = 0; WBUF_data_in_2_10 = 0; WBUF_data_in_2_11 = 0; WBUF_data_in_2_12 = 0; WBUF_data_in_2_13 = 0; WBUF_data_in_2_14 = 0; WBUF_data_in_2_15 = 0; WBUF_data_in_2_16 = 0;
            WBUF_data_in_3_1 = 0; WBUF_data_in_3_2 = 0; WBUF_data_in_3_3 = 0; WBUF_data_in_3_4 = 0; WBUF_data_in_3_5 = 0; WBUF_data_in_3_6 = 0; WBUF_data_in_3_7 = 0; WBUF_data_in_3_8 = 0; WBUF_data_in_3_9 = 0; WBUF_data_in_3_10 = 0; WBUF_data_in_3_11 = 0; WBUF_data_in_3_12 = 0; WBUF_data_in_3_13 = 0; WBUF_data_in_3_14 = 0; WBUF_data_in_3_15 = 0; WBUF_data_in_3_16 = 0;
            WBUF_data_in_4_1 = 0; WBUF_data_in_4_2 = 0; WBUF_data_in_4_3 = 0; WBUF_data_in_4_4 = 0; WBUF_data_in_4_5 = 0; WBUF_data_in_4_6 = 0; WBUF_data_in_4_7 = 0; WBUF_data_in_4_8 = 0; WBUF_data_in_4_9 = 0; WBUF_data_in_4_10 = 0; WBUF_data_in_4_11 = 0; WBUF_data_in_4_12 = 0; WBUF_data_in_4_13 = 0; WBUF_data_in_4_14 = 0; WBUF_data_in_4_15 = 0; WBUF_data_in_4_16 = 0;
            WBUF_data_in_5_1 = 0; WBUF_data_in_5_2 = 0; WBUF_data_in_5_3 = 0; WBUF_data_in_5_4 = 0; WBUF_data_in_5_5 = 0; WBUF_data_in_5_6 = 0; WBUF_data_in_5_7 = 0; WBUF_data_in_5_8 = 0; WBUF_data_in_5_9 = 0; WBUF_data_in_5_10 = 0; WBUF_data_in_5_11 = 0; WBUF_data_in_5_12 = 0; WBUF_data_in_5_13 = 0; WBUF_data_in_5_14 = 0; WBUF_data_in_5_15 = 0; WBUF_data_in_5_16 = 0;
            WBUF_data_in_6_1 = 0; WBUF_data_in_6_2 = 0; WBUF_data_in_6_3 = 0; WBUF_data_in_6_4 = 0; WBUF_data_in_6_5 = 0; WBUF_data_in_6_6 = 0; WBUF_data_in_6_7 = 0; WBUF_data_in_6_8 = 0; WBUF_data_in_6_9 = 0; WBUF_data_in_6_10 = 0; WBUF_data_in_6_11 = 0; WBUF_data_in_6_12 = 0; WBUF_data_in_6_13 = 0; WBUF_data_in_6_14 = 0; WBUF_data_in_6_15 = 0; WBUF_data_in_6_16 = 0;
            WBUF_data_in_7_1 = 0; WBUF_data_in_7_2 = 0; WBUF_data_in_7_3 = 0; WBUF_data_in_7_4 = 0; WBUF_data_in_7_5 = 0; WBUF_data_in_7_6 = 0; WBUF_data_in_7_7 = 0; WBUF_data_in_7_8 = 0; WBUF_data_in_7_9 = 0; WBUF_data_in_7_10 = 0; WBUF_data_in_7_11 = 0; WBUF_data_in_7_12 = 0; WBUF_data_in_7_13 = 0; WBUF_data_in_7_14 = 0; WBUF_data_in_7_15 = 0; WBUF_data_in_7_16 = 0;
            WBUF_data_in_8_1 = 0; WBUF_data_in_8_2 = 0; WBUF_data_in_8_3 = 0; WBUF_data_in_8_4 = 0; WBUF_data_in_8_5 = 0; WBUF_data_in_8_6 = 0; WBUF_data_in_8_7 = 0; WBUF_data_in_8_8 = 0; WBUF_data_in_8_9 = 0; WBUF_data_in_8_10 = 0; WBUF_data_in_8_11 = 0; WBUF_data_in_8_12 = 0; WBUF_data_in_8_13 = 0; WBUF_data_in_8_14 = 0; WBUF_data_in_8_15 = 0; WBUF_data_in_8_16 = 0;
            WBUF_data_in_9_1 = 0; WBUF_data_in_9_2 = 0; WBUF_data_in_9_3 = 0; WBUF_data_in_9_4 = 0; WBUF_data_in_9_5 = 0; WBUF_data_in_9_6 = 0; WBUF_data_in_9_7 = 0; WBUF_data_in_9_8 = 0; WBUF_data_in_9_9 = 0; WBUF_data_in_9_10 = 0; WBUF_data_in_9_11 = 0; WBUF_data_in_9_12 = 0; WBUF_data_in_9_13 = 0; WBUF_data_in_9_14 = 0; WBUF_data_in_9_15 = 0; WBUF_data_in_9_16 = 0;
            WBUF_data_in_10_1 = 0; WBUF_data_in_10_2 = 0; WBUF_data_in_10_3 = 0; WBUF_data_in_10_4 = 0; WBUF_data_in_10_5 = 0; WBUF_data_in_10_6 = 0; WBUF_data_in_10_7 = 0; WBUF_data_in_10_8 = 0; WBUF_data_in_10_9 = 0; WBUF_data_in_10_10 = 0; WBUF_data_in_10_11 = 0; WBUF_data_in_10_12 = 0; WBUF_data_in_10_13 = 0; WBUF_data_in_10_14 = 0; WBUF_data_in_10_15 = 0; WBUF_data_in_10_16 = 0;
            WBUF_data_in_11_1 = 0; WBUF_data_in_11_2 = 0; WBUF_data_in_11_3 = 0; WBUF_data_in_11_4 = 0; WBUF_data_in_11_5 = 0; WBUF_data_in_11_6 = 0; WBUF_data_in_11_7 = 0; WBUF_data_in_11_8 = 0; WBUF_data_in_11_9 = 0; WBUF_data_in_11_10 = 0; WBUF_data_in_11_11 = 0; WBUF_data_in_11_12 = 0; WBUF_data_in_11_13 = 0; WBUF_data_in_11_14 = 0; WBUF_data_in_11_15 = 0; WBUF_data_in_11_16 = 0;
            WBUF_data_in_12_1 = 0; WBUF_data_in_12_2 = 0; WBUF_data_in_12_3 = 0; WBUF_data_in_12_4 = 0; WBUF_data_in_12_5 = 0; WBUF_data_in_12_6 = 0; WBUF_data_in_12_7 = 0; WBUF_data_in_12_8 = 0; WBUF_data_in_12_9 = 0; WBUF_data_in_12_10 = 0; WBUF_data_in_12_11 = 0; WBUF_data_in_12_12 = 0; WBUF_data_in_12_13 = 0; WBUF_data_in_12_14 = 0; WBUF_data_in_12_15 = 0; WBUF_data_in_12_16 = 0;
            WBUF_data_in_13_1 = 0; WBUF_data_in_13_2 = 0; WBUF_data_in_13_3 = 0; WBUF_data_in_13_4 = 0; WBUF_data_in_13_5 = 0; WBUF_data_in_13_6 = 0; WBUF_data_in_13_7 = 0; WBUF_data_in_13_8 = 0; WBUF_data_in_13_9 = 0; WBUF_data_in_13_10 = 0; WBUF_data_in_13_11 = 0; WBUF_data_in_13_12 = 0; WBUF_data_in_13_13 = 0; WBUF_data_in_13_14 = 0; WBUF_data_in_13_15 = 0; WBUF_data_in_13_16 = 0;
            WBUF_data_in_14_1 = 0; WBUF_data_in_14_2 = 0; WBUF_data_in_14_3 = 0; WBUF_data_in_14_4 = 0; WBUF_data_in_14_5 = 0; WBUF_data_in_14_6 = 0; WBUF_data_in_14_7 = 0; WBUF_data_in_14_8 = 0; WBUF_data_in_14_9 = 0; WBUF_data_in_14_10 = 0; WBUF_data_in_14_11 = 0; WBUF_data_in_14_12 = 0; WBUF_data_in_14_13 = 0; WBUF_data_in_14_14 = 0; WBUF_data_in_14_15 = 0; WBUF_data_in_14_16 = 0;
            WBUF_data_in_15_1 = 0; WBUF_data_in_15_2 = 0; WBUF_data_in_15_3 = 0; WBUF_data_in_15_4 = 0; WBUF_data_in_15_5 = 0; WBUF_data_in_15_6 = 0; WBUF_data_in_15_7 = 0; WBUF_data_in_15_8 = 0; WBUF_data_in_15_9 = 0; WBUF_data_in_15_10 = 0; WBUF_data_in_15_11 = 0; WBUF_data_in_15_12 = 0; WBUF_data_in_15_13 = 0; WBUF_data_in_15_14 = 0; WBUF_data_in_15_15 = 0; WBUF_data_in_15_16 = 0;
            WBUF_data_in_16_1 = 0; WBUF_data_in_16_2 = 0; WBUF_data_in_16_3 = 0; WBUF_data_in_16_4 = 0; WBUF_data_in_16_5 = 0; WBUF_data_in_16_6 = 0; WBUF_data_in_16_7 = 0; WBUF_data_in_16_8 = 0; WBUF_data_in_16_9 = 0; WBUF_data_in_16_10 = 0; WBUF_data_in_16_11 = 0; WBUF_data_in_16_12 = 0; WBUF_data_in_16_13 = 0; WBUF_data_in_16_14 = 0; WBUF_data_in_16_15 = 0; WBUF_data_in_16_16 = 0;
            
            IBUF_data_in_1 = 0;
            IBUF_data_in_2 = 0;
            IBUF_data_in_3 = 0;
            IBUF_data_in_4 = 0;
            IBUF_data_in_5 = 0;
            IBUF_data_in_6 = 0;
            IBUF_data_in_7 = 0;
            IBUF_data_in_8 = 0;
            IBUF_data_in_9 = 0;
            IBUF_data_in_10 = 0;
            IBUF_data_in_11 = 0;
            IBUF_data_in_12 = 0;
            IBUF_data_in_13 = 0;
            IBUF_data_in_14 = 0;
            IBUF_data_in_15 = 0;
            IBUF_data_in_16 = 0;
                                    
            for (i = 0; i < 3; i = i + 1)
                begin
                    #900
                      IBUF_data_in_1 = IBUF_data_in_1 + 1;  
//                    in_data_1 = in_data_1 + 1;
//                    in_data_2 = in_data_2 + 1;
//                    in_data_3 = in_data_3 + 1;
//                    in_data_4 = in_data_4 + 1;
                    
//                    in_data_5 = in_data_5 + 1;
//                    in_data_6 = in_data_6 + 1;
//                    in_data_7 = in_data_7 + 1;
//                    in_data_8 = in_data_8 + 1;
//                    in_data_9 = in_data_9 + 1;
//                    in_data_10 = in_data_10 + 1;
//                    in_data_11 = in_data_11 + 1;
//                    in_data_12 = in_data_12 + 1;
//                    in_data_13 = in_data_13 + 1;
//                    in_data_14 = in_data_14 + 1;
//                    in_data_15 = in_data_15 + 1;
//                    in_data_16 = in_data_16 + 1;
                    
//                    #200
//                    w_data_1 = w_data_1 + 1;
//                    w_data_2 = w_data_2 + 1;
//                    w_data_3 = w_data_3 + 1;
//                    w_data_4 = w_data_4 + 1;
                    
//                    w_data_5 = w_data_5 + 1;
//                    w_data_6 = w_data_6 + 1;
//                    w_data_7 = w_data_7 + 1;
//                    w_data_8 = w_data_8 + 1;
//                    w_data_9 = w_data_9 + 1;
//                    w_data_10 = w_data_10 + 1;
//                    w_data_11 = w_data_11 + 1;
//                    w_data_12 = w_data_12 + 1;
//                    w_data_13 = w_data_13 + 1;
//                    w_data_14 = w_data_14 + 1;
//                    w_data_15 = w_data_15 + 1;
//                    w_data_16 = w_data_16 + 1;
                end
        end

endmodule
