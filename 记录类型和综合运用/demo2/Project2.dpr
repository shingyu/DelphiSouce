program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type //����һ��ѧ���ļ�¼����
    TStudent = record
       ID : string;
       Name : string;
    end;
    TStudentList = array of  TStudent; //��̬����

  var
     StudentList : TStudentList;

procedure AddStudent();
var
    Name:string;
    Student : TStudent;
    ArrayLength : Integer;
    Uuid : TGUID;//����һ��Ψһ��ʶID
begin
   ArrayLength := Length(StudentList);
   Writeln('��ѡ������ӹ���,������ѧ������:');
   CreateGUID(Uuid);
   Student.ID := GUIDToString(Uuid);
   Readln(Student.Name);
   {StudentList[Length(StudentList)-1] := Student;
   �ᱨ����������Ϊ���䳤�ȣ�������һ�еĴ��� }
   Insert(Student,StudentList,Length(StudentList)-1);
   {�����Ӻ��Ԫ�ظ����������ǰ�ģ�����ӳɹ�}
   if Length(StudentList) > ArrayLength then
   begin
      Writeln('��ӳɹ�');
   end
   else
   begin
      Writeln('���ʧ��');
   end;

end;

procedure ListStudent();
var
   Student : TStudent;
begin
  Writeln('��ѡ���˲�ѯ����,��Ϣ�б�����:');
  for Student in StudentList do
  begin
    with Student do
    begin
      Writeln('���:',ID,#$09,'����:',Name);
    end;

  end;

end;


procedure DeleteStudent();
 var
    Student : TStudent;
     UserName : string;
     IsTrue : string;
     Indexs : Integer;
     ArrayLength : Integer;
begin
  Writeln('��ѡ����ɾ������,������Ҫɾ��ѧ��������:');
   Readln(UserName);
   indexs := 0;
   ArrayLength := Length(StudentList);
   for Student in StudentList do
   begin
      with Student do
       begin
          if (UserName=Name) then
          begin
             //ɾ���������ã���Ҫ�û�����ȷ��
             Writeln('��ȷ��Ҫɾ����',ID,Name,'����Ϣ��Y/N');
             Readln(IsTrue);
             if (IsTrue='Y') then
             begin
                Delete(StudentList,Indexs,1);
                if(Length(StudentList)>ArrayLength) then
                begin
                   Writeln('ɾ���ɹ���');
                end
                else
                begin
                   Writeln('ɾ��ʧ�ܣ�');
                end;

             end;
             Exit;
          end;

       end;
       Inc(Indexs);
   end;

end;

procedure UpdateStudent();
 var
    UName : string;
    I : Integer;
    IsExist : Boolean;
begin
   IsExist := False;
   Writeln('��ѡ�����޸Ĺ���,������Ҫ�޸ĵ�ѧ������:');
   Readln(UName);
   for I := Low(StudentList) to High(StudentList) do
   begin
      with  StudentList[I] do
      begin
          if (Name=UName) then
          begin
            Writeln('�������µ�����');
            Readln(UName);
            Name := UName;
            IsExist := True;
            Break;
          end;
      end;

   end;
   if(IsExist = False)then
   begin
     Writeln('�޸�ʧ�ܣ����޴���!');
   end;
end;

{ѡ��˵�}
procedure ShowMenu();
begin
   Writeln('');
   Writeln('********ѧ����Ϣ����ϵͳ*********');
   Writeln('');
   Writeln('1�������Ϣ');
   Writeln('2��ɾ����Ϣ');
   Writeln('3����ѯ��Ϣ');
   Writeln('4���޸���Ϣ');
   Writeln('');
   Writeln('*********************************');
end;
procedure UserChoose();
var
  UserChooseIndex : Integer;
begin
  Writeln('��ѡ����Ҫʹ�õĹ���:');
  Readln(UserChooseIndex);
  case UserChooseIndex of
      1:
      begin
         AddStudent();
      end;
      2:
      begin
         DeleteStudent();
      end;
      3:
      begin
         ListStudent();
      end;
      4:
      begin
        UpdateStudent();
      end;
  else
  begin
      Writeln('��������ȷ�����:');
  end;

  end;

end;



begin
    StudentList := []; //��ʼ��ѧ����Ϣ�б�
    while True do
    begin
        ShowMenu();
        UserChoose();
    end;



    Readln;
end.
