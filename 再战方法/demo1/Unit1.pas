unit Unit1;

interface

type
    TPerson = class
      public
        procedure Talk(); //��̬����
        function Run():Integer;virtual;
        //function Run():Integer;Dynamic;
        class procedure Eat(); //�෽��
        {��ʾ�෽���͹��췽���ļ���˳��}
        constructor Create1(); //�෽������˳�������ڹ��췽��
        procedure Sleep();virtual;abstract;//���󷽷�
    end;
TUser = class(TPerson)
    public
        function Round():Integer;
        procedure Sleep();

    end;
implementation

{ TPerson }

constructor TPerson.Create1;
begin
    Writeln('constructor');
end;

class procedure TPerson.Eat;
begin
    Writeln('Eat');
end;

function TPerson.Run: Integer;
begin
  {һ������£���������ⷽ������һ����ʵ��
  �籾�У�����������ר�����������า���õ�
  ΪʲôҪ�ã�����������Ը���ʲô��֪��������
  ����˵����û���Ը�����дһ��������Ը񣬵���
  �������������}
end;

procedure TPerson.Talk;
begin
  Writeln('Talk');
end;

{ TUser }

function TUser.Round: Integer;
begin
   Writeln('ϲ������');
end;

procedure TUser.Sleep;
begin

end;

end.
