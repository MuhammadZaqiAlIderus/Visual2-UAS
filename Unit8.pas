unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm8 = class(TForm)
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
  Form8: TForm8;
  iduser : string;
implementation

{$R *.dfm}

procedure TForm8.bersih;
begin
edt1.Clear;
edt2.Clear;
cbb1.Text:='';
cbb2.Text:='';
end;

procedure TForm8.posisiawal;
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

procedure TForm8.btn1Click(Sender: TObject);
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

procedure TForm8.FormCreate(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.btn2Click(Sender: TObject);
begin
if edt1.Text ='' then
begin
  ShowMessage('NAMA USER KOSONG');
end else
if edt2.Text ='' then
begin
  ShowMessage('PASSWORD KOSONG');
end else
if cbb1.Text ='' then
begin
  ShowMessage('LEVEL BELUM DIPILIH');
end else
if cbb2.Text ='' then
begin
  ShowMessage('STATUS BELUM DIPILIH');
end else
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into user values(null,"'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+cbb2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;
end;
end;

procedure TForm8.btn3Click(Sender: TObject);
begin
if(edt1.Text='') or (edt2.Text='') or (cbb2.Text='') or (cbb2.Text='') then
begin
  ShowMessage('INPUTAN WAJIB DIISI');
end else
begin
  ShowMessage('Data Berhasil Diupdate');
zqry1.SQL.Clear;
zqry1.SQL.Add('Update user set nama="'+edt1.Text+'",password="'+edt2.Text+'",level="'+cbb1.Text+'",status="'+cbb2.Text+'" where id = "'+iduser+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm8.btn4Click(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN INGIN MENGHAPUS DATA INI ?',mtWarning,[mbYes,mbNo],0)=mryes then
begin
zqry1.SQL.Clear;
zqry1.SQL.Add('delete from user where id="'+iduser+'"');
zqry1.ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
  ShowMessage('DATA BATAL DIHAPUS');
  posisiawal;
end;
end;

procedure TForm8.dbgrd1CellClick(Column: TColumn);
begin
iduser:=zqry1.Fields[0].AsString;
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

procedure TForm8.btn5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.btn6Click(Sender: TObject);
begin
frxUSER.ShowReport();
end;

end.
