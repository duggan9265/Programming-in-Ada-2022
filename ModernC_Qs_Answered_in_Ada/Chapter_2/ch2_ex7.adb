with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure dollar_bill is

dollar_amt, amt_20, amt_10, amt_5, amt_1 : Integer;

begin

Put_Line("Enter an amount in dollars: $ ");
Ada.Integer_text_IO.Get(dollar_amt);

amt_20 := dollar_amt mod 20; -- 93/20 = 4 r 13
amt_10 := (dollar_amt - )



end dollar_bill;