unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a, b, h, x, y: Real;

implementation

{$R *.lfm}

{ TForm1 }

function Square(x: Real): Real;
begin
  Result := x * x;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  a := StrToFloat(Edit1.Text);
  b := StrToFloat(Edit2.Text);
  h := StrToFloat(Edit3.Text);

  x := a;

  while x <= b do
  begin
    y := Square(x);
    Memo1.Lines.Add(Format('x = %f, y = %f', [x, y]));
    x := x + h;
  end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  Close
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.Edit3Change(Sender: TObject);
begin

end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

end.
