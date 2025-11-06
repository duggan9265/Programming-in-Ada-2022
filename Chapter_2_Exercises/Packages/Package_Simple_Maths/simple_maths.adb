with Ada.Numerics.Elementary_Functions;

package body Simple_Maths is
   function Sqrt(F:float) return float is
   begin
      return Ada.Numerics.Elementary_Functions.Sqrt(F);
   end Sqrt;
end Simple_Maths;