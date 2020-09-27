unit Unit2;

interface
  type
    TStudent =class
      private
        FName:string;
        FAge:Integer;
        FId : string;
      public

      constructor Create(); overload;
      constructor Create(FName:string;FAge:Integer;FId:string); overload;

      property Name : string read FName write FName;
      property Age : Integer read FAge write FAge;
      property Id : string read FId write FId;
    end;

implementation

{ TStudent }

constructor TStudent.Create(FName: string; FAge: Integer;FId:string);
begin
   Self.FId := FId;
   Self.FName := FName;
   Self.FAge := FAge;
end;

constructor TStudent.Create;
begin

end;

end.
