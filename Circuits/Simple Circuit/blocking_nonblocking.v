module block_nonblock();
  reg a,b,c,d,e,f;
  //blocking code
  initial begin
    a= #10 1'b1; //simulator assigns 1 to a at time 10
    b= #20 1'b0; //simulator assigns 0 to b at time 30
    c= #40 1'b1; //simulators assigns 1 to c at time 70
  end
  //non blocking code
  initial begin
    d <= #10 1'b1; //simulator assigns to 1 to d at time 10
    e <= #20 1'b0; //simulator assigns to 0 to e at time 20
    f <= #30 1'b1; //simulator assigns to 1 to f at time 30
  end
  end module 
