module muxNx1 #(parameter N=3)(
    input wire [3:0] S,
    input wire [N-1:0] D,
    output reg Y
);

