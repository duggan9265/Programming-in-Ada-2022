-- Make an example using a contract were year miust have 4 digits entered.

with Ada.Text_IO; --use Ada.Text_IO;
with Ada.Integer_Text_IO;


procedure ch3_ex1 is

d,m,y : Integer;
Slash : Character;
   
begin

Ada.Text_IO.Put("Enter a date (dd/mm/yyyy): ");

Ada.Integer_Text_IO.Get(d); --Day
Ada.Text_IO.Get(Slash); -- /
Ada.Integer_Text_IO.Get(m); -- month
Ada.Text_IO.Get(Slash); -- /
Ada.Integer_Text_IO.Get(y); -- year

Ada.Text_IO.Put("You entered: ");
Ada.Integer_Text_IO.Put(d, Width => 2, Base => 10);
Ada.Text_IO.Put("/");
Ada.Integer_Text_IO.Put(m, Width => 2, Base => 10);
Ada.Text_IO.Put("/");
Ada.Integer_Text_IO.Put(y, Width => 4, Base => 10);
Ada.Text_IO.New_line;

Ada.Text_IO.Put("This can be output as yyymmdd: ");
Ada.Integer_Text_IO.Put(y, Width => 4, Base => 10);
Ada.Integer_Text_IO.Put(m, Width => 2, Base => 10);
Ada.Integer_Text_IO.Put(d, Width => 2, Base => 10);
   
end ch3_ex1;