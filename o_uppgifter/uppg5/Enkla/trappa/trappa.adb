with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Trappa is
   
   function Stenar (N : in Natural) return Natural is
   begin
      
      if N = 1 then
	 return 0;
      else 
	 return (N-1)*(2*(N-1)-1) + Stenar(N - 1);
      end if;
      
   end Stenar;
   
   ------------------
   
   N, Antal_Stenar : Natural;
   
begin
   
   Put ("Mata in husets högd: ");
   Get (N);
   
   Antal_Stenar := Stenar(N);
   
   Put ("Det Blev Sammanlagt" & Natural'Image(Antal_Stenar) & " i trappan.");
   
end Trappa;
