object Form7: TForm7
  Left = 324
  Top = 178
  Width = 766
  Height = 332
  Caption = 'FormPOIN'
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
    Width = 39
    Height = 13
    Caption = 'ID POIN'
  end
  object lbl2: TLabel
    Left = 48
    Top = 88
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object lbl3: TLabel
    Left = 48
    Top = 152
    Width = 28
    Height = 13
    Caption = 'JENIS'
  end
  object lbl4: TLabel
    Left = 40
    Top = 184
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object lbl5: TLabel
    Left = 48
    Top = 120
    Width = 34
    Height = 13
    Caption = 'BOBOT'
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
    Top = 232
    Width = 105
    Height = 41
    Caption = 'BARU'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 152
    Top = 232
    Width = 105
    Height = 41
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 272
    Top = 232
    Width = 105
    Height = 41
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 392
    Top = 232
    Width = 105
    Height = 41
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 512
    Top = 232
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
    Height = 145
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
    Top = 152
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'Pelanggaran'
      'Prestasi')
  end
  object cbb2: TComboBox
    Left = 104
    Top = 184
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'Aktif'
      'Tidak Aktif')
  end
  object btn6: TButton
    Left = 632
    Top = 232
    Width = 97
    Height = 41
    Caption = 'SHOW REPORT'
    TabOrder = 10
    OnClick = btn6Click
  end
  object edt3: TEdit
    Left = 104
    Top = 120
    Width = 273
    Height = 21
    TabOrder = 11
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 600
    Top = 16
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from poin')
    Params = <>
    Left = 640
    Top = 16
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
    Left = 680
    Top = 16
  end
end
