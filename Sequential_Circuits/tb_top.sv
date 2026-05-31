module tb_top ();

    reg clk;
    reg resetn;
    reg d;
    wire q;

    flip_flop flip_flop0(.clk(clk),.resetn(resetn),.d(d),.q(q));

    always #10 clk <= ~clk;

    initial begin
        resetn <= 0;
        clk <= 0;
        d <= 0;

        #10 resetn <= 1;
        #5       d <= 1;
        #8       d <= 0;
        #2       d <= 1;
        #10      d <= 0;

        #50 $finish;
    end

    initial begin
        $monitor("Time=%0t clk=%b resetn=%b d=%b q=%b",
                 $time, clk, resetn, d, q);
    end

    initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_top);
end
    
endmodule