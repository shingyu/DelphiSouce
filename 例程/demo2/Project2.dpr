program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
  {delphi ��û�������������Ե�return�ؼ���
  �������ʵ��returnЧ�� ��Ҫresult��exit����ʹ��
  }
 {����ֵ ֻ�к����� ����û�� }
function Add(Number1:Integer;Number2:Integer):Integer;overload;
begin

    Result := Number1 + Number2;//return ��������ֹ���ܣ� resultû�У������������һ�δ���
    Exit;
    Writeln('*******');
end; //����1 ���ã�Sum=Add(300,200); Writeln(Sum);

function Sub(Num1:Integer;Num2:Integer;var sum:Integer):Integer;
begin

    sum := Num1 - Num2;
    Exit;
end; //����2 ���ã�Sub(300,200,Sum); Writeln(Sum);

function Mul(Num1:Integer;Num2:Integer;out sum:Integer):Integer;
begin
    sum := Num1 * Num2;
    Exit;
end; //����3 ���ã�Mul(300,200,Sum);  Writeln(Sum);

function  GetResultByFunName():Integer;
begin
   GetResultByFunName := 1 + 2;


end; // ����4 ���ã� Writeln(GetResultByFunName());

{�������أ���������ͬ�������б�ͬ
��ԭ������ ���� overload;

}

function Add(Num1:Double;Num2:Double):Double; overload;
begin
   Result := Num1 + Num2;
   Exit;

end; \\���÷��� �� Writeln(Add(100.3,200)); ���ݴ������ݵĲ�ͬ������



function DivFun():Integer;
begin


end; //��Ҫ��ǰһ���������ñ��������ᱨ��
//�����Ҫ����ô ��Ҫ��function DivFun():Integer;forward; �ŵ�Ҫ���õ�ǰ��ȥ
//�������� ʵ�ֱ�������


var
   Sum: Integer;

begin
  Writeln(Add(100.3,200));
  Readln;


end.
