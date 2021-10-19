`timescale 1ns / 1ps

// Because it's register(small buffer), 
// we have set the PE_sum_out as reg(registerd)

module PE_register(
    input clk,
    input reset,
    
    input [19:0] PE_sum, 
    output reg [19:0] PE_sum_out
);
    
//    reg temp;
//    always @ (posedge clk)
//    if (reset) begin
//        temp <= 0;
//        PE_sum_out <= 0;
//    end
//    else if (temp == 0) begin
//        temp <= 1;
//        PE_sum_out <= 0;
//    end
//    else
//        PE_sum_out <= PE_sum;

    always @ (posedge clk)
    if (reset)
        PE_sum_out <= 0;
    else
        PE_sum_out <= PE_sum;
        
endmodule
