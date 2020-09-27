program Project1;

{$APPTYPE CONSOLE}

{$R *.res}
{*------------------------------------------------------------------------------
什么是多态：一类事物以多种形态存在，例如：
动物类和狗类、猫类的关系
    -封装、继承、多态
    前提：两个类基本继承和实现这两种关系的一种
    具体体现：父类接收或指向其子类对象
有什么用
  -提高代码的复用性，方便我们对代码进行解耦操作
  解耦：类和类之间不出现直接的依赖关系
怎么使用

-------------------------------------------------------------------------------}
uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

procedure ShowAnimalRun(Animal:TAnimal); //向上转型
var
    Dog:TDog;
begin
    Animal.Run;
    {采用向下转型}
    Writeln(Animal.ClassName);
    if Animal.ClassName = 'TDog' then
    begin
      Dog:=TDog(Animal);
      Dog.LookDoor;
    end;
     if Animal is TDog then
        Writeln('scucess'); //判断一个对象是否和一个类兼容
      if Animal is TDog then
      begin
        Dog := Animal as TDog;
        if Assigned(Dog) then //判断对象是否为空
        begin
           Writeln('volid');
        end;

         Dog.LookDoor;
      end;
    Dog:=TDog(Animal); //强制类型转换
    Dog.LookDoor;//Animal.LookDoor;为什么报错?向上转型：把子类对象的
                    //类型转成了父类的数据类型，也即狗独有的特征消失
end;

{var
   Animal:TAnimal;
   ColorDog:TColor;  }
begin
  {Animal:= TDog.Create;
  ColorDog:= TDog.Create;
  Animal:= TCat.Create;
  Animal.Run;}
  ShowAnimalRun(TDog.Create);//也可以传入TDog.Create;
  Readln;
end.
