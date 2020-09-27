program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{*------------------------------------------------------------------------------
  1.什么是指针：也是一个变量，存储内存地址的变量
  例子 i：Integer；  整数型变量
  begin
     i ：= 100 ；
  end  ；


  2.为什么使用指针
   指针效率高

  3.指针怎么使用
    --类型指针：具有明确的数据类型
    --无类型指针：没有数据类型，可以指向任何地址

    --怎样赋值
        @  获取地址
        ^  定义指针

-------------------------------------------------------------------------------}
var
   i: Integer;
var
   PInt :^Integer;//定义一个整数类型的指针
   PInt2 : PInteger; //等同于上面

   Void:Pointer; //无类型指针
begin
    i := 100;
    Writeln(Integer(@i).ToHexString);//最后 TO.. 表示转换为16进制
   { PInt := @i; }
     PInt := Pointer($004258B8); // 存的是16进制表示的是100 怎么把100拿出
     Writeln(PInt^);
    Readln;
end.
