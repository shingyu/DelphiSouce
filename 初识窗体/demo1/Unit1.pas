unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    btnMsg: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btnMsgClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     //���������Ϣ��ţ���Ϊ1024ǰ����Ϣ��Ŷ���ʹ���ˣ����Լ�1
    procedure ShowMyMsg(var Msg:TMessage);message WM_USER + 1;
    end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnMsgClick(Sender: TObject);
begin
//������Ϣ
   SendMessage(Self.Handle,WM_USER + 1,100,Integer(PChar('���')));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   ShowMessage('HelloWorld');
   Application.MessageBox('HelloWorld',PWideChar('��ܰ��ʾ'),0);
   {ShowMyMsg();�������ʽ���� }
end;


{��Ϣ������̣��ù��������ֶ�����ʽ������}
procedure TForm1.ShowMyMsg(var Msg: TMessage);
begin
  ShowMessage(PChar(msg.LParam));
end;

end.
