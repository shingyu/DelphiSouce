program Project1;

{$APPTYPE CONSOLE}

{$R *.res}
{*------------------------------------------------------------------------------
匿名函数
    定义格式 为了方便书写
    TFun = reference to function(const num:Integer):Integer;


-------------------------------------------------------------------------------}
uses
  System.SysUtils;
type
    //声明一个函数类型
    TFunDemo = function(Age:Integer):Integer;
    // 定义一个匿名函数
    TFun = reference to function(num:Integer):Integer;
function Demo1(Age:Integer):Integer;
begin
     Writeln(Age);
     Result := Age;
end;

//把函数当做一个对象进行传递
function  Demo2(num1,num2:Integer;fun:TFun):Integer;
begin

  Result := fun(num1+num2);
end;

var
     fun1: TFunDemo;
     fun2: TFun;
     NumResult:Integer;
begin
    {fun2 := Demo1;
    //fun1:= Demo1;
    fun2(10);  若申明为匿名函数，可以写为如下格式}
   { fun2 :=function(num:Integer):Integer
        begin
            Result := num;
         end;
    Demo2(fun2);  }
    NumResult := Demo2(10,20,
    function(num:Integer):Integer
        begin
            Result := num;
         end);
    Writeln(NumResult);
    Readln;
end.
