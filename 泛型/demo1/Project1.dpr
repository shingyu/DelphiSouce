program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
 System.Generics.Collections, System.SysUtils;
{ �ο�  delphi2010�﷨�ֲ�
1.ʲô�Ƿ���
   -�㷺��������
2.Ϊʲôʹ�÷���
   -Ϊ�˱����ڳ����У���������ǿ��ת��
   -��������ʹ�÷��͸�Ϊ���
3.��ôʹ�÷���
   -<T>
4.���͵�ʹ�ó���
   -��������
   -�����ʱ��
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
    Arrayss:TArrayss<Integer>;//�뻻���ַ���ֱ�Ӹ�������
   var
     I: Integer;
     Ss :TArray<string>;
begin
    StringArr :=  ['aa','bb'] ;
    NumberArr :=  [11,22,33] ;  //������������̫�鷳��
    //��������һ����������������ֻ��ַ����У�--����
    Arrayss := [66,77,88];
    for I := Low(Arrayss) to High(Arrayss) do
       Writeln(Arrayss[I]);
    TStudent<TPerson>.Create;
    TStudent<TPerson>.Create;

    TArray<string>.Create;
    Readln;
end.
