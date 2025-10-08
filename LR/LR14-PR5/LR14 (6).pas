procedure fib(i, n: integer); // Параметризациям
begin
  writeln(i + n, ' ');
  if i + n < 89 then {Базовый случай}
    fib(n, i + n); // Декомпозиция
end; 

begin
  fib(0, 1); 
end.
