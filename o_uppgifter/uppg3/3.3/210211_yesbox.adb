With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

Procedure Yesbox is
   
   type Inner_Data is
      record 
	 Data1 : Integer;
	 Data2 : Integer;
      end record;
   -----------------
   
   type Big_Data is
     array (1..4) of Inner_Data;
   -----------------
   
   B : Big_Data ;
   I : Inner_Data;
   
begin
   
   Put_Line ("Mata in 8 stycken heltal:");
   
   for X in Big_Data'Range loop
      Get (I.Data1);
      Get (I.Data2);
      B (X) := I;
   end loop;
   
   Put ("Datastrukturen innehåller följande heltal: ");
   for Y in Big_Data'Range loop
      I := B (Y);
      Put (I.Data1, 0);
      Put (' ');
      Put (I.Data2, 0);
      if Y < 4 then
	 Put (' ');
      end if; 
   end loop;
         
end Yesbox;
