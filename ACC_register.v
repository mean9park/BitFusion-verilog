`timescale 1ns / 1ps

// Because it's register(small buffer), 
// we have set the PE_sum_out as reg(registerd)

module ACC_register(
    input clk,
    input reset,
    
    input [19:0] acc_in, 
    output reg [19:0] acc_out
);
    
    always @ (posedge clk)
    if (reset)
        acc_out <= 0;
    else
        acc_out <= acc_in;
        
endmodule
