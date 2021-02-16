with Ada.Text_IO;			use Ada.Text_IO;

with Price_Handling;			use Price_Handling;

procedure Test_Price_Less is

  P1, P2 : Price_Type; -- En typ för att lagra ett pris
		       -- i hela kronor och ören
begin
  Put_Line("Mata in två priser på egna rader: ");
  Get(P1);  -- Inmatningsformat M;NN där M är ett positivt heltal
  Get(P2);  -- och N är siffror

  if P1 < P2 then
    Put_Line("Det första priset var billigare.");
  elsif P2 < P1 then
    Put_Line("Det andra priset var billigare.");
  else
    Put_Line("Priserna var lika.");
  end if;
end Test_Price_Less;
