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

   end; //�ӿڼ̳нӿ�

   TComputer = class(TInterfacedObject)

   public
      procedure Run();virtual;abstract;//�ӿڵĳ��󷽷�
      //����ʵ�֣������ĳ��󷽷����ñ���ʵ��


   end;

   TLaptop = class(TComputer,IUsb2,IUsb)
         procedure Read();
         procedure write();
   end;  //��̳нӿ�
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
