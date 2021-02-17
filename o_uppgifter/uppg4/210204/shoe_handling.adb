with Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO;

package body Shoe_Handling is
   
   procedure Get (Shoe : out Shoe_Type) is
   begin 
      Get (Shoe.Size);
      
      Get_Line (Shoe.Namn, Shoe.I_Langd);
   end Get;
   
   
   function "<" (Left, Right : in Shoe_Type) 
		return Boolean is
   begin
      if Left.Size <= Right.Size then 
	 return True;
      else 
	 return False;
      end if;
   end "<";
   
end Shoe_Handling;
