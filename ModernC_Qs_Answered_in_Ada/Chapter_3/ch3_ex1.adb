-- Make an example using a contract were year miust have 4 digits entered.

with Ada.Text_IO; --use Ada.Text_IO;
with Ada.Integer_Text_IO;


procedure ch3_ex1 is

d,m,y : Integer;
d_pad_0, m_pad_0 : Integer := 0 ;
Slash : Character;
   
begin

Ada.Text_IO.Put("Enter a date (dd/mm/yyyy): ");

Ada.Integer_Text_IO.Get(d); --Day
Ada.Text_IO.Get(Slash); -- /
Ada.Integer_Text_IO.Get(m); -- month
Ada.Text_IO.Get(Slash); -- /
Ada.Integer_Text_IO.Get(y); -- year

Ada.Text_IO.Put("You entered: ");

if d <10 then
   Ada.Integer_Text_IO.Put(m_pad_0, Width => 1, Base => 10);
   Ada.Integer_Text_IO.Put(d, Width => 1, Base => 10);
else
   Ada.Integer_Text_IO.Put(d, Width => 2, Base => 10);
end if;

Ada.Text_IO.Put("/");

if m <10 then -- Ada reads 02 as 2, so we need to ¨pad¨ with a 0.
   Ada.Integer_Text_IO.Put(d_pad_0, Width => 1, Base => 10);
   Ada.Integer_Text_IO.Put(m, Width => 1, Base => 10);
else
   Ada.Integer_Text_IO.Put(m, Width => 2, Base => 10);
end if;
Ada.Text_IO.Put("/");
Ada.Integer_Text_IO.Put(y, Width => 4, Base => 10);
Ada.Text_IO.New_line;

Ada.Text_IO.Put("This can be output as yyymmdd: ");
Ada.Integer_Text_IO.Put(y, Width => 4, Base => 10);

if m <10 then
   Ada.Integer_Text_IO.Put(d_pad_0, Width => 1, Base => 10);
   Ada.Integer_Text_IO.Put(m, Width => 1, Base => 10);
else
   Ada.Integer_Text_IO.Put(m, Width => 2, Base => 10);
end if;

if d <10 then
   Ada.Integer_Text_IO.Put(m_pad_0, Width => 1, Base => 10);
   Ada.Integer_Text_IO.Put(d, Width => 1, Base => 10);
else
   Ada.Integer_Text_IO.Put(d, Width => 2, Base => 10);
end if;
   
end ch3_ex1;