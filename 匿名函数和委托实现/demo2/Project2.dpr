program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

var
   Dog:TDog;
   Cat:TCat;
   Eat:IEat;
   Demo:TDemo;
begin
  Cat := TCat.Create;
  Cat.Eat := TDog.Create;
  Cat.Eat.EatIng;
  Demo:= TDemo.Create;
  Demo.Eat := TDog.Create;
  Demo.Eat.EatIng;
  Readln;

end.
