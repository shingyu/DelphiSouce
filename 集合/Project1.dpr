program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.TypInfo ,System.SysUtils;
  {最标准的定义方式}
type
 TMySet = set of char;
 {另一种定义方式 调用时 MSet:TMySet;}
 TMySet1 = set of 'a'..'z';
 int = Integer;
 {下一种定义}

type
    TColors=(RED,GREEN,BLUE);

type
    TSetColors = set of TColors;
   {或者 TSetColors1 = set of RED..BLUE;   }
var
 MySet2 : set of 1..2; //相当于简写，即定义又调用了

{type:让程序可以自定义类型}
   indexs: int;
   sc : TSetColors;
   MSet : TMySet;
procedure ListSet();
begin
   { indexs := 100;
   Writeln(indexs);  }

   {遍历集合元素，但集合是无序的。可通过子界或枚举的边界
   来获得数据}
   for indexs := Ord(Low(TColors)) to Ord(High(TColors)) do
    begin
      //Writeln(indexs);

       Writeln(GetEnumName(TypeInfo(TColors),indexs));
    end;

end;
begin
   MSet := ['z','x'];

   Readln;
end.
