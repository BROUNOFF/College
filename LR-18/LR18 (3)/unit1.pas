unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;


procedure TForm1.Edit1Change(Sender: TObject);
var
  k : integer;

begin
  k:=StrToInt(Edit1.Text);

end;

procedure TForm1.Edit2Change(Sender: TObject);
var
  i,t,k,k1:integer;
begin
   k1:=StrToInt(Edit2.Text);
   i:=1; t:=1;
while i<=k1 do
begin
t:=t*k;
i:=i+1;
end;

end;
  
procedure TForm1.BitBtn2Click(Sender: TObject);
var
  i,t,k,k1 : integer;
begin
     i:=1;
     t:=1;
     k:=StrToInt(Edit1.Text);
     k1:=StrToInt(Edit2.Text);
     while i<=k1 do
     begin
     t:=t*k;
     i:=i+1;
     end;

  memo1.Lines.add('число '+Edit1.Text+' в степени '+Edit2.Text+' равно: '+IntToStr(t));

end;
end.

