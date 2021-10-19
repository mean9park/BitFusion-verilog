`timescale 1ns / 1ps

// [Bit Fusion Architecture]
//  16 X 16 PEs
//  Accumulator
//  Buffer (+ Reg, MUX)

module BitFusion(
    input clk,
    input reset,

    input [31:0] IBUF_data_in_1, IBUF_data_in_2, IBUF_data_in_3, IBUF_data_in_4, IBUF_data_in_5, IBUF_data_in_6, IBUF_data_in_7, IBUF_data_in_8, 
    IBUF_data_in_9, IBUF_data_in_10, IBUF_data_in_11, IBUF_data_in_12, IBUF_data_in_13, IBUF_data_in_14, IBUF_data_in_15, IBUF_data_in_16,  
     
    input [31:0] WBUF_data_in_1_1, WBUF_data_in_1_2, WBUF_data_in_1_3, WBUF_data_in_1_4, WBUF_data_in_1_5, WBUF_data_in_1_6, WBUF_data_in_1_7, WBUF_data_in_1_8, WBUF_data_in_1_9, WBUF_data_in_1_10, WBUF_data_in_1_11, WBUF_data_in_1_12, WBUF_data_in_1_13, WBUF_data_in_1_14, WBUF_data_in_1_15, WBUF_data_in_1_16,
    input [31:0] WBUF_data_in_2_1, WBUF_data_in_2_2, WBUF_data_in_2_3, WBUF_data_in_2_4, WBUF_data_in_2_5, WBUF_data_in_2_6, WBUF_data_in_2_7, WBUF_data_in_2_8, WBUF_data_in_2_9, WBUF_data_in_2_10, WBUF_data_in_2_11, WBUF_data_in_2_12, WBUF_data_in_2_13, WBUF_data_in_2_14, WBUF_data_in_2_15, WBUF_data_in_2_16,
    input [31:0] WBUF_data_in_3_1, WBUF_data_in_3_2, WBUF_data_in_3_3, WBUF_data_in_3_4, WBUF_data_in_3_5, WBUF_data_in_3_6, WBUF_data_in_3_7, WBUF_data_in_3_8, WBUF_data_in_3_9, WBUF_data_in_3_10, WBUF_data_in_3_11, WBUF_data_in_3_12, WBUF_data_in_3_13, WBUF_data_in_3_14, WBUF_data_in_3_15, WBUF_data_in_3_16,
    input [31:0] WBUF_data_in_4_1, WBUF_data_in_4_2, WBUF_data_in_4_3, WBUF_data_in_4_4, WBUF_data_in_4_5, WBUF_data_in_4_6, WBUF_data_in_4_7, WBUF_data_in_4_8, WBUF_data_in_4_9, WBUF_data_in_4_10, WBUF_data_in_4_11, WBUF_data_in_4_12, WBUF_data_in_4_13, WBUF_data_in_4_14, WBUF_data_in_4_15, WBUF_data_in_4_16,
    input [31:0] WBUF_data_in_5_1, WBUF_data_in_5_2, WBUF_data_in_5_3, WBUF_data_in_5_4, WBUF_data_in_5_5, WBUF_data_in_5_6, WBUF_data_in_5_7, WBUF_data_in_5_8, WBUF_data_in_5_9, WBUF_data_in_5_10, WBUF_data_in_5_11, WBUF_data_in_5_12, WBUF_data_in_5_13, WBUF_data_in_5_14, WBUF_data_in_5_15, WBUF_data_in_5_16,
    input [31:0] WBUF_data_in_6_1, WBUF_data_in_6_2, WBUF_data_in_6_3, WBUF_data_in_6_4, WBUF_data_in_6_5, WBUF_data_in_6_6, WBUF_data_in_6_7, WBUF_data_in_6_8, WBUF_data_in_6_9, WBUF_data_in_6_10, WBUF_data_in_6_11, WBUF_data_in_6_12, WBUF_data_in_6_13, WBUF_data_in_6_14, WBUF_data_in_6_15, WBUF_data_in_6_16,
    input [31:0] WBUF_data_in_7_1, WBUF_data_in_7_2, WBUF_data_in_7_3, WBUF_data_in_7_4, WBUF_data_in_7_5, WBUF_data_in_7_6, WBUF_data_in_7_7, WBUF_data_in_7_8, WBUF_data_in_7_9, WBUF_data_in_7_10, WBUF_data_in_7_11, WBUF_data_in_7_12, WBUF_data_in_7_13, WBUF_data_in_7_14, WBUF_data_in_7_15, WBUF_data_in_7_16,
    input [31:0] WBUF_data_in_8_1, WBUF_data_in_8_2, WBUF_data_in_8_3, WBUF_data_in_8_4, WBUF_data_in_8_5, WBUF_data_in_8_6, WBUF_data_in_8_7, WBUF_data_in_8_8, WBUF_data_in_8_9, WBUF_data_in_8_10, WBUF_data_in_8_11, WBUF_data_in_8_12, WBUF_data_in_8_13, WBUF_data_in_8_14, WBUF_data_in_8_15, WBUF_data_in_8_16,
    input [31:0] WBUF_data_in_9_1, WBUF_data_in_9_2, WBUF_data_in_9_3, WBUF_data_in_9_4, WBUF_data_in_9_5, WBUF_data_in_9_6, WBUF_data_in_9_7, WBUF_data_in_9_8, WBUF_data_in_9_9, WBUF_data_in_9_10, WBUF_data_in_9_11, WBUF_data_in_9_12, WBUF_data_in_9_13, WBUF_data_in_9_14, WBUF_data_in_9_15, WBUF_data_in_9_16,
    input [31:0] WBUF_data_in_10_1, WBUF_data_in_10_2, WBUF_data_in_10_3, WBUF_data_in_10_4, WBUF_data_in_10_5, WBUF_data_in_10_6, WBUF_data_in_10_7, WBUF_data_in_10_8, WBUF_data_in_10_9, WBUF_data_in_10_10, WBUF_data_in_10_11, WBUF_data_in_10_12, WBUF_data_in_10_13, WBUF_data_in_10_14, WBUF_data_in_10_15, WBUF_data_in_10_16,
    input [31:0] WBUF_data_in_11_1, WBUF_data_in_11_2, WBUF_data_in_11_3, WBUF_data_in_11_4, WBUF_data_in_11_5, WBUF_data_in_11_6, WBUF_data_in_11_7, WBUF_data_in_11_8, WBUF_data_in_11_9, WBUF_data_in_11_10, WBUF_data_in_11_11, WBUF_data_in_11_12, WBUF_data_in_11_13, WBUF_data_in_11_14, WBUF_data_in_11_15, WBUF_data_in_11_16,
    input [31:0] WBUF_data_in_12_1, WBUF_data_in_12_2, WBUF_data_in_12_3, WBUF_data_in_12_4, WBUF_data_in_12_5, WBUF_data_in_12_6, WBUF_data_in_12_7, WBUF_data_in_12_8, WBUF_data_in_12_9, WBUF_data_in_12_10, WBUF_data_in_12_11, WBUF_data_in_12_12, WBUF_data_in_12_13, WBUF_data_in_12_14, WBUF_data_in_12_15, WBUF_data_in_12_16,
    input [31:0] WBUF_data_in_13_1, WBUF_data_in_13_2, WBUF_data_in_13_3, WBUF_data_in_13_4, WBUF_data_in_13_5, WBUF_data_in_13_6, WBUF_data_in_13_7, WBUF_data_in_13_8, WBUF_data_in_13_9, WBUF_data_in_13_10, WBUF_data_in_13_11, WBUF_data_in_13_12, WBUF_data_in_13_13, WBUF_data_in_13_14, WBUF_data_in_13_15, WBUF_data_in_13_16,
    input [31:0] WBUF_data_in_14_1, WBUF_data_in_14_2, WBUF_data_in_14_3, WBUF_data_in_14_4, WBUF_data_in_14_5, WBUF_data_in_14_6, WBUF_data_in_14_7, WBUF_data_in_14_8, WBUF_data_in_14_9, WBUF_data_in_14_10, WBUF_data_in_14_11, WBUF_data_in_14_12, WBUF_data_in_14_13, WBUF_data_in_14_14, WBUF_data_in_14_15, WBUF_data_in_14_16,
    input [31:0] WBUF_data_in_15_1, WBUF_data_in_15_2, WBUF_data_in_15_3, WBUF_data_in_15_4, WBUF_data_in_15_5, WBUF_data_in_15_6, WBUF_data_in_15_7, WBUF_data_in_15_8, WBUF_data_in_15_9, WBUF_data_in_15_10, WBUF_data_in_15_11, WBUF_data_in_15_12, WBUF_data_in_15_13, WBUF_data_in_15_14, WBUF_data_in_15_15, WBUF_data_in_15_16,
    input [31:0] WBUF_data_in_16_1, WBUF_data_in_16_2, WBUF_data_in_16_3, WBUF_data_in_16_4, WBUF_data_in_16_5, WBUF_data_in_16_6, WBUF_data_in_16_7, WBUF_data_in_16_8, WBUF_data_in_16_9, WBUF_data_in_16_10, WBUF_data_in_16_11, WBUF_data_in_16_12, WBUF_data_in_16_13, WBUF_data_in_16_14, WBUF_data_in_16_15, WBUF_data_in_16_16,

    /// First thing to do!! --> Sign designation!!!!!      
    input [3:0] sign_x,
    input [3:0] sign_y,
    input [1:0] weight_bitwidth,
    input [1:0] input_bitwidth,
    
    input [47:0] signal,

    // only output works, because it's going to be used as REG!!
    output [27:0] total_output_1, total_output_2, total_output_3, total_output_4, total_output_5, total_output_6, total_output_7, total_output_8, 
    total_output_9, total_output_10, total_output_11, total_output_12, total_output_13, total_output_14, total_output_15, total_output_16
    );

    wire [31:0] IBUF_data_out_1, IBUF_data_out_2, IBUF_data_out_3, IBUF_data_out_4, IBUF_data_out_5, IBUF_data_out_6, IBUF_data_out_7, IBUF_data_out_8, 
    IBUF_data_out_9, IBUF_data_out_10, IBUF_data_out_11, IBUF_data_out_12, IBUF_data_out_13, IBUF_data_out_14, IBUF_data_out_15, IBUF_data_out_16;

    wire [31:0] sorted_input_1, sorted_input_2, sorted_input_3, sorted_input_4, sorted_input_5, sorted_input_6, sorted_input_7, sorted_input_8, 
    sorted_input_9, sorted_input_10, sorted_input_11, sorted_input_12, sorted_input_13, sorted_input_14, sorted_input_15, sorted_input_16;

    // x from input buffer, y from weight buffer
    BUF_32bit IBUF_1(.clk(clk), .reset(reset), .data_in(IBUF_data_in_1), .data_out(IBUF_data_out_1));
    Input_MUX_REG Input_MUX_REG_1(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_1), .sorted_data(sorted_input_1) );
    
    BUF_32bit IBUF_2(.clk(clk), .reset(reset), .data_in(IBUF_data_in_2), .data_out(IBUF_data_out_2));
    Input_MUX_REG Input_MUX_REG_2(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_2), .sorted_data(sorted_input_2) );
    
    BUF_32bit IBUF_3(.clk(clk), .reset(reset), .data_in(IBUF_data_in_3), .data_out(IBUF_data_out_3));
    Input_MUX_REG Input_MUX_REG_3(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_3), .sorted_data(sorted_input_3) );
    
    BUF_32bit IBUF_4(.clk(clk), .reset(reset), .data_in(IBUF_data_in_4), .data_out(IBUF_data_out_4));
    Input_MUX_REG Input_MUX_REG_4(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_4), .sorted_data(sorted_input_4) );
    
    BUF_32bit IBUF_5(.clk(clk), .reset(reset), .data_in(IBUF_data_in_5), .data_out(IBUF_data_out_5));
    Input_MUX_REG Input_MUX_REG_5(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_5), .sorted_data(sorted_input_5) );
    
    BUF_32bit IBUF_6(.clk(clk), .reset(reset), .data_in(IBUF_data_in_6), .data_out(IBUF_data_out_6));
    Input_MUX_REG Input_MUX_REG_6(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_6), .sorted_data(sorted_input_6) );
    
    BUF_32bit IBUF_7(.clk(clk), .reset(reset), .data_in(IBUF_data_in_7), .data_out(IBUF_data_out_7));
    Input_MUX_REG Input_MUX_REG_7(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_7), .sorted_data(sorted_input_7) );
    
    BUF_32bit IBUF_8(.clk(clk), .reset(reset), .data_in(IBUF_data_in_8), .data_out(IBUF_data_out_8));
    Input_MUX_REG Input_MUX_REG_8(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_8), .sorted_data(sorted_input_8) );
    
    BUF_32bit IBUF_9(.clk(clk), .reset(reset), .data_in(IBUF_data_in_9), .data_out(IBUF_data_out_9));
    Input_MUX_REG Input_MUX_REG_9(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_9), .sorted_data(sorted_input_9) );
    
    BUF_32bit IBUF_10(.clk(clk), .reset(reset), .data_in(IBUF_data_in_10), .data_out(IBUF_data_out_10));
    Input_MUX_REG Input_MUX_REG_10(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_10), .sorted_data(sorted_input_10) );
    
    BUF_32bit IBUF_11(.clk(clk), .reset(reset), .data_in(IBUF_data_in_11), .data_out(IBUF_data_out_11));
    Input_MUX_REG Input_MUX_REG_11(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_11), .sorted_data(sorted_input_11) );
    
    BUF_32bit IBUF_12(.clk(clk), .reset(reset), .data_in(IBUF_data_in_12), .data_out(IBUF_data_out_12));
    Input_MUX_REG Input_MUX_REG_12(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_12), .sorted_data(sorted_input_12) );
    
    BUF_32bit IBUF_13(.clk(clk), .reset(reset), .data_in(IBUF_data_in_13), .data_out(IBUF_data_out_13));
    Input_MUX_REG Input_MUX_REG_13(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_13), .sorted_data(sorted_input_13) );
    
    BUF_32bit IBUF_14(.clk(clk), .reset(reset), .data_in(IBUF_data_in_14), .data_out(IBUF_data_out_14));
    Input_MUX_REG Input_MUX_REG_14(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_14), .sorted_data(sorted_input_14) );
    
    BUF_32bit IBUF_15(.clk(clk), .reset(reset), .data_in(IBUF_data_in_15), .data_out(IBUF_data_out_15));
    Input_MUX_REG Input_MUX_REG_15(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_15), .sorted_data(sorted_input_15) );
    
    BUF_32bit IBUF_16(.clk(clk), .reset(reset), .data_in(IBUF_data_in_16), .data_out(IBUF_data_out_16));
    Input_MUX_REG Input_MUX_REG_16(.clk(clk), .reset(reset), .weight_bitwidth(weight_bitwidth), .buffer(IBUF_data_out_16), .sorted_data(sorted_input_16) );

    
    BitFusion_column BitFusion_column_1( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_1_1), .WBUF_data_in_2(WBUF_data_in_1_2), .WBUF_data_in_3(WBUF_data_in_1_3), .WBUF_data_in_4(WBUF_data_in_1_4), .WBUF_data_in_5(WBUF_data_in_1_5), .WBUF_data_in_6(WBUF_data_in_1_6), .WBUF_data_in_7(WBUF_data_in_1_7), .WBUF_data_in_8(WBUF_data_in_1_8), .WBUF_data_in_9(WBUF_data_in_1_9), .WBUF_data_in_10(WBUF_data_in_1_10), .WBUF_data_in_11(WBUF_data_in_1_11), .WBUF_data_in_12(WBUF_data_in_1_12), .WBUF_data_in_13(WBUF_data_in_1_13), .WBUF_data_in_14(WBUF_data_in_1_14), .WBUF_data_in_15(WBUF_data_in_1_15), .WBUF_data_in_16(WBUF_data_in_1_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_1) );
    
    BitFusion_column BitFusion_column_2( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_2_1), .WBUF_data_in_2(WBUF_data_in_2_2), .WBUF_data_in_3(WBUF_data_in_2_3), .WBUF_data_in_4(WBUF_data_in_2_4), .WBUF_data_in_5(WBUF_data_in_2_5), .WBUF_data_in_6(WBUF_data_in_2_6), .WBUF_data_in_7(WBUF_data_in_2_7), .WBUF_data_in_8(WBUF_data_in_2_8), .WBUF_data_in_9(WBUF_data_in_2_9), .WBUF_data_in_10(WBUF_data_in_2_10), .WBUF_data_in_11(WBUF_data_in_2_11), .WBUF_data_in_12(WBUF_data_in_2_12), .WBUF_data_in_13(WBUF_data_in_2_13), .WBUF_data_in_14(WBUF_data_in_2_14), .WBUF_data_in_15(WBUF_data_in_2_15), .WBUF_data_in_16(WBUF_data_in_2_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_2) );
    
    BitFusion_column BitFusion_column_3( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_3_1), .WBUF_data_in_2(WBUF_data_in_3_2), .WBUF_data_in_3(WBUF_data_in_3_3), .WBUF_data_in_4(WBUF_data_in_3_4), .WBUF_data_in_5(WBUF_data_in_3_5), .WBUF_data_in_6(WBUF_data_in_3_6), .WBUF_data_in_7(WBUF_data_in_3_7), .WBUF_data_in_8(WBUF_data_in_3_8), .WBUF_data_in_9(WBUF_data_in_3_9), .WBUF_data_in_10(WBUF_data_in_3_10), .WBUF_data_in_11(WBUF_data_in_3_11), .WBUF_data_in_12(WBUF_data_in_3_12), .WBUF_data_in_13(WBUF_data_in_3_13), .WBUF_data_in_14(WBUF_data_in_3_14), .WBUF_data_in_15(WBUF_data_in_3_15), .WBUF_data_in_16(WBUF_data_in_3_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_3) );
    
    BitFusion_column BitFusion_column_4( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_4_1), .WBUF_data_in_2(WBUF_data_in_4_2), .WBUF_data_in_3(WBUF_data_in_4_3), .WBUF_data_in_4(WBUF_data_in_4_4), .WBUF_data_in_5(WBUF_data_in_4_5), .WBUF_data_in_6(WBUF_data_in_4_6), .WBUF_data_in_7(WBUF_data_in_4_7), .WBUF_data_in_8(WBUF_data_in_4_8), .WBUF_data_in_9(WBUF_data_in_4_9), .WBUF_data_in_10(WBUF_data_in_4_10), .WBUF_data_in_11(WBUF_data_in_4_11), .WBUF_data_in_12(WBUF_data_in_4_12), .WBUF_data_in_13(WBUF_data_in_4_13), .WBUF_data_in_14(WBUF_data_in_4_14), .WBUF_data_in_15(WBUF_data_in_4_15), .WBUF_data_in_16(WBUF_data_in_4_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_4) );
    
    BitFusion_column BitFusion_column_5( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_5_1), .WBUF_data_in_2(WBUF_data_in_5_2), .WBUF_data_in_3(WBUF_data_in_5_3), .WBUF_data_in_4(WBUF_data_in_5_4), .WBUF_data_in_5(WBUF_data_in_5_5), .WBUF_data_in_6(WBUF_data_in_5_6), .WBUF_data_in_7(WBUF_data_in_5_7), .WBUF_data_in_8(WBUF_data_in_5_8), .WBUF_data_in_9(WBUF_data_in_5_9), .WBUF_data_in_10(WBUF_data_in_5_10), .WBUF_data_in_11(WBUF_data_in_5_11), .WBUF_data_in_12(WBUF_data_in_5_12), .WBUF_data_in_13(WBUF_data_in_5_13), .WBUF_data_in_14(WBUF_data_in_5_14), .WBUF_data_in_15(WBUF_data_in_5_15), .WBUF_data_in_16(WBUF_data_in_5_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_5) );
    
    BitFusion_column BitFusion_column_6( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_6_1), .WBUF_data_in_2(WBUF_data_in_6_2), .WBUF_data_in_3(WBUF_data_in_6_3), .WBUF_data_in_4(WBUF_data_in_6_4), .WBUF_data_in_5(WBUF_data_in_6_5), .WBUF_data_in_6(WBUF_data_in_6_6), .WBUF_data_in_7(WBUF_data_in_6_7), .WBUF_data_in_8(WBUF_data_in_6_8), .WBUF_data_in_9(WBUF_data_in_6_9), .WBUF_data_in_10(WBUF_data_in_6_10), .WBUF_data_in_11(WBUF_data_in_6_11), .WBUF_data_in_12(WBUF_data_in_6_12), .WBUF_data_in_13(WBUF_data_in_6_13), .WBUF_data_in_14(WBUF_data_in_6_14), .WBUF_data_in_15(WBUF_data_in_6_15), .WBUF_data_in_16(WBUF_data_in_6_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_6) );
    
    BitFusion_column BitFusion_column_7( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_7_1), .WBUF_data_in_2(WBUF_data_in_7_2), .WBUF_data_in_3(WBUF_data_in_7_3), .WBUF_data_in_4(WBUF_data_in_7_4), .WBUF_data_in_5(WBUF_data_in_7_5), .WBUF_data_in_6(WBUF_data_in_7_6), .WBUF_data_in_7(WBUF_data_in_7_7), .WBUF_data_in_8(WBUF_data_in_7_8), .WBUF_data_in_9(WBUF_data_in_7_9), .WBUF_data_in_10(WBUF_data_in_7_10), .WBUF_data_in_11(WBUF_data_in_7_11), .WBUF_data_in_12(WBUF_data_in_7_12), .WBUF_data_in_13(WBUF_data_in_7_13), .WBUF_data_in_14(WBUF_data_in_7_14), .WBUF_data_in_15(WBUF_data_in_7_15), .WBUF_data_in_16(WBUF_data_in_7_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_7) );
    
    BitFusion_column BitFusion_column_8( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_8_1), .WBUF_data_in_2(WBUF_data_in_8_2), .WBUF_data_in_3(WBUF_data_in_8_3), .WBUF_data_in_4(WBUF_data_in_8_4), .WBUF_data_in_5(WBUF_data_in_8_5), .WBUF_data_in_6(WBUF_data_in_8_6), .WBUF_data_in_7(WBUF_data_in_8_7), .WBUF_data_in_8(WBUF_data_in_8_8), .WBUF_data_in_9(WBUF_data_in_8_9), .WBUF_data_in_10(WBUF_data_in_8_10), .WBUF_data_in_11(WBUF_data_in_8_11), .WBUF_data_in_12(WBUF_data_in_8_12), .WBUF_data_in_13(WBUF_data_in_8_13), .WBUF_data_in_14(WBUF_data_in_8_14), .WBUF_data_in_15(WBUF_data_in_8_15), .WBUF_data_in_16(WBUF_data_in_8_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_8) );
    
    BitFusion_column BitFusion_column_9( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_9_1), .WBUF_data_in_2(WBUF_data_in_9_2), .WBUF_data_in_3(WBUF_data_in_9_3), .WBUF_data_in_4(WBUF_data_in_9_4), .WBUF_data_in_5(WBUF_data_in_9_5), .WBUF_data_in_6(WBUF_data_in_9_6), .WBUF_data_in_7(WBUF_data_in_9_7), .WBUF_data_in_8(WBUF_data_in_9_8), .WBUF_data_in_9(WBUF_data_in_9_9), .WBUF_data_in_10(WBUF_data_in_9_10), .WBUF_data_in_11(WBUF_data_in_9_11), .WBUF_data_in_12(WBUF_data_in_9_12), .WBUF_data_in_13(WBUF_data_in_9_13), .WBUF_data_in_14(WBUF_data_in_9_14), .WBUF_data_in_15(WBUF_data_in_9_15), .WBUF_data_in_16(WBUF_data_in_9_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_9) );
    
    BitFusion_column BitFusion_column_10( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_10_1), .WBUF_data_in_2(WBUF_data_in_10_2), .WBUF_data_in_3(WBUF_data_in_10_3), .WBUF_data_in_4(WBUF_data_in_10_4), .WBUF_data_in_5(WBUF_data_in_10_5), .WBUF_data_in_6(WBUF_data_in_10_6), .WBUF_data_in_7(WBUF_data_in_10_7), .WBUF_data_in_8(WBUF_data_in_10_8), .WBUF_data_in_9(WBUF_data_in_10_9), .WBUF_data_in_10(WBUF_data_in_10_10), .WBUF_data_in_11(WBUF_data_in_10_11), .WBUF_data_in_12(WBUF_data_in_10_12), .WBUF_data_in_13(WBUF_data_in_10_13), .WBUF_data_in_14(WBUF_data_in_10_14), .WBUF_data_in_15(WBUF_data_in_10_15), .WBUF_data_in_16(WBUF_data_in_10_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_10) );
    
    BitFusion_column BitFusion_column_11( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_11_1), .WBUF_data_in_2(WBUF_data_in_11_2), .WBUF_data_in_3(WBUF_data_in_11_3), .WBUF_data_in_4(WBUF_data_in_11_4), .WBUF_data_in_5(WBUF_data_in_11_5), .WBUF_data_in_6(WBUF_data_in_11_6), .WBUF_data_in_7(WBUF_data_in_11_7), .WBUF_data_in_8(WBUF_data_in_11_8), .WBUF_data_in_9(WBUF_data_in_11_9), .WBUF_data_in_10(WBUF_data_in_11_10), .WBUF_data_in_11(WBUF_data_in_11_11), .WBUF_data_in_12(WBUF_data_in_11_12), .WBUF_data_in_13(WBUF_data_in_11_13), .WBUF_data_in_14(WBUF_data_in_11_14), .WBUF_data_in_15(WBUF_data_in_11_15), .WBUF_data_in_16(WBUF_data_in_11_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_11) );
    
    BitFusion_column BitFusion_column_12( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_12_1), .WBUF_data_in_2(WBUF_data_in_12_2), .WBUF_data_in_3(WBUF_data_in_12_3), .WBUF_data_in_4(WBUF_data_in_12_4), .WBUF_data_in_5(WBUF_data_in_12_5), .WBUF_data_in_6(WBUF_data_in_12_6), .WBUF_data_in_7(WBUF_data_in_12_7), .WBUF_data_in_8(WBUF_data_in_12_8), .WBUF_data_in_9(WBUF_data_in_12_9), .WBUF_data_in_10(WBUF_data_in_12_10), .WBUF_data_in_11(WBUF_data_in_12_11), .WBUF_data_in_12(WBUF_data_in_12_12), .WBUF_data_in_13(WBUF_data_in_12_13), .WBUF_data_in_14(WBUF_data_in_12_14), .WBUF_data_in_15(WBUF_data_in_12_15), .WBUF_data_in_16(WBUF_data_in_12_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_12) );
    
    BitFusion_column BitFusion_column_13( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_13_1), .WBUF_data_in_2(WBUF_data_in_13_2), .WBUF_data_in_3(WBUF_data_in_13_3), .WBUF_data_in_4(WBUF_data_in_13_4), .WBUF_data_in_5(WBUF_data_in_13_5), .WBUF_data_in_6(WBUF_data_in_13_6), .WBUF_data_in_7(WBUF_data_in_13_7), .WBUF_data_in_8(WBUF_data_in_13_8), .WBUF_data_in_9(WBUF_data_in_13_9), .WBUF_data_in_10(WBUF_data_in_13_10), .WBUF_data_in_11(WBUF_data_in_13_11), .WBUF_data_in_12(WBUF_data_in_13_12), .WBUF_data_in_13(WBUF_data_in_13_13), .WBUF_data_in_14(WBUF_data_in_13_14), .WBUF_data_in_15(WBUF_data_in_13_15), .WBUF_data_in_16(WBUF_data_in_13_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_13) );
    
    BitFusion_column BitFusion_column_14( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_14_1), .WBUF_data_in_2(WBUF_data_in_14_2), .WBUF_data_in_3(WBUF_data_in_14_3), .WBUF_data_in_4(WBUF_data_in_14_4), .WBUF_data_in_5(WBUF_data_in_14_5), .WBUF_data_in_6(WBUF_data_in_14_6), .WBUF_data_in_7(WBUF_data_in_14_7), .WBUF_data_in_8(WBUF_data_in_14_8), .WBUF_data_in_9(WBUF_data_in_14_9), .WBUF_data_in_10(WBUF_data_in_14_10), .WBUF_data_in_11(WBUF_data_in_14_11), .WBUF_data_in_12(WBUF_data_in_14_12), .WBUF_data_in_13(WBUF_data_in_14_13), .WBUF_data_in_14(WBUF_data_in_14_14), .WBUF_data_in_15(WBUF_data_in_14_15), .WBUF_data_in_16(WBUF_data_in_14_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_14) );
    
    BitFusion_column BitFusion_column_15( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_15_1), .WBUF_data_in_2(WBUF_data_in_15_2), .WBUF_data_in_3(WBUF_data_in_15_3), .WBUF_data_in_4(WBUF_data_in_15_4), .WBUF_data_in_5(WBUF_data_in_15_5), .WBUF_data_in_6(WBUF_data_in_15_6), .WBUF_data_in_7(WBUF_data_in_15_7), .WBUF_data_in_8(WBUF_data_in_15_8), .WBUF_data_in_9(WBUF_data_in_15_9), .WBUF_data_in_10(WBUF_data_in_15_10), .WBUF_data_in_11(WBUF_data_in_15_11), .WBUF_data_in_12(WBUF_data_in_15_12), .WBUF_data_in_13(WBUF_data_in_15_13), .WBUF_data_in_14(WBUF_data_in_15_14), .WBUF_data_in_15(WBUF_data_in_15_15), .WBUF_data_in_16(WBUF_data_in_15_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_15) );

    BitFusion_column BitFusion_column_16( .clk(clk), .reset(reset), 
    .sorted_input_1(sorted_input_1), .sorted_input_2(sorted_input_2), .sorted_input_3(sorted_input_3), .sorted_input_4(sorted_input_4), .sorted_input_5(sorted_input_5), .sorted_input_6(sorted_input_6), .sorted_input_7(sorted_input_7), .sorted_input_8(sorted_input_8), .sorted_input_9(sorted_input_9), .sorted_input_10(sorted_input_10), .sorted_input_11(sorted_input_11), .sorted_input_12(sorted_input_12), .sorted_input_13(sorted_input_13), .sorted_input_14(sorted_input_14), .sorted_input_15(sorted_input_15), .sorted_input_16(sorted_input_16),  
    .WBUF_data_in_1(WBUF_data_in_16_1), .WBUF_data_in_2(WBUF_data_in_16_2), .WBUF_data_in_3(WBUF_data_in_16_3), .WBUF_data_in_4(WBUF_data_in_16_4), .WBUF_data_in_5(WBUF_data_in_16_5), .WBUF_data_in_6(WBUF_data_in_16_6), .WBUF_data_in_7(WBUF_data_in_16_7), .WBUF_data_in_8(WBUF_data_in_16_8), .WBUF_data_in_9(WBUF_data_in_16_9), .WBUF_data_in_10(WBUF_data_in_16_10), .WBUF_data_in_11(WBUF_data_in_16_11), .WBUF_data_in_12(WBUF_data_in_16_12), .WBUF_data_in_13(WBUF_data_in_16_13), .WBUF_data_in_14(WBUF_data_in_16_14), .WBUF_data_in_15(WBUF_data_in_16_15), .WBUF_data_in_16(WBUF_data_in_16_16),
    .sign_x(sign_x), .sign_y(sign_y), .input_bitwidth(input_bitwidth), .signal(signal), .total_output(total_output_16) );

    
endmodule

    
