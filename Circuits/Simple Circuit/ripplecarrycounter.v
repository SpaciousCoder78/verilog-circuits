//T flip flop consists of D flip flop with not gate so make an internal model of D ff
module T_FF(q,clk,reset); //defining the ports of t flip flip
  output q; //output from q
  input clk,reset //input from clk, reset
  wire d; //d as wire
  D_FF dff0(q,d,clk,reset); //defining ports of d flip flop as dff0
  not n1(d,q); //not gate defined
  
end module

//creating ripple carry counter 4 bit by combining 4 t flip flops

  module ripple_carry_counter(q,clk,reset);// defining ports of ripple carry
    output[3:0] q; //signals and vector declarations
    input clk,reset; //i/o signals
    T_FF tff0(q[0],clk,reset); //T FF 1
    T_FF tff1(q[1],clk,reset); //T FF 2
    T_FF tff2(q[2],clk,reset); //T FF 3
    T_FF tff3(q[3],clk,reset); //T FF 4
    end module 
