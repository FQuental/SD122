module priori16x4 (
    input wire [15:0] in ,
    output reg [3:0] out 
);
    always @(*) begin
        casex (in)
            16'b1xxxxxxxxxxxxxxx: out = 4'b1111; // 15
            16'b01xxxxxxxxxxxxxx: out = 4'b1110; // 14
            16'b001xxxxxxxxxxxxx: out = 4'b1101; // 13
            16'b0001xxxxxxxxxxxx: out = 4'b1100; // 12
            16'b00001xxxxxxxxxxx: out = 4'b1011; // 11
            16'b000001xxxxxxxxxx: out = 4'b1010; // 10
            16'b0000001xxxxxxxxx: out = 4'b1001; // 9
            16'b00000001xxxxxxxx: out = 4'b1000; // 8
            16'b000000001xxxxxxx: out = 4'b0111; // 7
            16'b0000000001xxxxxx: out = 4'b0110; // 6
            16'b00000000001xxxxx: out = 4'b0101; // 5
            16'b000000000001xxxx: out = 4'b0100; // 4
            16'b0000000000001xxx: out = 4'b0011; // 3
            16'b00000000000001xx: out = 4'b0010; // 2
            16'b000000000000001x: out = 4'b0001; // 1
            16'b0000000000000001: out = 4'b0000; // 0
            default: out = 4'b0000; // Caso inválido
        endcase
    end
endmodule