with Ada.Text_IO; 
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure ch3_ex5 is

a1, b2,c3,d4,e5,f6,g7,h8,i9,j10,k11,l12,m13,n14,o15,p16 : Integer;
row_sum1, row_sum2, row_sum3, row_sum4 : Integer;
col_sum1, col_sum2, col_sum3, col_sum4 : Integer;
diag_sum1, diag_sum2 : Integer;

begin

Ada.Text_IO.Put("Enter 16 numbers in any order: ");
Ada.Integer_Text_IO.Get(a1);  Ada.Integer_Text_IO.Get(b2);  Ada.Integer_Text_IO.Get(c3);  Ada.Integer_Text_IO.Get(d4); 
Ada.Integer_Text_IO.Get(e5);  Ada.Integer_Text_IO.Get(f6);  Ada.Integer_Text_IO.Get(g7);  Ada.Integer_Text_IO.Get(h8); 
Ada.Integer_Text_IO.Get(i9);  Ada.Integer_Text_IO.Get(j10); Ada.Integer_Text_IO.Get(k11); Ada.Integer_Text_IO.Get(l12);
Ada.Integer_Text_IO.Get(m13); Ada.Integer_Text_IO.Get(n14); Ada.Integer_Text_IO.Get(o15); Ada.Integer_Text_IO.Get(p16);

row_sum1 := a1+b2+c3+d4; row_sum2 := e5+f6+g7+h8; 
row_sum3 := i9+j10+k11+l12; row_sum4 := m13+n14+o15+p16;

col_sum1 := a1+e5+i9+m13; col_sum2 := b2+f6+j10+n14; 
col_sum3 := c3+g7+k11+o15; col_sum4 := d4+h8+l12+p16;

diag_sum1 := a1+f6+k11+p16;
diag_sum2 := d4+g7+j10+m13;

Ada.Integer_text_IO.Put(a1); Ada.Integer_text_IO.Put(b2); Ada.Integer_text_IO.Put(c3); Ada.Integer_text_IO.Put(d4);
Ada.Text_IO.New_line;

Ada.Integer_text_IO.Put(e5); Ada.Integer_text_IO.Put(f6); Ada.Integer_text_IO.Put(g7); Ada.Integer_text_IO.Put(h8);
Ada.Text_IO.New_line;

Ada.Integer_text_IO.Put(i9); Ada.Integer_text_IO.Put(j10); Ada.Integer_text_IO.Put(k11); Ada.Integer_text_IO.Put(l12);
Ada.Text_IO.New_line;

Ada.Integer_text_IO.Put(m13); Ada.Integer_text_IO.Put(n14); Ada.Integer_text_IO.Put(o15); Ada.Integer_text_IO.Put(p16);
Ada.Text_IO.New_line;

Ada.Text_IO.Put ("Row sums: ");
Ada.Integer_text_IO.Put(row_sum1); Ada.Integer_text_IO.Put(row_sum2); Ada.Integer_text_IO.Put(row_sum3); Ada.Integer_text_IO.Put(row_sum4);
Ada.Text_IO.New_line;

Ada.Text_IO.Put ("Column sums: ");
Ada.Integer_text_IO.Put(col_sum1); Ada.Integer_text_IO.Put(col_sum2); Ada.Integer_text_IO.Put(col_sum3); Ada.Integer_text_IO.Put(col_sum4);
Ada.Text_IO.New_line;

Ada.Text_IO.Put ("Diagonal sums: ");
Ada.Integer_text_IO.Put(diag_sum1); Ada.Integer_text_IO.Put(diag_sum2);
Ada.Text_IO.New_line;

end ch3_ex5;