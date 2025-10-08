var
   filetext: text;
   a: string;
   i: integer;
begin
  assign(filetext, 'D:\text.txt');
  rewrite(filetext);
  for i := 1 to 10 do
    writeln(filetext, i);
  
  close(filetext); 

  reset(filetext);
  for i := 1 to 10 do
  begin
    readln(filetext, a);
    writeln('Число из Файла = ', a);
  end;
  close(filetext);
  writeln();
  writeln('Готово!');
end.

