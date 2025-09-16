unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: Tlabel;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

uses
  Math;

function ArcCos(x: Double): Double;
begin
  Result := ArcTan2(Sqrt(1 - Sqr(x)), x);
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  a, b, c, P: Integer;
  alfa, betta, gamma, S, r: Real;
begin
  a := StrToInt(Edit1.Text);
  b := StrToInt(Edit2.Text);
  c := StrToInt(Edit3.Text);
  P := a + b + c;
  r := P / 2;
  S := Sqrt(r * (r - a) * (r - b) * (r - c));

  alfa := ArcCos((Sqr(b) + Sqr(c) - Sqr(a)) / (2 * b * c));
  betta := ArcSin((b / a) * Sin(alfa));
  gamma := Pi - (alfa + betta);

  alfa := alfa * 180 / Pi;
  betta := betta * 180 / Pi;
  gamma := gamma * 180 / Pi;

  Label6.Caption := 'alfa = ' + FloatToStr(alfa);
  Label7.Caption := 'betta = ' + FloatToStr(betta);
  Label8.Caption := 'gamma = ' + FloatToStr(gamma);
  Edit4.Text := IntToStr(P);
  Edit5.Text := FloatToStr(S);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
      edit1.clear;
      edit2.clear;
      edit3.clear;
      edit4.clear;
      edit5.clear;
      edit1.setfocus;
      label6.caption:='alfa=';
      label7.caption:='betta='; label8.caption:='gamma=';
end;

end.

