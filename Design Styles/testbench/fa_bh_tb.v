`timescale 1ns/100ps
module fa_bh_tb;
  reg a,b,cin;
  wire s,c;
  fa_bh fa1(s,c,a,b,cin);
  initial //only once cannot be synthesised
    begin
      $monitor("time = %d \t a = %b \t b = %b \t cin = %b \t s = %b \t c = %b \t", $time, a,b,cin,s,c);
      a=0;
      b=0;
      cin=0; //all zero at time 0
      #10 a=1;
      #10 b=1;
      #10 cin=1;
      #10 $stop;
    end
endmodule
    
