module muxNx1 #(
    parameter N = 4
  )(
    input  wire [N-1:0] D,
    input  wire [$clog2(N)-1:0] S,
    output reg  Y
  );
  always @(*)
  begin
    Y = D[S];
  end
endmodule
