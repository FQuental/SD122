module decodificador_binario_tb ();
  reg [3:0] in;
  wire [15:0] out;

  decodificador_binario #(.N(4)) uut (.in(in), .out(out));

  initial
  begin
    $monitor("in = %b, out = %b", in , out);

    in = 4'b0000;
    #10; // 0  -> 0000
    in = 4'b0001;
    #10; // 1  -> 0001
    in = 4'b0010;
    #10; // 2  -> 0010
    in = 4'b0011;
    #10; // 3  -> 0011
    in = 4'b0100;
    #10; // 4  -> 0100
    in = 4'b0101;
    #10; // 5  -> 0101
    in = 4'b0110;
    #10; // 6  -> 0110
    in = 4'b0111;
    #10; // 7  -> 0111
    in = 4'b1000;
    #10; // 8  -> 1000
    in = 4'b1001;
    #10; // 9  -> 1001
    in = 4'b1010;
    #10; // 10 -> 1010
    in = 4'b1011;
    #10; // 11 -> 1011
    in = 4'b1100;
    #10; // 12 -> 1100
    in = 4'b1101;
    #10; // 13 -> 1101
    in = 4'b1110;
    #10; // 14 -> 1110
    in = 4'b1111;
    #10; // 15 -> 1111

    $stop;
  end
endmodule