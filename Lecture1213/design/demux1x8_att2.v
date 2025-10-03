module demux1x8_att2(
    input D,
    input [2:0] S,
    output [7:0] Y
  );
  wire [1:0] w;
  wire [3:0] y0, y1;

  demux1x2 d1 (.D(D), .S(S[2]), .Y(w));

  demux1x4 d2 (.D(w[0]), .S(S[1:0]), .Y(y0));
  demux1x4 d3 (.D(w[1]), .S(S[1:0]), .Y(y1));

  assign Y = {y1, y0};
endmodule
