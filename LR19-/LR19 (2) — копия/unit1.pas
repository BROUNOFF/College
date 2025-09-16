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
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
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

procedure TForm1.BitBtn1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var
   S, a, d, S1: Real;
begin
  StrToFloat(Edit1.text);
  a := sqrt(S);
  d := a * sqrt(2);
  S1 := Pi * sqr(d / 2);
  Edit2.text := FloatToStr(a);
  Edit3.text := FloatToStr(d);
  Edit4.text := FloatToStr(S1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Edit1.text := '';
  Edit2.text := '';
  Edit3.text := '';
  Edit4.text := '';
end;

end.

