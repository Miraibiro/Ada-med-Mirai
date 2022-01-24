with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure First is
   
   
   function Sum (N : in Integer) return Float is
      F : Float;
   begin
      
      if N = 0 then 
	 return 0.0;
      else 
	 Get (F);
	 return F + Sum (N-1);
      end if;
      
   end Sum;
   -----------------
   
   N : Integer;
   Summa : Float;
   
begin
   
   Put ("Mata in ett heltal N: ");
   Get (N);
   
   loop 
      
      exit when N >= 0;
      
      Put ("Fel! Positivt värde tack. Mata in N: ");
      Get (N);
      Skip_Line;
   end loop;
   
   
   Summa := Sum (N);
   
   Put ("Summan blir: ");
   Put (Summa, 1,1,0);
   
exception
   when Data_Error => 
      Put ("FEL! Det skulle varit heltal.");
   

end First;
