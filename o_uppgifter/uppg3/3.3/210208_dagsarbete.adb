with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

Procedure Dagsarbete is
   
   type Data_Type is 
     array (1..10) of String (1..5);
   --------------------------------------------------------
   
   type Stack_Type is 
      record 
	 Last_Data : Integer;
	 Data : Data_Type;
      end record;
   -----------------------------------------------------------
   
   S : Stack_Type;
   
begin
   
   Put_Line ("Mata in fembokstaviga namn i datastrukturen (avsluta med ordet SLUTA):");
   
   for X in Data_Type'Range loop
      Get (S.Data (X));
      exit when S.Data (X) = "SLUTA";
      S.Last_Data := X;
   end loop;
   
   Put ("Datastrukturen innehåller ");
   Put (S.Last_Data,1);
   Put_Line (" inmatade namn.");
   Put_Line ("Utskrivna i omvänd ordning är dessa:");
   
   for C in reverse 1..S.Last_Data loop
      Put (S.Data (C));
      Put (' ');
   end loop;
   
   
end Dagsarbete;
