object Form1: TForm1
  Left = 432
  Top = 279
  Width = 874
  Height = 554
  Caption = 'FormSISWA'
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
    Top = 40
    Width = 47
    Height = 13
    Caption = 'ID SISWA'
  end
  object lbl2: TLabel
    Left = 64
    Top = 72
    Width = 24
    Height = 13
    Caption = 'NISN'
  end
  object lbl3: TLabel
    Left = 24
    Top = 104
    Width = 65
    Height = 13
    Caption = 'NAMA SISWA'
  end
  object lbl4: TLabel
    Left = 72
    Top = 136
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl5: TLabel
    Left = 24
    Top = 168
    Width = 72
    Height = 13
    Caption = 'TEMPAT LAHIR'
  end
  object lbl6: TLabel
    Left = 16
    Top = 200
    Width = 79
    Height = 13
    Caption = 'TANGGAL LAHIR'
  end
  object lbl7: TLabel
    Left = 16
    Top = 232
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl8: TLabel
    Left = 384
    Top = 40
    Width = 76
    Height = 13
    Caption = 'TINGKAT KELAS'
  end
  object lbl9: TLabel
    Left = 416
    Top = 72
    Width = 46
    Height = 13
    Caption = 'JURUSAN'
  end
  object lbl10: TLabel
    Left = 400
    Top = 104
    Width = 59
    Height = 13
    Caption = 'WALI KELAS'
  end
  object lbl11: TLabel
    Left = 416
    Top = 136
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl12: TLabel
    Left = 432
    Top = 168
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object lbl13: TLabel
    Left = 440
    Top = 200
    Width = 13
    Height = 13
    Caption = 'HP'
  end
  object lbl14: TLabel
    Left = 416
    Top = 232
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object edt1: TEdit
    Left = 104
    Top = 40
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 104
    Top = 72
    Width = 273
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 104
    Top = 104
    Width = 273
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 104
    Top = 136
    Width = 273
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 104
    Top = 168
    Width = 273
    Height = 21
    TabOrder = 4
  end
  object dtp1: TDateTimePicker
    Left = 104
    Top = 200
    Width = 273
    Height = 21
    Date = 45101.484810486110000000
    Time = 45101.484810486110000000
    TabOrder = 5
  end
  object cbb1: TComboBox
    Left = 104
    Top = 232
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'L'
      'P')
  end
  object edt6: TEdit
    Left = 472
    Top = 40
    Width = 273
    Height = 21
    TabOrder = 7
  end
  object cbb2: TComboBox
    Left = 472
    Top = 72
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'TKJ'
      'DPIB')
  end
  object edt7: TEdit
    Left = 472
    Top = 104
    Width = 273
    Height = 21
    TabOrder = 9
  end
  object edt8: TEdit
    Left = 472
    Top = 136
    Width = 273
    Height = 21
    TabOrder = 10
  end
  object edt9: TEdit
    Left = 472
    Top = 168
    Width = 273
    Height = 21
    TabOrder = 11
  end
  object edt10: TEdit
    Left = 472
    Top = 200
    Width = 273
    Height = 21
    TabOrder = 12
  end
  object btn1: TButton
    Left = 56
    Top = 272
    Width = 105
    Height = 41
    Caption = 'BARU'
    TabOrder = 13
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 176
    Top = 272
    Width = 105
    Height = 41
    Caption = 'SIMPAN'
    TabOrder = 14
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 296
    Top = 272
    Width = 105
    Height = 41
    Caption = 'EDIT'
    TabOrder = 15
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 416
    Top = 272
    Width = 105
    Height = 41
    Caption = 'HAPUS'
    TabOrder = 16
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 536
    Top = 272
    Width = 105
    Height = 41
    Caption = 'BATAL'
    TabOrder = 17
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 104
    Top = 328
    Width = 657
    Height = 169
    DataSource = ds1
    TabOrder = 18
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn6: TButton
    Left = 656
    Top = 272
    Width = 105
    Height = 41
    Caption = 'SHOW REPORT'
    TabOrder = 19
    OnClick = btn6Click
  end
  object cbb3: TComboBox
    Left = 472
    Top = 232
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 20
    Items.Strings = (
      'aktif '
      'tidak aktif')
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 784
    Top = 8
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from siswa')
    Params = <>
    Left = 744
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
    Left = 704
    Top = 8
  end
end
