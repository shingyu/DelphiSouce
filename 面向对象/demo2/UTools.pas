unit UTools;

interface //申明区域
uses
    Unit1;

 var
    Name: string;

  type
      TPerson = class
      private
          FName:string; //一般不允许外界改变字段。不能直接访问
          FAge : Integer;
          function GetAge():Integer; //申明一个函数，用于获取字段的值
          procedure SetAge(FAge:Integer);
      public
          property Name: string read FName write FName;
          property Age: Integer read GetAge write SetAge;
      end;

      TStudent = class
        public
          procedure Demo1();
      end;

implementation //实现区域
 var
    Age:Integer; //interface部分申明的外部可用，本部分外部不可用

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

initialization //初始化区域
 Name:='成龙';
 Age :=18;

finalization //销毁区域
  Name := '';
  Age := 0;
end.
