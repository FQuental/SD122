module decodificador_binario #(
    parameter N = 4,
    parameter M = 1 << N
  )(
    input  wire [N-1:0] in,
    output reg  [M-1:0] out
  );
  always @(*)
  begin
    out = {M{1'b0}};
    out[in] = 1'b1;
  end

endmodule
