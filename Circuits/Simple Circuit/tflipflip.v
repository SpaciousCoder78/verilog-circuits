//T flip flop consists of D flip flop with not gate so make an internal model of D ff
module T_FF(q,clk,reset); //defining the ports of t flip flip
  output q; //output from q
  input clk,reset //input from clk, reset
  wire d; //d as wire
  D_FF dff0(q,d,clk,reset); //defining ports of d flip flop as dff0
  not n1(d,q); //not gate defined
  
end module
    
  
  
