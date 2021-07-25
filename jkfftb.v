
module jkfftb();
  reg j,k,clk,rst;
  wire q;
  
  jkff dut(j,k,clk,rst,q);
  
  initial 
    begin
      clk = 1;
      forever #5 clk = ~clk;
    end
  
  initial 
    begin
      $dumpfile("jkfftb.vcd");
      $dumpvars(0,jkfftb);
      #100 $finish;
    end
  
    initial 
    begin
      j=1;k=0;rst=1;
      #10 rst=0;j=0;k=0;
      #10 j=1;k=0;
      #10 j=0;k=1;
      #10 j=1;k=1;
      #10 rst =1;j=1;k=0;
      #10 rst =0;j=1;k=1;
      #10 j=1;k=1;
      #10 j=1;k=0;
      
      
      end
  
endmodule
