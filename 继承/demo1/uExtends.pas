unit uExtends;

interface
 type
    TAnimal = class
    private
        FWeight : Integer;
    public
        constructor Create(FWeight : Integer);//定义一个构造方法

      property Weight: Integer read FWeight write FWeight;
      procedure GetName();virtual;//申明一个虚方法
    end;
    TDog = class(TAnimal)//派生类，继承
          public
        constructor Create();
        procedure GetName();override;//重写父类中的虚方法
    end;
    TCat = class(TAnimal)
           public
        constructor Create();

    end;
implementation

    { TAnimal }



    { TAnimal }

constructor TAnimal.Create(FWeight: Integer);
begin
   Self.FWeight :=  FWeight;
end;

procedure TAnimal.GetName;
begin
   Writeln('动物类的方法');
end;

{ TDog }

    constructor TDog.Create;
    begin
         Writeln('狗类');
         //直接调用父类方法
         inherited  Create(1001);
    end;

    procedure TDog.GetName;
begin
   inherited;
   Writeln('TDog.GetName的方法');

end;

{ TCat }

    constructor TCat.Create;
    begin
        Writeln('猫类');
    end;


end.
