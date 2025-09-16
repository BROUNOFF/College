procedure LoopFor(i, n: integer);
{Параметризация}
begin
  if i <= n then {Базовый случай}
  begin
    LoopFor(i + 1, n); 
    {Декомпозиция}
    writeln('Привет ', i);
  end; 
end;

begin
  LoopFor(1, 10); 
end.