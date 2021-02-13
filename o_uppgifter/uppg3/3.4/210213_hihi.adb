with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Command_Line;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Command_Line;

procedure Skojjjs_Skull is
   
   Min, Max : Integer := 1;
   Sum : Integer;
begin 
   
   if Argument_Count < 2 then 
      Put (Command_Name);
   else 
      for C in 1..Argument_Count loop
	 
	 if Integer'Value(Argument (C)) < Integer'Value(Argument (Min)) then
	    Min := C;
	 elsif Integer'Value(Argument (C)) > Integer'Value(Argument (Max)) then 
	    Max := C;
	 end if;
	 
      end loop;
      
      Sum := Integer'Value(Argument (Min)) + Integer'Value(Argument (Max));
      
      Put ("Summan av ");
      Put (Argument (Min));
      Put (" och ");
      Put (Argument (Max));
      Put (" är ");
      Put (Sum,0);
   end if;
   
end Skojjjs_Skull;
