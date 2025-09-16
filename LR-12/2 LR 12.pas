var
  filetext: text;
  a : string;
  j, i, N, k : integer;
  
begin
  writeln('Введите N');
  readln(N);
  writeln('Введите K');
  readln(K);
  assign(filetext, 'd:\textvtoroy.txt');
  rewrite(filetext);
  for j := 1 to N do  
    for i := 1 to K do begin
      if i = K then
        writeln(filetext, '*')
      else
      write(filetext, '*');
      end;
  writeln(filetext);
  close(filetext);
  reset(filetext);
  for j := 1 to N do begin
    readln(filetext, a);
    writeln('Звездочки в файле = ', a);
  end;
    close(filetext);
end.