object Form1: TForm1
  Left = 564
  Top = 350
  Caption = 'Form1'
  ClientHeight = 261
  ClientWidth = 477
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
  object Memo1: TMemo
    Left = 8
    Top = 80
    Width = 461
    Height = 173
    TabOrder = 0
  end
  object BtnAdd: TButton
    Left = 16
    Top = 32
    Width = 75
    Height = 25
    Caption = #28155#21152
    TabOrder = 1
    OnClick = BtnAddClick
  end
  object BtnDel: TButton
    Left = 103
    Top = 32
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 2
  end
  object BtnFind: TButton
    Left = 200
    Top = 32
    Width = 75
    Height = 25
    Caption = #26597#35810
    TabOrder = 3
    OnClick = BtnFindClick
  end
  object BtnUpdate: TButton
    Left = 295
    Top = 32
    Width = 75
    Height = 25
    Caption = #20462#25913
    TabOrder = 4
  end
  object BtnClean: TButton
    Left = 394
    Top = 32
    Width = 75
    Height = 25
    Caption = #28165#31354
    TabOrder = 5
  end
  object edtUName: TEdit
    Left = 8
    Top = 5
    Width = 121
    Height = 21
    TabOrder = 6
  end
end
