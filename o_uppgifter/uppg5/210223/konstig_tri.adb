with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Konstig_Tri is 
   
   procedure Utskriv (I, I_Org : in Integer; S : in String) is
      
      procedure Rad (I: in Integer; S : in String) is
	 
	 procedure Mellan (I : in Integer) is
	 begin
	    if I = 0 then
	       null;
	    else
	       Mellan (I - 1);
	       Put (' ');
	    end if;
	 end Mellan;	 
	 
      begin	 
	 Mellan (I - 1);	 
	 Put (S (I_Org-I+1));
	 New_Line;	 
      end Rad;   
      
   begin
      if I = 0 then 
	 null;
      else 
	 Utskriv (I - 1,I_Org, S);
	 Rad (I, S);	
      end if;
      
   end Utskriv;  
   -----------------
   
   procedure Utskriv_2 (I, Fuck: in Integer; S : in String) is
      
      procedure Rad (I: in Integer; S : in String) is
	 
	 procedure Mellan (I : in Integer) is
	 begin
	    if I = 0 then
	       null;
	    else
	       Mellan (I - 1);
	       Put (' ');
	    end if;
	 end Mellan;
	 
      begin
	 
	 Mellan (I - 1);
	 Put (S (Fuck-I+1));
	 New_Line;
	 
      end Rad;
      
   begin
      
      if I = Fuck then 
	 null;
      else
	 Utskriv_2 (I+1, fuck,S);
	 Rad (I, S);
      end if;
      
   end Utskriv_2;  
   
   I : Integer;
   S : String (1..I);
   
begin
   
   Put ("Mata in ett heltal: ");
   Get_Line (S, I);
   
   Utskriv (I, I, S);
   
   Utskriv_2 (1, I ,S);
   
end Konstig_Tri;
