`timescale 1ns / 1ps

module PE_adder(
    input [7:0] sum_signal,

    input [7:0] p_shift_0, 
    input [7:0] p_shift_1,
    input [7:0] p_shift_2,
    input [7:0] p_shift_3,
    input [7:0] p_shift_4,
    input [7:0] p_shift_5,
    input [7:0] p_shift_6,
    input [7:0] p_shift_7,
    input [7:0] p_shift_8,
    input [7:0] p_shift_9,
    input [7:0] p_shift_10,
    input [7:0] p_shift_11,
    input [7:0] p_shift_12,
    input [7:0] p_shift_13,
    input [7:0] p_shift_14,
    input [7:0] p_shift_15,
    input [19:0] previous_sum,
    
    output [19:0] PE_sum
);

    // 4 numbers summation
    wire [9:0] p_shift_extend [15:0]; 
    
    assign p_shift_extend[0] = { {2{p_shift_0[7]}}, p_shift_0 };
    assign p_shift_extend[1] = { {2{p_shift_1[7]}}, p_shift_1 };
    assign p_shift_extend[2] = { {2{p_shift_2[7]}}, p_shift_2 };
    assign p_shift_extend[3] = { {2{p_shift_3[7]}}, p_shift_3 };
    assign p_shift_extend[4] = { {2{p_shift_4[7]}}, p_shift_4 };
    assign p_shift_extend[5] = { {2{p_shift_5[7]}}, p_shift_5 };
    assign p_shift_extend[6] = { {2{p_shift_6[7]}}, p_shift_6 };
    assign p_shift_extend[7] = { {2{p_shift_7[7]}}, p_shift_7 };
    assign p_shift_extend[8] = { {2{p_shift_8[7]}}, p_shift_8 };
    assign p_shift_extend[9] = { {2{p_shift_9[7]}}, p_shift_9 };
    assign p_shift_extend[10] = { {2{p_shift_10[7]}}, p_shift_10 };
    assign p_shift_extend[11] = { {2{p_shift_11[7]}}, p_shift_11 };
    assign p_shift_extend[12] = { {2{p_shift_12[7]}}, p_shift_12 };
    assign p_shift_extend[13] = { {2{p_shift_13[7]}}, p_shift_13 };
    assign p_shift_extend[14] = { {2{p_shift_14[7]}}, p_shift_14 };
    assign p_shift_extend[15] = { {2{p_shift_15[7]}}, p_shift_15 };
    
    wire [9:0] p_shift_sum_1;
    wire [9:0] p_shift_sum_2;
    wire [9:0] p_shift_sum_3;
    wire [9:0] p_shift_sum_4;

    assign p_shift_sum_1 = p_shift_extend[0] + p_shift_extend[1] + p_shift_extend[2] + p_shift_extend[3]; 
    assign p_shift_sum_2 = p_shift_extend[4] + p_shift_extend[5] + p_shift_extend[6] + p_shift_extend[7]; 
    assign p_shift_sum_3 = p_shift_extend[8] + p_shift_extend[9] + p_shift_extend[10] + p_shift_extend[11]; 
    assign p_shift_sum_4 = p_shift_extend[12] + p_shift_extend[13] + p_shift_extend[14] + p_shift_extend[15]; 

//    wire [19:0] adder_1; 
//    wire [19:0] adder_2;
//    wire [19:0] adder_3;
//    wire [19:0] adder_4;
    
//    assign adder_1 = { {p_shift_extend[0] + p_shift_extend[1] + p_shift_extend[2] + p_shift_extend[3]} } << (sum_signal[1:0] * 4); 
//    assign adder_2 = { {p_shift_extend[4] + p_shift_extend[5] + p_shift_extend[6] + p_shift_extend[7])} } << (sum_signal[3:2] * 4); 
//    assign adder_3 = { {p_shift_extend[8] + p_shift_extend[9] + p_shift_extend[10] + p_shift_extend[11])} } << (sum_signal[5:4] * 4); 
//    assign adder_4 = { {p_shift_extend[12] + p_shift_extend[13] + p_shift_extend[14] + p_shift_extend[15])} } << (sum_signal[7:6] * 4); 

    assign PE_sum = ( { {10{p_shift_sum_1[9]}}, p_shift_sum_1} << (sum_signal[1:0]*4)) + 
			( { {10{p_shift_sum_2[9]}}, p_shift_sum_2} << (sum_signal[3:2]*4)) + 
			( { {10{p_shift_sum_3[9]}}, p_shift_sum_3} << (sum_signal[5:4]*4)) + 
			( { {10{p_shift_sum_4[9]}}, p_shift_sum_4} << (sum_signal[7:6]*4)) +
			previous_sum; 
//    assign PE_sum =  adder_1 + adder_2 + adder_3 + adder_4 + previous_sum;
    
endmodule
