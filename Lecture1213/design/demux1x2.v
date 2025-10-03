module demux1x2(
    input D,S,
    output [1:0]Y
);
    assign Y[0] = D & ~S;
    assign Y[1] = D & S;
endmodule