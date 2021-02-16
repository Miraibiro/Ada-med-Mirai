with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;


procedure Denna is
   
   function Om_Noll (X : in Integer) 
		    return Boolean is 
      
   begin 
      if X = 0 then 
	 return True;
      else 
	 return False;
      end if;
   end Om_Noll;
   --------------------------------------------------
   
   --------------------------------------------------------
   function Dubbla (I, Bud : in Integer) 
		   return Integer is
   begin 
      return I * (2 ** Bud);
   end Dubbla;
   ---------------------------------------------------------
   
   procedure Addera (Int : in Integer; Bud, Sum : in out Integer) is
      I : Integer;
   begin
      Put ("Läser in tal ");
      Put (Int,0);
      I  := Dubbla (Int , Bud);
      Put (". Summan är nu ");
      Sum := Sum + I ;
      Put (Sum,0);
      Put ('.');
   end Addera;
   ------------------------------------------------------
   
   
   function Del_Tio (Sum : in Integer) return Boolean is
   begin 
      if 
	 return True;
      else
	 return False;
      end if;
   end Del_Tio;
   
   
   -------------------------------------------------------
	 
   
   
   I, Sum, Bud: Integer;
   
begin
   
   Put ("Mata in heltal. Avsluta med 0: ");
   Sum := 0;
   Bud := 0;
   
   loop 
      if (Sum mod 10) = 0 and sum /= 0  then
	 Bud := Bud + 1;
	 Put_Line ("Alla efterföljande tal dubbleras.");
      end if;
      
      Get (I);
      
      exit when Om_Noll (I);
      Addera (I, Bud, Sum);
      New_Line;
                  
   end loop;
   New_Line;
   
   Put ("Summan blev ");
   Put (Sum,0);
   Put('.');
      
   
   
end Denna;
