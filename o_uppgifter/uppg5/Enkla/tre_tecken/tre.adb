with Ada.Text_IO;
use Ada.Text_IO;

procedure Tre is
   
   procedure Get_Put is
      S : String (1..3);
   begin
      
      Get (S);
      Skip_Line;
      
      if S = "---" then
	 Put_Line ("Du mata in följande reder");
      else
	 Get_Put;
	 Put_Line (S);
      end if;
      
   end Get_Put;
   
begin
   
   Put_Line ("Mata in ett antal rader (3 tecken per rad, avsluta med ""---""):");
   Get_Put;
   
end Tre;

