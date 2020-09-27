program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UTools in 'UTools.pas',
  Unit1 in 'Unit1.pas';

{*------------------------------------------------------------------------------
 1.单元
      什么是单元  （ unit ）
      为什么要使用
            --方便代码维护
            --对代码进行分门别类的整理
      怎么使用

 2.属性
      --访问的可见性（访问权限修饰符）
               1.private; 私有 ，则类里的字段不能直接访问
               2.public;   公共的
               3.protected;受保护的，若某个字段或方法
                     被该关键字修饰，那么该字段只能在
                     其子类中访问
               4.published
-------------------------------------------------------------------------------}
    var
       Person : TPerson;


begin
    Person := TPerson.Create;
    {Writeln(Person.FName);  //私有化后无法直接访问 }
    Writeln(Person.Name);
    Person.Age := 18;
    Writeln(Person.Age);
    Readln;
end.
