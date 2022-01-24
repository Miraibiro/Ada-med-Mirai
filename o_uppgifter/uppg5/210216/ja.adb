with Ada.Text_IO;
use Ada.Text_IO;

procedure Ja is
   
   procedure Do_It_All is 
      S : String (1..4);
   begin
      
      Put ("Mata in ett ord: ");
      Get (S);
      
      if S = "STOP" then
	 null;
      else 
	 Do_It_All;
	 Put_Line (S);
      end if;
      
   end Do_It_All;
   
   
begin
   
   Do_It_All;
   
end Ja;




   
   





	 
	 
