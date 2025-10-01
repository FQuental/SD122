module cod4x16 (
    input wire [3:0] in,
    output wire [15:0] out
  );
  wire [7:0] saida_baixa;
  wire [7:0] saida_alta;
  cod3x8 cod_baixa (
           .in(in[2:0]),
           .out(saida_baixa)
         );
  cod3x8 cod_alto (
           .in(in[3]),
           .out(saida_alta)
         );
  assign out[8] = |in[3];
  assign out[15:8] = (out[3]) ? saida_alta : saida_baixa;
endmodule