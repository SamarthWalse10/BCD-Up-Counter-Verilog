`timescale 1ns / 1ps


module bcd_up_counter(CLK,RST,Q);
input CLK;
input [3:0]RST;
output reg [3:0]Q;

initial begin
    Q = 4'b0000;
end

always @ (negedge CLK or posedge RST) begin
    if (RST == 4'b1111) begin
        Q <= 4'b0000;
    end
    else begin
        if (Q == 4'b1001) begin
            Q <= 0;
        end
        else begin
            Q <= Q + 1'b1;
        end
    end
end

endmodule

