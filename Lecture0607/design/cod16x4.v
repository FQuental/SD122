module cod16x4 (
    input wire [15:0] in,
    output wire [3:0] out
  );
  wire [2:0] saida_baixa;
  wire [2:0] saida_alta;
  cod8x3 cod_baixa (
           .in(in[7:0]),
           .out(saida_baixa)
         );
  cod8x3 cod_ala (
           .in(in[15:8]),
           .out(saida_alta)
         );
  assign out[3] = |in[15:8];
  assign out[2:0] = (out[3]) ? saida_alta : saida_baixa;
endmodule
