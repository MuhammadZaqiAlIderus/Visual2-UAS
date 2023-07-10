unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm10 = class(TForm)
    btn2: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    lbl1: TLabel;
    Button1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit9, Unit8;

{$R *.dfm}

procedure TForm10.btn1Click(Sender: TObject);
begin
with zqry1 do begin
SQL.Clear;
SQL.add('select * from user where nama='+QuotedStr(edt1.Text));
Open;
end;
if zqry1.RecordCount=0
then
application.MessageBox('Maaf Username Tidak Ditemukan','informasi',MB_OK or MB_ICONINFORMATION)
else
begin
if zqry1.fieldbyname('password').asstring<>edt2.text then
application.MessageBox('Memastikan Password Benar','ERROR!',MB_OK or MB_ICONERROR)
else
begin
Hide;
form9.show;
end;
end;
end;

procedure TForm10.btn2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm10.Button1Click(Sender: TObject);
begin
 form9.show;
end;

end.
