module mux8x1_TB();
  reg [2:0] S;
  reg [7:0] D;
  wire Y;

  mux8x1 uut (.S(S), .D(D), .Y(Y));

  initial
  begin
    D[7:0] = 8'b00000000;

    S = 3'b000;
    #10;
    D[0] = 1;
    #10;
    S = 3'b001;
    #10;
    D[1] = 1;
    #10;
    S = 3'b010;
    #10;
    D[2] = 1;
    #10;
    S = 3'b011;
    #10;
    D[3] = 1;
    #10;
    S = 3'b100;
    #10;
    D[4] = 1;
    #10;
    S = 3'b101;
    #10;
    D[5] = 1;
    #10;
    S = 3'b110;
    #10;
    D[6] = 1;
    #10;
    S = 3'b111;
    #10;
    D[7] = 1;
    #10;

    $stop;
  end

  initial
  begin
    $monitor("Tempo = %0t | S = %b | Y = %b | D = %b", $time, S, Y, D[7:0]);
  end
endmodule
