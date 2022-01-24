with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Kf is
   
   procedure Get_N (N : out Integer) is
   begin
      
      Put ("Mata in ett heltal: ");
      Get (N);
      
      loop 
	 exit when N >= 0;
	 
	 loop	    
	    begin 
	       Put ("Fel! Positivt värde tack. Mata in N: ");
	       Get (N);
	       exit;
	    exception 
	       when Data_Error => 
		  Skip_Line;
	    end;
	 end loop;
	 
      end loop;
      
   end Get_N;
   ------------------
   
   function Inmat (N : in Integer) return Integer is
      I : Integer;
   begin
      
      if N = 0 then 
	 return 0;
      else 
	 Get (I);
	 return I + Inmat (N - 1);
      end if;
      
   end Inmat;
   ---------------------
      
   N, Sum : Integer;
   
begin
   
   Get_N (N);
   
   Sum := Inmat (N);
   
   Put ("Summan blir: ");
   Put (Sum,0);
   
end Kf;
