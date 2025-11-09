with Ada.Text_IO;
with Ada.Integer_Text_IO;

use Ada.Text_IO;
use Ada.Integer_Text_IO;

procedure Pascal_Triangle is

   Max_Rows : constant Integer := 5;

   type Pascal_Array is array (Integer range 0 .. Max_Rows) of Integer;
   -- Holds one row of Pascal’s triangle.

   Current : Pascal_Array := (others => 0); -- hold row being printed
   Next    : Pascal_Array := (others => 0); -- row that replaces Current after computation

begin
   Current(0) := 1; -- Row 0 of Pascal’s triangle is 1

   for Row in 0 .. Max_Rows loop -- Iterates from row 0 to row 10.
                                 -- Each iteration prints the row and computes the next one.

      -- print leading spaces to center the triangle
      for S in 1 .. (Max_Rows - Row) loop
         Put(" ");
      end loop; -- so row 0 has 5 spaces, 1 has 4, 3 has 2 etc. creating a triangle

      -- print the row
      for I in 0 .. Row loop
         Put(Current(I), Width => 3); -- pads 3 spaces to the left
      end loop;

      New_Line;

      -- compute next row, first element of each row is always 1
      Next(0) := 1;
      for I in 1 .. Row loop
         Next(I) := Current(I - 1) + Current(I);
      end loop;
      Next(Row + 1) := 1; -- all last elements in each row are 1

      -- Copies the computed row so the algorithm can proceed
      Current := Next;

   end loop;

end Pascal_Triangle;
