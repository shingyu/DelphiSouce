program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{*------------------------------------------------------------------------------
  ʲô���쳣
   -

   �쳣��ôʹ��

-------------------------------------------------------------------------------}
procedure MyDivFun(Num1, Num2:Integer);
begin
  if(Num2 = 0)  then
  begin
     // �׳�һ���쳣
     raise Exception.Create('��������Ϊ0');   // �൱��
     //Result := Exception.Create('��������Ϊ0');exit
     Writeln('******');//�׳��쳣�� �˶λ�����ִ����
  end;
end;
begin
    try
        MyDivFun(10,0);
    except
        on E:Exception do
        begin
            Writeln(E.Message+'---');
        end;
        on E:Exception do   //on ��д���
        begin

        end;
    end;

    Readln;
end.
