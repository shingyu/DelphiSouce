program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

{ָ��Ľ����Ӧ��}

var
   i: Integer;
var
   PInt :^Integer;//����һ���������͵�ָ��
   PInt2 : PInteger; //��ͬ������

   Void:Pointer; //������ָ��

{*------------------------------------------------------------------------------
  ����ָ��

-------------------------------------------------------------------------------}
type
    TFunctionParameter = function(const value : integer): string;
//���ӣ����������� ��Ҫ�����������һ�£��������ɲ�ͬ�������͡�����ֵҪһ��
function One(const value : Integer):string;
begin
      result  := IntToStr(value);
end;

function DynamicFunction(f:TFunctionParameter;const value:Integer):string;
begin
   Result := f(value);
end;

begin

     New(PInt2); //��ʼ���������ڴ�ռ�,ֻ����������ָ��
     PInt2^ := 100;
     Dispose(PInt2);//�ͷ�

     GetMem(Void,1024); //ʹ����������ָ�룬�ɷ���һ��ָ����С�Ŀռ��ָ��
     FreeMem(Void);
     DynamicFunction(One,100);
     Readln;
end.
