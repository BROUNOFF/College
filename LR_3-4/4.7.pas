program fourth;

var a, b, k, h, min, max : real;
i : integer;

begin
  h:=1;
  for i := 1 to 10 do 
  begin
    writeln (h, ' месяц');
    readln(a);
    readln(b);
    if max<a then max:=a;
    if min<b then min:=b;
    h:=h+1;
  end;
      writeln(max,' ', min);
end.