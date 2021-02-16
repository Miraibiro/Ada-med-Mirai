with Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO;

package body Space_Coordinate_Handling is
   
   procedure Get (C : out Space_Coordinate_Type) is
      Chr : Character;
   begin
      Get (Chr);
      Get (C.X);
      Get (Chr);
      Get (C.Y);
      Get (Chr);
      Get (C.Z);
      Skip_Line;
   end Get;
   
   
   function "<" (Left, Right : in Space_Coordinate_Type) 
		return Boolean is
      L_Tot, R_Tot : Float;
   begin
      
      L_Tot := ((Left.X ** 2) + (Left.Y ** 2) + (Left.Z ** 2));
      R_Tot := ((Right.X ** 2) + (Right.Y ** 2) + (Right.Z ** 2));
      
      if L_Tot < R_Tot then 
	 return True;
      else
	 return False;
      end if;
      
   end "<";
   
end Space_Coordinate_Handling;

