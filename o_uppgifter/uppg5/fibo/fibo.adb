with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Fibo is
   
   function Summa (N, N_Org, I1, I2 : in Integer) return Integer is
      I : Integer := I1;
      J : Integer := I2;
   begin
      
      if N = 0 then 
	 return 0;
      elsif N = 1 then 
	 return 1;
      elsif N = 2 then 
	 Put ("1 + 1 ");
	 return 2;
      elsif N mod 2 = 1 then 
	 I := I + J;
	 Put (" +" & Integer'Image(I));
	 return I + Summa (N-1, I, J);
      elsif N mod 2 = 0 then
	 J := J + I;
	  Put (" +" & Integer'Image(J));
	 return J + Summa (N-1, I, J);
      end if;
      
   end Summa;
   
   N, Sum : Integer;
   I : Integer := 1;
   
begin
   Put ("Mata in ett tal: ");
   Get (N);
   
   Sum := Summa(N, N, I, I);
   
   Put ("=" & Integer'Image(Sum));
   
end Fibo;

	 
	 
