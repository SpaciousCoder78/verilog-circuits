module halfadder(s,c,a,b); //module for HA
  input a,b; //inputs a and b
  output s,c; //sum and carry
  assign s = a^b; //^ is XOR in verilog
  assign c = a&b; // carry
endmodule
  
