object MainForm: TMainForm
  Left = 534
  Top = 335
  Caption = #27867#22411#23481#22120#31867
  ClientHeight = 261
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 24
    Top = 16
    Width = 75
    Height = 25
    Caption = #28155#21152
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 16
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 264
    Top = 16
    Width = 75
    Height = 25
    Caption = #20462#25913
    TabOrder = 2
  end
  object Button4: TButton
    Left = 376
    Top = 16
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 3
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 47
    Width = 456
    Height = 206
    Lines.Strings = (
      '')
    TabOrder = 4
  end
end
