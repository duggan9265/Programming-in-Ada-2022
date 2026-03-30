with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Strings;

procedure ch4_ex6 is 

   package IO_Text renames Ada.Text_IO;
   package IO_Int renames Ada.Integer_Text_IO;

   EAN : String (1 .. 12);
   Check_Digit, First_Sum, Second_Sum, Total_Sum : Integer;   

begin
   
   IO_Text.Put_Line ("Enter the first 12 digits of the EAN");
   IO_Text.Get(EAN);
   
   -- Character'Pos('0') means “What is the numeric position of '0' inside the Character type?”
   -- In Ada the standard Character type is based on the ASCII character set.
   -- So '0' = 48, '1' = 49, ..., '9' = 57
   -- Subtracting Character'Pos('0') converts a digit character to its integer value

   -- In Ada ' indicates and attribute of a type or object i.e. type_or_object'Attribute.
   -- An attribute is a built-in way to get information about a type or object, or to 
   -- perform a standard operation on it.
   -- Character'Pos('3') -->	position (ASCII value)
   -- Integer'Image(5)	 -->  convert to string
   -- EAN'First	       -->  first index of string

   First_Sum := Character'Pos(EAN(EAN'First+1))   - Character'Pos('0') -- " " expects type string
               + Character'Pos(EAN(EAN'First+3))  - Character'Pos('0') -- ' ' expects type character
               + Character'Pos(EAN(EAN'First+5))  - Character'Pos('0') -- Could have used EAN(2), EAN(3)
               + Character'Pos(EAN(EAN'First+7))  - Character'Pos('0') -- instand of EAN'First+1 etc.
               + Character'Pos(EAN(EAN'First+9))  - Character'Pos('0') 
               + Character'Pos(EAN(EAN'First+11)) - Character'Pos('0'); -- numeric position of character EAN(12)
                                                                        -- inside ASCII - numeric position
                                                                        -- of character '0'.

   Second_Sum := Character'Pos(EAN(EAN'First))    - Character'Pos('0')
               + Character'Pos(EAN(EAN'First+2))  - Character'Pos('0')
               + Character'Pos(EAN(EAN'First+4))  - Character'Pos('0')
               + Character'Pos(EAN(EAN'First+6))  - Character'Pos('0')
               + Character'Pos(EAN(EAN'First+8))  - Character'Pos('0')
               + Character'Pos(EAN(EAN'First+10))  - Character'Pos('0');

   First_Sum := First_Sum * 3;

   Total_Sum := First_Sum + Second_Sum;
   Total_Sum := Total_Sum - 1;
   Total_Sum := Total_Sum mod 10;

   Check_Digit := 9 - Total_Sum;

   IO_Text.Put("Check Digit: ");
   IO_Int.Put(Check_Digit);
   IO_Text.New_Line;

end ch4_ex6;