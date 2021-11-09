`timescale 1ns / 1ps

// [Fusion Unit]
//  4 X 4 bitbricks + (4 x 4 shift)
//  17-way adder tree
//  output = p_5 p_4 p_3 p_2 p_1 p_0 (6bit)

module PE(
    input clk,
    input reset,
    input [31:0] x, 
    input [31:0] y,
    input [3:0] sign_x,
    input [3:0] sign_y,    
    
    input [47:0] signal,
        
    input [19:0] previous_sum,
    
//    output [31:0] input_convey,
    output [19:0] PE_sum
    );
    
    wire [5:0] p [15:0];
   
    wire [15:0] p_shift_0, p_shift_1, p_shift_2, p_shift_3,
    p_shift_4, p_shift_5, p_shift_6, p_shift_7,
    p_shift_8, p_shift_9, p_shift_10, p_shift_11,
    p_shift_12, p_shift_13, p_shift_14, p_shift_15;
    
    bitbrick BB1(.clk(clk), .reset(reset), .x(x[1:0]), .y(y[1:0]), .sign_x(sign_x[0]), .sign_y(sign_y[0]), .p(p[0]));
    bitbrick_shift BBS1(.p(p[0]), .signal(signal[2:0]), .product(p_shift_0));
    bitbrick BB2(.clk(clk), .reset(reset), .x(x[3:2]), .y(y[3:2]), .sign_x(sign_x[0]), .sign_y(sign_y[1]), .p(p[1]));
    bitbrick_shift BBS2(.p(p[1]), .signal(signal[5:3]), .product(p_shift_1));
    bitbrick BB3(.clk(clk), .reset(reset), .x(x[5:4]), .y(y[5:4]), .sign_x(sign_x[0]), .sign_y(sign_y[2]), .p(p[2]));
    bitbrick_shift BBS3(.p(p[2]), .signal(signal[8:6]), .product(p_shift_2));
    bitbrick BB4(.clk(clk), .reset(reset), .x(x[7:6]), .y(y[7:6]), .sign_x(sign_x[0]), .sign_y(sign_y[3]), .p(p[3]));
    bitbrick_shift BBS4(.p(p[3]), .signal(signal[11:9]), .product(p_shift_3));
    
    bitbrick BB5(.clk(clk), .reset(reset), .x(x[9:8]), .y(y[9:8]), .sign_x(sign_x[1]), .sign_y(sign_y[0]), .p(p[4]));
    bitbrick_shift BBS5(.p(p[4]), .signal(signal[14:12]), .product(p_shift_4));
    bitbrick BB6(.clk(clk), .reset(reset), .x(x[11:10]), .y(y[11:10]), .sign_x(sign_x[1]), .sign_y(sign_y[1]), .p(p[5]));
    bitbrick_shift BBS6(.p(p[5]), .signal(signal[17:15]), .product(p_shift_5));
    bitbrick BB7(.clk(clk), .reset(reset), .x(x[13:12]), .y(y[13:12]), .sign_x(sign_x[1]), .sign_y(sign_y[2]), .p(p[6]));
    bitbrick_shift BBS7(.p(p[6]), .signal(signal[20:18]), .product(p_shift_6));
    bitbrick BB8(.clk(clk), .reset(reset), .x(x[15:14]), .y(y[15:14]), .sign_x(sign_x[1]), .sign_y(sign_y[3]), .p(p[7]));
    bitbrick_shift BBS8(.p(p[7]), .signal(signal[23:21]), .product(p_shift_7));
    
    bitbrick BB9(.clk(clk), .reset(reset), .x(x[17:16]), .y(y[17:16]), .sign_x(sign_x[2]), .sign_y(sign_y[0]), .p(p[8]));
    bitbrick_shift BBS9(.p(p[8]), .signal(signal[26:24]), .product(p_shift_8));
    bitbrick BB10(.clk(clk), .reset(reset), .x(x[19:18]), .y(y[19:18]), .sign_x(sign_x[2]), .sign_y(sign_y[1]), .p(p[9]));
    bitbrick_shift BBS10(.p(p[9]), .signal(signal[29:27]), .product(p_shift_9));
    bitbrick BB11(.clk(clk), .reset(reset), .x(x[21:20]), .y(y[21:20]), .sign_x(sign_x[2]), .sign_y(sign_y[2]), .p(p[10]));
    bitbrick_shift BBS11(.p(p[10]), .signal(signal[32:30]), .product(p_shift_10));
    bitbrick BB12(.clk(clk), .reset(reset), .x(x[23:22]), .y(y[23:22]), .sign_x(sign_x[2]), .sign_y(sign_y[3]), .p(p[11]));
    bitbrick_shift BBS12(.p(p[11]), .signal(signal[35:33]), .product(p_shift_11));
    
    bitbrick BB13(.clk(clk), .reset(reset), .x(x[25:24]), .y(y[25:24]), .sign_x(sign_x[3]), .sign_y(sign_y[0]), .p(p[12]));
    bitbrick_shift BBS13(.p(p[12]), .signal(signal[38:36]), .product(p_shift_12));
    bitbrick BB14(.clk(clk), .reset(reset), .x(x[27:26]), .y(y[27:26]), .sign_x(sign_x[3]), .sign_y(sign_y[1]), .p(p[13]));
    bitbrick_shift BBS14(.p(p[13]), .signal(signal[41:39]), .product(p_shift_13));
    bitbrick BB15(.clk(clk), .reset(reset), .x(x[29:28]), .y(y[29:28]), .sign_x(sign_x[3]), .sign_y(sign_y[2]), .p(p[14]));
    bitbrick_shift BBS15(.p(p[14]), .signal(signal[44:42]), .product(p_shift_14));
    bitbrick BB16(.clk(clk), .reset(reset), .x(x[31:30]), .y(y[31:30]), .sign_x(sign_x[3]), .sign_y(sign_y[3]), .p(p[15]));
    bitbrick_shift BBS16(.p(p[15]), .signal(signal[47:45]), .product(p_shift_15));
    
    
    PE_adder ADDER_TREE(

    .p_shift_0(p_shift_0), 
    .p_shift_1(p_shift_1), 
    .p_shift_2(p_shift_2), 
    .p_shift_3(p_shift_3), 
    .p_shift_4(p_shift_4), 
    .p_shift_5(p_shift_5), 
    .p_shift_6(p_shift_6), 
    .p_shift_7(p_shift_7), 
    .p_shift_8(p_shift_8), 
    .p_shift_9(p_shift_9), 
    .p_shift_10(p_shift_10), 
    .p_shift_11(p_shift_11), 
    .p_shift_12(p_shift_12), 
    .p_shift_13(p_shift_13), 
    .p_shift_14(p_shift_14), 
    .p_shift_15(p_shift_15),
    .previous_sum(previous_sum), 
    
    .PE_sum(PE_sum)
    );
 
endmodule

    
