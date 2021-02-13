With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

procedure Uppg is
   
   type Flyt_Falt is
     array (2..4) of Float;
   -------------------------------------------------------
   
   type Tot_Falt is 
     array (0..3) of Flyt_Falt;
   -------------------------------------------------------
   
   A : Tot_Falt;  
   
begin 
   
   Put_Line ("Mata in data: ");
   
   for X in reverse Flyt_Falt'Range loop
      for Y in reverse Tot_Falt'Range loop
	 Get (A (Y) (X));
      end loop;
   end loop;
   
   --Skip_Line;
   
   Put_Line ("Följande data finns i fältet:");
   
   for C in reverse Flyt_Falt'Range loop 
      for K in reverse Tot_Falt'Range loop
	 Put (A (K) (C), 0,2,0);
	 Put (' ');
      end loop;
      New_Line;
   end loop;
      
end Uppg;
