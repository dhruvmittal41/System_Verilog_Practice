module FourtoOne_MUX(
    input logic [3:0] D0,D1,D2,D3,
    input logic [1:0] Sel,
    output logic [3:0] y
);

always_comb begin
    case (Sel)
       2'b00: y = D0;
       2'b01: y = D1;
       2'b10: y = D2;
       2'b11: y = D3;
        default: y = 'b0;
    endcase
    
end
endmodule