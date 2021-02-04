with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Bro is
   
   -------------------------------------------------
   procedure Inmat (Heltal : out Integer) is
      
   begin
      loop
	 Put ("Mata in stroleken: ");
	 Get (Heltal);
	 exit when Heltal > 0;
	 Put ("Storleken måste vara positiv. ");
      end loop;
   end Inmat;
   -----------------------------------------------------
   --Utskrift av sträcken
   procedure Utskriv (Talet : in Integer) is 
      
   begin 
      for I in 1..Talet loop
	 Put ("|  |");
	 New_Line; 
      end loop;
   end Utskriv ; 
   ---------------------------------------------------------
   
   Size, Halva : Integer;
      
begin
   
   Inmat (Size);
   Halva := Size / 2;     -- halverar talet man matat in 
   
   Utskriv (Halva);       -- första delen
   Put_Line ("====");     -- avgränsning
   Utskriv (Size);        -- andra delen 
   Put_Line ("====");     -- avgränsning 
   Utskriv (Halva);       -- tredeje delen
        
end Bro;
