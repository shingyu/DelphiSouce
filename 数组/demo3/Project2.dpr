program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

  {多维数组：三维以上称为多维数组}
type //动态二维
   TStringDynamicArray = array of array of string;
type//静态二维
   TStringStaticArray = array[0..3] of array[0..2] of string;
  var
      DynamicNameArray : TStringDynamicArray;
      StaticNameArray : TStringStaticArray;
  var Indexs: Integer;
      I : Integer;
procedure  init();
begin
    DynamicNameArray := [['你好','中国','萧蔷'],['张三','成龙','吴京']];
    Writeln(DynamicNameArray[0][2]);
    for Indexs := Low(DynamicNameArray) to High(DynamicNameArray) do
       for I := Low(DynamicNameArray[Indexs]) to High(DynamicNameArray[Indexs]) do
       begin
           Writeln(DynamicNameArray[Indexs][I]);
       end;

end;

begin
    StaticNameArray[0][0] := '春暖花开';


    Readln;
end.
