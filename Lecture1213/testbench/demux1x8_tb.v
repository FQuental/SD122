module demux1x8_tb();
    reg D;
    reg [2:0]S;
    wire [7:0]Y;

    demux1x8 uut (.D(D), .S(S), .Y(Y));
    initial begin
        $monitor("D=%b | S=%b -> Y=%b", D, S, Y);
        D = 0; S = 3'b000; #10;
        D = 0; S = 3'b001; #10;
        D = 0; S = 3'b010; #10;
        D = 0; S = 3'b011; #10;
        D = 0; S = 3'b100; #10;
        D = 0; S = 3'b101; #10;
        D = 0; S = 3'b110; #10;
        D = 0; S = 3'b111; #10;

        D = 1; S = 3'b000; #10;
        D = 1; S = 3'b001; #10;
        D = 1; S = 3'b010; #10;
        D = 1; S = 3'b011; #10;
        D = 1; S = 3'b100; #10;
        D = 1; S = 3'b101; #10;
        D = 1; S = 3'b110; #10;
        D = 1; S = 3'b111; #10;
        $stop;
    end
endmodule