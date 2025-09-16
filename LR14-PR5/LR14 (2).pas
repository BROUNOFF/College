function sumTo(n: Integer): Integer; {Параметризация}
begin
  if n = 1 then {Базвоый случай}
    sumTo := 1 
  else
    sumTo := n + sumTo(n - 1); {Декомпозиция}

end;

begin
  WriteLn(sumTo(1));  
  WriteLn(sumTo(2)); 
  WriteLn(sumTo(3)); 
  WriteLn(sumTo(5));  
end.
