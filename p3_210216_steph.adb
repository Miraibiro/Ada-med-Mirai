With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

Procedure Steph is

   type Person_Type is
      record 
	 Namn : String (1..20);
	 I_Length : Integer;    -- längd på namn
	 Id_Pers : Integer;
	 Id_Mor : Integer;
	 Id_Far : Integer;
      end record;
   ----------------------------
   
   type Alla_Personer is
     array (1..10) of Person_Type;
   -----------------------------
   
   
   Antal_Pers, Id : Integer;
   A : Alla_Personer;
   P, Pm, Pf : Person_Type;
   
   
begin
   
   for I in Alla_Personer'Range loop
      
      Put ("Mata in personens namn: ");
      Get_Line (P.Namn, P.I_Length);
      
      if P.Namn (1..P.I_Length) = "SLUTA" then
	 exit;
      end if;
      
      Put ("Mata in ID för ");
      Put (P.Namn (1..P.I_Length));
      Put (": ");
      Get (P.Id_Pers);
      
      Put ("Mata in ID hens mor: ");
      Get (P.Id_Mor);
      
      Put ("Mata in ID hens far: ");
      Get (P.Id_Far);
      
      Antal_Pers := I;
      A (Antal_Pers) := P;
      
      Skip_Line;
      New_Line;
   end loop;
   
   New_Line;
   
   Put ("Mata in en persons ID: ");
   Get (Id);
   
   for C in 1..Antal_Pers loop
      P := A (C);
      
      if P.Id_Pers = Id then 
	 Put (P.Namn (1..P.I_Length));
	 Put ('.');
	 
	 if P.Id_Mor = 0 then -- kolla om mor finns och om inte 0 då vem?
	    null;
	 else 
	    for X in 1..Antal_Pers loop
	       Pm := A (X);
	       if Pm.Id_Pers = P.Id_Mor then 
		  Put (" Mor heter ");
		  Put (Pm.Namn (1..Pm.I_Length));
		  Put ('.');
	       end if;
	    end loop;
	 end if;
	 
	 if P.Id_Far = 0 then -- kolla om far finns och om inte 0 då vem?
	    null;
	 else 
	    for Y in 1..Antal_Pers loop
	       Pf := A (Y);
	       if Pf.Id_Pers = P.Id_Far then 
		  Put (" Far heter ");
		  Put (Pf.Namn (1..Pf.I_Length));
		  Put ('.');
	       end if;
	    end loop;
	 end if; 
      end if;
      
   end loop;
   
   
end Steph;
