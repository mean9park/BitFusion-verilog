`timescale 1ns / 1ps

// Get 32 bit data from buffer, and
// sort them depending on the bitwidth of Network.
// The thing is that, in all cases output is 32bit!
// ex) 8bit, 8bit case, 8bit value is copied and becomes 32bit!!

// Iprobably have to make different MUX_REG module for Input, Weight..

module Weight_MUX_REG(
    input clk,
    input [1:0] state,
    input reset,
    
    // bit_mode --> reflects total 9 scenarios (2, 4, 8) X (2, 4, 8)
    // However, for 2, 4, 8 bit, each behavior is the same, so 3 cases is enough
    // !!!! for Weight Buffer MUX_REG, it uses the information of Input,
    // !!!! for Input Buffer MUX_REG, it uses the information of Weight
    input [1:0] input_bitwidth,
    
    input [31:0] buffer,
//    output reg [1:0] input_bitwidth,    
    output [31:0] sorted_data
);
  
    assign sorted_data = reset ? 32'b0 : (input_bitwidth == 2'b00 ? buffer : (state == 2'b00 ? (input_bitwidth == 2'b01 ? { buffer[15:8], buffer[15:8], buffer[7:0], buffer[7:0] } : { buffer[7:0], buffer[7:0], buffer[7:0], buffer[7:0] }) : (state == 2'b01 ? (input_bitwidth == 2'b01 ? { buffer[31:24], buffer[31:24], buffer[23:16], buffer[23:16] } : { buffer[15:8], buffer[15:8], buffer[15:8], buffer[15:8] }) : (state == 2'b10 ? { buffer[23:16], buffer[23:16], buffer[23:16], buffer[23:16] } : { buffer[31:24], buffer[31:24], buffer[31:24], buffer[31:24] }) ) ) );
  
    /* reg [1:0] state; */
    /* always @ (posedge clk) */
    /* if (reset) begin */
    /*     sorted_data <= 0; */
	/* state <= 2'b00; */
    /* end */
    /* else if (input_bitwidth == 2'b00) */ 
    /*     sorted_data <= buffer; */
    /* else if (state == 2'b00) begin */ 
    /*     if(input_bitwidth == 2'b01) begin */
    /*         sorted_data <= { buffer[15:8], buffer[15:8], buffer[7:0], buffer[7:0] }; */
    /*         state <= state + 1; */
    /*         end */
    /*     else begin */
    /*         sorted_data <= { buffer[7:0], buffer[7:0], buffer[7:0], buffer[7:0] }; */
    /*         state <= state + 1; */
    /*         end */
    /* end */
    /* else if (state == 2'b01) begin */
    /*     if(input_bitwidth == 2'b01) begin */
    /*         sorted_data <= { buffer[31:24], buffer[31:24], buffer[23:16], buffer[23:16] }; */
    /*         state <= 0; */
    /*         end */
    /*     else begin */
    /*         sorted_data <= { buffer[15:8], buffer[15:8], buffer[15:8], buffer[15:8] }; */
    /*         state <= state + 1; */
    /*         end */
    /* end */
    /* else if (state == 2'b10) begin */
    /*         sorted_data <= { buffer[23:16], buffer[23:16], buffer[23:16], buffer[23:16] }; */
    /*         state <= state + 1; */
    /* end */
    /* else begin */
    /*         sorted_data <= { buffer[31:24], buffer[31:24], buffer[31:24], buffer[31:24] }; */
    /*         state <= 0; */
    /* end */
        
    
endmodule
