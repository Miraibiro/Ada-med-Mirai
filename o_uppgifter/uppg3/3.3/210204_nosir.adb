With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

Procedure Nosir is
   
   type A1_Type is 
     array (1..3) of Integer;
   ----------------------------------------
   
   type A2_Type is 
     array (4..5) of Float;
   
   ----------------------------------------
   
   type P_Type is
      record 
	 Uno : A1_Type;
	 Dos : A2_Type;
      end record;
   ------------------------------------------
   
   P : P_Type;
   
begin
   
   Put ("Mata in data i fältet A1 i posten P: ");
   for X in A1_Type'Range loop
      Get (P.Uno (X));     
   end loop;
   
   Put ("Mata in data i fältet A2 i posten P: ");
   for Y in reverse A2_Type'Range loop
      Get (P.Dos (Y));
   end loop;
   
   New_Line;
   Put_Line ("Posten innehåller: ");
   Put ("- i delvaraibeln A1: ");
   for C in A1_Type'Range loop
      Put (P.Uno (C), 1);
      Put (' ');
   end loop;
   
   New_Line;
   Put ("- i delvaraibeln A2: ");
   for K in reverse A2_Type'Range loop
      Put (P.Dos (K), Aft=>2, Exp=>0);
      Put(' ');
   end loop;
   
end Nosir;
