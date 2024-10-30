//simple circuit implementation in verilog with propagation delay uisng test bench
module t_simple_circuit_delay;
    wire D,E;
    reg A,B,C;

    t_simple_circuit_delay M1(A,B,C,D,E);

    //signal activity
    initial
        begin
            A=1'b0; B=1'b0;C=1'b0;
            #100 A=1'b1;B=1'b1;C=1'b1;
        end
    initial #200 $finish;
endmodule
