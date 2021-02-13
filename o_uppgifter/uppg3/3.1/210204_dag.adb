With Ada.Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Float_Text_IO;

Procedure Dag is
   
   type Matris is
     array (7..8 , -2..1) of Float;
   -----------------------------------------------------
   
   M : Matris; 
   
begin
   
   Put_Line ("Mata in data:");
   
   for X in reverse 7..8 loop
      for Y in reverse -2..1 loop
	 Get (M (X, Y));
      end loop;
   end loop;
   
   Put_Line ("Följande data finns i fältet:");
   for C in reverse 7..8 loop
      Put ('>');
      for K in reverse -2..1 loop
	 Put (M (C, K), 5,2,0);
      end loop;
      New_Line;
   end loop;
   
	 
end Dag;
