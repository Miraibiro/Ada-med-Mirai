with Ada.Text_IO;       use Ada.Text_IO;

with Cookie_Handling;   use Cookie_Handling;

procedure Test_Cookie_Greater is

   C1, C2 : Cookie_Type; 
   
begin
   Put("Mata in kaka 1: ");
   Get(C1); 
   Put("Mata in kaka 2: ");
   Get(C2); 
   
   New_Line;
   -- fuck u det ska vara en new_line här, annars blir det inte som körexemplet
     
   Put("Den f�rsta kakan var ");
   if C1 > C2 then
      Put("st�rst.");
   else
      Put("inte st�rst.");
   end if;
   
end Test_Cookie_Greater;
