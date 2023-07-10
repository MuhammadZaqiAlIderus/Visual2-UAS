unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls,
  frxClass, frxDBSet;

type
  TForm5 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    zqry1: TZQuery;
    con1: TZConnection;
    dtp1: TDateTimePicker;
    btn6: TButton;
    cbb1: TComboBox;
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
  Form5: TForm5;
  idriwayat : String;
implementation

{$R *.dfm}

procedure TForm5.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
cbb1.text:='';
end;

procedure TForm5.posisiawal;
begin
btn1.Enabled:=True;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=False;
edt1.Enabled:=False;
edt2.Enabled:=False;
edt3.Enabled:=False;
edt4.Enabled:=False;
edt5.Enabled:=False;
edt6.Enabled:=False;
dtp1.Enabled:=False;
cbb1.enabled:=False;
end;

procedure TForm5.FormCreate(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:=False;
btn2.Enabled:=True;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=True;
edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;
edt4.Enabled:=True;
edt5.Enabled:=True;
edt6.Enabled:=True;
cbb1.Enabled:=True;
dtp1.Enabled:=True;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
  ShowMessage('ID SISWA KOSONG');
end else
if edt2.Text ='' then
begin
  ShowMessage('ID POIN KOSONG');
end else
if edt3.Text ='' then
begin
  ShowMessage('ID WALI KOSONG');
end else
if edt4.Text ='' then
begin
  ShowMessage('ID ORTU KOSONG');
end else
if edt5.Text ='' then
begin
  ShowMessage('ID KELAS KOSONG');
end else
if edt6.Text ='' then
begin
  ShowMessage('SEMESTER KOSONG');
end else
if cbb1.Text ='' then
begin
  ShowMessage('STATUS TIDAK DIPILIH');
end else
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into riwayat_poin values(null,"'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+FormatDateTime('yyyy/mm/dd',dtp1.Date)+'","'+edt6.Text+'","'+cbb1.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from riwayat_poin');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
if(edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (edt4.Text='') or (edt5.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI');
end else
begin
  ShowMessage('Data Berhasil Diupdate');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update riwayat_poin set siswa_id="'+edt1.Text+'",poin_id="'+edt2.Text+'",wali_id="'+edt3.Text+'",ortu_id="'+edt4.Text+'",kelas_id="'+edt5.Text+'",tanggal="'+FormatDateTime('yyyy/mm/dd',dtp1.Date)+'",semester="'+edt6.Text+'",status="'+cbb1.Text+'" where id = "'+idriwayat+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from riwayat_poin');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
idriwayat:=zqry1.Fields[0].AsString;
edt1.Text:=zqry1.Fields[1].AsString;
edt2.Text:=zqry1.Fields[2].AsString;
edt3.Text:=zqry1.Fields[3].AsString;
edt4.Text:=zqry1.Fields[4].AsString;
edt5.Text:=zqry1.Fields[5].AsString;
dtp1.Date:=zqry1.Fields[6].AsDateTime;
edt6.Text:=zqry1.Fields[7].AsString;
cbb1.Text:=zqry1.Fields[8].AsString;

edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;
edt4.Enabled:=True;
edt5.Enabled:=True;
edt6.Enabled:=True;
dtp1.Enabled:=True;
cbb1.Enabled:=True;

btn1.Enabled:=False;
btn2.Enabled:=False;
btn3.Enabled:=True;
btn4.Enabled:=True;
btn5.Enabled:=True;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN INGIN MENGHAPUS DATA INI ?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from riwayat_poin where id="'+idriwayat+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from riwayat_poin');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
  ShowMessage('DATA BATAL DIHAPUS');
  posisiawal;
end;
end;

procedure TForm5.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
frxRIWAYAT.ShowReport();
end;

end.
