With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

Procedure  Heros is
   
   type Cash is 
      record 
	 Gold : Integer;
	 Silver : Integer;
	 Cupper : Float; 
      end record; 
   ---------------------------------------------------------
   type Tot_Cash is 
     array (1..10) of Cash;
   -----------------------------------------------------------
   
   procedure Get_Cash (Peng : out Cash) is
      
   begin
      Get (Peng.Gold);
      Get (Peng.Silver);
      Get (Peng.Cupper);
   end Get_Cash;
   -----------------------------------------------------------
   
   function If_Cash_Zero (Peng : in Cash) 
			 return Boolean is
      
   begin 
      if Peng.Gold = 0 and Peng.Silver = 0 and Peng.Cupper = 0.0 then
	 return True;
      else 
	 return False;
      end if;
   end If_Cash_Zero;
   ---------------------------------------------------------------
   
   procedure Put_Cash (Peng : in Cash) is
      
   begin
      Put (Peng.Gold, 2);
      Put (Peng.Silver, 2);
      Put (' ');
      Put (Peng.Cupper, 0,2,0);
   end Put_Cash;
   --------------------------------------------------------------------
   
   function Kolla (Peng : in Cash) 
		  return Boolean is
   begin
      if Peng.Gold < Peng.Silver and Float (Peng.Silver) < Peng.Cupper then
	 return True;
      else 
	 return False;
      end if;
   end Kolla; 
	     
   Pengar : Cash;
   Hero : Tot_Cash;
   I : Integer := 1;
   Antal_Hero : Integer := 0;    
   
begin
   
   Put_Line ("Mata in hjältars pengar i ordning: ");
   
   loop 
      Get_Cash (Pengar);
      exit when If_Cash_Zero (Pengar);
      Hero (I) := Pengar;
      I := I + 1;
   end loop;
   
   Put_Line ("Hjältarnas pengar är:");
   
   for C in 1..I loop
      Put ("Hjälte ");
      Put (C,1);
      Put (':');
      Put_Cash (Hero(C));
      New_Line; 
   end loop;
   
   for C in 1..I loop 
      if Kolla (Hero(C)) then 
	 Antal_Hero := Antal_Hero + 1;
      end if ;
   end loop;
   
   New_Line;
   Put (Antal_Hero,0);
   Put (" hjältar har fler kopparmynt än silver och fler silver än guld.");
   
end Heros;
