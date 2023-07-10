object Form2: TForm2
  Left = 194
  Top = 149
  Width = 876
  Height = 515
  Caption = 'FormWaliKelas'
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
    Top = 32
    Width = 73
    Height = 13
    Caption = 'ID WALI KELAS'
  end
  object lbl2: TLabel
    Left = 96
    Top = 64
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object lbl3: TLabel
    Left = 24
    Top = 96
    Width = 91
    Height = 13
    Caption = 'NAMA WALI KELAS'
  end
  object lbl4: TLabel
    Left = 48
    Top = 160
    Width = 61
    Height = 13
    Caption = 'PENDIDIKAN'
  end
  object lbl5: TLabel
    Left = 440
    Top = 32
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl6: TLabel
    Left = 80
    Top = 192
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object lbl7: TLabel
    Left = 40
    Top = 128
    Width = 74
    Height = 13
    Caption = 'JENIS KELAMIN'
  end
  object lbl8: TLabel
    Left = 440
    Top = 64
    Width = 38
    Height = 13
    Caption = 'MATPEL'
  end
  object lbl9: TLabel
    Left = 440
    Top = 96
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object edt1: TEdit
    Left = 128
    Top = 32
    Width = 273
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 128
    Top = 64
    Width = 273
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 128
    Top = 96
    Width = 273
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 128
    Top = 160
    Width = 273
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 128
    Top = 192
    Width = 273
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 128
    Top = 128
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Items.Strings = (
      'L'
      'P')
  end
  object edt6: TEdit
    Left = 496
    Top = 32
    Width = 273
    Height = 21
    TabOrder = 6
  end
  object edt7: TEdit
    Left = 496
    Top = 64
    Width = 273
    Height = 21
    TabOrder = 7
  end
  object btn1: TButton
    Left = 64
    Top = 232
    Width = 105
    Height = 41
    Caption = 'BARU'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 184
    Top = 232
    Width = 105
    Height = 41
    Caption = 'SIMPAN'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 304
    Top = 232
    Width = 105
    Height = 41
    Caption = 'EDIT'
    TabOrder = 10
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 424
    Top = 232
    Width = 105
    Height = 41
    Caption = 'HAPUS'
    TabOrder = 11
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 544
    Top = 232
    Width = 105
    Height = 41
    Caption = 'BATAL'
    TabOrder = 12
    OnClick = btn5Click
  end
  object dbgrd1: TDBGrid
    Left = 64
    Top = 290
    Width = 689
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
  object btn6: TButton
    Left = 664
    Top = 232
    Width = 89
    Height = 41
    Caption = 'SHOW REPORT'
    TabOrder = 14
    OnClick = btn6Click
  end
  object cbb2: TComboBox
    Left = 496
    Top = 96
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Items.Strings = (
      'Aktif '
      'Tidak Aktif')
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 792
    Top = 32
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from wali_kelas')
    Params = <>
    Left = 792
    Top = 88
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3307
    Database = 'db_siswa'
    User = 'root'
    Protocol = 'mysql-5'
    LibraryLocation = 'D:\VISUAL_2_Projek\UAS\libmysql.dll'
    Left = 792
    Top = 144
  end
  object frxdbwalikelas: TfrxDBDataset
    UserName = 'frxDBWaliKelas'
    CloseDataSource = False
    DataSet = zqry1
    BCDToCurrency = False
    Left = 792
    Top = 208
  end
  object frxwalikelas: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45106.595044942100000000
    ReportOptions.LastChange = 45106.605389189800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 792
    Top = 264
    Datasets = <
      item
        DataSet = frxdbwalikelas
        DataSetName = 'frxDBWaliKelas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Left = 102.047310000000000000
          Top = 7.559060000000000000
          Width = 525.354670000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'LAPORAN WALI KELAS SMK NEGERI 2 KANDANGAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 71.811070000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'ID')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 71.811070000000000000
          Width = 207.874150000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Nama ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 279.685220000000000000
          Width = 170.078850000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'mata pelajaran')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 449.764070000000000000
          Width = 170.078850000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 619.842920000000000000
          Width = 98.267780000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Status')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 56.692950000000000000
        Top = 230.551330000000000000
        Width = 718.110700000000000000
        DataSet = frxdbwalikelas
        DataSetName = 'frxDBWaliKelas'
        RowCount = 0
        object Memo6: TfrxMemoView
          Width = 71.811070000000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataField = 'id'
          DataSet = frxdbwalikelas
          DataSetName = 'frxDBWaliKelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBWaliKelas."id"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 71.811070000000000000
          Width = 207.874150000000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxdbwalikelas
          DataSetName = 'frxDBWaliKelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBWaliKelas."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 279.685220000000000000
          Width = 170.078850000000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataField = 'matpel'
          DataSet = frxdbwalikelas
          DataSetName = 'frxDBWaliKelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBWaliKelas."matpel"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 449.764070000000000000
          Width = 170.078850000000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxdbwalikelas
          DataSetName = 'frxDBWaliKelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBWaliKelas."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 619.842920000000000000
          Width = 98.267780000000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxdbwalikelas
          DataSetName = 'frxDBWaliKelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBWaliKelas."status"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
      end
    end
  end
end
