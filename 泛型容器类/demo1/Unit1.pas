unit Unit1;

interface

{
1.了解key--value的存储方式
    身份证号码-----个人信息
        key          value
  key要求唯一


2.掌握TDictionary类中的常用方法


}

uses
 System.Generics.Collections, Unit2,DaoUnit,AddformUnit,  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;


implementation

{$R *.dfm}

procedure TMainForm.Button1Click(Sender: TObject);
var
    Addform : TAddform;
begin
    Addform :=  TAddform.Create(Self);
    Addform.Left := Self.Left + 50;
    Addform.Top := Self.Top + 15;
   Addform.ShowModal;

end;

procedure TMainForm.Button2Click(Sender: TObject);
var
  Dictionary:TDictionary<string,TStudent> ;
  Stu:TStudent;
begin
    Memo1.Lines.Clear;
   Dictionary := TDao.ListStu;
   for Stu in Dictionary.Values do
   begin
     Memo1.Lines.Add(Stu.Id+','+Stu.Name+','+Stu.Age.ToString);
   end;


end;

procedure TMainForm.Button4Click(Sender: TObject);
begin
    TDao.Clear;
    Memo1.Lines.Clear;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  //初始化

end;

end.
