object Form9: TForm9
  Left = 364
  Top = 300
  Width = 588
  Height = 334
  Caption = 'FormMENU'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 152
    Top = 16
    Width = 260
    Height = 31
    Caption = 'SMA 1 MARTAPURA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object mm1: TMainMenu
    Left = 8
    Top = 16
    object dd1: TMenuItem
      Caption = 'File'
    end
    object Data1: TMenuItem
      Caption = 'Data'
      object Datasiswa1: TMenuItem
        Caption = 'Data siswa'
        OnClick = Datasiswa1Click
      end
      object DataOrangTua1: TMenuItem
        Caption = 'Data Orang Tua'
        OnClick = DataOrangTua1Click
      end
      object DataWaliKelas1: TMenuItem
        Caption = 'Data Wali Kelas'
        OnClick = DataWaliKelas1Click
      end
      object DataPoin1: TMenuItem
        Caption = 'Data Poin'
        OnClick = DataPoin1Click
      end
      object DataKelas1: TMenuItem
        Caption = 'Data Kelas'
        OnClick = DataKelas1Click
      end
      object DataHubunganSiswa1: TMenuItem
        Caption = 'Data Hubungan Siswa'
        OnClick = DataHubunganSiswa1Click
      end
      object DataRiwayatPoinSiswa1: TMenuItem
        Caption = 'Data Riwayat Poin Siswa'
        OnClick = DataRiwayatPoinSiswa1Click
      end
    end
    object User1: TMenuItem
      Caption = 'User'
      object Daftar1: TMenuItem
        Caption = 'Daftar'
        OnClick = Daftar1Click
      end
    end
  end
end
