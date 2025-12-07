with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Float_Text_IO;

procedure ch3_ex2 is

item_no, m, d, y : Integer;
unit_price : Float;
Slash : Character;

begin

Ada.Text_IO.Put("Enter an item number: ");
Ada.Integer_Text_IO.Get(item_no);
Ada.Text_IO.Put("Enter Unit Price: ");
Ada.Float_Text_IO.Get(unit_price);
Ada.Text_IO.Put("Enter a purchase data (mm/dd/yyyy)");
Ada.Integer_Text_IO.Get(d);
Ada.Text_IO.Get(Slash);
Ada.Integer_Text_IO(m);
Ada.Text_IO.Get(Slash);
Ada.Integer_Text_IO(y);



end ch3_ex2;