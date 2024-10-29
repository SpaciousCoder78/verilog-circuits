//simple circuit implementation in verilog with propagation delay
module simplecircuit(A,B,C,D,E);
    input A,B,C; //defining inputs
    output D,E; //defining outputs
    wire w1; //defining the wire
    and #(30) G1(w1,A,B); //defining the AND gate that is connected by w1 with 30ns delay for AND gate
    not #(10) G2(E,C); //defining the not gate with 10ns delay for NOT gate
    or #(20) G3(D,w1,E); //performing OR on G1 and G2 with 20ns OR gate delay
endmodule
