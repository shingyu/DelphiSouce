program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type //定义一个学生的记录类型
    TStudent = record
       ID : string;
       Name : string;
    end;
    TStudentList = array of  TStudent; //动态数组

  var
     StudentList : TStudentList;

procedure AddStudent();
var
    Name:string;
    Student : TStudent;
    ArrayLength : Integer;
    Uuid : TGUID;//生产一个唯一标识ID
begin
   ArrayLength := Length(StudentList);
   Writeln('您选择了添加功能,请输入学生姓名:');
   CreateGUID(Uuid);
   Student.ID := GUIDToString(Uuid);
   Readln(Student.Name);
   {StudentList[Length(StudentList)-1] := Student;
   会报错，好像是因为分配长度，用下面一行的代码 }
   Insert(Student,StudentList,Length(StudentList)-1);
   {如果添加后的元素个数大于添加前的，则添加成功}
   if Length(StudentList) > ArrayLength then
   begin
      Writeln('添加成功');
   end
   else
   begin
      Writeln('添加失败');
   end;

end;

procedure ListStudent();
var
   Student : TStudent;
begin
  Writeln('您选择了查询功能,信息列表如下:');
  for Student in StudentList do
  begin
    with Student do
    begin
      Writeln('编号:',ID,#$09,'姓名:',Name);
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
  Writeln('您选择了删除功能,请输入要删除学生的姓名:');
   Readln(UserName);
   indexs := 0;
   ArrayLength := Length(StudentList);
   for Student in StudentList do
   begin
      with Student do
       begin
          if (UserName=Name) then
          begin
             //删除操作慎用，需要用户二次确认
             Writeln('您确认要删除【',ID,Name,'】信息吗？Y/N');
             Readln(IsTrue);
             if (IsTrue='Y') then
             begin
                Delete(StudentList,Indexs,1);
                if(Length(StudentList)>ArrayLength) then
                begin
                   Writeln('删除成功！');
                end
                else
                begin
                   Writeln('删除失败！');
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
   Writeln('您选择了修改功能,请输入要修改的学生姓名:');
   Readln(UName);
   for I := Low(StudentList) to High(StudentList) do
   begin
      with  StudentList[I] do
      begin
          if (Name=UName) then
          begin
            Writeln('请输入新的姓名');
            Readln(UName);
            Name := UName;
            IsExist := True;
            Break;
          end;
      end;

   end;
   if(IsExist = False)then
   begin
     Writeln('修改失败，查无此人!');
   end;
end;

{选择菜单}
procedure ShowMenu();
begin
   Writeln('');
   Writeln('********学生信息管理系统*********');
   Writeln('');
   Writeln('1、添加信息');
   Writeln('2、删除信息');
   Writeln('3、查询信息');
   Writeln('4、修改信息');
   Writeln('');
   Writeln('*********************************');
end;
procedure UserChoose();
var
  UserChooseIndex : Integer;
begin
  Writeln('请选择您要使用的功能:');
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
      Writeln('请输入正确的序号:');
  end;

  end;

end;



begin
    StudentList := []; //初始化学生信息列表
    while True do
    begin
        ShowMenu();
        UserChoose();
    end;



    Readln;
end.
