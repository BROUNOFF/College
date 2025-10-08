var
  filetext: text;
  S: string;
begin
  S := 'Енот!!!';
  assign(filetext, 'd:\stroka.txt');
  append(filetext); 
  writeln(filetext, S); 
  close(filetext);
  writeln('Готово!');
end.
