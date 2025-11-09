with Ada.Numerics.Generic_Elementary_Functions;

package body Simple_Maths is
   -- Instantiate the generic math package for type Float
   package Float_Functions is new Ada.Numerics.Generic_Elementary_Functions(Float); -- *see comment at end
   use Float_Functions;

   function Sqrt(F : Float) return Float is
   begin
      return Float_Functions.Sqrt(F);
   end Sqrt;

   function Log(F : Float) return Float is
   begin
      return Float_Functions.Log(F);
   end Log;

   function Exp(F : Float) return Float is
   begin
      return Float_Functions.Exp(F);
   end Exp;

   function Sin(F : Float) return Float is
   begin
      return Float_Functions.Sin(F);
   end Sin;

   function Cos(F : Float) return Float is
   begin
      return Float_Functions.Cos(F);
   end Cos;

end Simple_Maths;

   --  *The line "instantiates" Ada's generic math library for Float.
   --  Ada.Numerics.Generic_Elementary_Functions is a generic package that defines
   --  operations like Sqrt, Log, Exp, Sin, and Cos for any floating-point type.
   --  By writing:
   --      package Float_Functions is new Ada.Numerics.Generic_Elementary_Functions(Float);
   --  we create a concrete version of that package that works specifically with
   --  the type Float.  This gives us Float_Functions.Sqrt, Float_Functions.Sin, etc.
   --  (analogous to making a template instance specialized for Float).*
