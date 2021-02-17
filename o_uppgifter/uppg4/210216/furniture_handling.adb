with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

package body Furniture_Handling is
   
   
   procedure Get (F : out Furniture_Type) is
      C : Character;
   begin 
      Get (F.L);
      Get (C);
      Get (F.D);
      Get (C);
      Get (F.H);
      Get (C);
      
      Get_Line (F.Name, F.I_Length);
      
   end Get;
   
   
   function "<" (Left, Right : in Furniture_Type) -- det står > ist för < i uppgiften
		return Boolean is
      A1, A2 : Integer;
   begin
      
      A1 := Left.L * Left.D * Left.H;
      A2 := Right.L * Right.D * Right.H;
      
      if A1 < A2 then 
	 return True;
      elsif A1 = A2 then
	 if Left.I_Length < Right.I_Length then 
	    return True;
	 else 
	    return False;
	 end if;
      else 
	 return False;
	 
      end if;
      
   end "<";
   
end Furniture_Handling;

	   
