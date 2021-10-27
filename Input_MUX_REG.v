`timescale 1ns / 1ps

// Get 32 bit data from buffer, and
// sort them depending on the bitwidth of Network.
// The thing is that, in all cases output is 32bit!
// ex) 8bit, 8bit case, 8bit value is copied and becomes 32bit!!

// Iprobably have to make different MUX_REG module for Input, Weight..

module Input_MUX_REG(
    input clk,
    input reset,
    
    // bit_mode --> reflects total 9 scenarios (2, 4, 8) X (2, 4, 8)
    // However, for 2, 4, 8 bit, each behavior is the same, so 3 cases is enough
    // !!!! for Weight Buffer MUX_REG, it uses the information of Input,
    // !!!! for Input Buffer MUX_REG, it uses the information of Weight 
    input [1:0] weight_bitwidth,
    
    input [31:0] buffer, 
    output reg [31:0] sorted_data
);
    
    reg [1:0] state;

    // It's logically right
    
    always @ (posedge clk)
    if (reset) begin
        sorted_data <= 0;
	state <= 2'b00;
    end
    else if (weight_bitwidth == 2'b00) 
        sorted_data <= buffer;
    else if (state == 2'b00) begin 
        if(weight_bitwidth == 2'b01) begin
            sorted_data <= { {2{buffer[15:14]}}, {2{buffer[7:6]}}, {2{buffer[13:12]}}, {2{buffer[5:4]}}, {2{buffer[11:10]}}, {2{buffer[3:2]}}, {2{buffer[9:8]}}, {2{buffer[1:0]}} };
            state <= state + 1;
            end
        else begin
            sorted_data <= { {4{buffer[7:6]}}, {4{buffer[5:4]}}, {4{buffer[3:2]}}, {4{buffer[1:0]}} };
            state <= state + 1;
            end
    end
            
    else if (state == 2'b01) begin
        if(weight_bitwidth == 2'b01) begin
            sorted_data <= { {2{buffer[31:30]}}, {2{buffer[23:22]}}, {2{buffer[29:28]}}, {2{buffer[21:20]}}, {2{buffer[27:26]}}, {2{buffer[19:18]}}, {2{buffer[25:24]}}, {2{buffer[17:16]}} };
            state <= 0;
            end
        else begin
            sorted_data <= { {4{buffer[15:14]}}, {4{buffer[13:12]}}, {4{buffer[11:10]}}, {4{buffer[9:8]}} };
            state <= state + 1;
            end
    end
            
    else if (state == 2'b10) begin
            sorted_data <= { {4{buffer[23:22]}}, {4{buffer[21:20]}}, {4{buffer[19:18]}}, {4{buffer[17:16]}} };
            state <= state + 1;
    end
    
    else begin
            sorted_data <= { {4{buffer[31:30]}}, {4{buffer[29:28]}}, {4{buffer[27:26]}}, {4{buffer[25:24]}} };
            state <= 0;
    end


//    always @ (posedge clk)
//    if (weight_bitwidth == 2'b00) 
//        sorted_data = buffer;
//    else if (state == 2'b00)    
//        if(weight_bitwidth == 2'b01) begin
//            sorted_data <= { buffer[15:8], buffer[15:8], buffer[7:0], buffer[7:0] };
//            state <= state + 1;
//            end
//        else begin
//            sorted_data <= { buffer[7:0], buffer[7:0], buffer[7:0], buffer[7:0] };
//            state <= state + 1;
//            end
            
//    else if (state == 2'b01)    
//        if(weight_bitwidth == 2'b01) begin
//            sorted_data <= { buffer[31:24], buffer[31:24], buffer[23:16], buffer[23:16] };
//            state <= 0;
//            end
//        else begin
//            sorted_data <= { buffer[15:8], buffer[15:8], buffer[15:8], buffer[15:8] };
//            state <= state + 1;
//            end
            
//    else if (state == 2'b10) begin
//            sorted_data <= { buffer[23:16], buffer[23:16], buffer[23:16], buffer[23:16] };
//            state <= state + 1;
//    end
    
//    else begin
//            sorted_data = { buffer[31:24], buffer[31:24], buffer[31:24], buffer[31:24] };
//            state <= 0;
//    end
    

// The most overhead

//    always @ (posedge clk)
//    if (weight_bitwidth == 2'b00) 
//        sorted_data = buffer; 
//    else if ( state==2'b00 ) begin   
//        if(weight_bitwidth == 2'b01) begin
//            sorted_data <= { buffer[29:28], buffer[29:28], buffer[25:24], buffer[25:24], 
//                            buffer[21:20], buffer[21:20], buffer[17:16], buffer[17:16],
//                            buffer[13:12], buffer[13:12], buffer[9:8], buffer[9:8], 
//                            buffer[5:4], buffer[5:4], buffer[1:0], buffer[1:0] };
//            state <= state + 1;
//        end
//        else begin 
//        sorted_data <= { buffer[25:24], buffer[25:24], buffer[25:24], buffer[25:24],
//                        buffer[17:16], buffer[17:16], buffer[17:16], buffer[17:16],
//                        buffer[9:8], buffer[9:8], buffer[9:8], buffer[9:8],
//                        buffer[1:0], buffer[1:0] , buffer[1:0], buffer[1:0] };
//            state <= state + 1;
//        end
//    end
    
//    else if ( state==2'b01 ) begin   
//        if(weight_bitwidth == 2'b01) begin
//            sorted_data <= { buffer[31:30], buffer[31:30], buffer[27:26], buffer[27:26], 
//                            buffer[23:22], buffer[23:22], buffer[19:18], buffer[19:18],
//                            buffer[15:14], buffer[15:14], buffer[11:10], buffer[11:10], 
//                            buffer[7:6], buffer[7:6], buffer[3:2], buffer[3:2] };
//            state <= 0;
//        end
//        else begin 
//            sorted_data <= { buffer[27:26], buffer[27:26], buffer[27:26], buffer[27:26],
//                        buffer[19:18], buffer[19:18], buffer[19:18], buffer[19:18],
//                        buffer[11:10], buffer[11:10], buffer[11:10], buffer[11:10], 
//                        buffer[3:2], buffer[3:2], buffer[3:2], buffer[3:2] };
//            state <= state + 1;
//        end
//    end

//    else if ( state==2'b10 ) begin   
//        sorted_data <= { buffer[29:28], buffer[29:28], buffer[29:28], buffer[29:28],
//                        buffer[21:20], buffer[21:20], buffer[21:20], buffer[21:20],
//                        buffer[13:12], buffer[13:12], buffer[13:12], buffer[13:12],
//                        buffer[5:4], buffer[5:4], buffer[5:4], buffer[5:4] };
//        state <= state + 1;
//    end
    
//    else begin
//        sorted_data <= { buffer[31:30], buffer[31:30], buffer[31:30], buffer[31:30],
//                        buffer[23:22], buffer[23:22], buffer[23:22], buffer[23:22],
//                        buffer[15:14], buffer[15:14], buffer[15:14], buffer[15:14],
//                        buffer[7:6], buffer[7:6], buffer[7:6], buffer[7:6] };    
//        state <= 0;
//    end
        
    
    
endmodule
