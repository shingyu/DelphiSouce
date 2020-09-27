unit Unit1;

interface

uses
System.Generics.Collections, Unit2, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    BtnAdd: TButton;
    BtnDel: TButton;
    BtnFind: TButton;
    BtnUpdate: TButton;
    BtnClean: TButton;
    edtUName: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtnFindClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  //ѧ���б�
  StudentList:TList<TStudent>;
implementation

{$R *.dfm}

procedure TForm1.BtnAddClick(Sender: TObject);
  var
    Stu:TStudent;
begin
   Memo1.Lines.Clear;
  if edtUName.Text<>''  then   //�жϲ����ڿ�
     StudentList.Add(TStudent.Create(edtUName.Text))
  else
       MessageBox(Self.Handle,'��������Ϊ��','��ܰ��ʾ',MB_OK);
    Memo1.Lines.Clear;
   for Stu in StudentList  do
   begin
     Memo1.Lines.Add(Stu.Name);

   end;

end;

procedure TForm1.BtnFindClick(Sender: TObject);
  var
    Stu:TStudent;
begin
     Memo1.Lines.Clear;
   for Stu in StudentList  do
   begin
     Memo1.Lines.Add(Stu.Name);

   end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //��ʼ��ѧ���б�
  StudentList := TList<TStudent>.Create;
  StudentList.Add(TStudent.Create('С��'));
  StudentList.Add(TStudent.Create('����'));
  StudentList.Add(TStudent.Create('���'));
  StudentList.Add(TStudent.Create('��Ȩ'));
  StudentList.Add(TStudent.Create('�Ƹ�'));
end;

end.
