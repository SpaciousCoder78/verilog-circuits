//2x4 decoder dataflow

module decode_2_4_df1(Y,I,En);
  input[1:0]I;
  input En;
  output[3:0]Y;

  assign Y = {En & I[1] & I[0], //3
              En & I[1] & ~I[0], //2
              En & ~I[1] & I[0], //1
              En & ~I[1] & ~I[1], //0
             };
  
    endmodule
              
