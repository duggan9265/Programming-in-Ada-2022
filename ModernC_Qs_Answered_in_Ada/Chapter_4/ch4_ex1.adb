with Ada.Text_IO;

procedure ch4_ex1 is
   
   Number : String(1..2);
   Last : Natural;
   N1 : Character; -- String(1); -- This is wrong as must be a range i.e. String(1 .. 1) 
   N2 : Character; --String(2);  -- Better to use Character as that is what these are ultimately.
   
begin
   Ada.Text_IO.Put_Line("Enter a two-digit number");
   Ada.Text_IO.Get_Line(Number, Last);

   N1 := Number(1);
   N2 := Number(2);

   Ada.Text_IO.Put("The reversal is: " &N2&N1);

end ch4_ex1;