program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

{指针的解除和应用}

var
   i: Integer;
var
   PInt :^Integer;//定义一个整数类型的指针
   PInt2 : PInteger; //等同于上面

   Void:Pointer; //无类型指针

{*------------------------------------------------------------------------------
  函数指针

-------------------------------------------------------------------------------}
type
    TFunctionParameter = function(const value : integer): string;
//例子：函数的申明 需要和上面的申明一致，参数名可不同，但类型、返回值要一样
function One(const value : Integer):string;
begin
      result  := IntToStr(value);
end;

function DynamicFunction(f:TFunctionParameter;const value:Integer):string;
begin
   Result := f(value);
end;

begin

     New(PInt2); //初始化，分配内存空间,只适用有类型指针
     PInt2^ := 100;
     Dispose(PInt2);//释放

     GetMem(Void,1024); //使用于无类型指针，可分配一个指定大小的空间给指针
     FreeMem(Void);
     DynamicFunction(One,100);
     Readln;
end.
