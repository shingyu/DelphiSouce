unit Unit1;

interface
  type
      TColor = Interface

      End;


      TAnimal = class(TInterfacedObject)
      public
        procedure Run();virtual;abstract;

      end;
      TDog =class(TAnimal,TColor)
       public
         procedure Run();override;
         procedure LookDoor();
      end;

      TCat =class(TAnimal)
       public
         procedure Run();override;
         procedure CatchMouse();
      end;
implementation



{ TDog }

procedure TDog.LookDoor;
begin
    Writeln('TDog.LookDoor');
end;

procedure TDog.Run;
begin
  Writeln('TDog.Run');
end;

{ TCat }

procedure TCat.CatchMouse;
begin
    Writeln('TCat.CatchMouse');
end;

procedure TCat.Run;
begin
   Writeln('TCat.Run');
end;

end.
