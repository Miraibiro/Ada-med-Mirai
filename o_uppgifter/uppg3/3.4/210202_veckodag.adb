With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Command_Line;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Command_Line;

Procedure Veckodag is
   
   Dag : Integer ;
   
begin
   
   if Argument_Count = 0 then 
      Put ("Mata in ett värde på N: ");
      Get (Dag);
   else
      Dag := Integer'Value (Argument(1));
   end if;
   
   Put ("Den ");
   Put (Dag,0);
   Put (':');
   
   if (Dag mod 10) = 1 and Dag /= 11 then
      Put ('a');
   elsif (Dag mod 10) = 2 and Dag /= 12 then 
      Put('a');
   else 
      Put ('e');
   end if;
      
   if (Dag mod 7) = 1 then 
      Put (" dagen är en måndag");
   elsif (Dag mod 7) = 2 then 
      Put (" dagen är en tisdag");
   elsif (Dag mod 7) = 3 then
      Put (" dagen är en onsdag");
   elsif (Dag mod 7) = 4 then
      Put (" dagen är en torsdag");
   elsif (Dag mod 7) = 5 then
      Put (" dagen är en fredag");
   elsif (Dag mod 7) = 6 then
      Put (" dagen är en lördag");
   elsif (Dag mod 7) = 0 then
      Put (" dagen är en söndag");
   end if; 
   
   
end Veckodag;
