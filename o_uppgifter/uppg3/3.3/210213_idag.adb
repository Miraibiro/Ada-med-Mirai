with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Bara_For_Att is
   
   type Data_Type is
      record 
	 Int : Integer;
      end record;
   
   type Big_Data is
     array (-10..-3) of Data_Type;
   
   B : Big_Data;
   D : Data_Type;
   
begin 
   
   Put_Line ("Mata in 8 stycken heltal:");
   
   for X in Big_Data'Range loop
      Get (D.Int);
      B (X) := D;
   end loop;
   
   Put ("Datastrukturen innehåller följande heltal: ");
   
   for Y in Big_Data'Range loop
      D := B (Y);
      Put (D.Int, 0);
      Put (' ');
   end loop;
   
end Bara_For_Att;
