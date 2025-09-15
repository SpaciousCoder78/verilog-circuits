//4:1 Multiplexer Dataflow 1
module mux_4_1_df1(Y,I,S)
    input [3:0]I;
    input [1:0]S;
    output Y;

    assign Y=I[S];

endmodule
