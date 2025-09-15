// 4:1 Multiplexer Dataflow 2
module 4_1_mux_df2(Y,I,S);
    input[3:0]I;
    input[1:0]S;
    output Y;

    assign Y=~|S?I[0]:(&S?I[3]:(S[0]?I[1]:I[2]));

endmodule
