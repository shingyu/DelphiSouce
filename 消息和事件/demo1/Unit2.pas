unit Unit2;

interface
 uses
  System.SysUtils, Winapi.Windows,Vcl.dialogs;

type
    {用于传输消息的结构}
  TMyMsg = record
    //消息号
    MsgNum:Cardinal; //long 型
    //传输的消息内容
    MsgText:ShortString;
  end;
     {消息处理类}
     TMsgAccepter = class(TObject)
     private
     {用于处理消息编号是2000的消息}
       procedure AcceptMsg2000(var msg:TMyMsg);message 2000;
     public
       procedure DefaultHandler(var Message);override;
       {父类的访问权限就是public 因此default在子类也必须public}
     end;
implementation

{ TMsgAccepter }

procedure TMsgAccepter.AcceptMsg2000(var msg: TMyMsg);
begin
   ShowMessage('接受到消息，编号是：'+msg.MsgNum.ToString+',消息内容是：'+msg.MsgText);
end;

procedure TMsgAccepter.DefaultHandler(var Message);
begin
  ShowMessage('对不起，该消息编号无法处理');

end;

end.
