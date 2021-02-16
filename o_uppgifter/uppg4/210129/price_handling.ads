package Price_Handling is
   
   type Price_Type is private;
   
   procedure Get (P : out Price_Type);
   
   function "<" (Left, Right : in Price_Type) return Boolean;
   
private 
   
   type Price_Type is 
      record
	 Kr : Integer;
	 Ore : Integer;
      end record;
   
end Price_Handling;
