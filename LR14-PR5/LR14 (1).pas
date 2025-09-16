procedure Posl(n: Integer); {Параметризация}
begin
  {Базовый случай}
  if n < 0 then
    exit;
  
 
  
  Posl(n - 2); {Декомпозиция}
  
   writeln(n);
end;

begin

  Posl(25); 
end.
