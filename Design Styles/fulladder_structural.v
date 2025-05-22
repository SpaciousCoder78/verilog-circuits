module fa_st(s,c,a,b,cin);
  input a,b,cin;
  output s,c;
  wire n1,n2,n3,n4;
  xor xor1(n1,a,b);
  xor xor2(s,n1,cin);
  and and1(n2,a,b);
  and and2(n3,b,cin);
  and and3(n4,cin,a);
  or or1(c,n2,n3,n4);
endmodule
