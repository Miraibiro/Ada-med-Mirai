with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Triangel is
   
   procedure Utskriv (N : in Natural) is
         
      procedure Alla_Rows (N_Original, N : in Natural) is
	 
	 Row_Length_Middle : Natural := N_Original;
	 Current_Row : Natural := N;
	 
	 procedure Row (R : in Natural) is
	 begin
	    
	    if R < Row_Length_Middle then
	       Put (' ');
	       Row (R + 1);
	    elsif R = Row_Length_Middle then
	       Put ('v');
	       Row (R + 1);
	    elsif R = Row_Length_Middle + Current_Row * 2 - 2 then
	       Put ('v');
	       Row (R + 1);
	    elsif R < Row_Length_Middle + Current_Row * 2 - 2 then
	       Put (' ');
	       Row (R + 1);
	    else
	       New_Line;
	    end if;
	    
	 end Row;
      begin
	 
	 if N > 0 then
	    Row (N);
	    Alla_Rows (N_Original, N - 1);
	 end if;
	 
      end Alla_Rows;
      
   begin
      
      Alla_Rows (N, N);
      
   end Utskriv;
   
   
   
   
   N : Natural;
   
begin
   
   Put ("Mata in storlek (N): ");
   Get (N);
   
   Utskriv (N);      
   
end Triangel;
