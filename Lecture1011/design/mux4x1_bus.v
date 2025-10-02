module mux4x1_bus #(
    parameter N = 3
  )(
    input  wire [N-1:0] D0, D1, D2, D3,
    input  wire [1:0]   S,
    output reg  [N-1:0] Y
  );
  always @(*)
  begin
    case (S)
      2'b00:
        Y = D0;
      2'b01:
        Y = D1;
      2'b10:
        Y = D2;
      2'b11:
        Y = D3;
    endcase
  end
endmodule
