with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Yalla_Banan is
   
   function Inmat  return String is 
      S : String (1..1);
   begin
      
      if End_Of_Line then
	 return "";
      else
	 Get (S);
	 return Inmat & S;
      end if;
           
   end Inmat;
   
	 
   function Skriva (S : in String) return integer is
   begin
      Put (S);
      return S'Length;
      
   end Skriva;
      
   ------------------
      
   N : Integer;
   
begin
   Put ("Mata in en sträng: ");
   
   N := Skriva(Inmat);
   New_Line;
   Put ("Längden av strängen var ");
   Put (N,0);
   
   
end Yalla_Banan;
