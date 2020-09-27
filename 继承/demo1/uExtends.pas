unit uExtends;

interface
 type
    TAnimal = class
    private
        FWeight : Integer;
    public
        constructor Create(FWeight : Integer);//����һ�����췽��

      property Weight: Integer read FWeight write FWeight;
      procedure GetName();virtual;//����һ���鷽��
    end;
    TDog = class(TAnimal)//�����࣬�̳�
          public
        constructor Create();
        procedure GetName();override;//��д�����е��鷽��
    end;
    TCat = class(TAnimal)
           public
        constructor Create();

    end;
implementation

    { TAnimal }



    { TAnimal }

constructor TAnimal.Create(FWeight: Integer);
begin
   Self.FWeight :=  FWeight;
end;

procedure TAnimal.GetName;
begin
   Writeln('������ķ���');
end;

{ TDog }

    constructor TDog.Create;
    begin
         Writeln('����');
         //ֱ�ӵ��ø��෽��
         inherited  Create(1001);
    end;

    procedure TDog.GetName;
begin
   inherited;
   Writeln('TDog.GetName�ķ���');

end;

{ TCat }

    constructor TCat.Create;
    begin
        Writeln('è��');
    end;


end.
