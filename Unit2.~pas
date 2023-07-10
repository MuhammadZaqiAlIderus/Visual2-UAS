unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, frxClass, frxDBSet;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    cbb1: TComboBox;
    edt6: TEdit;
    edt7: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    zqry1: TZQuery;
    con1: TZConnection;
    lbl8: TLabel;
    lbl9: TLabel;
    btn6: TButton;
    frxdbwalikelas: TfrxDBDataset;
    frxwalikelas: TfrxReport;
    cbb2: TComboBox;
    procedure posisiawal;
    procedure bersih;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TForm2 }

procedure TForm2.bersih;
begin
edt1.clear;
edt2.Clear;
edt3.Clear;
edt4.Clear;
edt5.Clear;
edt6.Clear;
edt7.Clear;
cbb1.Text:='';
cbb2.Text:='';
end;

procedure TForm2.posisiawal;
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
edt7.Enabled:=False;
cbb1.Enabled:=False;
cbb2.Enabled:=False;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
  ShowMessage('ID KOSONG');
end else
if edt2.Text ='' then
begin
  ShowMessage('NIK KOSONG');
end else
if edt3.Text ='' then
begin
  ShowMessage('NAMA KOSONG');
end else
if edt4.Text ='' then
begin
  ShowMessage('PENDIDIKAN KOSONG');
end else
if edt5.Text ='' then
begin
  ShowMessage('TELP KOSONG');
end else
if edt6.Text ='' then
begin
  ShowMessage('ALAMAT KOSONG');
end else
if edt7.Text ='' then
begin
  ShowMessage('MATPEL KOSONG');
end else
if cbb1.Text ='' then
begin
  ShowMessage('JENIS KELAMIN TIDAK DIPILIH');
end else
if cbb2.Text ='' then
begin
  ShowMessage('STATUS TIDAK DIPILIH');
end else
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into wali_kelas values("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+cbb1.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'","'+edt7.Text+'","'+cbb2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from wali_kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
if(edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (edt4.Text='') or (edt5.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI');
end else
begin
  ShowMessage('Data Berhasil Diupdate');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update wali_kelas set id="'+edt1.text+'",nip="'+edt2.Text+'",nama="'+edt3.Text+'",jk="'+cbb1.Text+'",pendidikan="'+edt4.Text+'",telp="'+edt5.Text+'",alamat="'+edt6.Text+'",matpel="'+edt7.Text+'",status="'+cbb2.Text+'" where id = "'+edt1.text+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from wali_kelas');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN INGIN MENGHAPUS DATA INI ?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from wali_kelas where id="'+edt1.Text+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from wali_kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
  ShowMessage('DATA BATAL DIHAPUS');
  posisiawal;
end;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:=zqry1.Fields[0].AsString;
edt2.Text:=zqry1.Fields[1].AsString;
edt3.Text:=zqry1.Fields[2].AsString;
cbb1.Text:=zqry1.Fields[3].AsString;
edt4.Text:=zqry1.Fields[4].AsString;
edt5.Text:=zqry1.Fields[5].AsString;
edt6.Text:=zqry1.Fields[6].AsString;
edt7.Text:=zqry1.Fields[7].AsString;
cbb2.Text:=zqry1.Fields[8].AsString;

edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;
edt4.Enabled:=True;
edt5.Enabled:=True;
edt6.Enabled:=True;
edt7.Enabled:=True;
cbb1.Enabled:=True;
cbb2.Enabled:=True;

btn1.Enabled:=False;
btn2.Enabled:=False;
btn3.Enabled:=True;
btn4.Enabled:=True;
btn5.Enabled:=True;
end;

procedure TForm2.btn1Click(Sender: TObject);
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
edt7.Enabled:=True;
cbb1.Enabled:=True;
cbb2.Enabled:=True;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
frxwalikelas.ShowReport();
end;

end.
