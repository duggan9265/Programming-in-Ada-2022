-- Now that we have a new package, we need to use with, and use inside the procedure.
-- The package simple_maths contains a specification (i.e. an interface .ads), and a body
-- i.e. what each interface does (i.e. interface is function sqrt, body carries out the sqrt .adb) 
--  The procedure print_roots becomes:

with simple_maths, simple_io, Ada.Text_IO;

procedure print_roots is
   use simple_io;
   use simple_maths;
   use ada.Text_IO;
   x: float;
begin
   Puts("Enter Float number: ");
   Get(x);
   Puts("The square root is: ");
   Put(Sqrt(x));
   Ada.Text_IO.New_Line;
end print_roots;
