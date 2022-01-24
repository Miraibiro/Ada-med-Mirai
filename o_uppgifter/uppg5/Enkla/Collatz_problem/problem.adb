with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Problem is
   
   procedure Collatz (N : in Integer) is
      I : Integer;
   begin
      
      if N = 1 then
	 null;
      elsif N mod 2 = 1 then 
	 I := 3*N + 1;
	 Put (" ->" & Integer'Image(I));
	 Collatz (I);
      elsif N mod 2 = 0 then
	 I := N / 2;
	 Put (" ->" & Integer'Image(I));
	 Collatz (I);
      end if;
      
   end Collatz;
   
   N : Integer;
   
begin
   
   Put ("Starttal: ");
   Get (N);
   Put (N,0);
   Collatz (N);
   
end Problem;

