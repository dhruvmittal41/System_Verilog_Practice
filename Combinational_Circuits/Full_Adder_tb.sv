module Full_Adder_tb ();
    reg A;
    reg B;
    reg Cin;
    wire S;
    wire Cout;

    Full_Adder Full_Adder0(.A(A),.B(B),.Cin(Cin),.S(S),.Cout(Cout));

    initial begin

        #10 A = 0; B = 0; Cin = 0;
        #10 A = 0; B = 0; Cin = 1; 
        #10 A = 0; B = 1; Cin = 0;
        #10 A = 0; B = 1; Cin = 1;
        #10 A = 1; B = 0; Cin = 0;
        #10 A = 1; B = 0; Cin = 1;
        #10 A = 1; B = 1; Cin = 0;
        #10 A = 1; B = 1; Cin = 1;

        #100 $finish;
    end

    initial begin

        $monitor("Time=%0t A=%b B=%b Cin=%b Cout=%b sum=%b",
                 $time, A, B, Cin, Cout,S);

        $dumpfile("wave.vcd");
        $dumpvars(0, Full_Adder_tb);
        
    end

endmodule