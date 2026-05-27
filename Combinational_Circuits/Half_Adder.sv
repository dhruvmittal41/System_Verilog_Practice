module Half_Adder (
    input A,B,
    output S,Cout
);

    assign S = A^B;
    assign Cout = A & B;
    
endmodule