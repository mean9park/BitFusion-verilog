`timescale 1ns / 1ps

// [Fusion Unit]
//  4 X 4 bitbricks + (4 x 4 shift)
//  17-way adder tree
//  output = p_5 p_4 p_3 p_2 p_1 p_0 (6bit)

module ACC(
    input clk,
    input reset,
    input [19:0] PE_sum,
    
    output reg [27:0] total_output
    );
    
//    wire [27:0] temp;
//    assign temp = { {8{PE_sum[19]}}, PE_sum };
    
//    always @ (posedge clk)
//    if (reset)
//        temp = 0;
//    else
//        temp = PE_sum + temp;


//// Is it the only way??????    
//    assign total_output = temp;
    
    always @ (posedge clk)
    if (reset)
        total_output <= 0;
    else
        total_output <= { {8{PE_sum[19]}}, PE_sum } + total_output;    
    
endmodule