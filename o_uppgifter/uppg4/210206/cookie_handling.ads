package Cookie_Handling is
   
   type Cookie_Type is private;
   
   procedure Get (C : out Cookie_Type);
   
   function ">" (Left, Right : in Cookie_Type) return Boolean;
   
private 
   
   type Cookie_Type is
      record 
	 Name : String (1..15);
	 I_Length : Integer;
	 Goodness : Integer;
      end record;
   
end Cookie_Handling;
