unit Unit1;

interface

uses
  System.IOUtils,System.IniFiles,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ����: TLabel;
    edtName: TEdit;
    �Ա�: TLabel;
    rgSex: TRadioGroup;
    rbMan: TRadioButton;
    rbWoman: TRadioButton;
    Label1: TLabel;
    edtAge: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CbAddress: TComboBox;
    Label3: TLabel;
    btnSave: TButton;
    procedure btnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ConfigPath:string;

implementation

{$R *.dfm}

procedure TForm1.btnSaveClick(Sender: TObject);

  var
    IniFile:TIniFile;
    Section:string;
begin
  //�����ļ�
    ConfigPath :=  TDirectory.GetCurrentDirectory()+'\UserConfig.ini';
    IniFile:= TIniFile.Create(ConfigPath);
    Section := 'basic';
    IniFile.WriteString(Section,'edtName',edtName.Text);
    IniFile.WriteString(Section,'edtAge',edtAge.Text);
    IniFile.WriteBool(Section,'man',rbMan.Checked);
    IniFile.WriteBool(Section,'CheckBox1',CheckBox1.Checked);
    IniFile.WriteBool(Section,'CheckBox2',CheckBox2.Checked);
    IniFile.WriteInteger(Section,'address',CbAddress.ItemIndex);


end;

procedure TForm1.FormCreate(Sender: TObject);
  var
    IniFile:TIniFile;
begin
    ConfigPath :=  TDirectory.GetCurrentDirectory()+'\UserConfig.ini';
    IniFile:= TIniFile.Create(ConfigPath);
    edtName.Text := IniFile.ReadString('basic','edtName','');
    edtAge.Text := IniFile.ReadString('basic','edtAge','');
    rbMan.Checked := IniFile.ReadBool('basic','man',False);
    rbWoman.Checked := not rbMan.Checked;
    CheckBox1.Checked := IniFile.ReadBool('basic','CheckBox1',False);
    CheckBox2.Checked := IniFile.ReadBool('basic','CheckBox2',False);
    CbAddress.ItemIndex := IniFile.ReadInteger('basic','address',0);
    //IniFile.DeleteKey(); ɾ��


end;

end.
