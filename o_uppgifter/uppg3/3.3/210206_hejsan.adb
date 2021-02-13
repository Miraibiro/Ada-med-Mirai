With Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

Procedure Hejsan is
   
   type Coord_Type is
      record 
	 X : Integer;
	 Y : Integer;
	 Z : Integer;
      end record;
      
   ------------------
   type Yttre_Type is
     array (1..2) of Coord_Type;
   ---------------------
   
   Co : Coord_Type;
   Y : Yttre_Type;
   
begin
   
   Put_Line ("Mata in data i datastrukturen:");
   
   for C in Yttre_Type'Range loop
      Get (Co.X);
      Get (Co.Y);
      Get (Co.Z);
      Y(C) := Co;
   end loop;
   
   Put_Line ("Datastrukturen innehåller");
   for C in Yttre_Type'Range loop
      Co := Y(C);
      Put ('(');
      Put (Co.X,0);
      Put (", ");
      Put (Co.Y,0);
      Put (", ");
      Put (Co.Z,0);
      Put (')');
      New_Line;
   end loop;
      
end Hejsan;
