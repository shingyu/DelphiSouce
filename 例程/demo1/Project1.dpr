program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{
1.������ʲô��Delphi�ж��У���ĳһ���ܵĴ���Ƭ�ν��з�װ
���������ʽ��
         ��1������    ��2������
     ���̺ͺ���������������û�з���ֵ
2.���̵�����
   ��1���ɽ��������ͻ������
   ��2����ߴ�����ظ�������
   ��3����ߴ���Ŀ�ά����
3.��ôʹ������
   ��1������
}

procedure Demo1(A:Integer; B: Integer);//��ֵ
begin


end;

function  Demo2(var A:Integer;var B: Integer) : Integer ; //����ַ
begin
  Writeln(A,B);
  Result  := 0
end;


procedure Demo3(const Number:array of Integer);//���ݲ������̶�
begin

end;
 //���ò���Ĭ��ֵ
procedure Demo4(a : Integer ; b: Integer = 100);
begin
    Writeln(a,',',b);
end;
var
   X,Y: Integer;

begin
   X := 200;
   Y := 3;
   Demo2(X,Y);
   Readln;
end.
