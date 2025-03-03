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
     //最后那是消息编号，因为1024前的消息编号都被使用了，所以加1
    procedure ShowMyMsg(var Msg:TMessage);message WM_USER + 1;
    end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnMsgClick(Sender: TObject);
begin
//发送消息
   SendMessage(Self.Handle,WM_USER + 1,100,Integer(PChar('你好')));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   ShowMessage('HelloWorld');
   Application.MessageBox('HelloWorld',PWideChar('温馨提示'),0);
   {ShowMyMsg();这就是显式调用 }
end;


{消息处理过程，该过程无需手动（显式）调用}
procedure TForm1.ShowMyMsg(var Msg: TMessage);
begin
  ShowMessage(PChar(msg.LParam));
end;

end.
