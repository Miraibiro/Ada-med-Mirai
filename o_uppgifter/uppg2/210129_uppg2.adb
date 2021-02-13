With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

Procedure Uppg2 is
   
   -----------------------------------------------------------------
   procedure Inmat (S : out String; I, Tal : out Integer) is
      
   begin
      
      Put ("Mata in en text med maximalt 10 tecken: ");
      Get_Line (S,I);
      Put ("Mata in storlek: ");
      Get (Tal);
   end Inmat;
   -----------------------------------------------------------------
   
   function Kontroll (Talet : in Integer)
		     return Boolean is
   begin 
      if Talet > 5 then 
	 return True;
      else 
	 return False;
      end if;
   end Kontroll;
   ---------------------------------------------------------------------
   
   Ordet : String (1..10);
   Size, I: Integer;
      
begin
   
   Inmat (Ordet, I, Size);
   New_Line;
   
   if Kontroll (Size) then
      Put ("En stor trappa:");
   else 
      Put ("En liten trappa:");
   end if;
   
      
   for C in 1..Size loop
      New_Line;
      Put (Ordet (1..I));
      for K in 1..(C-1) loop
	 for G in 1..I loop
	    Put (' ');
	 end loop;
	 Put (Ordet (1..I));
      end loop;
   end loop;
   
   
end Uppg2;
