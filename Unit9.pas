unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm9 = class(TForm)
    mm1: TMainMenu;
    dd1: TMenuItem;
    Data1: TMenuItem;
    Datasiswa1: TMenuItem;
    DataOrangTua1: TMenuItem;
    DataWaliKelas1: TMenuItem;
    DataPoin1: TMenuItem;
    DataKelas1: TMenuItem;
    DataHubunganSiswa1: TMenuItem;
    DataRiwayatPoinSiswa1: TMenuItem;
    User1: TMenuItem;
    lbl1: TLabel;
    Daftar1: TMenuItem;
    procedure Datasiswa1Click(Sender: TObject);
    procedure DataOrangTua1Click(Sender: TObject);
    procedure DataWaliKelas1Click(Sender: TObject);
    procedure DataPoin1Click(Sender: TObject);
    procedure DataKelas1Click(Sender: TObject);
    procedure DataHubunganSiswa1Click(Sender: TObject);
    procedure DataRiwayatPoinSiswa1Click(Sender: TObject);
    procedure Daftar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit1, Unit3, Unit2, Unit7, Unit4, Unit6, Unit5, Unit8;

{$R *.dfm}

procedure TForm9.Datasiswa1Click(Sender: TObject);
begin
Form1.show
end;

procedure TForm9.DataOrangTua1Click(Sender: TObject);
begin
form3.show
end;

procedure TForm9.DataWaliKelas1Click(Sender: TObject);
begin
form2.show
end;

procedure TForm9.DataPoin1Click(Sender: TObject);
begin
form7.show
end;

procedure TForm9.DataKelas1Click(Sender: TObject);
begin
form4.show
end;

procedure TForm9.DataHubunganSiswa1Click(Sender: TObject);
begin
form6.show
end;

procedure TForm9.DataRiwayatPoinSiswa1Click(Sender: TObject);
begin
form5.show
end;

procedure TForm9.Daftar1Click(Sender: TObject);
begin
form8.show
end;

end.
