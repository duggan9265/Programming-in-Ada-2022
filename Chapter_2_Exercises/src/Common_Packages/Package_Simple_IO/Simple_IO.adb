with Ada.Text_IO;
with Ada.Float_Text_IO;
use  Ada.Text_IO;
use  Ada.Float_Text_IO;

package body Simple_IO is

   procedure Get(F : out Float) is
   begin
      Get(Item => F);
   end Get;

   procedure Put(F : in Float) is
   begin
      Put(Item => F, Fore => 0, Aft => 2, Exp => 0);
   end Put;

   procedure Puts(S : in String) is
   begin
      Put(S);
   end Puts;

   procedure New_Line(N : in Integer := 1) is
   begin
      Ada.Text_IO.New_Line(Spacing => Ada.Text_IO.Count(N));
   end New_Line;

end Simple_IO;
