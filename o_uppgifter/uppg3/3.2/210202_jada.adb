with Ada.Text_IO;			use Ada.Text_IO;
with Ada.Integer_Text_IO;		use Ada.Integer_Text_IO;

procedure O3_2_2021_02_02_19_20 is
  
  -----------------------------------------------------------------------------
  type Person_Data_Type is
    record
      Name : String(1 .. 10) := (others => ' ');
      Age  : Integer;
      Attr : String(1 .. 10) := (others => ' ');
    end record;
  
  -----------------------------------------------------------------------------
  type Person_Type is
    record
      Adult : Person_Data_Type;
      Child : Person_Data_Type;
    end record;
  
  -----------------------------------------------------------------------------
  procedure Get(item : out Person_Data_Type) is

    Len : Integer;

  begin
    Put("- Mata in namn: ");
    Get_Line(Item.Name, Len);
    if Len = 10 then
      Skip_Line;
    end if;

    Put("- Mata in ålder: ");
    Get(Item.Age);
    Skip_Line;

    Put("- Ange egenskap: ");
    Get_Line(Item.Attr, Len);
    if Len = 10 then
      Skip_Line;
    end if;
  end Get;
  
  -----------------------------------------------------------------------------
  P : Person_Type;
  
begin
  Put_Line("För den vuxna:");
  Get(P.Adult);

  Put_Line("För barnet:");
  Get(P.Child);

  New_Line;
  Put(P.Adult.Name & "," & Integer'Image(P.Adult.Age));
  Put(" år, har ett barn som heter " & P.Child.Name);
  Put_Line(" som är" & Integer'Image(P.Child.Age) & " år.");

  Put(P.Child.Name & " är " & P.Child.Attr & " och ");
  Put_Line(P.Adult.Name & " är " & P.Adult.Attr & ".");
end O3_2_2021_02_02_19_20;
