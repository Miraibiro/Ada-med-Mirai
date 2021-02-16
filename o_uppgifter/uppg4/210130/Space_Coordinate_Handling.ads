package Space_Coordinate_Handling is
   
   type Space_Coordinate_Type is private;
   
   procedure Get (C : out Space_Coordinate_Type);
   
   function "<" (Left, Right : in Space_Coordinate_Type) return Boolean;
   
private
   
   type Space_Coordinate_Type is
      record 
	 X : Float;
	 Y : Float;
	 Z : Float;
      end record;
   
end Space_Coordinate_Handling;
