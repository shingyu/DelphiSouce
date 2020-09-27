unit Unit1;

interface

uses
 System.JSON,System.Generics.Collections,System.JSON.Serializers,  Unit2,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  UserJson :string;
  Serializers:TJsonSerializer;
  Student : TStudent;
begin
  //�ַ������͵�json����
     UserJson := '{"FName":"С��","FAge":"18"}';
     Serializers:= TJsonSerializer.Create();

     //�����л�
     Student := Serializers.Deserialize<TStudent>(UserJson);

     Memo1.Lines.Add('�����л�:'+Student.Name+','+Student.Age.ToString);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  UserJson :string;
  Serializers:TJsonSerializer;
  Student : TStudent;
begin
   //����ʵ�������
    Student := TStudent.Create;
    Student.Name :=  'С��';
    Student.Age :=  30;
   //�������л�����
    Serializers:=TJsonSerializer.Create();
    //���л�

    Memo1.Lines.Add('���л�:'+ Serializers.Serialize<TStudent>(Student));


end;

procedure TForm1.Button3Click(Sender: TObject);
var

  Student : TStudent;
  List :TList<TStudent>;
  Serializers:TJsonSerializer;
begin
   //����ʵ�������

    List := TList<TStudent>.Create;
    List.Add(TStudent.Create('С��',30));
    List.Add(TStudent.Create('��Ǿ',30));
   //�������л�����
    Serializers:=TJsonSerializer.Create();

    Memo1.Lines.Add('���л�:'+ Serializers.Serialize<TList<TStudent>>(List));
  //�ַ������͵�json����
   //  UserJson := '[{"FName":"С��","FAge":"18"},{"FName":"��Ǿ","FAge":"30"}]';



end;

procedure TForm1.Button4Click(Sender: TObject);
var
  UserJson :string;
  List :TList<TStudent>;
  Serializers:TJsonSerializer;
  Stu : TStudent;
begin
   UserJson:='{"FListHelper":{"FCount":2},"FItems":[{"FName":"С��","FAge":30},{"FName":"��Ǿ","FAge":30}],"FComparer":{}}';

      //�������л�����
   Serializers:=TJsonSerializer.Create();
  List:= Serializers.Deserialize<TList<TStudent>>(UserJson);
  for Stu in List do
  begin
    Memo1.Lines.Add('�����л�:'+Stu.Name+','+Stu.Age.ToString)
  end;
   //ֻ��ȡһ������Ҫ����ͬʱ��ȡ


  Memo1.Lines.Add(TJSONObject.ParseJSONValue(UserJson).GetValue<TJSONObject>('FListHelper').Getvalue<string>('FCount'));
  Memo1.Lines.Add(TJSONObject.ParseJSONValue(UserJson).GetValue<TJSONArray>('FItems').Count.ToString);
  //������ȡ����ķ���
end;

end.