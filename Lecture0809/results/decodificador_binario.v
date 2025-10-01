module decodificador_binario #(parameter N = 4, parameter M = $clog2(N)) (
    input  wire [N-1:0] in,
    output reg  [M-1:0] out
  );

  integer i;
  always @(*)
  begin
    out = 0; // valor default
    for (i = 0; i < M; i = i + 1)
    begin
      if (in[i])
        out = i[M-1:0];
    end
  end
endmodule