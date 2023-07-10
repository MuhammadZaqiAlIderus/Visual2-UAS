unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, frxClass, frxDBSet;

type
  TForm6 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    zqry1: TZQuery;
    con1: TZConnection;
    cbb1: TComboBox;
    cbb2: TComboBox;
    btn6: TButton;
    procedure posisiawal;
    procedure bersih;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  idhubungan : string;
implementation

{$R *.dfm}

{ TForm6 }

procedure TForm6.bersih;
begin
edt1.Clear;
edt2.Clear;
cbb1.Text:='';
cbb2.Text:='';
end;

procedure TForm6.posisiawal;
begin
btn1.Enabled:=True;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=False;
edt1.Enabled:=False;
edt2.Enabled:=False;
cbb1.Enabled:=False;
cbb2.Enabled:=False;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:=False;
btn2.Enabled:=True;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=True;
edt1.Enabled:=True;
edt2.Enabled:=True;
cbb1.Enabled:=True;
cbb2.Enabled:=True;
end;

procedure TForm6.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
  ShowMessage('ID SISWA KOSONG');
end else
if edt2.Text ='' then
begin
  ShowMessage('ID ORTU KOSONG');
end else
if cbb1.Text ='' then
begin
  ShowMessage('STATUS KOSONG');
end else
if cbb2.Text ='' then
begin
  ShowMessage('KETERANGAN KOSONG');
end else
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into hubungan values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from hubungan');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm6.btn3Click(Sender: TObject);
begin
if(edt1.Text='') or (edt2.Text='') or (cbb2.Text='') or (cbb2.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI');
end else
begin
  ShowMessage('Data Berhasil Diupdate');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update hubungan set siswa_id="'+edt1.Text+'",ortu_id="'+edt2.Text+'",status_hub_anak="'+cbb1.Text+'",keterangan="'+cbb2.Text+'" where id = "'+idhubungan+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from hubungan');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
idhubungan:=zqry1.Fields[0].AsString;
edt1.Text:=zqry1.Fields[1].AsString;
edt2.Text:=zqry1.Fields[2].AsString;
cbb1.Text:=zqry1.Fields[3].AsString;
cbb2.Text:=zqry1.Fields[4].AsString;

edt1.Enabled:=True;
edt2.Enabled:=True;
cbb1.enabled:=True;
cbb2.Enabled:=True;

btn1.Enabled:=False;
btn2.Enabled:=False;
btn3.Enabled:=True;
btn4.Enabled:=True;
btn5.Enabled:=True;
end;

procedure TForm6.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN INGIN MENGHAPUS DATA INI ?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from hubungan where id="'+idhubungan+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from hubungan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
  ShowMessage('DATA BATAL DIHAPUS');
  posisiawal;
end;
end;

procedure TForm6.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.btn6Click(Sender: TObject);
begin
frxHUBUNGAN.ShowReport();
end;

end.
