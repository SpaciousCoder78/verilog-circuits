//behavioral design style
module ha_bh(s,c,a,b);
  input a,b;
  output reg s,c; //reg helps us hold value
  always @(a,b) //Sensitivity list - always block used in behavioral
    begin
      s = a^b;
      c = a&b;
    end
endmodule
