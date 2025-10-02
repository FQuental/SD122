module mux4x1_bus_TB();
  parameter N = 3;

  reg  [N-1:0] D0, D1, D2, D3;
  reg  [1:0]   S;
  wire [N-1:0] Y;

  mux4x1_bus #(N) uut (
               .D0(D0), .D1(D1), .D2(D2), .D3(D3),
               .S(S), .Y(Y)
             );

  initial
  begin
    D0 = 3'b001;
    D1 = 3'b010;
    D2 = 3'b100;
    D3 = 3'b111;

    S = 2'b00;
    #10;
    S = 2'b01;
    #10;
    S = 2'b10;
    #10;
    S = 2'b11;
    #10;
    $stop;
  end

  initial
  begin
    $monitor("Tempo=%0t | S=%b | Y=%b | D0=%b D1=%b D2=%b D3=%b",
             $time, S, Y, D0, D1, D2, D3);
  end
endmodule
