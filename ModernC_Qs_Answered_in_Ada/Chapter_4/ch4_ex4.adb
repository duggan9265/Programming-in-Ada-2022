with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Strings.Fixed; -- used to pad and truncate strings of fixed length.

procedure ch4_ex4 is

   package IO_Int renames Ada.Integer_Text_IO;
   package IO_Text renames Ada.Text_IO;
   package Str renames Ada.Strings.Fixed;

   Decimal : Integer;
   Octal   : Integer;
   Last    : Natural;
   Buffer  : String (1 .. 16);

begin

   IO_Text.Put_Line ("Enter a number between 0 and 32767: ");
   IO_Int.Get (Decimal);

   IO_Text.Put ("In Octal, your number is: ");
   IO_Int.Put (Decimal, Base => 8, Width => 0);
   IO_Text.New_Line;

   IO_Int.Put
     (Buffer, Decimal, Base => 8); -- Stores decimal in octal, inside Buffer

   declare
      -- Ada.Strings.Both removes spaces at the
      -- start AND end of Buffer. Can also be .left or .right.
      -- Strings must be of a fixed length. So we use a declare here which always
      -- takes the size of the trimmed Buffer string.
      Buf_Clean : constant String := Str.Trim (Buffer, Ada.Strings.Both);
   begin
      IO_Text.Put ("Clean output is: ");
      IO_Text.Put
        (Buf_Clean (3 .. Buf_Clean'Length - 1)); -- 8#20#. This removes the 8 and #´s
   end;

end ch4_ex4;
