with Ada.Text_IO;
use Ada.Text_IO;

with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

with Ada.Float_Text_IO;
use Ada.Float_Text_IO;

procedure Battre is
   
  I : Integer; 
  S : String (1..I) ;
   
begin
   
   Put("Mata in max 5 tecken: ");
   Get_Line(S,I);
   
     if I>3 then
     loop
      Put ("Mata in max 5: ");
      Get_Line (S,I);
      
      exit when I=3;
      
     end loop;
     end if;
   
   Put (S(1..I));
         
   
end Battre;
