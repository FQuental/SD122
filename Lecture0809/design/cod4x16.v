module cod4x16 (
    input  wire [3:0] in,
    output wire [15:0] out
  );
  wire [7:0] low_out, high_out;

  cod3x8 dec_low (
           .in(in[2:0]),
           .habilita(~in[3]),
           .out(low_out)
         );

  cod3x8 dec_high (
           .in(in[2:0]),
           .habilita(in[3]),
           .out(high_out)
         );

  assign out = {high_out, low_out};
endmodule
