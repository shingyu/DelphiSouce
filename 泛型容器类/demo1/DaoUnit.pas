unit DaoUnit;

interface

 uses
    Winapi.Messages,Vcl.Dialogs,System.Generics.Collections, Unit2;

   type TDao = class
    public
    //�෽��������ʱ����Ҫ��������
     class procedure Add(Student:TStudent);
     //��ѯ
     class function ListStu():TDictionary<string,TStudent>;
     // ���
     class  procedure clear();

   end;


implementation
//��ʼ�������࣬������������
//ȫ�������࣬���ѧ����Ϣ
var
  Students:TDictionary<string,TStudent>;


{ TDao }

class procedure TDao.Add(Student: TStudent);
begin
    if not Students.ContainsKey(Student.Id) then
    begin
         Students.Add(Student.Id, Student);
    end
    else
    begin
       ShowMessage('����Ϣ�Ѿ�����');
    end;


end;

class procedure TDao.clear;
begin
   Students.Clear;
end;

class function TDao.ListStu: TDictionary<string,TStudent>;
begin
    Result := Students;
end;

initialization
   Students:= TDictionary<string,TStudent>.Create();

end.
