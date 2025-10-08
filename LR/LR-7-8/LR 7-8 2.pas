program CountDigits;
var
  text: string;
  count: integer;
  i: integer;
  ch: char;
begin
  ReadLn(text);
  count := 0;
  for i := 1 to Length(text) do
  begin
    ch := text[i];
    if ch in ['0'..'9'] then
      Inc(count);
  end;
  PrintLn('Количество цифр: ', count);
end.
