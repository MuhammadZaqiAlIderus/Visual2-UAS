unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, ComCtrls, frxClass,
  frxDBSet;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    dtp1: TDateTimePicker;
    cbb1: TComboBox;
    edt6: TEdit;
    cbb2: TComboBox;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    zqry1: TZQuery;
    con1: TZConnection;
    btn6: TButton;
    cbb3: TComboBox;
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
  Form1: TForm1;
  idsiswa : string;
implementation

{$R *.dfm}

procedure TForm1.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
edt8.Clear;
edt9.Clear;
edt10.Clear;
cbb1.Text:='';
cbb2.Text:='';
cbb3.Text:='';
end;

procedure TForm1.posisiawal;
begin
btn1.Enabled:=True;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=False;
btn6.Enabled:=False;
edt1.Enabled:=False;
edt2.Enabled:=False;
edt3.Enabled:=False;
edt4.Enabled:=False;
edt5.Enabled:=False;
edt6.Enabled:=False;
edt7.Enabled:=False;
edt8.Enabled:=False;
edt9.Enabled:=False;
edt10.Enabled:=False;
dtp1.Enabled:=False;
cbb1.Enabled:=False;
cbb2.Enabled:=False;
cbb3.Enabled:=False;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
bersih;
btn1.Enabled:=False;
btn2.Enabled:=True;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=True;
btn6.enabled:=True;
edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;
edt4.Enabled:=True;
edt5.Enabled:=True;
edt6.Enabled:=True;
edt7.Enabled:=True;
edt8.Enabled:=True;
edt9.Enabled:=True;
edt10.Enabled:=True;
dtp1.Enabled:=True;
cbb1.Enabled:=True;
cbb2.Enabled:=True;
cbb3.Enabled:=True;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
  ShowMessage('ID KOSONG');
end else
if edt2.Text ='' then
begin
  ShowMessage('NISN KOSONG');
end else
if edt3.Text ='' then
begin
  ShowMessage('NAMA KOSONG');
end else
if edt4.Text ='' then
begin
  ShowMessage('NIK KOSONG');
end else
if edt5.Text ='' then
begin
  ShowMessage('TEMPAT LAHIR KOSONG');
end else
if edt6.Text ='' then
begin
  ShowMessage('TINGKAT KELAS KOSONG');
end else
if edt7.Text ='' then
begin
  ShowMessage('WALI KELAS KOSONG');
end else
if edt8.Text ='' then
begin
  ShowMessage('ALAMAT KOSONG');
end else
if edt9.Text ='' then
begin
  ShowMessage('NO TELEPON KOSONG');
end else
if edt10.Text ='' then
begin
  ShowMessage('NO HP KOSONG');
end else
if cbb1.Text ='' then
begin
  ShowMessage('jenis kelamin belum dipilih');
end else
if cbb2.Text ='' then
begin
  ShowMessage('Jurusan Belum Dipilih');
end else
if cbb3.Text ='' then
begin
  ShowMessage('Status Belum Dipilih');
end else
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into siswa values("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+FormatDateTime('yyyy/mm/dd',dtp1.Date)+'","'+cbb1.Text+'","'+edt6.Text+'","'+cbb2.Text+'","'+edt7.Text+'","'+edt8.Text+'","'+edt9.Text+'","'+edt10.Text+'","'+cbb3.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from siswa');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if(edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (edt4.Text='') or (edt5.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI');
end else
begin
  ShowMessage('Data Berhasil Diupdate');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update siswa set id="'+edt1.text+'",nis="'+edt2.Text+'",nama_siswa="'+edt3.Text+'",nik="'+edt4.Text+'",tempat_lahir="'+edt5.Text+'",tanggal_lahir="'+FormatDateTime('yyyy/mm/dd',dtp1.Date)+'",jenis_kelamin="'+cbb1.Text+'",tingkat_kelas="'+edt6.Text+'",jurusan="'+cbb2.text+'",wali_kelas="'+edt7.Text+'",alamat="'+edt8.Text+'",telp="'+edt9.Text+'",hp="'+edt10.Text+'",status="'+cbb3.text+'"where id = "'+edt1.text+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from siswa');
zqry1.Open;
posisiawal;
end;
end;
procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:=zqry1.Fields[0].AsString;
edt2.Text:=zqry1.Fields[1].AsString;
edt3.Text:=zqry1.Fields[2].AsString;
edt4.Text:=zqry1.Fields[3].AsString;
edt5.Text:=zqry1.Fields[4].AsString;
dtp1.Date:=zqry1.Fields[5].AsDateTime;
cbb1.Text:=zqry1.Fields[6].AsString;
edt6.Text:=zqry1.Fields[7].AsString;
cbb2.Text:=zqry1.Fields[8].AsString;
edt7.Text:=zqry1.Fields[9].AsString;
edt8.Text:=zqry1.Fields[10].AsString;
edt9.Text:=zqry1.Fields[11].AsString;
edt10.Text:=zqry1.Fields[12].AsString;
cbb3.Text:=zqry1.Fields[13].AsString;

edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;
edt4.Enabled:=True;
edt5.Enabled:=True;
edt6.Enabled:=True;
edt7.Enabled:=True;
edt8.Enabled:=True;
edt9.Enabled:=True;
edt10.Enabled:=True;
cbb1.Enabled:=True;
cbb2.Enabled:=True;
cbb3.Enabled:=True;
dtp1.Enabled:=True;

btn1.Enabled:=False;
btn2.Enabled:=False;
btn3.Enabled:=True;
btn4.Enabled:=True;
btn5.Enabled:=True;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN INGIN MENGHAPUS DATA INI ?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from siswa where id="'+edt1.Text+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from siswa');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
  ShowMessage('DATA BATAL DIHAPUS');
  posisiawal;
end;
end;
procedure TForm1.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
frxsiswa.ShowReport();
end;

end.
