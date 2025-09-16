program FindArrayElements;

type
  Q = array of integer;

procedure findMaxAndIndex(arr: Q; var maxval: integer; var maxindex: integer); // arr формальный параметр (массив, передача по значению); maxVal, maxIndex формальные параметры
// (передача по ссылке)
var
  i: integer; // i локальная переменная
begin
  if length(arr) = 0 then
  begin
    maxval := -maxint; 
    maxindex := -1;
    exit;
  end;
  maxval := arr[0];
  maxindex := 0;
  for i := 1 to high(arr) do
    if arr[i] > maxval then
    begin
      maxval := arr[i];
      maxindex := i;
    end;
end;


procedure findMinAbsAndIndex(arr: Q; var minabsval: integer; var minabsindex: integer); // arr формальный параметр (массив, передача по значению); minAbsVal, minAbsIndex формальные параметры 
//(передача по ссылке)
var
  i, minabs: integer; // i, minAbs локальные переменные
begin
  if length(arr) = 0 then
  begin
    minabsval := MaxInt;
    minabsindex := -1;
    exit;
  end;

  minabs := abs(arr[0]);
  minabsval := arr[0];
  minabsindex := 0;
  for i := 1 to High(arr) do
  begin
    if abs(arr[i]) < minAbs then
    begin
      minabs := abs(arr[i]);
      minabsval := arr[i];
      minabsindex := i;
    end
    else if (abs(arr[i]) = minabs) and (arr[i] < minabsval) then
    begin
      minabsval := arr[i];
      minabsindex := i;
    end;
  end;
end;


procedure findMaxNegative(arr: Q; var Neg: integer); // arr формальный параметр (массив, передача по значению); Neg формальный параметр (передача по ссылке)
var
  i: integer; // i локальная переменная
begin
  Neg := -maxint; // Инициализация, чтобы найти действительно максимальное отрицательное число
  for i := 0 to high(arr) do
    if (arr[i] < 0) and (arr[i] > Neg) then
      Neg := arr[i];
end;


var
  a: Q;        // a: глобальная переменная (массив)
  b: integer;  // b: глобальная переменная (размер массива)
  i: integer;  // i: глобальная переменная (используется как счетчик в цикле)
  maxVal, maxindex, minAbsval, minAbsindex, Neg: integer; // Все: глобальные переменные

begin
  writeln('Введите размер массива:');
  readln(b);
  Setlength(a, b); //setlength изменяет глобальный массив a
  writeln('Введите элементы массива:');
  for i := 0 to b - 1 do // i глобальная переменная используется здесь
    read(a[i]);

  findMaxAndIndex(a, maxval, maxindex); // a фактический параметр; maxVal, maxIndex фактические параметры
  writeln('максимальный элемент: ', maxval, ', Индекс: ', maxindex);

  findMinAbsAndIndex(a, minabsval, minabsindex); // a фактический параметр; minAbsVal, minAbsIndex фактические параметры
  writeln('минимальный по модулю элемент: ', minabsval, ', индекс: ', minabsindex);

  FindMaxNegative(a, Neg); // a фактический параметр; Neg фактический параметр
  if Neg = -Maxint then
    writeln('Максимального отрицательного элемента нет.')
  else
    writeln('максимальный отрицательный элемент: ', Neg);

  readln;
end.
