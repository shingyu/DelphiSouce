program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
//������̬����, array[1..100]����Ҫ ����д����
type
    StringArray = array of string;
  var
    NameArray : StringArray ;
    AddressArray : StringArray ;
    AddressArray1 : StringArray ;
    DataArray : StringArray ;
    DataArray1 : StringArray ;
  var
    indexs  : Integer;
  var
     Name:string;
procedure InitArray();
begin
    //���ó���
  SetLength(NameArray,20);
  NameArray := StringArray.Create('����','�ɹ�');//��һ�����÷���
  NameArray := ['����','�ɹ�','����','�ɻ�']; //��һ��
  Writeln(Length(NameArray),',',Low(NameArray));
end;
// ����
procedure  ListArray();
begin
   NameArray := ['����','�ɹ�','����','�ɻ�'];
  for indexs := Low(NameArray) to High(NameArray) do
  begin
     Writeln(NameArray[indexs]);
  end;
end;
//����������
procedure  ListArray2();
begin
   NameArray := StringArray.Create('����','�ɹ�');
  for Name in NameArray do
  begin
      Writeln(Name);
  end;
end;
begin
  NameArray := StringArray.Create('����','�ɹ�');
  AddressArray := StringArray.Create('����','�Ϻ�');
  AddressArray1 := StringArray.Create('����','��ˮ');
  DataArray := StringArray.Create('�ɶ�','����');
  DataArray := Concat (NameArray,AddressArray) ;//��������
  DataArray1 := Copy(DataArray,Low(DataArray),Length(DataArray));//��������
  Insert(AddressArray1,DataArray1,0); //����
  Delete(DataArray1,0,1);//ɾ��  Length(DataArray1)-2 , Length(DataArray1) ɾ����

  for Name in DataArray1 do
  begin
     Writeln(Name);
  end;

  Readln;
end.
