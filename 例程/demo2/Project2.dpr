program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
  {delphi 中没有类似其他语言的return关键字
  如果必须实现return效果 需要result和exit联合使用
  }
 {返回值 只有函数有 过程没有 }
function Add(Number1:Integer;Number2:Integer):Integer;overload;
begin

    Result := Number1 + Number2;//return 他是有终止功能， result没有，比如下面加上一段代码
    Exit;
    Writeln('*******');
end; //方法1 调用：Sum=Add(300,200); Writeln(Sum);

function Sub(Num1:Integer;Num2:Integer;var sum:Integer):Integer;
begin

    sum := Num1 - Num2;
    Exit;
end; //方法2 调用：Sub(300,200,Sum); Writeln(Sum);

function Mul(Num1:Integer;Num2:Integer;out sum:Integer):Integer;
begin
    sum := Num1 * Num2;
    Exit;
end; //方法3 调用：Mul(300,200,Sum);  Writeln(Sum);

function  GetResultByFunName():Integer;
begin
   GetResultByFunName := 1 + 2;


end; // 方法4 调用： Writeln(GetResultByFunName());

{函数重载：函数名相同，参数列表不同
在原函数后 加上 overload;

}

function Add(Num1:Double;Num2:Double):Double; overload;
begin
   Result := Num1 + Num2;
   Exit;

end; \\调用方法 ： Writeln(Add(100.3,200)); 根据传入数据的不同来调用



function DivFun():Integer;
begin


end; //若要在前一个函数调用本函数，会报错
//如果需要，那么 需要把function DivFun():Integer;forward; 放到要调用的前面去
//再在下面 实现本函数。


var
   Sum: Integer;

begin
  Writeln(Add(100.3,200));
  Readln;


end.
