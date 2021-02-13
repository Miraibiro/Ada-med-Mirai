with Ada.Command_Line, Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Command_Line, Ada.Text_IO, Ada.Integer_Text_IO; 

procedure Jado is
   
   Longest : Integer := 1;
   Length_Ord : Integer;
   
begin 
   
   if Argument_Count = 0 then 
      Put ("Du skickade INTE med något till programmet!");
   end if;
   
   for I in 1..Argument_Count loop
      Put ("Argument ");
      Put (I,1);
      Put (": ");
      Put_Line (Argument (I));
      
      if Argument(I)'Length > Argument(Longest)'Length then 
	 Longest := I;
	 Length_Ord := Argument(Longest)'Length;
      end if;
      
   end loop;
   
   Put ("Den längsta textsnutten är nummer ");
   Put (Longest,1);
   Put ('.');
   
end Jado;
