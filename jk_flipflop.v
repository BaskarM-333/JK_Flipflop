module jk_flipflop(input j,k,reset,clk,output reg q);
  always @(posedge clk or posedge reset)begin
    if(reset)
      q<=0;
    else if(j&&~k)
      q<=1;
    else if(~j&&k)
      q<=~q;
  end
endmodule
