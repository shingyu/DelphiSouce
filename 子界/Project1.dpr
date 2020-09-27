program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{子界：为什么使用，为了防止越界
  注意事项
  1）上界和下界必须是有序的数据类型 整数、字符、枚举
  2）上界大于或等于下界
}
procedure demo1();
{定义格式}
type
   {枚举}
  EColors = (RED,GREEN,BLUE);
  {子界}
  TSubBondNumber = 1..10;
  TSubBondChar =  'a'..'z';
  {子界和枚举}
   TSubBondEColors = EColors.RED..EColors.BLUE;
begin
    Writeln(low(TSubBondChar));

end  ;
{ 打印输出闰年还是平年，每个月份的天数和所属季节

}
type
   {枚举}
  ESeason = (SPRING,SUMMER,AUTUMN,WINTER);
  {子界}
  TSubBondMonths = 1..12;
var
   Season:ESeason;
   Months: TSubBondMonths;
   UserYear:Integer;
   UserMonth:Integer;
   IsLeapYear:Boolean;

begin
    Writeln('请输入一个年份，格式为YYYY');
    Readln(UserYear);
    IsLeapYear := False;
    if UserYear mod 100 = 0 then
    begin
      if UserYear mod 400 = 0then
      begin
        Writeln('闰年');
        IsLeapYear := True;
      end
      else
      begin
        Writeln('平年');
      end;


    end
    else
    begin
      if UserYear mod 4 = 0 then
      begin
        Writeln('闰年');
        IsLeapYear := True;
      end
      else
      begin
        Writeln('平年');
      end;
    end;
    //judge season
    Writeln('请输入一个月份，格式为M');
    Readln(UserMonth);
    if (UserMonth >= Low(Months))and (UserMonth <= High(Months)) then
    begin
      if (UserMonth >= 1) and (UserMonth <= 3)then
      begin
          Write('当前是春季',UserMonth,'月的天数是:');
          case UserMonth of
              2:
              begin
                 if IsLeapYear then
                begin
                  Writeln(29,'天');
                end
                else
                begin
                  Writeln(28,'天');
                end;
              end;
              3:
              begin
                Writeln(31,'天');

              end;
              4:
              begin
                Writeln(30,'天');
              end;
          end;
      end
      else
      begin
        if (UserMonth >= 4) and (UserMonth <= 6) then
        begin
           Write('当前是夏季',UserMonth,'月的天数是:');
           case UserMonth of
              5:
              begin
                Writeln(31,'天');
              end;
              6:
              begin
                Writeln(30,'天');
              end;
              7:
              begin
                Writeln(31,'天');
              end;

           end;
        end
        else
        if  (UserMonth >= 8) and (UserMonth <= 10) then
        begin
            Write('当前是秋季',UserMonth,'月的天数是:');
            case UserMonth of
              8:
              begin
                Writeln(31,'天');
              end;
              9:
              begin
                Writeln(30,'天');
              end;
              10:
              begin
                Writeln(31,'天');
              end;

            end;
        end
        else
        if (UserMonth = 11) or (UserMonth = 12) or (UserMonth = 1)then
             Write('当前是冬季',UserMonth,'月的天数是:');
             case UserMonth of
                11:
                   begin
                         Writeln(30,'天');
                   end;
                12:
                   begin
                         Writeln(31,'天');
                   end;
                1:
                   begin
                          Writeln(31,'天');
                   end;
             end;


      end ;



    end
    else
    begin
      Writeln('月份非法');
    end;


    Readln;
end.
