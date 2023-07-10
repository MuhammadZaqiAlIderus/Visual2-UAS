unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, frxClass, frxDBSet;

type
  TForm4 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl7: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    cbb1: TComboBox;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    zqry1: TZQuery;
    con1: TZConnection;
    btn6: TButton;
    procedure posisiawal;
    procedure bersih;
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
  Form4: TForm4;

implementation

{$R *.dfm}

{ TForm4 }

procedure TForm4.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
end;

procedure TForm4.posisiawal;
begin
btn1.Enabled:=True;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=False;
edt1.Enabled:=False;
edt2.Enabled:=False;
edt3.Enabled:=False;
cbb1.Enabled:=False;
end;

procedure TForm4.btn1Click(Sender: TObject);
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
cbb1.Enabled:=True;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
  ShowMessage('ID KELAS KOSONG');
end else
if edt2.Text ='' then
begin
  ShowMessage('NAMA KELAS KOSONG');
end else
if edt3.Text ='' then
begin
  ShowMessage('JENIS KELAS KOSONG');
end else
if cbb1.Text ='' then
begin
  ShowMessage('JURUSAN KOSONG');
end else
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into kelas values("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+cbb1.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;
procedure TForm4.btn3Click(Sender: TObject);
begin
if(edt1.Text='') or (edt2.Text='') or (edt3.Text='') or (cbb1.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI');
end else
begin
  ShowMessage('Data Berhasil Diupdate');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update kelas set id="'+edt1.text+'",nama="'+edt2.Text+'",jenis="'+edt3.Text+'",jurusan="'+cbb1.text+'" where id = "'+edt1.text+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from kelas');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:=zqry1.Fields[0].AsString;
edt2.Text:=zqry1.Fields[1].AsString;
edt3.Text:=zqry1.Fields[2].AsString;
cbb1.Text:=zqry1.Fields[3].AsString;

edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;
cbb1.Enabled:=True;

btn1.Enabled:=False;
btn2.Enabled:=False;
btn3.Enabled:=True;
btn4.Enabled:=True;
btn5.Enabled:=True;
end;

procedure TForm4.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN INGIN MENGHAPUS DATA INI ?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from kelas where id="'+edt1.Text+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
  ShowMessage('DATA BATAL DIHAPUS');
  posisiawal;
end;
end;

procedure TForm4.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm4.btn6Click(Sender: TObject);
begin
frxKELAS.ShowReport();
end;

end.
