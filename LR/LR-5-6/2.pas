program onetwo;

var
  a: array[1..20] of Integer;
  b, d, c, start, end_: Integer;
  i: Integer;

begin
  for i := 1 to 20 do
    a[i] := Random(-22, 93); 

  b := 0;
  for i := 1 to 19 do
    if (a[i] mod 2 = 0) then
      Inc(b);

  d := 1;
  for i := 1 to 20 do
    if (a[i] mod 2 <> 0) then
      d := d * a[i];

  Write('Начало диапазона: ');
  Readln(start);
  Write('Конец диапазона: ');
  Readln(end_);

  c := 0;
  for i := 1 to 20 do
      c := c + a[i];
      Inc(c);

  Writeln('Массив a:');
  for i := 1 to 20 do
    Write(a[i], ' ');
  Writeln;

  Writeln(b);
  Writeln(d);
  Writeln(c);

  Readln;
end.