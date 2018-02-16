
module circularTable12(
  input                                    clock,
  input      [3:0] addr,
  output reg [31:0] data
);
  always @(posedge clock) begin
    case (addr)
      4'b0: data <= 32'hc90fdaa2;
      4'b1: data <= 32'h76b19c16;
      4'b10: data <= 32'h3eb6ebf2;
      4'b11: data <= 32'h1fd5ba9b;
      4'b100: data <= 32'hffaaddc;
      4'b101: data <= 32'h7ff556f;
      4'b110: data <= 32'h3ffeaab;
      4'b111: data <= 32'h1fffd55;
      4'b1000: data <= 32'hffffab;
      4'b1001: data <= 32'h7ffff5;
      4'b1010: data <= 32'h3fffff;
      4'b1011: data <= 32'h200000;

      default: data <= 32'h0;
    endcase
  end
endmodule
     