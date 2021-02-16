with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body Price_Handling is
   
   procedure Get (P : out Price_Type) is
      C : Character;
   begin
      Get (P.Kr);
      Get(C);
      Get (P.Ore);
   end Get;
   --------------------
   
   function "<" (Left, Right : in Price_Type)
		return Boolean is
   begin
      
      if Left.Kr < Right.Kr then
	 return True;
      elsif Left.Kr = Right.Kr and Left.Ore < Right.Ore then 
	return True;
      else 
	 return False;
      end if;
      
   end "<";
   
end Price_Handling; 
