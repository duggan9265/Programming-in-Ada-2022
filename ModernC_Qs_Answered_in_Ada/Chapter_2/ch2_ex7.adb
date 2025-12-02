with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO;

procedure dollar_bill is

dollar_amt, amt_20, amt_10, amt_5, amt_1 : Integer;

begin

Put("Enter an amount in dollars: $ "); 
Ada.Integer_text_IO.Get(dollar_amt);

amt_20 := dollar_amt/20; -- 93/20 = 4.65 = 4 as Ada behaves like C with regards to truncation
dollar_amt := (dollar_amt - (20*amt_20) ); -- 93 - 20*4 = 13

amt_10 := dollar_amt/10; --13/10 = 1.3 = 1
dollar_amt := (dollar_amt - (10*amt_10)); -- 13- 10*1 = 3

amt_5 := (dollar_amt/5); -- 3/5 = 0
dollar_amt := (dollar_amt - 5*amt_5); -- 3 - 0 = 3

amt_1 := (dollar_amt/1); -- 3/1 = 3

Put("$20 dollar bills: "); -- Putline creates a new line, Put does not
Ada.Integer_Text_IO.Put(amt_20);
New_Line;

Put("$10 dollar bills: "); 
Ada.Integer_Text_IO.Put(amt_10);
New_Line;

Put("$5 dollar bills:  "); 
Ada.Integer_Text_IO.Put(amt_5);
New_Line;

Put("$1 dollar bills:  "); 
Ada.Integer_Text_IO.Put(amt_1);
New_Line;

end dollar_bill;