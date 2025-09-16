program LRfourteen;

uses
  GraphABC;
  
  var x, y, r, i : integer;
  
begin
  Setwindowsize(600,600);
  writeln('Введите x, y и rадиус');
  readln(x);
  readln(y);
  readln(r);
  for i := 1 to x do begin
  Circle(x, y, r);
  r := r - 10;
  if r = 0 then
    break;
  end;
end.