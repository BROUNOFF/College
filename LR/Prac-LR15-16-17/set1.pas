var
  a, n, m: integer;
  one: set of byte;
  few: set of byte;
begin
  one := [1];        
  few := [2, 3, 4];  

  write('Введите число: ');
  readln(a);

  n := a mod 10;
  m := a mod 100;

  if (m >= 11) and (m <= 14) then
    writeln(a,' лет') 
  else if n in one then
    writeln(a,' год') 
  else if n in few then
    writeln(a,' года') 
  else
    writeln(a,' лет'); 
end.
