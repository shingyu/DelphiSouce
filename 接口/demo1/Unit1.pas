unit Unit1;

interface
   type
   IUsb = interface
      ['{A4ABC1A5-A6DC-4152-AD10-D830EB9AF8A2}']//ctri shift +G
     procedure Read();
   end;

   IUsb2 = interface
      procedure write();
   end;

   IUsb3 = interface(IUsb2)

   end; //接口继承接口

   TComputer = class(TInterfacedObject)

   public
      procedure Run();virtual;abstract;//接口的抽象方法
      //必须实现，而它的抽象方法不用必须实现


   end;

   TLaptop = class(TComputer,IUsb2,IUsb)
         procedure Read();
         procedure write();
   end;  //类继承接口
implementation

{ TComputer }



{ TLaptop }

procedure TLaptop.Read;
begin

end;

procedure TLaptop.write;
begin

end;

end.
