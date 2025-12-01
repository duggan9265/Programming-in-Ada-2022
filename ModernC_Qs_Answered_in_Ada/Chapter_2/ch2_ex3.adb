with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

Procedure Added_tax is

amount, amount_w_tax : Float;
tax : Float := 0.05;

begin

Put_line("Enter an amount: "); Get(amount);

amount_w_tax := amount + (amount*0.05);

Put_Line ("With tax added: $");
Put(amount_w_tax, Fore => 0, Aft => 2, Exp => 0);

end Added_tax;