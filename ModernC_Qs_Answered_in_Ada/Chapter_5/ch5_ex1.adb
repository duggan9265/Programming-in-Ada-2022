with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Strings;

procedure ch5_ex1 is

   package IO_Text renames Ada.Text_IO;
   package IO_Int renames Ada.Integer_Text_IO;
   package Str renames Ada.Strings;

   i_Number     : Integer;
   i_Number_mod : Integer;
   cnt          : Integer := 0;

begin

   IO_Text.Put_Line ("Enter a number with no more than 4 digits");
   IO_Int.Get (i_Number);

   -- Ada truncates division towards 0, as in C

   i_Number_mod := i_Number / 10; -- 25/10 = 2.5 = 2

   if i_Number_mod = 0 then
      IO_Text.Put ("The number ");
      IO_Int.Put (i_Number, Width => 0);
      IO_Text.Put (" has 1 digit");
      return;
   else
      cnt := cnt + 1;
      i_Number_mod := i_Number_mod / 10; -- 2.5/10 = 0
   end if;
   
   if i_Number_mod /= 0 then
      cnt := cnt + 1;
      i_Number_mod := i_Number_mod / 10;
   else
      IO_Text.Put ("The number ");
      IO_Int.Put (i_Number, Width => 0);
      IO_Text.Put (" has 2 digits");
      return;
   end if;

   if i_Number_mod /= 0 then
      cnt := cnt + 1;
      i_Number_mod := i_Number_mod / 10;
   else
      IO_Text.Put ("The number ");
      IO_Int.Put (i_Number, Width => 0);
      IO_Text.Put (" has 3 digits");
      return;
   end if;

   if i_Number_mod /= 0 then
      cnt := cnt + 1;
      i_Number_mod := i_Number_mod / 10;
   else
      IO_Text.Put ("The number ");
      IO_Int.Put (i_Number, Width => 0);
      IO_Text.Put (" has 4 digits");
      return;
   end if;
end ch5_ex1;
