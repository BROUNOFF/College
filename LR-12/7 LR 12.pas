program LRtwentytwo;
var
  n, i, sum, p: int64;
  isPrime: boolean;

begin
  
  assign(input, 'd:\z3in.txt');
  reset(input);
  readln(n);
  close(input);

  sum := 0;
  i := 2; // единица не имеет 5 делителей 100%
  while true do
  begin // проверка на простое число 
    isPrime := true;
    for p := 2 to Round(Sqrt(i)) do
      if i mod p = 0 then
      begin
        isPrime := false;
        break;
      end;

    if isPrime then
    begin
  
      p := i * i * i * i;
      if p <= n then
        sum := sum + p
      else
        break; 
    end;
    inc(i);
  end;


  assign(output, 'd:\z3out.txt');
  rewrite(output);
  writeln(sum);
  close(output);
  writeln('Готово!');
end.
