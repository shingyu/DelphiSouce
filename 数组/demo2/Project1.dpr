program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
//声明动态数组, array[1..100]不需要 不用写长度
type
    StringArray = array of string;
  var
    NameArray : StringArray ;
    AddressArray : StringArray ;
    AddressArray1 : StringArray ;
    DataArray : StringArray ;
    DataArray1 : StringArray ;
  var
    indexs  : Integer;
  var
     Name:string;
procedure InitArray();
begin
    //设置长度
  SetLength(NameArray,20);
  NameArray := StringArray.Create('成龙','成狗');//另一种设置方法
  NameArray := ['成龙','成狗','成猪','成虎']; //再一种
  Writeln(Length(NameArray),',',Low(NameArray));
end;
// 遍历
procedure  ListArray();
begin
   NameArray := ['成龙','成狗','成猪','成虎'];
  for indexs := Low(NameArray) to High(NameArray) do
  begin
     Writeln(NameArray[indexs]);
  end;
end;
//遍历方法二
procedure  ListArray2();
begin
   NameArray := StringArray.Create('成龙','成狗');
  for Name in NameArray do
  begin
      Writeln(Name);
  end;
end;
begin
  NameArray := StringArray.Create('成龙','成狗');
  AddressArray := StringArray.Create('北京','上海');
  AddressArray1 := StringArray.Create('弥陀','分水');
  DataArray := StringArray.Create('成都','泸州');
  DataArray := Concat (NameArray,AddressArray) ;//链接数组
  DataArray1 := Copy(DataArray,Low(DataArray),Length(DataArray));//复制数组
  Insert(AddressArray1,DataArray1,0); //插入
  Delete(DataArray1,0,1);//删除  Length(DataArray1)-2 , Length(DataArray1) 删倒数

  for Name in DataArray1 do
  begin
     Writeln(Name);
  end;

  Readln;
end.
