with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Happy is
   
   procedure Rad (R : in Integer) is
   begin
      
      if R = 0 then
	 null;
      else
	 
   end Rad;
   
   
   
   procedure Utskriv (N : in Integer) is 
      I : Integer;
   begin
      
      if N = 0 then
	 null;
      else
	 
	 Utskriv (N - 1);
	 Rad (N);
	 New_Line;
      end if;
            
   end Utskriv;
   
   
   N : Integer;
   
begin 
   
   Put ("Mata in storlek (N): ");
   Get (N);
   
   Utskriv (N);
   
end Happy;
