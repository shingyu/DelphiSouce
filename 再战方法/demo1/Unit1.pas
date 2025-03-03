unit Unit1;

interface

type
    TPerson = class
      public
        procedure Talk(); //静态方法
        function Run():Integer;virtual;
        //function Run():Integer;Dynamic;
        class procedure Eat(); //类方法
        {演示类方法和构造方法的加载顺序}
        constructor Create1(); //类方法加载顺序优先于构造方法
        procedure Sleep();virtual;abstract;//抽象方法
    end;
TUser = class(TPerson)
    public
        function Round():Integer;
        procedure Sleep();

    end;
implementation

{ TPerson }

constructor TPerson.Create1;
begin
    Writeln('constructor');
end;

class procedure TPerson.Eat;
begin
    Writeln('Eat');
end;

function TPerson.Run: Integer;
begin
  {一般情况下，父类的虚拟方法会有一个空实现
  如本行，他的作用是专门拿来给子类覆盖用的
  为什么要用，比如人类的性格是什么不知道，但是
  不能说人类没有性格，所以写一个虚拟的性格，等着
  具体的人来覆盖}
end;

procedure TPerson.Talk;
begin
  Writeln('Talk');
end;

{ TUser }

function TUser.Round: Integer;
begin
   Writeln('喜欢安静');
end;

procedure TUser.Sleep;
begin

end;

end.
