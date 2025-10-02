module mux8x1(
    input [2:0] S,
    input [7:0] D,
    output Y
);
    wire[1:0] LSB;
    LSB = S[1:0];

    mux4x1 I0 (.S(LSB), .D(D) .Y(Y));
    mux4x1 I1 (.S(LSB), .D(D) .Y(Y));
    mux2x1 I3 (.S(S[2]), .D(D) .Y(Y));

    

endmodule