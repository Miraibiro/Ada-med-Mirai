With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Command_Line;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO, Ada.Command_Line;

Procedure Kram is
   
   Summa_Length : Float := 0.0; 
   Medel : Float;
   Length : Integer; 
   
begin
   
   if Argument_Count = 0 then
      Put ('0');
   else 
      
      for C in 1..Argument_Count loop
	 Length := Argument(C)'Length;
	 Summa_Length := Summa_Length + Float(Length);
      end loop;
      
      Medel := Summa_Length / Float (Argument_Count);
      
      Put ("Medellängden är ");
      Put (Medel,1,3,0);
   end if;
      
end Kram;
