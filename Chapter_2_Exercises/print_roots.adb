-- Now that we have a new package, we need to use with, and use inside the procedure.
-- The package simple_maths contains a specification (i.e. an interface .ads), and a body
-- i.e. what each interface does (i.e. interface is function sqrt, body carries out the sqrt .adb) 
--  The procedure print_roots becomes:

with simple_maths, simple_io;

procedure print_roots is
   use simple_io;
   use Simple_Maths;
   x: float;
begin
   Get(x);
   Put(Sqrt(x));
end print_roots;
