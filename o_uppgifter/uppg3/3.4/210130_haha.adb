With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Command_Line;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Command_Line;

Procedure Haha is
   
   Sum, Tal : Integer;  
   
begin
   if Agrgumet_Count = 0 then
      Put ("Inga data att räkna med.");
   else
      
      Sum := Integer'Value (Argument (1));
      Put (Sum, 0);
      
      if Argument_Count = 1 then 
	 null; 
      else 
	 
	 for C in 2..Argument_Count loop
	    
	    if (C mod 2) = 0 then 
	       if  Argument(C) = "*" then
		  Tal := Integer'Value (Argument (C+1));
		  Sum := Sum * Tal;
		  Put (" * ");
		  Put (Tal,0);
		  
	       elsif Argument(C) = '+' then 
		  Tal := Integer'Value (Argument (C+1));
		  Sum := Sum + Tal;
		  Put (" + ");
		  Put (Tal,0); 
		  
	       end if;
	    end if;
	 end loop;
      end if;
      
      Put (" = ");
      Put (Sum,0);
   end if;
   
   
end Haha;
