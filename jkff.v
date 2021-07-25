
module jkff(j,k,clk,rst,q);
  input j,k,clk,rst;
  output reg q;
  always @ (posedge clk,posedge rst)
    begin
      if(rst)
        q <= 0;
      else
        begin
          case ({j,k})
            2'b00 : q <= q;
            2'b01 : q <= 0;
            2'b10 : q <= 1;
            2'b11 : q <= ~q;
            default : q<=0;
          endcase 
        end
    end
endmodule
