object Form6: TForm6
  Left = 595
  Top = 358
  Width = 775
  Height = 443
  Caption = 'FormHUBUNGAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 40
    Top = 56
    Width = 47
    Height = 13
    Caption = 'ID SISWA'
  end
  object lbl2: TLabel
    Left = 40
    Top = 88
    Width = 42
    Height = 13
    Caption = 'ID ORTU'
  end
  object lbl3: TLabel
    Left = 24
    Top = 120
    Width = 61
    Height = 13
    Caption = 'STATUS HUB'
  end
  object lbl4: TLabel
    Left = 16
    Top = 152
    Width = 66
    Height = 13
    Caption = 'KETERANGAN'
  end
  object edt1: TEdit
    Left = 104
    Top = 56
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 104
    Top = 88
    Width = 273
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 32
    Top = 208
    Width = 105
    Height = 41
    Caption = 'BARU'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 152
    Top = 208
    Width = 105
    Height = 41
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 272
    Top = 208
    Width = 105
    Height = 41
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 392
    Top = 208
    Width = 105
    Height = 41
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 512
    Top = 208
    Width = 105
    Height = 41
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 392
    Top = 56
    Width = 337
    Height = 121
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object cbb1: TComboBox
    Left = 104
    Top = 120
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Kandung '
      'Angkat')
  end
  object cbb2: TComboBox
    Left = 104
    Top = 152
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'Ayah '
      'Ibu')
  end
  object btn6: TButton
    Left = 632
    Top = 208
    Width = 97
    Height = 41
    Caption = 'SHOW REPORT'
    TabOrder = 10
    OnClick = btn6Click
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 608
    Top = 8
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from hubungan')
    Params = <>
    Left = 648
    Top = 8
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3307
    Database = 'db_siswa'
    User = 'root'
    Protocol = 'mysql-5'
    LibraryLocation = 
      'C:\Users\mhmmd\OneDrive\Documents\_Uniska_\Muhammad Zaqi Al Ider' +
      'us\Visual2\Visual2-UAS\libmysql.dll'
    Left = 688
    Top = 8
  end
end
