with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body Cookie_Handling is
   
   procedure Get (C : out Cookie_Type) is
      Chr : Character;
   begin
      Get (C.Goodness);
      Get (Chr);
      Get_Line (C.Name, C.I_Length);
   end Get;
   
   
   function ">" (Left, Right : in Cookie_Type)
		return Boolean is
   begin
      
      if Left.Goodness > Right.Goodness then 
	 return True;
      elsif Left.Goodness = Right.Goodness then
	 if Left.Name (1) = Right.Name (1) then 
	    return False;
	 else
	    return True;
	 end if;
      else 
	 return False;
      end if;
      
   end ">";
   
end Cookie_Handling;

	 
	    
