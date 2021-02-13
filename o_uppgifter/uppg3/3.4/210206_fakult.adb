With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Command_Line;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Command_Line;

Procedure Fak is
   
   function Fakult (I : in Integer) 
		   return Integer is
      Sum: Integer := 1;
   begin 
      
      if I = 0 then 
	 null;
      else 
	 for C in 1..I loop
	    Sum := Sum * C;
	 end loop;
      end if;
      return Sum;
      
   end Fakult;
   ------------------------
   
   Total: Integer := 0;
   Sum : Integer;
      
begin
   
   if Argument_Count = 0 then 
      Put ("Du skickade inte med något tal!");
   else
      
      for C in 1..Argument_Count loop
	 Put (Argument (C) & '!');
	 Sum := Fakult (Integer'Value (Argument (C)));
	 Total := Total + Sum;
	 if C < Argument_Count then
	    Put (" + ");
	 end if;
      end loop;
      
      Put (" = ");
      Put (Total, 0);
   end if;
   
   
end Fak;
