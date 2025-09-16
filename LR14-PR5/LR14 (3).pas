var 
  x, y: integer;

function stepen(a, b: integer): integer;
begin
  if b = 0 then {Базовый случай}
    stepn := 1  
  else
    stepen := a * stepen(a, b - 1);  // рекурсивный шаг
  {Программа закончится при выполнении}
end;

begin
  writeln('Число?');
  readln(x);
  writeln('Степень?');
  readln(y);
  writeln(stepen(x, y));
end.
