with Ada.Text_IO;                use Ada.Text_IO;

With Space_Coordinate_Handling;  use Space_Coordinate_Handling;

procedure  is
   
   C1, C2 : Space_Coordinate_Type;  -- En typ för att lagra en punkt
				    -- i rymden.
begin
   Put_Line("Mata in två punkter på egna rader: ");
   Get(C1);  -- Inmatningsformat (X, Y, Z) där X, Y och Z är flyttal
   Get(C2);
   
   if C1 < C2 then
      Put_Line("Den första punkten är närmre origo.");
   elsif C2 < C1 then
      Put_Line("Den andra punkten är närmre origo.");
   else
      Put_Line("Punkterna är lika nära origo.");
   end if;
end Test_Coordinate_Distance;
