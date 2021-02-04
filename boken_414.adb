With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

Procedure Summa_Av_Prime is
  ------------------------------------------------------------ 
   function Ta_Reda (P : in Positive)
		    return Boolean is
      
   begin
      
      for D in 2..(P-1) loop
	 if (P mod D) = 0 then 
	    return False;
	 end if;
      end loop;
      
      return True;
            
   end Ta_Reda;   
      
  ----------------------------------------------------------- 
   function Hitta_Prim (N : in positive) 
		       return positive is
      Prime : Positive;
   begin
      
      if N=1 then 
	 Prime := 2;
      else 
	 Prime := 3;
	 for K in 3..N loop
	    loop
	       Prime := Prime + 2;
	       exit when Ta_Reda (Prime);
	    end loop;
	 end loop;
      end if;
      
      return Prime;
      
   end Hitta_Prim;
  ------------------------------------------------------------ 
   
   Sum : Natural := 0;
   Antal : Natural;  
   
begin
   
   Put ("Mata in antal primtal som ska adderas: ");
   Get (Antal);
   
   for N in 1..Antal loop
      Put (Hitta_Prim(N),1);
      
      if N < Antal then 
	 Put (" + ");
      end if;
      
      Sum := Sum + Hitta_Prim (N);
   end loop;
   
   New_Line;
   Put ("Summan av första ");
   Put (Antal,0);
   Put (" primtalen är: ");
   Put (Sum,1);
   
   --wow
   
end Summa_Av_Prime;
