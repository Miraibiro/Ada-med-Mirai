with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Dagens is
   
   --------------------------------------------------------------------------------------   
   procedure Mata (S : out String; A, I : out Integer) is  -- la till I som out 
      
   begin
    
      loop
	 Put ("Mata in sträng S: ");
	 Get_Line (S,I);
	 exit when I >= 2;
	 Put ("Måste vara mellan 2 och 10 tecken! ");
      end loop;
      
      
      Put ("Mata in heltal N: ");
      Get (A);
	 
   end Mata;
   ------------------------------------------------------------------------------------
   procedure Rader (St : in String ; D, I: in Integer) is  -- la till I som in
      
   begin
      
      Put (D,5);
      Put (' ');
      
      for H in 1..D loop
	 Put (St(1..I));
      end loop;
      
             
   end Rader;
   ----------------------------------------------------------------------------------------
   Str: String (1..10);
   Helis, I: Integer;
   
begin 
   
   Mata (Str, Helis, I);
   
   New_Line;
   Put_Line ("N     S");
   
   for D in 1..helis loop 
      Rader (Str, D, I);
      New_Line;
   End loop;
   
end Dagens;
