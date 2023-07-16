`timescale 1ns / 1ps


module bcd_up_counter_tb();
reg tCLK;
reg [3:0]tRST;
wire [3:0]tQ;

bcd_up_counter dut(.CLK(tCLK), .RST(tRST), .Q(tQ));

initial begin
    tRST = 4'b1111;
    #6 tRST = 4'b0000;
    #330 tRST = 4'b1111;
    #3 tRST = 4'b0000;
    #460 tRST = 4'b1111;
    #24 tRST = 4'b0000;
end

initial begin   
    tCLK = 0;
    forever #5 tCLK = ~tCLK;
end

endmodule

