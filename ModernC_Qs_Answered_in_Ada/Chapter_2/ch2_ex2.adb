with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Volume is

pi : float := 3.14;
frac : float := 4.0/3.0;
r,v : float;

begin

Put_Line ("Enter a radius: ");
Get(r);


v := pi * frac *(r*r*r);

Put_Line ("The answer is:" & Float'Image(v));


end Volume;
