module muxNx1_TB();
  parameter N = 4;

  reg  [N-1:0] D;
  reg  [$clog2(N)-1:0] S;
  wire Y;

  muxNx1 #(N) uut (.D(D), .S(S), .Y(Y));

  initial
  begin
    D = 4'b0000;

    // Ativa cada entrada de D e seleciona via S
    S = 2'b00;
    D[0] = 1;
    #10;
    S = 2'b01;
    D[1] = 1;
    #10;
    S = 2'b10;
    D[2] = 1;
    #10;
    S = 2'b11;
    D[3] = 1;
    #10;

    $stop;
  end

  initial
  begin
    $monitor("Tempo=%0t | S=%b | D=%b | Y=%b", $time, S, D, Y);
  end
endmodule
