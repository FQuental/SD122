module mux8x1(
    input [2:0] S,
    input [7:0] D,
    output Y
  );
  wire [1:0] LSB;
  wire Y0, Y1;

  assign LSB = S[1:0];
  mux4x1 I0 (
           .S(LSB),
           .D(D[3:0]),
           .Y(Y0)
         );
  mux4x1 I1 (
           .S(LSB),
           .D(D[7:4]),
           .Y(Y1)
         );
  mux2x1 I2 (
           .S(S[2]),
           .D({Y1, Y0}),
           .Y(Y)
         );

endmodule
