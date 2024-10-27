//simple circuit implementation in verilog (my first verilog program too)
module simplecircuit(A,B,C,D,E);
    input A,B,C; //defining inputs
    output D,E; //defining outputs
    wire w1; //defining the wire
    and G1(w1,A,B); //defining the AND gate that is connected by w1
    not G2(E,C); //defining the not gate
    or G3(D,w1,E); //performing OR on G1 and G2
endmodule
