module mux2x1(
    input S,
    input [1:0]D,
    output Y
);
    assign Y = (~S & D[0]) | (S & D[1]);
endmodule