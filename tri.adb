with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Tri is            -- CLEEEEEEAN!!!
   
   ------------------------------------------------
   procedure Inmat (Tal : out Integer) is
      
   begin
      
      loop
	 Put ("Mata in storleken på trappan: ");
	 Get (Tal);
	 exit when Tal > 0;
	 Put ("Storleken måste vara positiv. ");
      end loop;
      	      
   end Inmat;
   --------------------------------------------------   
   
   procedure Utskrift (Heltal : in Integer) is 
      
   begin
      for I in 1..Heltal loop 
	 for E in 1..I loop
	    Put ('T');
	 end loop;
	 New_Line;
      end loop;
   end Utskrift ;
   -----------------------------------------------------  
   
   I : Integer;
   
begin 
   
   Inmat (I); 
   Utskrift (I);
      
end Tri ;
