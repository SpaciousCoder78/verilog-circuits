//verilog model: circuit with boolean expressions

module Circuit_Boolean_CA(E,F,A,B,C,D);

    output E,F;
    input A,B,C,D;

    assign E= A||(B&&C)||((!B)&&D); //bool expr
    assign F= ((!B)&&C)||(B&&(!C)&&(!D));//bool expr

endmodule
