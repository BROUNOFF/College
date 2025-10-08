program SwapMinMax;

var
  a: array of Integer;
  i, n, maxIndex, minIndex, temp: Integer;


begin
  Write('Введите размер массива: ');
  Readln(n);

  SetLength(a, n);
  for i := 0 to n - 1 do
    a[i] := Random(100) - 50;
  
  maxIndex := 0;
  minIndex := 0;
  
  for i := 1 to n - 1 do
  begin
    if a[i] > a[maxIndex] then
      maxIndex := i;
    if a[i] < a[minIndex] then
      minIndex := i;
  end;

  if maxIndex = minIndex then
    Writeln('Максимальный и минимальный элементы совпадают, ничего не меняем.')
  else
  begin
        Write('Исходный массив: ');
    for i := 0 to n - 1 do
      Write(a[i], ' ');
    Writeln;

    temp := a[maxIndex];
    a[maxIndex] := a[minIndex];
    a[minIndex] := temp;

    Write('Массив после замены: ');
    for i := 0 to n - 1 do
      Write(a[i], ' ');
    Writeln;
  end;

  Readln;
end.

