unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, StdCtrls, ZAbstractConnection, ZConnection,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids;

type
  TForm7 = class(TForm)
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
    edt3: TEdit;
    lbl5: TLabel;
    procedure posisiawal;
    procedure bersih;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

{ TForm7 }

procedure TForm7.bersih;
begin
edt1.Clear;
edt2.Clear;
edt3.Clear;
cbb1.Text:='';
cbb2.Text:='';
end;

procedure TForm7.posisiawal;
begin
btn1.Enabled:=True;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=False;
edt1.Enabled:=False;
edt2.Enabled:=False;
edt3.enabled:=False;
cbb1.Enabled:=False;
cbb2.Enabled:=False;
end;

procedure TForm7.btn1Click(Sender: TObject);
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
cbb2.Enabled:=True;
end;

procedure TForm7.FormCreate(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
  ShowMessage('ID POIN KOSONG');
end else
if edt2.Text ='' then
begin
  ShowMessage('NAMA KOSONG');
end else
if edt3.Text ='' then
begin
  ShowMessage('BOBOT KOSONG');
end else
if cbb1.Text ='' then
begin
  ShowMessage('JENIS TIDAK DIPILIH');
end else
if cbb2.Text ='' then
begin
  ShowMessage('STATUS KOSONG');
end else
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into poin values("'+edt1.Text+'","'+edt2.Text+'","'+edt3.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from poin');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm7.btn3Click(Sender: TObject);
begin
if(edt1.Text='') or (edt2.Text='') or (cbb2.Text='') or (cbb2.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI');
end else
begin
  ShowMessage('Data Berhasil Diupdate');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update poin set id="'+edt1.Text+'",nama="'+edt2.Text+'",bobot="'+edt3.Text+'",jenis="'+cbb1.Text+'",status="'+cbb2.Text+'" where id = "'+edt1.Text+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from poin');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm7.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN INGIN MENGHAPUS DATA INI ?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from poin where id="'+edt1.Text+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from poin');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
  ShowMessage('DATA BATAL DIHAPUS');
  posisiawal;
end;
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:=zqry1.Fields[0].AsString;
edt2.Text:=zqry1.Fields[1].AsString;
edt3.Text:=zqry1.Fields[2].AsString;
cbb1.Text:=zqry1.Fields[3].AsString;
cbb2.Text:=zqry1.Fields[4].AsString;

edt1.Enabled:=True;
edt2.Enabled:=True;
edt3.Enabled:=True;
cbb1.enabled:=True;
cbb2.Enabled:=True;

btn1.Enabled:=False;
btn2.Enabled:=False;
btn3.Enabled:=True;
btn4.Enabled:=True;
btn5.Enabled:=True;
end;

procedure TForm7.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.btn6Click(Sender: TObject);
begin
frxPOIN.ShowReport();
end;

end.
