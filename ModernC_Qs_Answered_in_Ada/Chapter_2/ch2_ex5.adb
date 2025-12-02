with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO;

Procedure Poly is

x,y : Float;

begin

Put_Line("Enter a value of x: ");
Ada.Float_Text_IO.Get(x);

y := 3.0*(x**5) + 2.0*(x**4) - 5.0*(x**3) - 1.0*(x**2) + 7.0*x - 6.0 ;

Put_Line("The Answer is: ");
Ada.float_Text_IO.Put(y, Fore => 0, aft => 2, Exp => 0);

end Poly;
