program six;
var text : string;
b, c : integer;

begin
b := 3;
c := 4;
readln(text);
print('Каждый третий символ: ');
if length(text) < 3 then
  print('В строке мало символов')
else
  while b <= length(text) do begin
  print (text[b:c]);
  b := b + 3;
  c := c + 3;
end;
end.