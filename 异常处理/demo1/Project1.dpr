program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{*------------------------------------------------------------------------------
  什么是异常
   -

   异常怎么使用

-------------------------------------------------------------------------------}
procedure MyDivFun(Num1, Num2:Integer);
begin
  if(Num2 = 0)  then
  begin
     // 抛出一个异常
     raise Exception.Create('除数不能为0');   // 相当于
     //Result := Exception.Create('除数不能为0');exit
     Writeln('******');//抛出异常后 此段话不能执行了
  end;
end;
begin
    try
        MyDivFun(10,0);
    except
        on E:Exception do
        begin
            Writeln(E.Message+'---');
        end;
        on E:Exception do   //on 可写多个
        begin

        end;
    end;

    Readln;
end.
