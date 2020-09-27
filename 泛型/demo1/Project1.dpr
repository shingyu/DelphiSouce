program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
 System.Generics.Collections, System.SysUtils;
{ 参考  delphi2010语法手册
1.什么是泛型
   -广泛数据类型
2.为什么使用泛型
   -为了避免在程序中，数据类型强制转换
   -在容器中使用范型更为灵活
3.怎么使用泛型
   -<T>
4.泛型的使用场景
   -泛型容器
   -反射的时候
}

type
  TStringArr = array of string;
  TNumberArr = array of Integer;
  TArrayss<A> = array of A;
  TPerson = class

  end;
  TStudent<T> = class

  end;
   var
    StringArr:TStringArr;
    NumberArr :TNumberArr;
    Arrayss:TArrayss<Integer>;//想换成字符，直接改括号内
   var
     I: Integer;
     Ss :TArray<string>;
begin
    StringArr :=  ['aa','bb'] ;
    NumberArr :=  [11,22,33] ;  //这样定义数组太麻烦，
    //可以申明一个东西，我想放数字或字符都行？--泛型
    Arrayss := [66,77,88];
    for I := Low(Arrayss) to High(Arrayss) do
       Writeln(Arrayss[I]);
    TStudent<TPerson>.Create;
    TStudent<TPerson>.Create;

    TArray<string>.Create;
    Readln;
end.
