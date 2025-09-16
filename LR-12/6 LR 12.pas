program LRtwentyone;

var
  textfile, outputtext : text;
  a : string;
  
begin
  
  assign(textfile, 'd:\Файл для шестого задания.txt');
  reset(textfile);
  assign(outputtext, 'd:\Готовый файл.txt');
  rewrite(outputtext);
  while not eof(textfile) do begin
    readln(textfile, a);
    if Length(a) > 0 then
      writeln(outputtext, a)
  end;
  close(textfile);
  close(outputtext);
  writeln('Готово!');
  rename(outputtext, 'd:\Файл после удаления пробелов.txt');
  readln();
end.