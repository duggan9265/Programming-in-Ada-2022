with Ada.Text_IO;
with Ada.Integer_Text_IO;
with System.Dim.Generic_Mks;

procedure ch5_ex8 is

   package IO_Text renames Ada.Text_IO;
   package IO_Int renames Ada.Integer_Text_IO;

   i_String                                       : String (1 .. 10);
   Last                                           : Natural;
   i_Hour                                         : integer;
   Hour, Minutes, i_Minutes                       : integer;
   a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p : integer;
   Colon                                          : Character;
   Colon_pos                                      : Natural := 0;

begin

   IO_Text.Put_Line ("Enter a time in the 24 Hour time format hh:mm ");
   IO_Text.Get_line (i_String, Last);

   for i in 1 .. Last loop
      -- Last comes from Get_Line (the string input)
      if i_String (i) = ':' then
         Colon_pos := i;
         exit;
      end if;
   end loop;

   if Colon_pos = 0 then
      IO_Text.Put_Line
        ("You entered an invalid character. Use the Colon : instead");
   end if;

   i_Hour := Integer'Value (i_String (1 .. Colon_pos - 1));
   Colon := i_String (Colon_pos);
   i_Minutes := Integer'Value (i_String (Colon_pos + 1 .. Last));

   Hour := i_Hour * 60;
   Minutes := Hour + i_Minutes;
   a := (8 * 60) + 0;  -- 0800
   b := (9 * 60) + 43;  -- 0943
   c := (11 * 60) + 19;  -- 1119
   d := (12 * 60) + 47;  -- 1247
   e := (14 * 60) + 00;  -- 1400
   f := (15 * 60) + 45;  -- 1545
   g := (19 * 60) + 00;  -- 1900
   h := (21 * 60) + 45;  -- 2145

   i := (a + b) / 2; -- 0800 and 0943
   j := (b + c) / 2; -- 0943 and 1119
   k := (c + d) / 2; -- 1119 and 1247
   l := (d + e) / 2; -- 1247 and 1400
   m := (e + f) / 2; -- 1400 and 1545
   n := (f + g) / 2; -- 1545 and 1900
   o := (g + h) / 2; -- 1900 and 2145
   p := (h + (a + (24*60))) / 2; -- 2145 and 0800, need 24*60 to handle midnight wrap around

   if Minutes >= p or Minutes < i then -- Or to handle midnight wrap around
      IO_Text.Put
        ("Closest departure time is 8:00 a.m. arriving at 10:16 a.m. ");
   end if;

   if Minutes >= i and Minutes < j then
      IO_Text.Put
        ("Closest departure time is 9:43 a.m. arriving at 11:52 a.m. ");
   end if;

   if Minutes >= j and Minutes < k then
      IO_Text.Put
        ("Closest departure time is 11:19 a.m. arriving at 1:31 p.m. ");
   end if;

   if Minutes >= k and Minutes < l then
      IO_Text.Put
        ("Closest departure time is 12:47 p.m. arriving at 3:00 p.m. ");
   end if;

   if Minutes >= l and Minutes < m then
      IO_Text.Put
        ("Closest departure time is 2:00 p.m. arriving at 4:08 p.m. ");
   end if;

   if Minutes >= m and Minutes < n then
      IO_Text.Put
        ("Closest departure time is 3:45 p.m. arriving at 5:55 p.m. ");
   end if;

   if Minutes >= n and Minutes < o then
      IO_Text.Put
        ("Closest departure time is 7:00 p.m. arriving at 9:20 p.m. ");
   end if;

   if Minutes >= o and Minutes < p then
      IO_Text.Put
        ("Closest departure time is 9:45 p.m. arriving at 11:58 p.m. ");
   end if;

end ch5_ex8;
