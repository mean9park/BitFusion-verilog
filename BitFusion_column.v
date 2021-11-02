`timescale 1ns / 1ps

module BitFusion_column(
    input clk,
    input reset,
    
    // Input data comes from the BUFFER outside the total architecture
    // Output comes from the BUFFER which is near the PE!!!
    input [31:0] sorted_input_1, sorted_input_2, sorted_input_3, sorted_input_4, sorted_input_5, sorted_input_6, sorted_input_7, sorted_input_8, 
    sorted_input_9, sorted_input_10, sorted_input_11, sorted_input_12, sorted_input_13, sorted_input_14, sorted_input_15, sorted_input_16,  
     
    input [31:0] WBUF_data_in_1, WBUF_data_in_2, WBUF_data_in_3, WBUF_data_in_4, WBUF_data_in_5, WBUF_data_in_6, WBUF_data_in_7, WBUF_data_in_8, 
    WBUF_data_in_9, WBUF_data_in_10, WBUF_data_in_11, WBUF_data_in_12, WBUF_data_in_13, WBUF_data_in_14, WBUF_data_in_15, WBUF_data_in_16,
    
    /// Really Global      
    input [3:0] sign_x,
    input [3:0] sign_y,
    input [1:0] input_bitwidth,
    input [1:0] state,
    input [63:0] signal,
    
    output [27:0] total_output
);

    wire [19:0] PE_sum_1, PE_sum_2, PE_sum_3, PE_sum_4, PE_sum_5, PE_sum_6, PE_sum_7, PE_sum_8, 
    PE_sum_9, PE_sum_10, PE_sum_11, PE_sum_12, PE_sum_13, PE_sum_14, PE_sum_15, PE_sum_16;
    
    wire [19:0] PE_sum_out_1, PE_sum_out_2, PE_sum_out_3, PE_sum_out_4, PE_sum_out_5, PE_sum_out_6, PE_sum_out_7, PE_sum_out_8, 
    PE_sum_out_9, PE_sum_out_10, PE_sum_out_11, PE_sum_out_12, PE_sum_out_13, PE_sum_out_14, PE_sum_out_15, PE_sum_out_16;  
    
    wire [31:0] WBUF_data_out_1, WBUF_data_out_2, WBUF_data_out_3, WBUF_data_out_4, WBUF_data_out_5, WBUF_data_out_6, WBUF_data_out_7, WBUF_data_out_8, 
    WBUF_data_out_9, WBUF_data_out_10, WBUF_data_out_11, WBUF_data_out_12, WBUF_data_out_13, WBUF_data_out_14, WBUF_data_out_15, WBUF_data_out_16;
    
    wire [31:0] sorted_weight_1, sorted_weight_2, sorted_weight_3, sorted_weight_4, sorted_weight_5, sorted_weight_6, sorted_weight_7, sorted_weight_8, 
    sorted_weight_9, sorted_weight_10, sorted_weight_11, sorted_weight_12, sorted_weight_13, sorted_weight_14, sorted_weight_15, sorted_weight_16;
    
    // Weight --> BUF_32bit --> MUX_REG --> PE --> PE_REG
    BUF_32bit WBUF_1(.clk(clk), .reset(reset), .data_in(WBUF_data_in_1), .data_out(WBUF_data_out_1));
    Weight_MUX_REG Weight_MUX_REG_1(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_1), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_1));
    PE PE_1(.clk(clk), .reset(reset), .x(sorted_input_1), .y(sorted_weight_1), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(20'b0), .PE_sum(PE_sum_1) );
    PE_register PE_reg_1(.clk(clk), .reset(reset), .PE_sum(PE_sum_1), .PE_sum_out(PE_sum_out_1) );
    
    BUF_32bit WBUF_2(.clk(clk), .reset(reset), .data_in(WBUF_data_in_2), .data_out(WBUF_data_out_2));
    Weight_MUX_REG Weight_MUX_REG_2(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_2), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_2));
    PE PE_2(.clk(clk), .reset(reset), .x(sorted_input_2), .y(sorted_weight_2), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_1), .PE_sum(PE_sum_2) );
    PE_register PE_reg_2(.clk(clk), .reset(reset), .PE_sum(PE_sum_2), .PE_sum_out(PE_sum_out_2) );
    
    BUF_32bit WBUF_3(.clk(clk), .reset(reset), .data_in(WBUF_data_in_3), .data_out(WBUF_data_out_3));
    Weight_MUX_REG Weight_MUX_REG_3(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_3), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_3));
    PE PE_3(.clk(clk), .reset(reset), .x(sorted_input_3), .y(sorted_weight_3), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_2), .PE_sum(PE_sum_3) );
    PE_register PE_reg_3(.clk(clk), .reset(reset), .PE_sum(PE_sum_3), .PE_sum_out(PE_sum_out_3) );
    
    BUF_32bit WBUF_4(.clk(clk), .reset(reset), .data_in(WBUF_data_in_4), .data_out(WBUF_data_out_4));
    Weight_MUX_REG Weight_MUX_REG_4(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_4), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_4));
    PE PE_4(.clk(clk), .reset(reset), .x(sorted_input_4), .y(sorted_weight_4), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_3), .PE_sum(PE_sum_4) );
    PE_register PE_reg_4(.clk(clk), .reset(reset), .PE_sum(PE_sum_4), .PE_sum_out(PE_sum_out_4) );
    
    BUF_32bit WBUF_5(.clk(clk), .reset(reset), .data_in(WBUF_data_in_5), .data_out(WBUF_data_out_5));
    Weight_MUX_REG Weight_MUX_REG_5(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_5), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_5));
    PE PE_5(.clk(clk), .reset(reset), .x(sorted_input_5), .y(sorted_weight_5), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_4), .PE_sum(PE_sum_5) );
    PE_register PE_reg_5(.clk(clk), .reset(reset), .PE_sum(PE_sum_5), .PE_sum_out(PE_sum_out_5) );
    
    BUF_32bit WBUF_6(.clk(clk), .reset(reset), .data_in(WBUF_data_in_6), .data_out(WBUF_data_out_6));
    Weight_MUX_REG Weight_MUX_REG_6(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_6), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_6));
    PE PE_6(.clk(clk), .reset(reset), .x(sorted_input_6), .y(sorted_weight_6), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_5), .PE_sum(PE_sum_6) );
    PE_register PE_reg_6(.clk(clk), .reset(reset), .PE_sum(PE_sum_6), .PE_sum_out(PE_sum_out_6) );
    
    BUF_32bit WBUF_7(.clk(clk), .reset(reset), .data_in(WBUF_data_in_7), .data_out(WBUF_data_out_7));
    Weight_MUX_REG Weight_MUX_REG_7(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_7), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_7));
    PE PE_7(.clk(clk), .reset(reset), .x(sorted_input_7), .y(sorted_weight_7), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_6), .PE_sum(PE_sum_7) );
    PE_register PE_reg_7(.clk(clk), .reset(reset), .PE_sum(PE_sum_7), .PE_sum_out(PE_sum_out_7) );
    
    BUF_32bit WBUF_8(.clk(clk), .reset(reset), .data_in(WBUF_data_in_8), .data_out(WBUF_data_out_8));
    Weight_MUX_REG Weight_MUX_REG_8(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_8), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_8));
    PE PE_8(.clk(clk), .reset(reset), .x(sorted_input_8), .y(sorted_weight_8), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_7), .PE_sum(PE_sum_8) );
    PE_register PE_reg_8(.clk(clk), .reset(reset), .PE_sum(PE_sum_8), .PE_sum_out(PE_sum_out_8) );
    
    BUF_32bit WBUF_9(.clk(clk), .reset(reset), .data_in(WBUF_data_in_9), .data_out(WBUF_data_out_9));
    Weight_MUX_REG Weight_MUX_REG_9(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_9), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_9));
    PE PE_9(.clk(clk), .reset(reset), .x(sorted_input_9), .y(sorted_weight_9), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_8), .PE_sum(PE_sum_9) );
    PE_register PE_reg_9(.clk(clk), .reset(reset), .PE_sum(PE_sum_9), .PE_sum_out(PE_sum_out_9) );
    
    BUF_32bit WBUF_10(.clk(clk), .reset(reset), .data_in(WBUF_data_in_10), .data_out(WBUF_data_out_10));
    Weight_MUX_REG Weight_MUX_REG_10(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_10), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_10));
    PE PE_10(.clk(clk), .reset(reset), .x(sorted_input_10), .y(sorted_weight_10), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_9), .PE_sum(PE_sum_10) );
    PE_register PE_reg_10(.clk(clk), .reset(reset), .PE_sum(PE_sum_10), .PE_sum_out(PE_sum_out_10) );
    
    BUF_32bit WBUF_11(.clk(clk), .reset(reset), .data_in(WBUF_data_in_11), .data_out(WBUF_data_out_11));
    Weight_MUX_REG Weight_MUX_REG_11(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_11), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_11));
    PE PE_11(.clk(clk), .reset(reset), .x(sorted_input_11), .y(sorted_weight_11), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_10), .PE_sum(PE_sum_11) );
    PE_register PE_reg_11(.clk(clk), .reset(reset), .PE_sum(PE_sum_11), .PE_sum_out(PE_sum_out_11) );
    
    BUF_32bit WBUF_12(.clk(clk), .reset(reset), .data_in(WBUF_data_in_12), .data_out(WBUF_data_out_12));
    Weight_MUX_REG Weight_MUX_REG_12(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_12), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_12));
    PE PE_12(.clk(clk), .reset(reset), .x(sorted_input_12), .y(sorted_weight_12), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_11), .PE_sum(PE_sum_12) );
    PE_register PE_reg_12(.clk(clk), .reset(reset), .PE_sum(PE_sum_12), .PE_sum_out(PE_sum_out_12) );
    
    BUF_32bit WBUF_13(.clk(clk), .reset(reset), .data_in(WBUF_data_in_13), .data_out(WBUF_data_out_13));
    Weight_MUX_REG Weight_MUX_REG_13(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_13), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_13));
    PE PE_13(.clk(clk), .reset(reset), .x(sorted_input_13), .y(sorted_weight_13), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_12), .PE_sum(PE_sum_13) );
    PE_register PE_reg_13(.clk(clk), .reset(reset), .PE_sum(PE_sum_13), .PE_sum_out(PE_sum_out_13) );
    
    BUF_32bit WBUF_14(.clk(clk), .reset(reset), .data_in(WBUF_data_in_14), .data_out(WBUF_data_out_14));
    Weight_MUX_REG Weight_MUX_REG_14(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_14), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_14));
    PE PE_14(.clk(clk), .reset(reset), .x(sorted_input_14), .y(sorted_weight_14), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_13), .PE_sum(PE_sum_14) );
    PE_register PE_reg_14(.clk(clk), .reset(reset), .PE_sum(PE_sum_14), .PE_sum_out(PE_sum_out_14) );
    
    BUF_32bit WBUF_15(.clk(clk), .reset(reset), .data_in(WBUF_data_in_15), .data_out(WBUF_data_out_15));
    Weight_MUX_REG Weight_MUX_REG_15(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_15), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_15));
    PE PE_15(.clk(clk), .reset(reset), .x(sorted_input_15), .y(sorted_weight_15), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_14), .PE_sum(PE_sum_15) );
    PE_register PE_reg_15(.clk(clk), .reset(reset), .PE_sum(PE_sum_15), .PE_sum_out(PE_sum_out_15) );

    BUF_32bit WBUF_16(.clk(clk), .reset(reset), .data_in(WBUF_data_in_16), .data_out(WBUF_data_out_16));
    Weight_MUX_REG Weight_MUX_REG_16(.clk(clk), .reset(reset), .state(state), .buffer(WBUF_data_out_16), .input_bitwidth(input_bitwidth), .sorted_data(sorted_weight_16));
    PE PE_16(.clk(clk), .reset(reset), .x(sorted_input_16), .y(sorted_weight_16), .sign_x(sign_x), .sign_y(sign_y), .signal(signal), .previous_sum(PE_sum_out_15), .PE_sum(PE_sum_16) );
    PE_register PE_reg_16(.clk(clk), .reset(reset), .PE_sum(PE_sum_16), .PE_sum_out(PE_sum_out_16) );

    ACC accumulator(.clk(clk), .reset(reset), .PE_sum(PE_sum_out_16), .total_output(total_output) );

endmodule
