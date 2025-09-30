module codificador_binario #(parameter M = 16, parameter N = $clog2(M)) (
    input  wire [M-1:0] in,
    output reg  [N-1:0] out
  );

  integer i;
  always @(*)
  begin
    out = 0; // valor default
    for (i = 0; i < M; i = i + 1)
    begin
      if (in[i])
        out = i[N-1:0];
    end
  end
endmodule
