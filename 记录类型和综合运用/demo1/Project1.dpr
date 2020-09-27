program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
type //定义一个学生的记录类型
    TStudent = record
       ID : Integer;
       Name : string;
    end;

  var
       Student : TStudent
begin
   Student.ID := 1001;
   Student.Name := '小黑';


   Readln;
end.
