module DelaySuite_RegInitCondUpdate_1(input clk, input reset,
    input  io_in,
    output[31:0] io_out
);

  wire[31:0] T0;
  reg[0:0] res;
  wire T1;

`ifndef SYNTHESIS
  integer initvar;
  initial begin
    #0.002;
    res = {1{$random}};
  end
`endif

  assign io_out = T0;
  assign T0 = {31'h0, res};
  assign T1 = res + 1'h1;

  always @(posedge clk) begin
    if(reset) begin
      res <= 1'h0;
    end else if(io_in) begin
      res <= T1;
    end
  end
endmodule

