unit Unit2;

interface
 uses
  System.SysUtils, Winapi.Windows,Vcl.dialogs;

type
    {���ڴ�����Ϣ�Ľṹ}
  TMyMsg = record
    //��Ϣ��
    MsgNum:Cardinal; //long ��
    //�������Ϣ����
    MsgText:ShortString;
  end;
     {��Ϣ������}
     TMsgAccepter = class(TObject)
     private
     {���ڴ�����Ϣ�����2000����Ϣ}
       procedure AcceptMsg2000(var msg:TMyMsg);message 2000;
     public
       procedure DefaultHandler(var Message);override;
       {����ķ���Ȩ�޾���public ���default������Ҳ����public}
     end;
implementation

{ TMsgAccepter }

procedure TMsgAccepter.AcceptMsg2000(var msg: TMyMsg);
begin
   ShowMessage('���ܵ���Ϣ������ǣ�'+msg.MsgNum.ToString+',��Ϣ�����ǣ�'+msg.MsgText);
end;

procedure TMsgAccepter.DefaultHandler(var Message);
begin
  ShowMessage('�Բ��𣬸���Ϣ����޷�����');

end;

end.
