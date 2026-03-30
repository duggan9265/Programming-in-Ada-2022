with Ada.Text_IO;

procedure ch3_ex4 is

   Input : String (1 .. 20);
   Last  : Natural;

   area_code   : String (1 .. 3);
   prefix      : String (1 .. 3);
   line_number : String (1 .. 4);

begin

   Ada.Text_IO.Put ("Enter a Phone Number [(xxx) xxx-xxxx] :");
   Ada.Text_IO.Get_Line (Input, Last);

   area_code := Input (2 .. 4);
   prefix := Input (7 .. 9);
   line_number := Input (11 .. 14);

   Ada.Text_IO.Put (area_code);
   Ada.Text_IO.Put ("." & prefix);
   Ada.Text_IO.Put ("." & line_number);

end ch3_ex4;
