unit AddformUnit;

interface

uses
  System.Generics.Collections,System.StrUtils,Unit2,DaoUnit,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TAddform = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdtName: TEdit;
    EdtAge: TEdit;
    BtnSave: TButton;
    BtnCancel: TButton;
    procedure BtnSaveClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Addform: TAddform;

implementation
 uses Unit1;//为了避免交叉引用，在此引用
{$R *.dfm}

procedure TAddform.BtnCancelClick(Sender: TObject);
begin
   Self.Close;
end;

procedure TAddform.BtnSaveClick(Sender: TObject);
var
  Dictionary:TDictionary<string,TStudent> ;
  Key:string;
  Stu:TStudent;
begin
  TDao.Add(TStudent.Create(EdtName.Text,StrToInt(EdtAge.Text),TGUID.NewGuid.ToString));
  Self.Close;
  MainForm.Memo1.Lines.Clear;
   Dictionary := TDao.ListStu;
   //第二种遍历方式
   for Key in  Dictionary.Keys  do
   begin
      Dictionary.TryGetValue(Key,Stu);
      MainForm.Memo1.Lines.Add(Stu.Id+','+Stu.Name+','+Stu.Age.ToString);
   end;
end;

end.
