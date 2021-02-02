with Ada.Text_IO;
use Ada.Text_IO;

with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

with Ada.Float_Text_IO;
use Ada.Float_Text_IO;

procedure Gammal_Lab1 is
   
   I : Integer; 
   F1 : Float;  -- först pris
   F2 : Float;  -- sista pris 
   F3 : Float;  -- steg 
   F4 : Float;  -- momsprocent
   
   
   M : Float;  -- moms
   Pm : Float; -- pris med moms
   
begin 
   
   Put ("Första pris: ");
   Get (F1);
   Put ("Sista pris: ");
   Get (F2);
   Put ("Steg: ");
   Get (F3);
   Put ("momsprocent: ");
   Get (F4);
   F4 := F4 / 100.00;
   
   New_Line;
   
   Put_line ("=== Momstabell ===");
   Put_Line ("Pris utan moms  Moms   Pris med moms");
   
   for I in 1 .. 3 loop
      Put ("    ");
      Put (F1,Aft=>2,Exp=>0);
      
      Put ("      ");
      M := F1 * F4 ;
      Put (M,Aft => 2,Exp =>0);
      
      Put ("       ");
      Pm := F1 + M ;
      Put (Pm,Aft =>2,Exp=>0);
      
      exit when F1 = F2; -- kollar om start lika med slut
      
      F1 := F1 + F3 ;
      
      exit when F1 > F2;  -- kollar om PuM blir högre än slut
      
      New_Line;
   end loop; 
   
   
   
   if F1 = F2 then  -- denna ser till att startvärdet är mindre än slutvärdet
      
      null;
      
   elsif F1 > F2 then -- tsm med denna
     
     null;
      
      else
   
   for I in 1..2 loop
      Put ("    .           .          .");
      New_Line;
   end loop;
   
   
   while F1 < F2 loop 
      F1 := F1 + F3 ;
   end loop;
   
   if F1 >F2 then 
      F1 := F1 - F3 ;
   end if ;
     
   
   Put ("    ");
   Put (F1, Aft=>2,Exp=>0) ;
   
   Put ("      ");
   M:= F1 * F4 ;
   Put (M,Aft=>2,Exp=>0);
   
   Put ("       ");
   Pm := F1 + M; 
   Put (Pm,Aft=>2,Exp=>0); 
   
   end if;
   
end Gammal_Lab1;
