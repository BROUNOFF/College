function NOD(a, b: integer): integer; // Параметризация
begin
  if b = 0 then {Базовый случай рекурсии}
    NOD := a
  else
    NOD := NOD(b, a mod b); // Параметризация

end;

var
  a, b: integer;
begin
  readln(a);
  readln(b);

  writeln('НОД чисел ', a, ' и ', b, ' равен ', NOD(a, b));
end.
