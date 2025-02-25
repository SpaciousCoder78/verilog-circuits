//CMOS inverter
module not_gate(x,f);
  input x;
  output f;

  //internal declaration
  supply1 vdd;
  supply0 gnd;

  //NOT gate body
  pmos p1(f,vdd,x);
  nmos n1(f,gnd,x);

  end module
