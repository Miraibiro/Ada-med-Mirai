package Shoe_Handling is 
   
   type Shoe_Type is private;
   
   procedure Get (Shoe : out Shoe_Type);
   
   function "<" (Left, Right : in Shoe_Type) return Boolean;
   
private 
   
   type Shoe_Type is
      record 
	 Namn : String (1..20);
	 I_Langd : Integer;
	 Size : Float;
      end record;
   
end Shoe_Handling;
