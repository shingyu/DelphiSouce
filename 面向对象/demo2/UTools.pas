unit UTools;

interface //��������
uses
    Unit1;

 var
    Name: string;

  type
      TPerson = class
      private
          FName:string; //һ�㲻�������ı��ֶΡ�����ֱ�ӷ���
          FAge : Integer;
          function GetAge():Integer; //����һ�����������ڻ�ȡ�ֶε�ֵ
          procedure SetAge(FAge:Integer);
      public
          property Name: string read FName write FName;
          property Age: Integer read GetAge write SetAge;
      end;

      TStudent = class
        public
          procedure Demo1();
      end;

implementation //ʵ������
 var
    Age:Integer; //interface�����������ⲿ���ã��������ⲿ������

{ TPerson }

function TPerson.GetAge: Integer;
begin
    Result := Self.FAge;
end;

procedure TPerson.SetAge(FAge: Integer);
begin
   Self.FAge := FAge;
end;

{ TStudent }

procedure TStudent.Demo1;
begin

end;

initialization //��ʼ������
 Name:='����';
 Age :=18;

finalization //��������
  Name := '';
  Age := 0;
end.
