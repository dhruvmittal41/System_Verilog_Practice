module flip_flop (
    input clk,
    input resetn,
    input d,
    output reg q);

    always @(posedge clk)

        if (!resetn)
            q <= 0;
        else
            q <= d;
    
endmodule