with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Nytt is 
-- Gjorde detta program för att testa på tipsen för uppgiften, men vill att ni rättar det andra i första hand!!
   
   type Array_Type is
     array (1..10) of Integer;
   
   -------------
   
   function Inmat return Array_Type is
      procedure Lasa_In (A : out Array_Type; I : in Integer) is
      begin
	 if I > 10 then
	    null;
	 else
	    Get (A(I));
	    Lasa_In (A, I+1);
	 end if;
      end Lasa_In;
      
      A : Array_Type;
      
   begin
      
      Lasa_In(A, 1);
      return A;
      
   end Inmat;
   
   -------------
   
   procedure Utskriv (A: in Array_Type) is
      procedure Skriva_Ut (A : in Array_Type; I : in Integer) is
      begin
	 if I > 10 then
	    null;
	 else
	    Put (' ');
	    Put (A(I),0);
	    Skriva_Ut (A, I+1);
	 end if;
      end Skriva_Ut;
      
   begin
      
      Skriva_Ut (A, 1);
      
   end Utskriv;
   
   -------------
   
   A : Array_Type;
   
begin
   
   Put ("Mata in 10 heltal: ");
   A:= Inmat;
   
   Put ("Heltalen var:");
   Utskriv (A);
   
end Nytt;
