// Single-bit D Flip-Flop with enable
//   Positive edge triggered
module register
(
output reg	q,
input		d,
input		wrenable,
input		clk
);

    always @(posedge clk) begin
        if(wrenable) begin
            q <= d;
        end
    end

endmodule

//  32-bit register composed funtionally of 32 D flipflops
// Positive edge triggered
module register32
(
output reg[31:0]	q,
input[31:0]		d,
input		wrenable,
input		clk
);

    always @(posedge clk) begin
        if(wrenable) begin
            q <= d;
        end
    end

endmodule


module register32zero
(
output reg[31:0]	q,
input[31:0]		d,
input		wrenable,
input		clk
);

    always @(posedge clk) begin
        if(wrenable) begin
            q <= 0;
        end
    end

endmodule
