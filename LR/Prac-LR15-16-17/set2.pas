type
  t_chs = set of Char;
const
  lett: t_chs = ['a'..'z', 'A'..'Z', '_'];
  num: t_chs = ['0'..'9'];
var
  str: string;
  i: integer;
  flag: boolean;
begin
  write('Введите строку: ');
  readln(str);

  if not (str[1] in lett) then
  begin
    writeln('Ошибка: первый символ должен быть буквой или "_"');
    exit;
  end;

  flag := True;
  for i := 2 to Length(str) do
  begin
    if not (str[i] in lett) and not (str[i] in num) then
    begin
      flag := False;
      break;  
    end;
  end;
  
  if flag then
    writeln('Строка содержит только допустимые символы')
  else
    writeln('Ошибка: строка содержит недопустимые символы');
end.
