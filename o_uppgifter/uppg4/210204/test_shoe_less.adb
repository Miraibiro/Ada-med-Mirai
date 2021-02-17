with Ada.Text_IO;   use Ada.Text_IO;

with Shoe_Handling; use Shoe_Handling;

procedure Test_Shoe_Less is
   
   Shoe_1: Shoe_Type;
   Shoe_2: Shoe_Type;
begin
   Put("Mata in sko 1: ");
   Get(Shoe_1);
   Put("Mata in sko 2: ");
   Get(Shoe_2);
   
   New_Line;
   
   Put("Den första skon var");
   
   if Shoe_1 < Shoe_2 then
      Put(" ");
   else
      Put(" inte ");
   end if;
   
   Put("minst.");
   New_Line;
   
end Test_Shoe_Less;
