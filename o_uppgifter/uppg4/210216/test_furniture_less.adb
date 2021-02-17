with Ada.Text_IO;        use Ada.Text_IO;

with Furniture_Handling; use Furniture_Handling;

procedure Executable_Solution is
   
   Furniture_1, Furniture_2: Furniture_Type;
begin
   Put("Mata in möbel 1: ");
   Get(Furniture_1);
   Put("Mata in möbel 2: ");
   Get(Furniture_2);
   New_Line;
   
   Put("Den första möbeln var ");
   if Furniture_1 < Furniture_2 then
      Put("minst!");
   else
      Put("inte minst!");  
   end if;
end Executable_Solution;
