program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

procedure Sum();
var
    i,SumNum:Integer;
begin
    SumNum := 0;
    for i := 1 to 100 do
    begin
        SumNum:= i + SumNum;

    end;
     Writeln(SumNum);
end;

procedure Counter();
var
    i : Integer;
    SumNum: Integer;
    Amount : Integer;
begin
     SumNum:= 0 ;
     Amount:=0   ;
    for I := 1 to 100 do
    begin
        if i mod 7 = 0 then
        begin
            SumNum:= i + SumNum;
            Amount:=Amount + 1;
        end;
    end;
    Writeln(SumNum,',',Amount);
end;
{  输出所有的水仙花数，即一个3位数，各个数字
立方和等于其本身例如：153=1*1*1+3*3*3+5*5*5

}
procedure NarNum();
var
    NarNu: Integer ;
    HuNu: Integer ;
    TenNu: Integer ;
    Nu: Integer ;

begin

    for NarNu := 100 to 999 do
    begin
        HuNu := NarNu div 100;
        TenNu:= (NarNu mod 100) div 10;
        Nu := (NarNu mod 100) mod 10;
        if (HuNu*HuNu*HuNu+TenNu*TenNu*TenNu+Nu*Nu*Nu)=NarNu then
        begin
            Writeln(NarNu);
        end;

    end;

end;

{99乘法表
}
procedure MultipleTable();
var
    row: Integer;
    col: Integer;
begin
    for row := 1 to 9 do
    begin
      for col := 1 to row do
      begin
         Write(col,'X',row,'=',(row*col));
      end;

      Writeln('');
    end;
end;


begin
  MultipleTable();
  Readln;
end.
