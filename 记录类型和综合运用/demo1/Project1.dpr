program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
type //����һ��ѧ���ļ�¼����
    TStudent = record
       ID : Integer;
       Name : string;
    end;

  var
       Student : TStudent
begin
   Student.ID := 1001;
   Student.Name := 'С��';


   Readln;
end.
