with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Klurig is
   
   type Array_Type is
     array (1..10) of Integer;
   
   -------------
   
   procedure Inmat (A: out Array_Type; I : in Integer) is
      
   begin
      if I > 10 then
	 null;
      else
	 Get (A(I));
	 Inmat (A, I+1);
      end if;
      
   end Inmat;
   
   -------------
   
   procedure Utskriv (A: in Array_Type; I : in Integer) is
      
   begin
      if I > 10 then
	 null;
      else
	 Put (' ');
	 Put (A(I),0);
	 Utskriv (A, I+1);
      end if;
      
   end Utskriv;
   
   -------------
   
   A : Array_Type;
   
begin
   
   Put ("Mata in 10 heltal: ");
   Inmat (A, 1);
   
   Put ("Heltalen var:");
   Utskriv (A, 1);
   
end Klurig;
