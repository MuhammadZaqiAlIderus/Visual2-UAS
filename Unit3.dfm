object Form3: TForm3
  Left = 691
  Top = 236
  Width = 860
  Height = 490
  Caption = 'FormORTU'
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
    Top = 48
    Width = 42
    Height = 13
    Caption = 'ID ORTU'
  end
  object lbl2: TLabel
    Left = 64
    Top = 80
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl3: TLabel
    Left = 24
    Top = 112
    Width = 60
    Height = 13
    Caption = 'NAMA ORTU'
  end
  object lbl4: TLabel
    Left = 24
    Top = 144
    Width = 61
    Height = 13
    Caption = 'PENDIDIKAN'
  end
  object lbl5: TLabel
    Left = 432
    Top = 48
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object lbl6: TLabel
    Left = 24
    Top = 176
    Width = 57
    Height = 13
    Caption = 'PEKERJAAN'
  end
  object lbl7: TLabel
    Left = 424
    Top = 112
    Width = 36
    Height = 13
    Caption = 'AGAMA'
  end
  object lbl8: TLabel
    Left = 416
    Top = 80
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl9: TLabel
    Left = 384
    Top = 144
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl10: TLabel
    Left = 416
    Top = 176
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object edt1: TEdit
    Left = 96
    Top = 48
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 96
    Top = 80
    Width = 273
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 96
    Top = 112
    Width = 273
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 96
    Top = 144
    Width = 273
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 96
    Top = 176
    Width = 273
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 472
    Top = 112
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'Islam'
      'Kristen')
  end
  object edt6: TEdit
    Left = 472
    Top = 48
    Width = 273
    Height = 21
    TabOrder = 6
  end
  object edt7: TEdit
    Left = 472
    Top = 80
    Width = 273
    Height = 21
    TabOrder = 7
  end
  object btn1: TButton
    Left = 40
    Top = 216
    Width = 105
    Height = 41
    Caption = 'BARU'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 160
    Top = 216
    Width = 105
    Height = 41
    Caption = 'SIMPAN'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 280
    Top = 216
    Width = 105
    Height = 41
    Caption = 'EDIT'
    TabOrder = 10
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 400
    Top = 216
    Width = 105
    Height = 41
    Caption = 'HAPUS'
    TabOrder = 11
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 520
    Top = 216
    Width = 105
    Height = 41
    Caption = 'BATAL'
    TabOrder = 12
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 274
    Width = 721
    Height = 169
    DataSource = ds1
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object cbb2: TComboBox
    Left = 472
    Top = 144
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Items.Strings = (
      'L'
      'P')
  end
  object cbb3: TComboBox
    Left = 472
    Top = 176
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Items.Strings = (
      'Aktif '
      'Tidak Aktif')
  end
  object btn6: TButton
    Left = 640
    Top = 216
    Width = 105
    Height = 41
    Caption = 'SHOW REPORT'
    TabOrder = 16
    OnClick = btn6Click
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 744
    Top = 8
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from orang_tua')
    Params = <>
    Left = 704
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
    Left = 664
    Top = 8
  end
end
