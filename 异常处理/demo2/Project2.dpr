program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
  {*------------------------------------------------------------------------------
    自己定义一个异常类型

  -------------------------------------------------------------------------------}
type
     EMathException = class(Exception)

     end;

procedure MyDivFun(Num1, Num2:Integer);
begin
  if(Num2 = 0)  then
  begin
     // 抛出一个异常
     raise EMathException.Create('除数不能为0');   // 相当于
     //Result := Exception.Create('除数不能为0');exit
     Writeln('******');//抛出异常后 此段话不能执行了
  end;
end;
begin


    try

      try
        MyDivFun(10,0);
      except
        on E:EMathException do
        begin

            Writeln(E.UnitName,E.ClassName,E.Message+'---');
        end;
        on E:Exception do   //on 可写多个
        begin
            Writeln(E.Message);
        end;
      end;

    finally
    //释放资源
      Writeln('释放资源');
    end;

    Readln;
end.
