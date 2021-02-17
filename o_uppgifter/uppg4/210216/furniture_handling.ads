package Furniture_Handling is
   
   type Furniture_Type is private;
   
   procedure Get (F : out Furniture_Type);
   
   function "<" (Left, Right : in Furniture_Type) return Boolean;
   
private
   
   type Furniture_Type is
      record 
	 L : Integer;
	 D : Integer;
	 H : Integer;
	 Name : String (1..15);
	 I_Length : Integer;
      end record;
   
end Furniture_Handling;
