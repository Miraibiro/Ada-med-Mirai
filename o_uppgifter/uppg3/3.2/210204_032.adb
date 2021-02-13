With Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;

Procedure 032 is
   
   type Inre is
      record 
	 Langd : Float;
	 Bredd : Float;
	 Namn : String (1..6);
      end record;
   ------------------------------------------
   type Outer is 
      record 
	 Redska : Inre;
	 Kopt : String (1..10);
	 Pris : Float;
	 Affar : String (1..10);
      end record;
   ---------------------------------------------
   
   I : Inre;
   O : Outer;
   A, B : Integer;
   
begin
   
   Put ("Vilket redskap har du köpt? ");
   Get_Line (I.Namn, A);
   
   if A >= 6 then 
      Skip_Line;
   end if;
         
   Put ("Var var du och handlade? ");
   Get_Line (O.Affar, B);
   
   if B >= 10 then
      Skip_Line;
   end if;
      
   Put ("Vad kostade denna Kratta? ");
   Get (O.Pris);
   
   Put ("Hur lång och bred var den? ");
   Get (I.Langd);
   Get (I.Bredd);
   Skip_Line;
   
   Put ("Vilket datum köpte du den? ");
   Get (O.Kopt);
   
   New_Line;
   
   Put ("Specifikation av inköp på ");
   Put (O.Affar(1..B));
   Put (", ");
   Put (O.Kopt);
   
   New_Line;
   
   Put ("Inköp av: ");
   Put (I.Namn(1..A));
   Put (" (längd=");
   Put (I.Langd,1,2,0);
   Put ("m, bredd=");
   Put (I.Bredd,1,1,0);
   Put ("m)");
   
   New_Line;
   
   Put ("Pris : ");
   Put (O.Pris,Fore=>1, Aft=>2, Exp=>0);
   
   
end 032;
