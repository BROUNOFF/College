
program four;
var text : string;

begin
  
  readln(text);
  if text.startsWith('abc') then
    print('модифицированный текст: www' + text[4: ])
  else 
    print('модифицированный текст: ', text + 'zzz');
end.