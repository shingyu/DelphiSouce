program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{�ӽ磺Ϊʲôʹ�ã�Ϊ�˷�ֹԽ��
  ע������
  1���Ͻ���½������������������� �������ַ���ö��
  2���Ͻ���ڻ�����½�
}
procedure demo1();
{�����ʽ}
type
   {ö��}
  EColors = (RED,GREEN,BLUE);
  {�ӽ�}
  TSubBondNumber = 1..10;
  TSubBondChar =  'a'..'z';
  {�ӽ��ö��}
   TSubBondEColors = EColors.RED..EColors.BLUE;
begin
    Writeln(low(TSubBondChar));

end  ;
{ ��ӡ������껹��ƽ�꣬ÿ���·ݵ���������������

}
type
   {ö��}
  ESeason = (SPRING,SUMMER,AUTUMN,WINTER);
  {�ӽ�}
  TSubBondMonths = 1..12;
var
   Season:ESeason;
   Months: TSubBondMonths;
   UserYear:Integer;
   UserMonth:Integer;
   IsLeapYear:Boolean;

begin
    Writeln('������һ����ݣ���ʽΪYYYY');
    Readln(UserYear);
    IsLeapYear := False;
    if UserYear mod 100 = 0 then
    begin
      if UserYear mod 400 = 0then
      begin
        Writeln('����');
        IsLeapYear := True;
      end
      else
      begin
        Writeln('ƽ��');
      end;


    end
    else
    begin
      if UserYear mod 4 = 0 then
      begin
        Writeln('����');
        IsLeapYear := True;
      end
      else
      begin
        Writeln('ƽ��');
      end;
    end;
    //judge season
    Writeln('������һ���·ݣ���ʽΪM');
    Readln(UserMonth);
    if (UserMonth >= Low(Months))and (UserMonth <= High(Months)) then
    begin
      if (UserMonth >= 1) and (UserMonth <= 3)then
      begin
          Write('��ǰ�Ǵ���',UserMonth,'�µ�������:');
          case UserMonth of
              2:
              begin
                 if IsLeapYear then
                begin
                  Writeln(29,'��');
                end
                else
                begin
                  Writeln(28,'��');
                end;
              end;
              3:
              begin
                Writeln(31,'��');

              end;
              4:
              begin
                Writeln(30,'��');
              end;
          end;
      end
      else
      begin
        if (UserMonth >= 4) and (UserMonth <= 6) then
        begin
           Write('��ǰ���ļ�',UserMonth,'�µ�������:');
           case UserMonth of
              5:
              begin
                Writeln(31,'��');
              end;
              6:
              begin
                Writeln(30,'��');
              end;
              7:
              begin
                Writeln(31,'��');
              end;

           end;
        end
        else
        if  (UserMonth >= 8) and (UserMonth <= 10) then
        begin
            Write('��ǰ���＾',UserMonth,'�µ�������:');
            case UserMonth of
              8:
              begin
                Writeln(31,'��');
              end;
              9:
              begin
                Writeln(30,'��');
              end;
              10:
              begin
                Writeln(31,'��');
              end;

            end;
        end
        else
        if (UserMonth = 11) or (UserMonth = 12) or (UserMonth = 1)then
             Write('��ǰ�Ƕ���',UserMonth,'�µ�������:');
             case UserMonth of
                11:
                   begin
                         Writeln(30,'��');
                   end;
                12:
                   begin
                         Writeln(31,'��');
                   end;
                1:
                   begin
                          Writeln(31,'��');
                   end;
             end;


      end ;



    end
    else
    begin
      Writeln('�·ݷǷ�');
    end;


    Readln;
end.
