module Full_Adder (
    input A,B,Cin,
    output S,Cout
);

    assign S = A ^ B ^ Cin;
    assign Cout = Cin & (A ^ B) || (A & B);
    
endmodule