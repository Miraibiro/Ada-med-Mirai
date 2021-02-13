With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

Procedure Tiden is
   
   type Time is
      record 
	 Hour : Integer;
	 Min : Integer;
	 Sec : Integer;
      end record;
   -----------------------------------------------------
   
   type Datum is 
      record 
	 Year : Integer;
	 Month : Integer;
	 Day : Integer;
	 Tiden : Time;
      end record;
   -----------------------------------------------------
   
   Dat : Datum;
   Tid : Time;
   Val : Character;
   Svar : String (1..1) := "J";
   I : Integer;

begin
   
   loop 
      Put ("Vad vill du mata in (Datum/Tid/Båda): ");
      Get (Val);
      Skip_Line;
      
      if (Val = 'D') or (Val = 'B') then 
	 Put ("Mata in år: ");
	 Get (Dat.Year);
	 Put ("Mata in månad: ");
	 Get (Dat.Month);
	 Put ("Mata in dag: ");
	 Get (Dat.Day);
      end if;
      
      if (Val = 'T') or (Val = 'B') then 
	 Put ("Mata in timme: ");
	 Get (Tid.Hour);
	 Put ("Mata in minut: ");
	 Get (Tid.Min);
	 Put ("Mata in sekund: ");
	 Get (Tid.Sec);
      end if;
      
      if (Val = 'D') or (Val = 'B') then
	 New_Line;
	 Put ("Datum är ");
	 Put (Dat.Year,0);
	 Put ('-');
	 if Dat.Month < 10 then 
	    Put ('0');
	 end if;
	 Put (Dat.Month,0);
	 Put ('-');
	 if Dat.Day < 10 then 
	    Put ('0');
	 end if;
	 Put (Dat.Day,0);
	 Put ('.');
      end if; 
                  
      if (Val = 'T') or (Val = 'B') then
	 New_Line;
	 Put ("tiden är ");
	 if Tid.Hour < 10 then 
	    Put ('0');
	 end if;
	 Put (Tid.Hour,0);
	 Put (':');
	 if Tid.Min < 10 then 
	    Put ('0');
	 end if;
	 Put (Tid.Min,0);
	 Put (':');
	 if Tid.Sec < 10 then
	    Put ('0');
	 end if;
	 Put (Tid.Sec,0);
	 Put ('.');
      end if; 
      
      Skip_Line;
      New_Line;
      Put ("Vill du köra igen (N ger 'NEJ' / Enter eller J ger 'JA'): ");
      Get_Line (Svar,I);
      
     if I = Svar'Last then  -- (Denna del kan vara med för säkerhetens skulle)
	Skip_Line; 
     end if; 
            
      exit when (Svar(1)) = 'N'; 
 
   end loop;
   
   Put ("Tack för idag!");
      
end Tiden;
