﻿object Form1: TForm1
  Left = 594
  Top = 244
  BorderStyle = bsDialog
  Caption = 'Ini'#37197#32622#25991#20214#25805#20316
  ClientHeight = 481
  ClientWidth = 309
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
  object 姓名: TLabel
    Left = 16
    Top = 32
    Width = 28
    Height = 13
    Caption = #22995#21517':'
  end
  object 性别: TLabel
    Left = 16
    Top = 168
    Width = 28
    Height = 13
    Caption = #24615#21035':'
  end
  object Label1: TLabel
    Left = 16
    Top = 96
    Width = 28
    Height = 13
    Caption = #24180#40836':'
  end
  object Label2: TLabel
    Left = 16
    Top = 248
    Width = 28
    Height = 13
    Caption = #29233#22909':'
  end
  object Label3: TLabel
    Left = 16
    Top = 384
    Width = 28
    Height = 13
    Caption = #22320#22336':'
  end
  object edtName: TEdit
    Left = 80
    Top = 29
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object rgSex: TRadioGroup
    Left = 80
    Top = 152
    Width = 153
    Height = 52
    Caption = 'rgSex'
    TabOrder = 1
    Visible = False
  end
  object rbMan: TRadioButton
    Left = 88
    Top = 167
    Width = 113
    Height = 17
    Caption = #30007
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object rbWoman: TRadioButton
    Left = 168
    Top = 163
    Width = 49
    Height = 25
    Caption = #22899
    TabOrder = 3
  end
  object edtAge: TEdit
    Left = 80
    Top = 93
    Width = 153
    Height = 21
    NumbersOnly = True
    TabOrder = 4
  end
  object GroupBox1: TGroupBox
    Left = 80
    Top = 248
    Width = 153
    Height = 105
    TabOrder = 5
    object CheckBox1: TCheckBox
      Left = 19
      Top = 32
      Width = 33
      Height = 17
      Caption = #38065
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 88
      Top = 32
      Width = 97
      Height = 17
      Caption = #32534#31243
      TabOrder = 1
    end
  end
  object CbAddress: TComboBox
    Left = 80
    Top = 381
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 6
    Text = #21271#20140#28023#28096
    Items.Strings = (
      #21271#20140#28023#28096
      #27827#21271#20445#23450
      #27827#21335#37073#24030)
  end
  object btnSave: TButton
    Left = 112
    Top = 432
    Width = 75
    Height = 25
    Caption = #20445#23384#35774#32622' '
    TabOrder = 7
    OnClick = btnSaveClick
  end
end
