program LRtwenty;
var
  filetext, outputtext: text;
  a: array[1..100] of integer; 
  i, maxI, minI: integer;
  inputLine: string;

begin
  maxI := -MaxInt; 
  minI := MaxInt; 
  assign(filetext, 'd:\input.txt');

  reset(filetext);

  i := 1;
  while (i <= 100) and not eof(filetext) do
  begin
    readln(filetext, inputLine); 
      a[i] := StrToInt(inputLine); 
      if a[i] > maxI then
        maxI := a[i];
      if a[i] < minI then
        minI := a[i];
      inc(i);
  end;

  close(filetext);
  assign(outputtext, 'd:\output.txt');
  rewrite(outputtext);
  writeln(outputtext, 'Максимальное число из 100 = ', maxI);
  writeln(outputtext, 'Минимальное число из 100 = ', minI);
  close(outputtext);
  writeln('Готово!');
  readln; 
end.
