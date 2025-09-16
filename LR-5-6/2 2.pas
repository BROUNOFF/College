program ArrayIsDecreasing;

var
  a: array of Integer;
  i: Integer;
  n: Integer;
  decreasing: Boolean;
  
begin
  Write('Введите размер массива: ');
  Readln(n);

  SetLength(a, n);
  Write('Введите элементы массива через пробел: ');
  for i := 0 to n - 1 do
    Read(a[i]);

  decreasing := True;
  for i := 0 to n - 2 do
    if a[i] < a[i + 1] then
    begin
      decreasing := False;
      break;
    end;

  if decreasing then
    Writeln('Массив упорядочен по убыванию.')
  else
    Writeln('Массив не упорядочен по убыванию.');

  Readln;
end.