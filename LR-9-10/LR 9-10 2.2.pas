program LR910;

const
  Arraysize = 6;

type
  intArray = array[1..Arraysize] of integer;

function CheckNegative(row: intArray): integer;
var
  j: integer;
begin
  for j := 1 to Arraysize do
    if row[j] < 0 then
    begin
      CheckNegative := -1;
      Exit;
    end;
  CheckNegative := 1;
end;

var
  i, j: integer;
  a: array[1..8, 1..Arraysize] of integer;
  r: array[1..8] of integer;
  row: intArray;

begin
  WriteLn('сформированные элементы двумерного массива:');
  for i := 1 to 8 do
  begin
    for j := 1 to Arraysize do
    begin
      a[i, j] := Random(-10, 10);
      Write(a[i, j], ' ');
    end;
    writeln;
  end;
  WriteLn;

  for i := 1 to 8 do
  begin

    for j := 1 to Arraysize do
      row[j] := a[i, j];
    r[i] := CheckNegative(row);
  end;

  WriteLn('Полученный одномерный массив:');
  for i := 1 to 8 do
    Write(r[i], ' ');
  WriteLn;
  readln;
end.
