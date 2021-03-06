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
  //字符串类型的json对象
     UserJson := '{"FName":"小黑","FAge":"18"}';
     Serializers:= TJsonSerializer.Create();

     //反序列化
     Student := Serializers.Deserialize<TStudent>(UserJson);

     Memo1.Lines.Add('反序列化:'+Student.Name+','+Student.Age.ToString);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  UserJson :string;
  Serializers:TJsonSerializer;
  Student : TStudent;
begin
   //创建实体类对象
    Student := TStudent.Create;
    Student.Name :=  '小白';
    Student.Age :=  30;
   //创建序列化对象
    Serializers:=TJsonSerializer.Create();
    //序列化

    Memo1.Lines.Add('序列化:'+ Serializers.Serialize<TStudent>(Student));


end;

procedure TForm1.Button3Click(Sender: TObject);
var

  Student : TStudent;
  List :TList<TStudent>;
  Serializers:TJsonSerializer;
begin
   //创建实体类对象

    List := TList<TStudent>.Create;
    List.Add(TStudent.Create('小白',30));
    List.Add(TStudent.Create('萧蔷',30));
   //创建序列化对象
    Serializers:=TJsonSerializer.Create();

    Memo1.Lines.Add('序列化:'+ Serializers.Serialize<TList<TStudent>>(List));
  //字符串类型的json对象
   //  UserJson := '[{"FName":"小黑","FAge":"18"},{"FName":"萧蔷","FAge":"30"}]';



end;

procedure TForm1.Button4Click(Sender: TObject);
var
  UserJson :string;
  List :TList<TStudent>;
  Serializers:TJsonSerializer;
  Stu : TStudent;
begin
   UserJson:='{"FListHelper":{"FCount":2},"FItems":[{"FName":"小白","FAge":30},{"FName":"萧蔷","FAge":30}],"FComparer":{}}';

      //创建序列化对象
   Serializers:=TJsonSerializer.Create();
  List:= Serializers.Deserialize<TList<TStudent>>(UserJson);
  for Stu in List do
  begin
    Memo1.Lines.Add('反序列化:'+Stu.Name+','+Stu.Age.ToString)
  end;
   //只获取一个，不要两个同时获取


  Memo1.Lines.Add(TJSONObject.ParseJSONValue(UserJson).GetValue<TJSONObject>('FListHelper').Getvalue<string>('FCount'));
  Memo1.Lines.Add(TJSONObject.ParseJSONValue(UserJson).GetValue<TJSONArray>('FItems').Count.ToString);
  //下面是取数组的方法
end;

end.
