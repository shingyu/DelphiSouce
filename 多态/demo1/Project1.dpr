program Project1;

{$APPTYPE CONSOLE}

{$R *.res}
{*------------------------------------------------------------------------------
ʲô�Ƕ�̬��һ�������Զ�����̬���ڣ����磺
������͹��ࡢè��Ĺ�ϵ
    -��װ���̳С���̬
    ǰ�᣺����������̳к�ʵ�������ֹ�ϵ��һ��
    �������֣�������ջ�ָ�����������
��ʲô��
  -��ߴ���ĸ����ԣ��������ǶԴ�����н������
  ��������֮�䲻����ֱ�ӵ�������ϵ
��ôʹ��

-------------------------------------------------------------------------------}
uses
  System.SysUtils,
  Unit1 in 'Unit1.pas';

procedure ShowAnimalRun(Animal:TAnimal); //����ת��
var
    Dog:TDog;
begin
    Animal.Run;
    {��������ת��}
    Writeln(Animal.ClassName);
    if Animal.ClassName = 'TDog' then
    begin
      Dog:=TDog(Animal);
      Dog.LookDoor;
    end;
     if Animal is TDog then
        Writeln('scucess'); //�ж�һ�������Ƿ��һ�������
      if Animal is TDog then
      begin
        Dog := Animal as TDog;
        if Assigned(Dog) then //�ж϶����Ƿ�Ϊ��
        begin
           Writeln('volid');
        end;

         Dog.LookDoor;
      end;
    Dog:=TDog(Animal); //ǿ������ת��
    Dog.LookDoor;//Animal.LookDoor;Ϊʲô����?����ת�ͣ�����������
                    //����ת���˸�����������ͣ�Ҳ�������е�������ʧ
end;

{var
   Animal:TAnimal;
   ColorDog:TColor;  }
begin
  {Animal:= TDog.Create;
  ColorDog:= TDog.Create;
  Animal:= TCat.Create;
  Animal.Run;}
  ShowAnimalRun(TDog.Create);//Ҳ���Դ���TDog.Create;
  Readln;
end.
