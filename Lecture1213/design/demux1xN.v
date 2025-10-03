module demux1xN #(
    parameter N = 8
  )(
    input D,
    input [$clog2(N)-1:0] S,
    output reg [N-1:0] Y
  );
  integer i;
  always @(*)
  begin
    for (i = 0; i < N; i = i + 1)
    begin
      Y[i] = 0;
    end
    if (D)
      Y[S] = 1'b1;
  end
endmodule
