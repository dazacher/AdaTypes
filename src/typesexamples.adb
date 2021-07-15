with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Typesexamples is
    X : Integer := 1;
    Y: Float := 1.0;

    Min_Speed : constant := 0;
    Max_Speed_Kph : constant := 300;
    Max_Speed_Mph : constant := 190;

    type Car_Speed_Kph is range Min_Speed .. Max_Speed_Kph;
    type Car_Speed_Mph is range Min_Speed .. Max_Speed_Mph;

    Start_Car_Speed_Kph : constant := 160;
    Start_Car_Speed_Mph : constant := 100;

    My_Speed_US : Car_Speed_Mph := Start_Car_Speed_Mph;
    My_Speed_World : Car_Speed_Kph := Start_Car_Speed_Kph;


    type Speed is range Min_Speed .. Max_Speed_Kph;
    subtype Speed_Kph is Speed;
    subtype Speed_Mph is Speed range Speed(Min_Speed) .. Speed(Max_Speed_Mph);
    Start_Speed_Mph : constant := Speed(Start_Car_Speed_Mph);
    Start_Speed_Kph : constant := Speed(Start_Car_Speed_Kph);

    Speed_US : Speed_Mph := Start_Car_Speed_Mph;
    Speed_World : Speed_Kph := Start_Car_Speed_Kph;
    Mult : Integer;
begin
    Put_Line("X and Y are ");
    Put(X);
    Put(Y);

    --  My_Speed_World := My_Speed_US;
    My_Speed_World := Car_Speed_Kph(My_Speed_US);
    Speed_World := Speed_US;
    Speed_US := Speed_World;
    --Speed_US := Speed_World * 2; --This will give an error as it is out of range of Speed_US
    Put_Line("Enter a number...");
    Get(Mult);
    --Speed_US := Speed_World * Speed(Mult); -- Gives an erro during fun time rather than during the build
end Typesexamples;
