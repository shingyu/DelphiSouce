program Project1;

{$APPTYPE CONSOLE}

{$R *.res}
{常量：我们一开始就定义好的一些值，以后在程序的运行
中不允许改变，例如，圆周率
枚举：常量集
 type
    枚举名=(标识符1,标识符2...)

}
uses
  System.TypInfo,
  System.SysUtils;

const
  Pai: Double = 3.14;
   {常量的定义方式，可不进行类型声明，编译器会根据
   具体值来决定常量的类型
   常量尽量定义在项目下，它具有全局性,枚举同
   }
  Pai2 = 3;

type
{正常情况下枚举类型的索引是从0开始}
  EColors = (RED, GREEN, BLUE);

  EWeek = (SUN = 1, MON = 2, TUE = 3, WED = 4, THU = 5, FRI = 6, SAT = 7);

var
  Color: EColors;
  Week: EWeek;
  EIndex: Integer;
  EName: string;
  EValue: Integer;
 {*------------------------------------------------------------------------------
    单个获取枚举元素

 -------------------------------------------------------------------------------}

procedure Demo1();
begin
  Color := EColors.RED;
  Week := EWeek.SUN;
  Writeln(Ord(Color), ',', Ord(Week));

end;

{*------------------------------------------------------------------------------
      使用循环遍历枚举元素

-------------------------------------------------------------------------------}
procedure Demo2();
begin
  EIndex := 0;
{遍历枚举  需要在前面加一个system.TypINFO
}
  for Color := Low(EColors) to High(EColors) do
  begin
        {Writeln(GetEnumName(TypeInfo(EColors),EIndex));
        Writeln(GetEnumValue(TypeInfo(EColors),'RED'));
        Writeln(Ord(EColors.RED));
        EIndex:=  EIndex + 1;}

    EName := GetEnumName(TypeInfo(EColors), EIndex);
    EValue := GetEnumValue(TypeInfo(EColors), EName);
    Writeln(EName, ',', EValue);
    Inc(EIndex); // 此句与eindex+1相同功能
  end;

end;

begin
  EIndex := 1;
{遍历枚举  需要前面加一个system.TypINFO
}

{非正常定义枚举 无法遍历，尽量正常定义枚举 从0开始}
  for Week := Low(EWeek) to High(EWeek) do
  begin
        {Writeln(GetEnumName(TypeInfo(EWeek),EIndex));
        Writeln(GetEnumValue(TypeInfo(EWeek),'RED'));
        Writeln(Ord(EColors.RED));
        EIndex:=  EIndex + 1;}

    EName := GetEnumName(TypeInfo(EWeek), EIndex);
    EValue := GetEnumValue(TypeInfo(EWeek), EName);
    Writeln(EName, ',', EValue);
    Inc(EIndex); // 此句与eindex+1相同功能
  end;

  Readln;
end.

