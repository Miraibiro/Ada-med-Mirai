with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Skojjj is
   
   function Summa (N : in Integer) return Integer is
   begin
      if N = 0 then
	 return 0;
      else 
	 Put (Integer'Image(N) & " +");
	 return N + Summa(N-1);
	 
      end if;
      
   end Summa;
   
   
   N, Sum:Integer;
   
   
   
begin
   
   
   Put ("Mata in en siffra: ");
   Get (N);
   
   Put ("Talföljdens summa blir:");
   Sum:=Summa(N);
   
   Put (" =" & Integer'Image(Sum));
   
end Skojjj;
